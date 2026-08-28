Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tonecurve?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @tonecurve_create(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.a, align 8, !tbaa !12
  store ptr %1, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @tonecurve_delete(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.b) #4
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.c) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @tonecurve_apply(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12   ; 4 uses
  %i.f = fcmp reassoc nsz arcp contract afn ole double %1, 0.000000e+00
  %i.g = fcmp reassoc nsz arcp contract afn oge double %1, 1.000000e+02
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %_tonecurve_apply.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.050.i = lshr i32 %i.e, 1                      ; 2 uses
  %.not51.i = icmp eq i32 %.050.i, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.054.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.050.i, %.preheader.i ] ; 3 uses
  %.04253.i = phi i32 [ %.0..042.i, %.lr.ph.i ], [ %i.e, %.preheader.i ]
  %.04452.i = phi i32 [ %.044..0.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.h = zext nneg i32 %.054.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fcmp reassoc nsz arcp contract afn ugt double %i.j, %1 ; 2 uses
  %.044..0.i = select i1 %i.k, i32 %.04452.i, i32 %.054.i ; 5 uses
  %.0..042.i = select i1 %i.k, i32 %.054.i, i32 %.04253.i ; 5 uses
  %i.l = add i32 %.044..0.i, %.0..042.i
  %.0.i = lshr i32 %i.l, 1                        ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.044..0.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.m = icmp ult i32 %.0..042.i, %i.e
  br i1 %i.m, label %bb.b, label %._crit_edge.thread.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.n = zext i32 %.0..042.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = fcmp reassoc nsz arcp contract afn ugt double %i.p, %1
  %spec.select.i = select i1 %i.q, i32 %.044..0.i, i32 %.0..042.i
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.b, %._crit_edge.i, %.preheader.i
  %.1.i = phi i32 [ %.044..0.i, %._crit_edge.i ], [ %spec.select.i, %bb.b ], [ 0, %.preheader.i ] ; 3 uses
  %i.r = zext i32 %.1.i to i64                    ; 3 uses
  %i.s = add nsw i32 %i.e, -1
  %i.t = icmp eq i32 %.1.i, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.r
  %i.v = load double, ptr %i.u, align 8, !tbaa !18
  br label %_tonecurve_apply.exit

bb.d:                                             ; preds = %._crit_edge.thread.i
  %i.w = add nuw i32 %.1.i, 1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = fsub reassoc nsz arcp contract afn double %i.z, %i.ab ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt double %i.ac, f0x3EB0C6F7A0000000
  %i.ae = fsub reassoc nsz arcp contract afn double %1, %i.ab
  %i.af = fdiv reassoc nsz arcp contract afn double %i.ae, %i.ac
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ad, double %i.af, double 1.000000e+00
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.x
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.r
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = fsub reassoc nsz arcp contract afn double %i.ai, %i.ak
  %i.am = fmul reassoc nsz arcp contract afn double %i.ag, %i.al
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.ak
  br label %_tonecurve_apply.exit

_tonecurve_apply.exit:                            ; preds = %bb.a, %bb.c, %bb.d
  %.147.i = phi nsz double [ %1, %bb.a ], [ %i.v, %bb.c ], [ %i.an, %bb.d ]
  ret double %.147.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @tonecurve_unapply(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12   ; 4 uses
  %i.f = fcmp reassoc nsz arcp contract afn ole double %1, 0.000000e+00
  %i.g = fcmp reassoc nsz arcp contract afn oge double %1, 1.000000e+02
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %_tonecurve_apply.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.050.i = lshr i32 %i.e, 1                      ; 2 uses
  %.not51.i = icmp eq i32 %.050.i, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.054.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.050.i, %.preheader.i ] ; 3 uses
  %.04253.i = phi i32 [ %.0..042.i, %.lr.ph.i ], [ %i.e, %.preheader.i ]
  %.04452.i = phi i32 [ %.044..0.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.h = zext nneg i32 %.054.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fcmp reassoc nsz arcp contract afn ugt double %i.j, %1 ; 2 uses
  %.044..0.i = select i1 %i.k, i32 %.04452.i, i32 %.054.i ; 5 uses
  %.0..042.i = select i1 %i.k, i32 %.054.i, i32 %.04253.i ; 5 uses
  %i.l = add i32 %.044..0.i, %.0..042.i
  %.0.i = lshr i32 %i.l, 1                        ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.044..0.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.m = icmp ult i32 %.0..042.i, %i.e
  br i1 %i.m, label %bb.b, label %._crit_edge.thread.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.n = zext i32 %.0..042.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = fcmp reassoc nsz arcp contract afn ugt double %i.p, %1
  %spec.select.i = select i1 %i.q, i32 %.044..0.i, i32 %.0..042.i
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.b, %._crit_edge.i, %.preheader.i
  %.1.i = phi i32 [ %.044..0.i, %._crit_edge.i ], [ %spec.select.i, %bb.b ], [ 0, %.preheader.i ] ; 3 uses
  %i.r = zext i32 %.1.i to i64                    ; 3 uses
  %i.s = add nsw i32 %i.e, -1
  %i.t = icmp eq i32 %.1.i, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.r
  %i.v = load double, ptr %i.u, align 8, !tbaa !18
  br label %_tonecurve_apply.exit

bb.d:                                             ; preds = %._crit_edge.thread.i
  %i.w = add nuw i32 %.1.i, 1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = fsub reassoc nsz arcp contract afn double %i.z, %i.ab ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt double %i.ac, f0x3EB0C6F7A0000000
  %i.ae = fsub reassoc nsz arcp contract afn double %1, %i.ab
  %i.af = fdiv reassoc nsz arcp contract afn double %i.ae, %i.ac
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ad, double %i.af, double 1.000000e+00
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.x
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.r
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = fsub reassoc nsz arcp contract afn double %i.ai, %i.ak
  %i.am = fmul reassoc nsz arcp contract afn double %i.ag, %i.al
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.ak
  br label %_tonecurve_apply.exit

_tonecurve_apply.exit:                            ; preds = %bb.a, %bb.c, %bb.d
  %.147.i = phi nsz double [ %1, %bb.a ], [ %i.v, %bb.c ], [ %i.an, %bb.d ]
  ret double %.147.i
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 16}
!13 = !{!"tonecurve_t", !14, i64 0, !14, i64 8, !9, i64 16}
!14 = !{!"p1 double", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!13, !14, i64 0}
!17 = !{!13, !14, i64 8}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !10, i64 0}
end_hunk_0
