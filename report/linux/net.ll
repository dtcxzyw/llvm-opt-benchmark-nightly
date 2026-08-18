inline.NumInlined: 183
inline.NumDeleted: 69
begin_hunk_0_@io_msg_copy_hdr:bb.a

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %2, i64 8
  store i32 %i.ar, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.b, i64 16
  %i.au = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.at) #11
          to label %bb.k [label %bb.n], !srcloc !44

bb.k:                                             ; preds = %bb.j
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr i8, ptr %2, i64 16        ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.b, i64 24
  %i.ay = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.ax) #11
          to label %bb.l [label %bb.n], !srcloc !45

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr i8, ptr %2, i64 24        ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.b, i64 32
  %i.bb = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.ba) #11
          to label %bb.m [label %bb.n], !srcloc !46

bb.m:                                             ; preds = %bb.l
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr i8, ptr %2, i64 32
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %i.b, i64 40
  %i.bf = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.be) #11
          to label %bb.o [label %bb.n], !srcloc !47

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !48
  br label %io_copy_msghdr_from_user.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %2, i64 40
  store i64 %i.bf, ptr %i.bg, align 8
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !48
  %i.bh = getelementptr i8, ptr %2, i64 48
  store i32 0, ptr %i.bh, align 8
  %i.bi = tail call i32 @__copy_msghdr(ptr noundef %i.d, ptr noundef %2, ptr noundef %3) #12 ; 2 uses
  %.not40 = icmp eq i32 %i.bi, 0
  br i1 %.not40, label %bb.p, label %io_copy_msghdr_from_user.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %0, i64 72
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = and i64 %i.bk, 32
  %.not41 = icmp eq i64 %i.bl, 0
  br i1 %.not41, label %io_copy_msghdr_from_user.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = load i64, ptr %i.az, align 8
  switch i64 %i.bm, label %io_copy_msghdr_from_user.exit.thread [
    i64 0, label %bb.r
    i64 1, label %copy_from_user.exit
  ]

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.bn, align 8
  br label %io_copy_msghdr_from_user.exit.thread

copy_from_user.exit:                              ; preds = %bb.q
  %i.bo = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !20
  %i.bp = call i64 @_copy_from_user(ptr noundef nonnull %6, ptr noundef %i.bo, i64 noundef 16) #12
  %.not43 = icmp eq i64 %i.bp, 0
  br i1 %.not43, label %bb.s, label %.critedge

bb.s:                                             ; preds = %copy_from_user.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr i8, ptr %0, i64 16
  store i32 %i.bs, ptr %i.bt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %io_copy_msghdr_from_user.exit.thread

.critedge:                                        ; preds = %copy_from_user.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %io_copy_msghdr_from_user.exit.thread

