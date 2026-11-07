Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/exthdrs_core?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@ipv6_find_hdr:bb.a
__skb_header_pointer.exit128.thread150:           ; preds = %bb.m, %__skb_header_pointer.exit128
  %.0.i125153 = phi ptr [ %i.an, %__skb_header_pointer.exit128 ], [ %6, %bb.m ] ; 7 uses
  switch i8 %.280, label %.split295 [
    i8 43, label %bb.n
    i8 44, label %bb.r
    i8 51, label %bb.ad
  ]

bb.n:                                             ; preds = %__skb_header_pointer.exit128.thread150
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !10
  %.val118 = load i32, ptr %i.ab, align 8
  %.val119 = load i32, ptr %i.ac, align 4
  %i.ao = add i32 %.284, %.val119
  %i.ap = sub i32 %.val118, %i.ao
  %.not.i129 = icmp slt i32 %i.ap, 4
  br i1 %.not.i129, label %bb.o, label %__skb_header_pointer.exit133, !prof !11

bb.o:                                             ; preds = %bb.n
  br i1 %.not13.i126, label %__skb_header_pointer.exit133.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %.284, ptr noundef nonnull %7, i32 noundef 4) #8
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %__skb_header_pointer.exit133.thread, label %__skb_header_pointer.exit133.thread158, !prof !11

__skb_header_pointer.exit133:                     ; preds = %bb.n
  %i.as = load ptr, ptr %i.f, align 8
  %i.at = sext i32 %.284 to i64
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at  ; 2 uses
  %.not108.not = icmp eq ptr %i.au, null
  br i1 %.not108.not, label %__skb_header_pointer.exit133.thread, label %__skb_header_pointer.exit133.thread158

__skb_header_pointer.exit133.thread158:           ; preds = %bb.p, %__skb_header_pointer.exit133
  %.0.i130161 = phi ptr [ %i.au, %__skb_header_pointer.exit133 ], [ %7, %bb.p ]
  br i1 %.not111, label %.thread166, label %bb.q

bb.q:                                             ; preds = %__skb_header_pointer.exit133.thread158
  %i.av = load i32, ptr %4, align 4
  %i.aw = and i32 %i.av, 4
  %.not110 = icmp eq i32 %i.aw, 0
  br i1 %.not110, label %.thread166, label %.split296

.split296:                                        ; preds = %bb.q
  %i.ax = getelementptr i8, ptr %.0.i130161, i64 3
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp ne i8 %i.ay, 0
  %i.ba = and i1 %i.af, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.bb = getelementptr i8, ptr %.0.i125153, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 3
  %i.bf = add nuw nsw i32 %i.be, 8
  br i1 %i.ba, label %.thread222, label %bb.ah

.thread166:                                       ; preds = %bb.q, %__skb_header_pointer.exit133.thread158
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.bg = getelementptr i8, ptr %.0.i125153, i64 1
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 3
  %i.bk = add nuw nsw i32 %i.bj, 8
  br i1 %i.af, label %.thread222, label %bb.ah

__skb_header_pointer.exit133.thread:              ; preds = %bb.p, %bb.o, %__skb_header_pointer.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %.thread187

bb.r:                                             ; preds = %__skb_header_pointer.exit128.thread150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i16 0, ptr %i.a, align 2, !annotation !10
  br i1 %.not111, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load i32, ptr %4, align 4
  %i.bm = or i32 %i.bl, 1
  store i32 %i.bm, ptr %4, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bn = add i32 %.284, 2                        ; 2 uses
  %.val120 = load i32, ptr %i.ab, align 8
  %.val121 = load i32, ptr %i.ac, align 4
  %i.bo = add i32 %.val120, -2
  %i.bp = add i32 %.284, %.val121
  %i.bq = sub i32 %i.bo, %i.bp
  %.not.i134 = icmp slt i32 %i.bq, 2
  br i1 %.not.i134, label %bb.u, label %__skb_header_pointer.exit138, !prof !11

bb.u:                                             ; preds = %bb.t
  br i1 %.not13.i126, label %.thread219, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %i.bn, ptr noundef nonnull %i.a, i32 noundef 2) #8
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.thread219, label %__skb_header_pointer.exit138.thread175, !prof !11

__skb_header_pointer.exit138:                     ; preds = %bb.t
  %i.bt = load ptr, ptr %i.f, align 8
  %i.bu = sext i32 %i.bn to i64
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu  ; 2 uses
  %.not113 = icmp eq ptr %i.bv, null
  br i1 %.not113, label %.thread219, label %__skb_header_pointer.exit138.thread175

