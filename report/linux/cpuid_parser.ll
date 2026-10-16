Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cpuid_parser?download=true
inline.NumInlined: 16
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"arch/x86/kernel/cpu/cpuid_parser.c\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cpuid_scan_cpu(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 276        ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = add i64 %i.b, 16
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 280        ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 284        ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %i.h = add i64 %i.b, 20
  %i.i = inttoptr i64 %i.h to ptr                 ; 7 uses
  %i.j = add i64 %i.b, 36
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %.not8.i.us6.1.i.i.i.i = icmp eq ptr %i.a, null
  %i.l = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %i.n = getelementptr i8, ptr %i.i, i64 12
  br i1 %.not8.i.us6.1.i.i.i.i, label %__cpuid_fill_table.exit.us.i.i, label %.split.i.i

__cpuid_fill_table.exit.us.i.i:                   ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  store i32 0, ptr %i.d, align 16
  store i32 0, ptr null, align 4294967296
  store i32 0, ptr %i.f, align 4
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #2, !srcloc !10 ; 4 uses
  %i.p = extractvalue { i32, i32, i32, i32 } %i.o, 0
  %i.q = extractvalue { i32, i32, i32, i32 } %i.o, 1
  %i.r = extractvalue { i32, i32, i32, i32 } %i.o, 2
  %i.s = extractvalue { i32, i32, i32, i32 } %i.o, 3
  store i32 %i.p, ptr null, align 4294967296
  store i32 %i.q, ptr %i.e, align 4
  store i32 %i.r, ptr %i.f, align 4
  store i32 %i.s, ptr %i.g, align 4
  %i.t = load i32, ptr %i.d, align 16
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.d, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %__cpuid_fill_table.exit.sink.split.i.i

__cpuid_fill_table.exit.sink.split.i.i:           ; preds = %bb.b, %__cpuid_fill_table.exit.us.i.i
  %.sink.i.i = phi i32 [ %i.an, %bb.b ], [ 0, %__cpuid_fill_table.exit.us.i.i ]
  store i32 %.sink.i.i, ptr %i.k, align 4
  br label %__cpuid_scan_cpu_full.exit

.split.i.i:                                       ; preds = %bb.a
  %i.v = getelementptr i8, ptr %0, i64 292
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  store i32 0, ptr %i.d, align 4
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %i.f, align 4
  %i.w = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #2, !srcloc !10 ; 4 uses
  %i.x = extractvalue { i32, i32, i32, i32 } %i.w, 0
  %i.y = extractvalue { i32, i32, i32, i32 } %i.w, 1
  %i.z = extractvalue { i32, i32, i32, i32 } %i.w, 2
  %i.aa = extractvalue { i32, i32, i32, i32 } %i.w, 3
  store i32 %i.x, ptr %i.a, align 4
  store i32 %i.y, ptr %i.e, align 4
  store i32 %i.z, ptr %i.f, align 4
  store i32 %i.aa, ptr %i.g, align 4
  %i.ab = load i32, ptr %i.d, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.d, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.k, align 4
  %i.ad = load i32, ptr %i.v, align 4
  %.not.i26.us.1.i.i.not.i.i = icmp eq i32 %i.ad, 1
  br i1 %.not.i26.us.1.i.i.not.i.i, label %cpuid_range_max_leaf.exit.us.1.i.i.i.i, label %__cpuid_scan_cpu_full.exit

cpuid_range_max_leaf.exit.us.1.i.i.i.i:           ; preds = %.split.i.i
  %i.ae = load i64, ptr %i.a, align 4
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %__cpuid_scan_cpu_full.exit, label %bb.b