io_copy_msghdr_from_user.exit.thread:             ; preds = %bb.g, %bb.n, %bb.p, %bb.r, %bb.s, %.critedge, %bb.q, %bb.o, %io_compat_msg_copy_hdr.exit.thread
  %.2 = phi i32 [ %.0, %io_compat_msg_copy_hdr.exit.thread ], [ -14, %.critedge ], [ 0, %bb.p ], [ -22, %bb.q ], [ %i.bi, %bb.o ], [ 0, %bb.s ], [ 0, %bb.r ], [ -14, %bb.n ], [ -14, %bb.g ]
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__copy_msghdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__get_compat_msghdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__copy_overflow(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @io_buffers_select(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @io_kbuf_commit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__io_put_kbufs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @io_kbuf_recycle_legacy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @io_buffers_peek(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_tx_ubuf_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__io_account_mem(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zerocopy_fill_skb_from_iter(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__skb_zcopy_downgrade_managed(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @io_import_reg_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @io_cache_alloc_new(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #14 = { noredzone "no-builtin-wcslen" }
attributes #15 = { nounwind memory(none) }

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
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 2162087388, i64 2162087258}
!12 = !{i64 2162087919, i64 2162088990, i64 2162089023, i64 2162089058, i64 2162089074, i64 2162090001, i64 2162090059, i64 2162090108, i64 2162089918, i64 2162089133, i64 2162089165, i64 2162089248}
!13 = !{i64 2162090407, i64 2162090278}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i64 2158106196, i64 2158106071}
!16 = !{i64 2158110780, i64 2158111834, i64 2158111867, i64 2158111902, i64 2158111918, i64 2158112845, i64 2158112903, i64 2158112952, i64 2158112762, i64 2158111977, i64 2158112009, i64 2158112092}
!17 = !{i64 2158113251, i64 2158113127}
!18 = !{i64 11918}
!19 = !{i64 12015}
!20 = !{!"auto-init"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i64 29777}
!24 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!25 = !{i64 33806}
!26 = !{i64 37422}
!27 = !{i64 37531}
!28 = distinct !{!28, !22}
!29 = !{i64 2162230209, i64 2162230079}
!30 = !{i64 2162230740, i64 2162231818, i64 2162231851, i64 2162231886, i64 2162231902, i64 2162232829, i64 2162232887, i64 2162232936, i64 2162232746, i64 2162231961, i64 2162231993, i64 2162232076}
!31 = !{i64 2162233236, i64 2162233107}
!32 = !{i64 2149831315}
!33 = !{i64 48010}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = distinct !{null}
!37 = !{i64 2161453811}
!38 = !{i64 50474}
!39 = !{i64 2153769278, i64 2153769290, i64 2153769304, i64 2153769355, i64 2153769394}
!40 = !{i64 2153415427, i64 2153415456, i64 2153415462, i64 2153415478, i64 2153415494, i64 2153415521, i64 2153415621, i64 2153415681, i64 2153415795, i64 2153415843, i64 2153415891, i64 2153415955, i64 2153416012, i64 2153416064, i64 2153416190, i64 2153416409, i64 2153416276, i64 2153416307, i64 2153416313, i64 2153416329, i64 2153416345}
!41 = !{i64 2153778814, i64 2153778843, i64 2153778849, i64 2153778865, i64 2153778881, i64 2153778908, i64 2153779008, i64 2153779068, i64 2153779182, i64 2153779230, i64 2153779278, i64 2153779342, i64 2153779399, i64 2153779451, i64 2153779577, i64 2153779798, i64 2153779663, i64 2153779694, i64 2153779700, i64 2153779716, i64 2153779732}
!42 = !{i64 2162098164, i64 2162098184, i64 2162098220, i64 2162098282, i64 2162098305, i64 2162098337, i64 2162098370, i64 2162098395}
!43 = !{i64 2162104149, i64 2162104169, i64 2162104205, i64 2162104267, i64 2162104290, i64 2162104322, i64 2162104355, i64 2162104380}
!44 = !{i64 2162116432, i64 2162116452, i64 2162116488, i64 2162116550, i64 2162116573, i64 2162116605, i64 2162116638, i64 2162116663}
!45 = !{i64 2162123572, i64 2162123592, i64 2162123628, i64 2162123690, i64 2162123713, i64 2162123745, i64 2162123778, i64 2162123803}
!46 = !{i64 2162130754, i64 2162130774, i64 2162130810, i64 2162130872, i64 2162130895, i64 2162130927, i64 2162130960, i64 2162130985}
!47 = !{i64 2162138054, i64 2162138074, i64 2162138110, i64 2162138172, i64 2162138195, i64 2162138227, i64 2162138260, i64 2162138285}
!48 = !{i64 2153413587, i64 2153413616, i64 2153413622, i64 2153413638, i64 2153413654, i64 2153413681, i64 2153413781, i64 2153413841, i64 2153413955, i64 2153414003, i64 2153414051, i64 2153414115, i64 2153414172, i64 2153414224, i64 2153414350, i64 2153414569, i64 2153414436, i64 2153414467, i64 2153414473, i64 2153414489, i64 2153414505}
end_hunk_0