__skb_header_pointer.exit138.thread175:           ; preds = %bb.v, %__skb_header_pointer.exit138
  %.0.i135178 = phi ptr [ %i.bv, %__skb_header_pointer.exit138 ], [ %i.a, %bb.v ]
  %i.bw = load i16, ptr %.0.i135178, align 2
  %i.bx = and i16 %i.bw, -1793                    ; 2 uses
  %i.by = call i16 @llvm.bswap.i16(i16 %i.bx)     ; 3 uses
  store i16 %i.by, ptr %i.a, align 2
  %.not114 = icmp eq i16 %i.bx, 0
  br i1 %.not114, label %.split, label %bb.w

bb.w:                                             ; preds = %__skb_header_pointer.exit138.thread175
  br i1 %i.ad, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = load i8, ptr %.0.i125153, align 1       ; 2 uses
  switch i8 %i.bz, label %ipv6_ext_hdr.exit139 [
    i8 60, label %bb.aa
    i8 0, label %bb.aa
    i8 43, label %bb.aa
    i8 44, label %bb.aa
    i8 51, label %bb.aa
  ]

ipv6_ext_hdr.exit139:                             ; preds = %bb.x
  br i1 %.not103, label %bb.z, label %bb.y

bb.y:                                             ; preds = %ipv6_ext_hdr.exit139
  store i16 %i.by, ptr %3, align 2
  %.pre = load i8, ptr %.0.i125153, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %ipv6_ext_hdr.exit139
  %i.ca = phi i8 [ %.pre, %bb.y ], [ %i.bz, %ipv6_ext_hdr.exit139 ]
  %i.cb = zext i8 %i.ca to i32
  br label %.thread219

bb.aa:                                            ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.w
  br i1 %i.af, label %bb.ab, label %.thread219

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not103, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i16 %i.by, ptr %3, align 2
  br label %bb.ag

.split:                                           ; preds = %__skb_header_pointer.exit138.thread175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %i.af, label %.thread222, label %bb.ah

bb.ad:                                            ; preds = %__skb_header_pointer.exit128.thread150
  br i1 %.not111, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load i32, ptr %4, align 4
  %i.cd = and i32 %i.cc, 2
  %i.ce = icmp ne i32 %i.cd, 0
  %or.cond8 = and i1 %i.ad, %i.ce
  br i1 %or.cond8, label %.thread222, label %bb.af

.split295:                                        ; preds = %__skb_header_pointer.exit128.thread150
  %i.cf = getelementptr i8, ptr %.0.i125153, i64 1
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 3
  %i.cj = add nuw nsw i32 %i.ci, 8
  br i1 %i.af, label %.thread222, label %bb.ah

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ck = getelementptr i8, ptr %.0.i125153, i64 1
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 2
  %i.co = add nuw nsw i32 %i.cn, 8
  br i1 %i.af, label %.thread222, label %bb.ah

.thread187:                                       ; preds = %bb.j, %__skb_header_pointer.exit128, %bb.l, %bb.m, %ipv6_ext_hdr.exit.thread, %__skb_header_pointer.exit133.thread
  %.7.ph = phi i32 [ -2, %ipv6_ext_hdr.exit.thread ], [ -74, %__skb_header_pointer.exit133.thread ], [ -74, %bb.m ], [ -74, %bb.l ], [ -74, %__skb_header_pointer.exit128 ], [ -74, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.ai

.thread219:                                       ; preds = %__skb_header_pointer.exit138, %bb.u, %bb.v, %bb.aa, %bb.z
  %.5.ph.ph = phi i32 [ %i.cb, %bb.z ], [ -2, %bb.aa ], [ -74, %bb.v ], [ -74, %bb.u ], [ -74, %__skb_header_pointer.exit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread222

bb.ah:                                            ; preds = %.split296, %.thread166, %.split295, %.split, %bb.af
  %.1294 = phi i32 [ 8, %.split ], [ %i.co, %bb.af ], [ %i.cj, %.split295 ], [ %i.bk, %.thread166 ], [ %i.bf, %.split296 ]
  %i.cp = load i8, ptr %.0.i125153, align 1
  %i.cq = add i32 %.1294, %.284
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.i, !llvm.loop !12

.thread222:                                       ; preds = %bb.ae, %bb.af, %.split, %.split295, %.thread166, %.split296, %ipv6_ext_hdr.exit.thread, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  store i32 %.284, ptr %1, align 4
  %i.cr = zext i8 %.280 to i32
  br label %bb.ai

.critedge:                                        ; preds = %bb.f, %bb.e, %__skb_header_pointer.exit, %__skb_header_pointer.exit.thread142
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.ai

bb.ai:                                            ; preds = %.thread219, %.thread187, %.critedge, %.thread222
  %.8 = phi i32 [ %.5.ph.ph, %.thread219 ], [ %i.cr, %.thread222 ], [ -74, %.critedge ], [ %.7.ph, %.thread187 ]
  ret i32 %.8
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
