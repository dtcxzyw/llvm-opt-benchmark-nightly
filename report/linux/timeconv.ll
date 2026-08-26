Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/timeconv?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_time64_to_tm: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad time64_to_tm ; .previous"

@__UNIQUE_ID_addressable_time64_to_tm_428 = internal global ptr @time64_to_tm, section ".discard.addressable", align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_addressable_time64_to_tm_428], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @time64_to_tm(i64 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 20), (24, 40)) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = srem i64 %0, 86400                       ; 2 uses
  %i.b = sdiv i64 %0, 86400                       ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = add nsw i64 %i.a, %i.c                   ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 -86400)
  %3 = icmp samesign ult i64 %i.d, -86400
  %umin = zext i1 %3 to i64                       ; 2 uses
  %4 = add nsw i64 %i.d, %umin
  %5 = sub nsw i64 %i.f, %4
  %6 = udiv i64 %5, 86400
  %7 = add nuw nsw i64 %6, %umin                  ; 2 uses
  %i.g = mul i64 %7, 86400
  %i.h = add i64 %i.a, %i.g
  %i.i = add i64 %i.h, %i.c
  %i.j = add i64 %i.i, 86400
  %i.k = xor i64 %7, -1
  %i.l = add nsw i64 %i.b, %i.k
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.a
  %.049.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.j, %.lr.ph.preheader ] ; 5 uses
  %i.m = icmp samesign ugt i64 %.0.lcssa, 86399
  br i1 %i.m, label %.lr.ph69.preheader, label %._crit_edge

.lr.ph69.preheader:                               ; preds = %.preheader
  %i.n = add i64 %.0.lcssa, -86400
  %i.o = add i64 %.0.lcssa, 86399
  %smin = tail call i64 @llvm.smin.i64(i64 %.0.lcssa, i64 172799)
  %i.p = sub i64 %i.o, %smin
  %i.q = udiv i64 %i.p, 86400                     ; 2 uses
  %.neg = mul i64 %i.q, -86400
  %i.r = add i64 %.neg, %i.n
  %i.s = add nsw i64 %.049.lcssa, %i.q
  %i.t = add nsw i64 %i.s, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph69.preheader, %.preheader
  %.150.lcssa = phi i64 [ %.049.lcssa, %.preheader ], [ %i.t, %.lr.ph69.preheader ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %i.r, %.lr.ph69.preheader ]
  %.lhs.trunc = trunc nuw i64 %.1.lcssa to i32    ; 2 uses
  %i.u = udiv i32 %.lhs.trunc, 3600
  %i.v = getelementptr i8, ptr %2, i64 8
  store i32 %i.u, ptr %i.v, align 8
  %i.w = urem i32 %.lhs.trunc, 3600
  %.lhs.trunc58 = trunc nuw nsw i32 %i.w to i16   ; 2 uses
  %i.x = udiv i16 %.lhs.trunc58, 60
  %i.y = zext nneg i16 %i.x to i32
  %i.z = getelementptr i8, ptr %2, i64 4
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = urem i16 %.lhs.trunc58, 60
  %i.ab = zext nneg i16 %i.aa to i32
  store i32 %i.ab, ptr %2, align 8
  %i.ac = add nsw i64 %.150.lcssa, 4
  %i.ad = srem i64 %i.ac, 7                       ; 2 uses
  %i.ae = trunc nsw i64 %i.ad to i32              ; 2 uses
  %i.af = getelementptr i8, ptr %2, i64 32
  %i.ag = icmp slt i64 %i.ad, 0
  %i.ah = add nsw i32 %i.ae, 7
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.ae
  store i32 %spec.select, ptr %i.af, align 8
  %i.ai = shl nsw i64 %.150.lcssa, 2
  %i.aj = add i64 %i.ai, -9223372036854291941     ; 2 uses
  %i.ak = urem i64 %i.aj, 146097
  %i.al = udiv i64 %i.aj, 146097                  ; 2 uses
  %i.am = and i64 %i.ak, 262140
  %i.an = mul nuw nsw i64 %i.am, 2939745
  %i.ao = add nuw nsw i64 %i.an, 8819235          ; 3 uses
  %i.ap = lshr i64 %i.ao, 32                      ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, 12884901888
  %i.ar = and i64 %i.al, 3
  %.in.in = select i1 %.not, i64 %i.ar, i64 %i.aq
  %.in = icmp eq i64 %.in.in, 0
  %i.as = mul nuw nsw i64 %i.al, 100
  %i.at = trunc i64 %i.ao to i32                  ; 2 uses
  %i.au = udiv i32 %i.at, 11758980                ; 2 uses
  %i.av = mul nuw nsw i32 %i.au, 2141
  %i.aw = add nuw nsw i32 %i.av, 132377           ; 2 uses
  %i.ax = lshr i32 %i.aw, 16                      ; 2 uses
  %.lhs.trunc62 = trunc i32 %i.aw to i16
  %i.ay = udiv i16 %.lhs.trunc62, 2141
  %i.az = icmp ugt i32 %i.at, -696719417          ; 3 uses
  %i.ba = zext i1 %i.az to i64
  %i.bb = add nsw i32 %i.ax, -12
  %i.bc = select i1 %i.az, i32 %i.bb, i32 %i.ax
  %narrow = add nuw nsw i16 %i.ay, 1
  %i.bd = zext nneg i16 %narrow to i32
  %i.be = select i1 %.in, i32 60, i32 59
  %i.bf = select i1 %i.az, i32 -306, i32 %i.be
  %i.bg = add nsw i32 %i.bf, %i.au
  %i.bh = add nsw i64 %i.as, -6313183731941900
  %i.bi = add nsw i64 %i.bh, %i.ap
  %i.bj = add nsw i64 %i.bi, %i.ba
  %i.bk = getelementptr i8, ptr %2, i64 24
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %2, i64 16
  store i32 %i.bc, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %2, i64 12
  store i32 %i.bd, ptr %i.bm, align 4
  %i.bn = getelementptr i8, ptr %2, i64 36
  store i32 %i.bg, ptr %i.bn, align 4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
end_hunk_0
