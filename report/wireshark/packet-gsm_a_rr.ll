Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_a_rr?download=true
inline.NumInlined: 321
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@dtap_rr_ec_dl_ass:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_gsm_a_rr_ec_page_extension, align 4
  %i.m = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.n = add i32 %i.a, 11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.f, %bb.a ]  ; 2 uses
  %i.o = load i32, ptr @hf_gsm_a_rr_tlli, align 4
  %i.p = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.o, ptr noundef %0, i32 noundef %.0, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.q = add i32 %.0, 32                          ; 2 uses
  %i.r = tail call fastcc zeroext i16 @de_rr_ec_pkt_ch_dsc2(ptr noundef %0, ptr noundef %1, i32 noundef %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = add i32 %i.q, %i.s                       ; 11 uses
  %i.u = load i32, ptr @hf_gsm_a_rr_timing_adv, align 4
  %i.v = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.w = add i32 %i.t, 6
  %i.x = load i32, ptr @hf_gsm_a_rr_ec_starting_dl_timeslot, align 4
  %i.y = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.z = add i32 %i.t, 9
  %i.aa = load i32, ptr @hf_gsm_a_rr_tfi_assignment, align 4
  %i.ab = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %i.t, 14
  %i.ad = load i32, ptr @hf_gsm_a_rr_ec_cc1_timeslot_multiplier, align 4
  %i.ae = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ac, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.af = add i32 %i.t, 16
  %i.ag = load i32, ptr @hf_gsm_a_rr_ec_starting_ul_timeslot_offset, align 4
  %i.ah = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ai = add i32 %i.t, 18
  %i.aj = load i32, ptr @hf_gsm_a_rr_gamma, align 4
  %i.ak = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.al = add i32 %i.t, 23
  %i.am = load i32, ptr @hf_gsm_a_rr_ec_alpha_enable, align 4
  %i.an = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = add i32 %i.t, 24                        ; 2 uses
  %i.ap = load i32, ptr @hf_gsm_a_rr_p0_present, align 4
  %i.aq = and i32 %i.t, 7
  %i.ar = lshr exact i32 128, %i.aq
  %i.as = ashr i32 %i.ao, 3
  %i.at = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.as)
  %i.au = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = zext i8 %i.at to i32
  %i.aw = and i32 %i.ar, %i.av
  %.not61 = icmp eq i32 %i.aw, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = add i32 %i.t, 25
  %i.ay = load i32, ptr @hf_gsm_a_rr_p0, align 4
  %i.az = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.ax, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %i.t, 29
  %i.bb = load i32, ptr @hf_gsm_a_rr_pr_mode, align 4
  %i.bc = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dtap_rr_ec_paging_req(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #3 {
bb.a:
  %i.a = shl i32 %3, 3                            ; 5 uses
  %i.b = or disjoint i32 %i.a, 4
  %i.c = load i32, ptr @hf_gsm_a_rr_ec_used_dl_cc, align 4
  %i.d = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.b, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = or disjoint i32 %i.a, 6
  %i.f = or disjoint i32 %i.a, 7                  ; 2 uses
  %i.g = load i32, ptr @hf_gsm_a_rr_ec_page_extension_exist, align 4
  %i.h = ashr exact i32 %i.a, 3
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h)
  %i.j = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = and i8 %i.i, 2
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_gsm_a_rr_ec_page_extension, align 4
  %i.m = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.n = add i32 %i.a, 11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.f, %bb.a ]  ; 5 uses
  %i.o = add i32 %.0, 1                           ; 2 uses
  %i.p = load i32, ptr @hf_gsm_a_rr_ec_ptmsi_imsi_select, align 4
  %i.q = and i32 %.0, 7
  %i.r = lshr exact i32 128, %i.q
  %i.s = ashr i32 %.0, 3
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.s)
  %i.u = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = zext i8 %i.t to i32
  %i.w = and i32 %i.r, %i.v
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc i32 @dtap_rr_ec_paging_imsi(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %i.o)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = load i32, ptr @hf_gsm_a_tmsi, align 4
  %i.z = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.o, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.0, 33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.x, %bb.d ], [ %i.aa, %bb.e ] ; 5 uses
  %i.ab = load i32, ptr @hf_gsm_a_rr_ec_mobile_identity_2_exist, align 4
  %i.ac = and i32 %.1, 7
  %i.ad = lshr exact i32 128, %i.ac
  %i.ae = ashr i32 %.1, 3
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ae)
  %i.ag = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = zext i8 %i.af to i32
  %i.ai = and i32 %i.ad, %i.ah
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add i32 %.1, 1                          ; 3 uses
  %i.ak = add i32 %.1, 2                          ; 2 uses
  %i.al = load i32, ptr @hf_gsm_a_rr_ec_ptmsi_imsi_select, align 4
  %i.am = and i32 %i.aj, 7
  %i.an = lshr exact i32 128, %i.am
  %i.ao = ashr i32 %i.aj, 3
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ao)
  %i.aq = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = zext i8 %i.ap to i32
  %i.as = and i32 %i.an, %i.ar
  %.not38 = icmp eq i32 %i.as, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = tail call fastcc i32 @dtap_rr_ec_paging_imsi(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %i.ak) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = load i32, ptr @hf_gsm_a_tmsi, align 4
  %i.av = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.ak, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i16 @de_rr_ec_pkt_ch_dsc2(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = lshr i32 %2, 3
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_elem, i64 348), align 4
  %i.c = tail call ptr @val_to_str_ext_const(i32 noundef 87, ptr noundef nonnull @gsm_rr_elem_strings_ext, ptr noundef nonnull @.str.84)
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.a, i32 noundef 2, i32 noundef %i.b, ptr noundef null, ptr noundef %i.c) ; 6 uses
  %i.e = load i32, ptr @hf_gsm_a_rr_ec_qhfi, align 4
  %i.f = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.g = add i32 %2, 2
  %i.h = load i32, ptr @hf_gsm_a_rr_ec_dl_cc, align 4
  %i.i = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = add i32 %2, 4
  %i.k = load i32, ptr @hf_gsm_a_rr_ec_ul_cc, align 4
  %i.l = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.m = add i32 %2, 6
  %i.n = load i32, ptr @hf_gsm_a_rr_tsc_set, align 4
  %i.o = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = add i32 %2, 7
  %i.q = load i32, ptr @hf_gsm_a_rr_ec_tsc, align 4
  %i.r = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.s = add i32 %2, 10
  %i.t = load i32, ptr @hf_gsm_a_rr_ec_ma_number, align 4
  %i.u = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 5, i32 noundef 0) ; 0 uses
  ret i16 15
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dtap_rr_ec_paging_imsi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @hf_gsm_a_rr_ec_imsi_digits, align 4
  %i.c = call ptr @proto_tree_add_bits_ret_val(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 0) ; 0 uses
  %i.d = add i32 %3, 4                            ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i64, ptr %i.a, align 8
  %i.h = add i64 %i.g, 2
  %i.i = call ptr @wmem_strbuf_new_sized(ptr noundef %i.f, i64 noundef %i.h) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.020 = phi i8 [ 0, %bb.a ], [ %i.o, %bb.b ]
  %.01819 = phi i32 [ %i.d, %bb.a ], [ %i.n, %bb.b ] ; 3 uses
  %i.j = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %.01819, i32 noundef 4)
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr @digits, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  call void @wmem_strbuf_append_c(ptr noundef %i.i, i8 noundef signext %i.m)
  %i.n = add i32 %.01819, 4                       ; 2 uses
  %i.o = add i8 %.020, 1                          ; 2 uses
  %4 = zext i8 %i.o to i32
  %i.p = load i64, ptr %i.a, align 8
  %5 = trunc i64 %i.p to i32
  %6 = and i32 %5, 255
  %.not = icmp samesign ult i32 %6, %4
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !90

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr @hf_gsm_a_rr_ec_imsi, align 4
  %i.r = sub i32 %.01819, %3
  %i.s = add i32 %i.r, 7
  %i.t = lshr i32 %i.s, 3
  %i.u = call ptr @wmem_strbuf_finalize(ptr noundef %i.i)
  %i.v = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.t, ptr noundef %i.u) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.n
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new_sized(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { allocsize(1) }
attributes #12 = { noreturn }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = distinct !{!2, !9}
!3 = !{i32 8, !"cf-protection-return", i32 1}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"probe-stack", !"inline-asm"}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !9}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !9}
!88 = distinct !{!88, !9}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
end_hunk_0
