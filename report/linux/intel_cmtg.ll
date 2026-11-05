Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_cmtg?download=true
inline.NumInlined: 29
inline.NumDeleted: 16
begin_hunk_0_@intel_cmtg_sanitize
define dso_local void @intel_cmtg_sanitize(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 72057594037927936
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %intel_cmtg_disable.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1168       ; 5 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp ugt i16 %i.e, 12
  br i1 %i.f, label %bb.c, label %intel_cmtg_disable.exit

bb.c:                                             ; preds = %bb.b
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 457352) #2
  %.val.i.i = load ptr, ptr %0, align 8
  %i.g = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #2 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef %i.g, i32 457352, i1 noundef zeroext true) #2, !inline_history !10
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 457352) #2
  %.val.i = load i16, ptr %i.d, align 8
  %i.k = icmp ugt i16 %.val.i, 19
  br i1 %i.k, label %bb.d, label %intel_cmtg_get_config.exit

bb.d:                                             ; preds = %bb.c
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 457608) #2
  %.val.i12.i = load ptr, ptr %0, align 8
  %i.l = tail call ptr @to_intel_uncore(ptr noundef %.val.i12.i) #2 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 144
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 %i.n(ptr noundef %i.l, i32 457608, i1 noundef zeroext true) #2, !inline_history !10
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 457608) #2
  %i.p = icmp slt i32 %i.o, 0
  br label %intel_cmtg_get_config.exit

intel_cmtg_get_config.exit:                       ; preds = %bb.c, %bb.d
  %.sroa.6.0 = phi i1 [ %i.p, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.q = tail call fastcc zeroext i1 @intel_cmtg_transcoder_is_secondary(ptr noundef %0, i32 noundef 0) #3, !srcloc !13 ; 3 uses
  %i.r = tail call fastcc zeroext i1 @intel_cmtg_transcoder_is_secondary(ptr noundef %0, i32 noundef 1) #3, !srcloc !14 ; 3 uses
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %intel_cmtg_get_config.exit
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %intel_cmtg_get_config.exit
  %i.v = phi ptr [ %i.u, %bb.e ], [ null, %intel_cmtg_get_config.exit ]
  %.val.i8 = load i16, ptr %i.d, align 8
  %i.w = icmp ugt i16 %.val.i8, 19
  %i.x = select i1 %.sroa.6.0, ptr @.str.2, ptr @.str.3
  %i.y = select i1 %i.w, ptr %i.x, ptr @.str.1
  %i.z = icmp slt i32 %i.j, 0                     ; 2 uses
  %i.aa = select i1 %i.z, ptr @.str.2, ptr @.str.3
  %i.ab = select i1 %i.q, ptr @.str.4, ptr @.str.5
  %i.ac = select i1 %i.r, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.v, i32 noundef 2, ptr noundef @.str, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #2
  %.val = load i16, ptr %i.d, align 8
  %i.ad = icmp ult i16 %.val, 20
  %spec.select.i = select i1 %i.q, i1 true, i1 %i.r
  %.0.i = select i1 %i.ad, i1 %spec.select.i, i1 false
  br i1 %.0.i, label %intel_cmtg_disable.exit, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit.i
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 1160
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 48
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, 394244                   ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ai) #2
  %.val.i.i13 = load ptr, ptr %0, align 8
  %i.aj = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i13) #2 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 %i.al(ptr noundef %i.aj, i32 %i.ai, i1 noundef zeroext true) #2, !inline_history !11
  %i.an = and i32 %i.am, -9
  %i.ao = getelementptr i8, ptr %i.aj, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef %i.aj, i32 %i.ai, i32 noundef range(i32 0, -8) %i.an, i1 noundef zeroext true) #2, !inline_history !12
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ai) #2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %0, i64 1160
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 80
  %i.at = getelementptr i8, ptr %i.ar, i64 84
  %i.au = load i32, ptr %i.at, align 4
  %i.av = load i32, ptr %i.as, align 4
  %i.aw = getelementptr i8, ptr %i.ar, i64 48
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.au, 394244
  %i.az = sub i32 %i.ay, %i.av
  %i.ba = add i32 %i.az, %i.ax                    ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ba) #2
  %.val.i31.i = load ptr, ptr %0, align 8
  %i.bb = tail call ptr @to_intel_uncore(ptr noundef %.val.i31.i) #2 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i32 %i.bd(ptr noundef %i.bb, i32 %i.ba, i1 noundef zeroext true) #2, !inline_history !11
  %i.bf = and i32 %i.be, -9
  %i.bg = getelementptr i8, ptr %i.bb, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef %i.bb, i32 %i.ba, i32 noundef range(i32 0, -8) %i.bf, i1 noundef zeroext true) #2, !inline_history !12
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ba) #2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i11, label %__drm_to_dev.exit.i12, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  br label %__drm_to_dev.exit.i12