bb.b:                                             ; preds = %cpuid_range_max_leaf.exit.us.1.i.i.i.i
  store i32 1, ptr %i.i, align 4
  store i32 0, ptr %i.l, align 4
  %i.ah = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #2, !srcloc !10 ; 4 uses
  %i.ai = extractvalue { i32, i32, i32, i32 } %i.ah, 0
  %i.aj = extractvalue { i32, i32, i32, i32 } %i.ah, 1
  %i.ak = extractvalue { i32, i32, i32, i32 } %i.ah, 2
  %i.al = extractvalue { i32, i32, i32, i32 } %i.ah, 3
  store i32 %i.ai, ptr %i.i, align 4
  store i32 %i.aj, ptr %i.m, align 4
  store i32 %i.ak, ptr %i.l, align 4
  store i32 %i.al, ptr %i.n, align 4
  %i.am = load i32, ptr %i.k, align 4
  %i.an = add i32 %i.am, 1
  br label %__cpuid_fill_table.exit.sink.split.i.i

__cpuid_scan_cpu_full.exit:                       ; preds = %__cpuid_fill_table.exit.sink.split.i.i, %.split.i.i, %cpuid_range_max_leaf.exit.us.1.i.i.i.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cpuid_refresh_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, %2
  br i1 %i.a, label %bb.b, label %.critedge, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "56: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 56b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 56) #2, !srcloc !12
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 165, i32 2307, i64 16) #2, !srcloc !13
  tail call void asm sideeffect "57: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 57b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 57) #2, !srcloc !14
  br label %__cpuid_scan_cpu_partial.exit

.critedge:                                        ; preds = %bb.a
  %i.b = xor i32 %2, %1
  %.not = icmp ult i32 %i.b, 65536
  br i1 %.not, label %.critedge16, label %bb.c, !prof !15

bb.c:                                             ; preds = %.critedge
  tail call void asm sideeffect "58: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 58b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 58) #2, !srcloc !16
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 168, i32 2307, i64 16) #2, !srcloc !17
  tail call void asm sideeffect "59: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 59b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 59) #2, !srcloc !18
  br label %__cpuid_scan_cpu_partial.exit

.critedge16:                                      ; preds = %.critedge
  %i.c = getelementptr i8, ptr %0, i64 276        ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 7 uses
  switch i32 %1, label %__cpuid_scan_cpu_partial.exit [
    i32 0, label %.split.1.i.i.thread.i
    i32 1, label %.split.us.split.1.i.i.thread24.i
  ]

.split.1.i.i.thread.i:                            ; preds = %.critedge16
  %i.e = add i64 %i.d, 16
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = icmp eq i32 %2, 0                        ; 2 uses
  br i1 %i.g, label %.split.us.split.1.i.i.i, label %.split.us.split.preheader.i.i.thread21.i

.split.us.split.preheader.i.i.thread21.i:         ; preds = %.split.1.i.i.thread.i
  %i.h = add i64 %i.d, 36
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = add i64 %i.d, 20
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.i, align 4
  br label %.split.us.split.1.i.i.i

.split.us.split.1.i.i.thread24.i:                 ; preds = %.critedge16
  %i.l = add i64 %i.d, 36
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = add i64 %i.d, 20
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.m, align 4
  br label %bb.d

.split.us.split.1.i.i.i:                          ; preds = %.split.us.split.preheader.i.i.thread21.i, %.split.1.i.i.thread.i
  %i.p = getelementptr i8, ptr %0, i64 280        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, i8 0, i64 12, i1 false)
  store i32 0, ptr %i.f, align 4
  store i32 0, ptr %i.c, align 4
  %i.q = getelementptr i8, ptr %0, i64 284        ; 2 uses
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %0, i64 288
  %i.s = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #2, !srcloc !10 ; 4 uses
  %i.t = extractvalue { i32, i32, i32, i32 } %i.s, 0
  %i.u = extractvalue { i32, i32, i32, i32 } %i.s, 1
  %i.v = extractvalue { i32, i32, i32, i32 } %i.s, 2
  %i.w = extractvalue { i32, i32, i32, i32 } %i.s, 3
  store i32 %i.t, ptr %i.c, align 4
  store i32 %i.u, ptr %i.p, align 4
  store i32 %i.v, ptr %i.q, align 4
  store i32 %i.w, ptr %i.r, align 4
  %i.x = load i32, ptr %i.f, align 4
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.f, align 4
  br i1 %i.g, label %__cpuid_scan_cpu_partial.exit, label %.split.us.split.1.i.i._crit_edge.i

