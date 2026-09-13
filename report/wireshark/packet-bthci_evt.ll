Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-bthci_evt?download=true
inline.NumInlined: 81
inline.NumDeleted: 16
begin_hunk_0_@dissect_bthci_evt_cs_capabilities:bb.a
  %i.bm = add i32 %1, 26
  %i.bn = load i32, ptr @hf_bthci_evt_tsw_time_supported, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %1, 27
  %i.bq = load i32, ptr @hf_bthci_evt_tx_snr_capability, align 4
  %i.br = load i32, ptr @ett_cs_capability, align 4
  %i.bs = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.bq, i32 noundef %i.br, ptr noundef nonnull @hfx_bthci_evt_tx_snr_capability, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %1, 28                          ; 3 uses
  %i.bu = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bt)
  %i.bv = icmp ugt i32 %i.bu, 5
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bw = load i32, ptr @hf_bthci_evt_tip2_ipt_times_supported, align 4
  %i.bx = load i32, ptr @ett_cs_times, align 4
  %i.by = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.bt, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef nonnull @hfx_bthci_evt_tip_times_supported, i32 noundef -2147483648) ; 0 uses
  %i.bz = add i32 %1, 30
  %i.ca = load i32, ptr @hf_bthci_evt_tsw_ipt_time_supported, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cc = add i32 %1, 31
  %i.cd = load i32, ptr @hf_bthci_evt_rtt_2m_aa_only_n, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.cc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = add i32 %1, 32
  %i.cg = load i32, ptr @hf_bthci_evt_rtt_2m_sounding_n, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.cf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ci = add i32 %1, 33
  %i.cj = load i32, ptr @hf_bthci_evt_rtt_2m_random_n, align 4
  %i.ck = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.ci, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cl = add i32 %1, 34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.cl, %bb.b ], [ %i.bt, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 2, 0) i32 @dissect_iq_sample_list(ptr noundef %0, i32 noundef range(i32 14, 16) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @hf_bthci_evt_sample_count, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.d = add nuw nsw i32 %1, 1                    ; 3 uses
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  %i.f = load i32, ptr @hf_bthci_evt_le_report, align 4
  %i.g = shl nuw nsw i32 %i.e, 1
  %i.h = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.g, ptr noundef nonnull @.str.1905)
  %i.i = load i32, ptr @ett_iq_sample_list, align 4
  %i.j = tail call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i32 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.036 = phi i32 [ %i.d, %bb.b ], [ %i.x, %bb.c ] ; 5 uses
  %i.k = load i32, ptr @hf_bthci_evt_le_report, align 4
  %i.l = tail call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.036)
  %i.m = sext i8 %i.l to i32
  %i.n = add nuw nsw i32 %.036, 1                 ; 2 uses
  %i.o = tail call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %i.n)
  %i.p = sext i8 %i.o to i32
  %i.q = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef %.036, i32 noundef 2, ptr noundef nonnull @.str.1906, i32 noundef %indvars.iv, i32 noundef %i.m, i32 noundef %i.p)
  %i.r = load i32, ptr @ett_iq_samples, align 4
  %i.s = tail call ptr @proto_item_add_subtree(ptr noundef %i.q, i32 noundef %i.r) ; 2 uses
  %i.t = load i32, ptr @hf_bthci_evt_i_sample, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.t, ptr noundef %0, i32 noundef %.036, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_bthci_evt_q_sample, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add nuw nsw i32 %.036, 2                 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !31

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.1 = phi i32 [ %i.d, %bb.a ], [ %i.x, %bb.c ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare signext i8 @tvb_get_int8(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_bthci_evt_cs_mode1_step(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = load i32, ptr @hf_bthci_evt_nadm_attack_chance, align 4
  %i.e = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %3, i32 noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.f = add i32 %1, 1
  %i.g = load i32, ptr @hf_bthci_evt_rssi, align 4
  %i.h = call ptr @proto_tree_add_item_ret_int(ptr noundef %3, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.i = add i32 %1, 2
  %hf_bthci_evt_toa_tod_initiator.val = load i32, ptr @hf_bthci_evt_toa_tod_initiator, align 4
  %hf_bthci_evt_tod_toa_reflector.val = load i32, ptr @hf_bthci_evt_tod_toa_reflector, align 4
  %i.j = select i1 %5, i32 %hf_bthci_evt_toa_tod_initiator.val, i32 %hf_bthci_evt_tod_toa_reflector.val
  %i.k = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.l = add i32 %1, 4
  %i.m = load i32, ptr @hf_bthci_evt_antenna_id, align 4
  %i.n = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %3, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.o = add i32 %1, 5                            ; 5 uses
  %i.p = load i8, ptr %i.a, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = load i32, ptr %i.c, align 4
  %i.s = getelementptr i8, ptr %2, i64 416
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i8, ptr %i.b, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = call ptr @val_to_str(ptr noundef %i.t, i32 noundef %i.v, ptr noundef nonnull @nadm_attack_chance_vals, ptr noundef nonnull @.str.1909)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef nonnull @.str.1911, i32 noundef %i.q, i32 noundef %i.r, ptr noundef %i.w)
  br i1 %6, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr @hf_bthci_evt_pct1, align 4
  %i.y = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %3, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, ptr noundef nonnull @.str.1887, ptr noundef nonnull @.str.1912)
  %i.z = load i32, ptr @ett_cs_pct_sample, align 4
  %i.aa = call ptr @proto_item_add_subtree(ptr noundef %i.y, i32 noundef %i.z) ; 2 uses
  %i.ab = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.o, i32 noundef -2147483648)
  %.not = icmp eq i32 %i.ab, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr @hf_bthci_evt_pct_i_sample, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.o, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %hf_bthci_evt_pct_not_available.sink = phi ptr [ @hf_bthci_evt_pct_q_sample, %bb.c ], [ @hf_bthci_evt_pct_not_available, %bb.b ]
  %.sink56 = phi i32 [ 3, %bb.c ], [ 4, %bb.b ]
  %i.ae = load i32, ptr %hf_bthci_evt_pct_not_available.sink, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.o, i32 noundef %.sink56, i32 noundef -2147483648) ; 0 uses
  %i.ag = add i32 %1, 9                           ; 4 uses
  %i.ah = load i32, ptr @hf_bthci_evt_pct2, align 4
  %i.ai = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %3, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 4, ptr noundef nonnull @.str.1887, ptr noundef nonnull @.str.1913)
  %i.aj = load i32, ptr @ett_cs_pct_sample, align 4
  %i.ak = call ptr @proto_item_add_subtree(ptr noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.al = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.ag, i32 noundef -2147483648)
  %.not55 = icmp eq i32 %i.al, -1
  br i1 %.not55, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i32, ptr @hf_bthci_evt_pct_i_sample, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.ag, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %hf_bthci_evt_pct_not_available.sink58 = phi ptr [ @hf_bthci_evt_pct_q_sample, %bb.e ], [ @hf_bthci_evt_pct_not_available, %bb.d ]
  %.sink57 = phi i32 [ 3, %bb.e ], [ 4, %bb.d ]
  %i.ao = load i32, ptr %hf_bthci_evt_pct_not_available.sink58, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ag, i32 noundef %.sink57, i32 noundef -2147483648) ; 0 uses
  %i.aq = add i32 %1, 13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.0 = phi i32 [ %i.aq, %bb.f ], [ %i.o, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_bthci_evt_cs_mode2_step(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr @hf_bthci_evt_antenna_path_permutation_index, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i8, ptr %i.a, align 1
  %i.e = zext i8 %i.d to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.1914, i32 noundef %i.e)
  %.0291 = add i32 %1, 1                          ; 2 uses
  %.not2 = icmp ult i8 %4, 5
  br i1 %.not2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %5 = zext i8 %4 to i16
  %.lhs.trunc = add nuw nsw i16 %5, 1023
  %6 = lshr i16 %.lhs.trunc, 2
  %7 = trunc i16 %6 to i8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0295 = phi i32 [ %.029, %.lr.ph ], [ %.0291, %.lr.ph.preheader ] ; 4 uses
  %.04 = phi i8 [ %i.f, %.lr.ph ], [ %7, %.lr.ph.preheader ]
  %.029.in3 = phi i32 [ %i.s, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.f = add i8 %.04, -1                          ; 2 uses
  %i.g = load i32, ptr @hf_bthci_evt_cs_tone, align 4
  %i.h = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %.0295, i32 noundef 4, ptr noundef nonnull @.str.1887, ptr noundef nonnull @.str.1465)
  %i.i = load i32, ptr @ett_cs_tone, align 4
  %i.j = call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i) ; 3 uses
  %i.k = load i32, ptr @hf_bthci_evt_tone_pct, align 4
  %i.l = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef %.0295, i32 noundef 3, ptr noundef nonnull @.str.1887, ptr noundef nonnull @.str.1915)
  %i.m = load i32, ptr @ett_cs_pct_sample, align 4
  %i.n = call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.m) ; 2 uses
  %i.o = load i32, ptr @hf_bthci_evt_pct_i_sample, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %0, i32 noundef %.0295, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr @hf_bthci_evt_pct_q_sample, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.q, ptr noundef %0, i32 noundef %.0295, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.s = add i32 %.029.in3, 4                     ; 3 uses
  %i.t = load i32, ptr @hf_bthci_evt_tone_quality, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_bthci_evt_tone_extension_presence, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.029 = add i32 %.029.in3, 5                    ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.029.lcssa = phi i32 [ %.0291, %bb.a ], [ %.029, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.029.lcssa
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

attributes #0 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { allocsize(2) }
attributes #11 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6, !21}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
end_hunk_0