__drm_to_dev.exit.i12:                            ; preds = %bb.l, %bb.k
  %i.bl = phi ptr [ %i.bk, %bb.l ], [ null, %bb.k ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bl, i32 noundef 2, ptr noundef @.str.6) #2
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 457352) #2
  %.val.i32.i = load ptr, ptr %0, align 8
  %i.bm = tail call ptr @to_intel_uncore(ptr noundef %.val.i32.i) #2 ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i32 %i.bo(ptr noundef %i.bm, i32 457352, i1 noundef zeroext true) #2, !inline_history !11
  %i.bq = and i32 %i.bp, 2147483647
  %i.br = getelementptr i8, ptr %i.bm, i64 176
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef %i.bm, i32 457352, i32 noundef range(i32 0, -8) %i.bq, i1 noundef zeroext true) #2, !inline_history !12
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 457352) #2
  br label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit.i12, %bb.j
  %.0.i9 = phi i32 [ -536870912, %__drm_to_dev.exit.i12 ], [ 0, %bb.j ] ; 2 uses
  br i1 %.sroa.6.0, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i33.i = icmp eq ptr %i.bt, null
  br i1 %.not.i33.i, label %__drm_to_dev.exit34.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  br label %__drm_to_dev.exit34.i

__drm_to_dev.exit34.i:                            ; preds = %bb.o, %bb.n
  %i.bw = phi ptr [ %i.bv, %bb.o ], [ null, %bb.n ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bw, i32 noundef 2, ptr noundef @.str.7) #2
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 457608) #2
  %.val.i35.i = load ptr, ptr %0, align 8
  %i.bx = tail call ptr @to_intel_uncore(ptr noundef %.val.i35.i) #2 ; 4 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 144
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call i32 %i.bz(ptr noundef %i.bx, i32 457608, i1 noundef zeroext true) #2, !inline_history !11
  %i.cb = and i32 %i.ca, 2147483647
  %i.cc = getelementptr i8, ptr %i.bx, i64 176
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef %i.bx, i32 457608, i32 noundef range(i32 0, -8) %i.cb, i1 noundef zeroext true) #2, !inline_history !12
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 457608) #2
  %i.ce = or disjoint i32 %.0.i9, 57344
  br label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit34.i, %bb.m
  %.1.i = phi i32 [ %i.ce, %__drm_to_dev.exit34.i ], [ %.0.i9, %bb.m ] ; 2 uses
  %.val.i10 = load i16, ptr %i.d, align 8
  %i.cf = icmp ugt i16 %.val.i10, 13
  %i.cg = icmp ne i32 %.1.i, 0
  %or.cond.i = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond.i, label %bb.q, label %intel_cmtg_disable.exit

bb.q:                                             ; preds = %bb.p
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 287072) #2
  %.val.i36.i = load ptr, ptr %0, align 8
  %i.ch = tail call ptr @to_intel_uncore(ptr noundef %.val.i36.i) #2 ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 144
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call i32 %i.cj(ptr noundef %i.ch, i32 287072, i1 noundef zeroext true) #2, !inline_history !11
  %i.cl = xor i32 %.1.i, -1
  %i.cm = and i32 %i.ck, %i.cl
  %i.cn = getelementptr i8, ptr %i.ch, i64 176
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef %i.ch, i32 287072, i32 noundef range(i32 0, -8) %i.cm, i1 noundef zeroext true) #2, !inline_history !12
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 287072) #2
  br label %intel_cmtg_disable.exit

intel_cmtg_disable.exit:                          ; preds = %__drm_to_dev.exit.i, %bb.q, %bb.p, %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @intel_cmtg_transcoder_is_secondary(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1160
  %i.b = getelementptr i8, ptr %0, i64 1189
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i64
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = shl nuw nsw i64 1, %i.e
  %i.g = and i64 %i.f, %i.d
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %1, 9                    ; 2 uses
  %i.i = tail call ptr @intel_display_power_get_if_enabled(ptr noundef %0, i32 noundef %i.h) #2
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 80       ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %i.e
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i32, ptr %i.l, align 4
  %i.p = getelementptr i8, ptr %i.k, i64 48
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.n, 394244
  %i.s = sub i32 %i.r, %i.o
  %i.t = add i32 %i.s, %i.q                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.t) #2
  %.val.i = load ptr, ptr %0, align 8
  %i.u = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #2 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 %i.w(ptr noundef %i.u, i32 %i.t, i1 noundef zeroext true) #2, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.t) #2
  tail call void @__intel_display_power_put_async(ptr noundef %0, i32 noundef range(i32 9, 11) %i.h, ptr noundef nonnull inttoptr (i64 -2 to ptr), i32 noundef -1) #2
  %i.y = and i32 %i.x, 8
  %i.z = icmp ne i32 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.z, %.lr.ph ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_display_power_get_if_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__intel_display_power_put_async(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind "no-builtin-wcslen" }
attributes #3 = { noredzone "no-builtin-wcslen" }

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
!10 = distinct !{null, null, null}
!11 = distinct !{null, null, null, null}
!12 = distinct !{null, null, null, null}
!13 = !{i64 3622}
!14 = !{i64 3715}
!15 = distinct !{null, null}
end_hunk_0
