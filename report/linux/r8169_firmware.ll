inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rtl_fw_release_firmware:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @release_firmware(ptr noundef %i.b) #4
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @rtl_fw_request_firmware(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @firmware_request_nowarn(ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e) #4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 13 uses
  %i.k = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.l = load i64, ptr %i.h, align 8              ; 7 uses
  %i.m = icmp ult i64 %i.l, 4
  br i1 %i.m, label %rtl_fw_data_ok.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.j, align 1
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.l, 45
  br i1 %i.o, label %rtl_fw_data_ok.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i64 %i.l, 7                     ; 3 uses
  %unroll_iter = and i64 %i.l, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader
  %.045.i = phi i8 [ 0, %.preheader.i.preheader ], [ %i.at, %.preheader.i ]
  %.03544.i = phi i64 [ 0, %.preheader.i.preheader ], [ %i.au, %.preheader.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader ], [ %niter.next.7, %.preheader.i ]
  %i.p = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.q = load i8, ptr %i.p, align 1
  %i.r = add i8 %i.q, %.045.i
  %i.s = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.t = getelementptr i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = add i8 %i.u, %i.r
  %i.w = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.x = getelementptr i8, ptr %i.w, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = add i8 %i.y, %i.v
  %i.aa = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 3
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = add i8 %i.ac, %i.z
  %i.ae = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = add i8 %i.ag, %i.ad
  %i.ai = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = add i8 %i.ak, %i.ah
  %i.am = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.an = getelementptr i8, ptr %i.am, i64 6
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, %i.al
  %i.aq = getelementptr i8, ptr %i.j, i64 %.03544.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 7
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = add i8 %i.as, %i.ap                     ; 3 uses
  %i.au = add nuw i64 %.03544.i, 8                ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader.i, !llvm.loop !12

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.045.i.epil = phi i8 [ %i.ax, %.preheader.i.epil ], [ %i.at, %.preheader.i.epil.preheader ]
  %.03544.i.epil = phi i64 [ %i.ay, %.preheader.i.epil ], [ %i.au, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.av = getelementptr i8, ptr %i.j, i64 %.03544.i.epil
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = add i8 %i.aw, %.045.i.epil              ; 2 uses
  %i.ay = add nuw i64 %.03544.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !13

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %.lcssa35 = phi i8 [ %i.at, %.unr-lcssa ], [ %i.ax, %.preheader.i.epil ]
  %.not42.i = icmp eq i8 %.lcssa35, 0
  br i1 %.not42.i, label %bb.e, label %rtl_fw_data_ok.exit

bb.e:                                             ; preds = %.epilog-lcssa
  %i.az = getelementptr i8, ptr %i.j, i64 36
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = zext i32 %i.ba to i64                   ; 3 uses
  %i.bc = icmp ult i64 %i.l, %i.bb
  br i1 %i.bc, label %rtl_fw_data_ok.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr i8, ptr %i.j, i64 40
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = sub nuw i64 %i.l, %i.bb
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = icmp samesign ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %rtl_fw_data_ok.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f
  %i.bj = getelementptr i8, ptr %0, i64 56
  %i.bk = getelementptr i8, ptr %i.j, i64 4
  %i.bl = tail call i64 @sized_strscpy(ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef 32) #4 ; 0 uses
  %i.bm = load ptr, ptr %i.i, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bb  ; 2 uses
  store ptr %i.bn, ptr %i.k, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.bo = and i64 %i.l, 3
  %.not43.i = icmp eq i64 %i.bo, 0
  br i1 %.not43.i, label %bb.h, label %rtl_fw_data_ok.exit

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr i8, ptr %0, i64 56
  %i.bq = load ptr, ptr %i.b, align 8
  %i.br = tail call i64 @sized_strscpy(ptr noundef %i.bp, ptr noundef %i.bq, i64 noundef 32) #4 ; 0 uses
  %i.bs = load ptr, ptr %i.i, align 8             ; 2 uses
  store ptr %i.bs, ptr %i.k, align 8
  %i.bt = load i64, ptr %i.h, align 8
  %i.bu = lshr i64 %i.bt, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge.i
  %i.bv = phi ptr [ %i.bs, %bb.h ], [ %i.bn, %.critedge.i ]
  %.sink.i = phi i64 [ %i.bu, %bb.h ], [ %i.bf, %.critedge.i ] ; 5 uses
  %i.bw = getelementptr i8, ptr %0, i64 96
  store i64 %.sink.i, ptr %i.bw, align 8
  %i.bx = icmp eq i64 %.sink.i, 0
  br i1 %i.bx, label %rtl_fw_data_ok.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.n
  %.02133.i = phi i64 [ %i.cl, %bb.n ], [ 0, %bb.i ] ; 5 uses
  %i.by = getelementptr [4 x i8], ptr %i.bv, i64 %.02133.i
  %i.bz = load i32, ptr %i.by, align 4            ; 4 uses
  %i.ca = lshr i32 %i.bz, 16
  %i.cb = and i32 %i.ca, 4095                     ; 2 uses
  %i.cc = lshr i32 %i.bz, 28
  switch i32 %i.cc, label %.thread27.i [
    i32 0, label %bb.n
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 7, label %bb.n
    i32 8, label %bb.n
    i32 12, label %bb.n
    i32 14, label %bb.n
    i32 4, label %bb.j
    i32 3, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.m
    i32 13, label %bb.m
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.cd = and i32 %i.bz, 65534
  %.not25.i = icmp eq i32 %i.cd, 0
  br i1 %.not25.i, label %bb.n, label %bb.o

bb.k:                                             ; preds = %.lr.ph.i
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = icmp samesign ult i64 %.02133.i, %i.ce
  br i1 %i.cf, label %bb.o, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  %i.cg = add nuw nsw i64 %.02133.i, 2
  %.not24.i = icmp samesign ult i64 %i.cg, %.sink.i
  br i1 %.not24.i, label %bb.n, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ch = add nuw nsw i64 %.02133.i, 1
  %i.ci = zext nneg i32 %i.cb to i64
  %i.cj = add nuw nsw i64 %i.ch, %i.ci
  %.not.i13 = icmp samesign ult i64 %i.cj, %.sink.i
  br i1 %.not.i13, label %bb.n, label %bb.o

.thread27.i:                                      ; preds = %.lr.ph.i
  %i.ck = load ptr, ptr %i.d, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ck, ptr noundef nonnull @.str.1, i32 noundef %i.bz) #5
  br label %rtl_fw_data_ok.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.cl = add nuw nsw i64 %.02133.i, 1            ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %i.cl, %.sink.i
  br i1 %exitcond.not.i14, label %rtl_fw_data_ok.exit.thread, label %.lr.ph.i, !llvm.loop !15

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.cm = load ptr, ptr %i.d, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cm, ptr noundef nonnull @.str.2) #5
  br label %rtl_fw_data_ok.exit

rtl_fw_data_ok.exit:                              ; preds = %.epilog-lcssa, %bb.e, %bb.f, %bb.g, %bb.d, %bb.b, %bb.o, %.thread27.i
  %i.cn = load ptr, ptr %i.a, align 8
  tail call void @release_firmware(ptr noundef %i.cn) #4
  br label %bb.p

bb.p:                                             ; preds = %rtl_fw_data_ok.exit, %bb.a
  %.0 = phi i32 [ %i.f, %bb.a ], [ -22, %rtl_fw_data_ok.exit ] ; 2 uses
  %i.co = load ptr, ptr %i.d, align 8
  %i.cp = load ptr, ptr %i.b, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.co, ptr noundef nonnull @.str, ptr noundef %i.cp, i32 noundef %.0) #5
  br label %rtl_fw_data_ok.exit.thread

rtl_fw_data_ok.exit.thread:                       ; preds = %bb.n, %bb.i, %bb.p
  %.011 = phi i32 [ %.0, %bb.p ], [ 0, %bb.i ], [ 0, %bb.n ]
  ret i32 %.011
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { noredzone nounwind "no-builtin-wcslen" }
attributes #5 = { cold noredzone nounwind "no-builtin-wcslen" }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11}
end_hunk_0