.split.us.split.1.i.i._crit_edge.i:               ; preds = %.split.us.split.1.i.i.i
  %.pre.i = add i64 %i.d, 20
  %.pre27.i = inttoptr i64 %.pre.i to ptr
  %.pre28.i = add i64 %i.d, 36
  %.pre29.i = inttoptr i64 %.pre28.i to ptr
  br label %bb.d

bb.d:                                             ; preds = %.split.us.split.1.i.i._crit_edge.i, %.split.us.split.1.i.i.thread24.i
  %.pre-phi30.i = phi ptr [ %.pre29.i, %.split.us.split.1.i.i._crit_edge.i ], [ %i.m, %.split.us.split.1.i.i.thread24.i ] ; 3 uses
  %.pre-phi.i = phi ptr [ %.pre27.i, %.split.us.split.1.i.i._crit_edge.i ], [ %i.o, %.split.us.split.1.i.i.thread24.i ] ; 6 uses
  %i.z = getelementptr i8, ptr %0, i64 292
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %.pre-phi.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %.pre-phi30.i, align 4
  %i.aa = load i32, ptr %i.z, align 4
  %.not.i26.us.1.i.i.i = icmp ne i32 %i.aa, 1
  %.not8.i.us6.1.i.i.i = icmp eq ptr %i.c, null
  %.not8.i.us.1.i.i.i = or i1 %.not8.i.us6.1.i.i.i, %.not.i26.us.1.i.i.i
  br i1 %.not8.i.us.1.i.i.i, label %__cpuid_scan_cpu_partial.exit, label %cpuid_range_max_leaf.exit.us.1.i.i.i

cpuid_range_max_leaf.exit.us.1.i.i.i:             ; preds = %bb.d
  %i.ab = load i64, ptr %i.c, align 4
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %__cpuid_scan_cpu_partial.exit, label %bb.e

bb.e:                                             ; preds = %cpuid_range_max_leaf.exit.us.1.i.i.i
  store i32 1, ptr %.pre-phi.i, align 4
  %i.ae = getelementptr i8, ptr %.pre-phi.i, i64 8 ; 2 uses
  store i32 0, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %.pre-phi.i, i64 4
  %i.ag = getelementptr i8, ptr %.pre-phi.i, i64 12
  %i.ah = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #2, !srcloc !10 ; 4 uses
  %i.ai = extractvalue { i32, i32, i32, i32 } %i.ah, 0
  %i.aj = extractvalue { i32, i32, i32, i32 } %i.ah, 1
  %i.ak = extractvalue { i32, i32, i32, i32 } %i.ah, 2
  %i.al = extractvalue { i32, i32, i32, i32 } %i.ah, 3
  store i32 %i.ai, ptr %.pre-phi.i, align 4
  store i32 %i.aj, ptr %i.af, align 4
  store i32 %i.ak, ptr %i.ae, align 4
  store i32 %i.al, ptr %i.ag, align 4
  %i.am = load i32, ptr %.pre-phi30.i, align 4
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %.pre-phi30.i, align 4
  br label %__cpuid_scan_cpu_partial.exit

__cpuid_scan_cpu_partial.exit:                    ; preds = %.critedge16, %bb.e, %cpuid_range_max_leaf.exit.us.1.i.i.i, %bb.d, %.split.us.split.1.i.i.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cpuid_refresh_leaf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @cpuid_refresh_range(ptr noundef %0, i32 noundef %1, i32 noundef %1) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind }
attributes #3 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
end_hunk_0
