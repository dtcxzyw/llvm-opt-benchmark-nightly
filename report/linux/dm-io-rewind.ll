Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dm-io-rewind?download=true
inline.NumInlined: 11
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.3 }
%union.anon.3 = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"Attempted to rewind iter beyond bvec's boundaries\0A\00", align 1
@dm_bvec_iter_rewind.__UNIQUE_ID_addressable___SCK__WARN_trap_795 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/md/dm-io-rewind.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @dm_bvec_iter_rewind.__UNIQUE_ID_addressable___SCK__WARN_trap_795], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dm_io_rewind(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @bio_alloc_clone(ptr noundef %i.d, ptr noundef %i.b, i32 noundef 3072, ptr noundef %1) #2 ; 10 uses
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8
  %i.h = shl i32 %i.g, 9
  %i.i = getelementptr i8, ptr %i.b, i64 48
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sub i32 %i.h, %i.j                       ; 6 uses
  %i.l = getelementptr i8, ptr %i.e, i64 40       ; 2 uses
  %i.m = lshr i32 %i.k, 9
  %i.n = zext nneg i32 %i.m to i64
  %i.o = load i64, ptr %i.l, align 4
  %i.p = sub i64 %i.o, %i.n
  store i64 %i.p, ptr %i.l, align 4
  %i.q = getelementptr i8, ptr %i.e, i64 16
  %.val.i.i = load i32, ptr %i.q, align 8
  %trunc.i.i.i = trunc i32 %.val.i.i to i8
  switch i8 %trunc.i.i.i, label %bio_no_advance_iter.exit.i.i [
    i8 3, label %bb.b
    i8 5, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.r = getelementptr i8, ptr %i.e, i64 48       ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = add i32 %i.s, %i.k
  store i32 %i.t, ptr %i.r, align 8
  br label %dm_bio_rewind.exit

bio_no_advance_iter.exit.i.i:                     ; preds = %bb.a
  %i.u = getelementptr i8, ptr %i.e, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.e, i64 48       ; 4 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i32 %i.x, %i.k
  store i32 %i.y, ptr %i.w, align 8
  %i.z = getelementptr i8, ptr %i.e, i64 56       ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %.not.i.i.i = icmp ugt i32 %i.k, %i.aa
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bio_no_advance_iter.exit.i.i
  %i.ab = sub nuw i32 %i.aa, %i.k
  store i32 %i.ab, ptr %i.z, align 8
  br label %dm_bio_rewind.exit

bb.d:                                             ; preds = %bio_no_advance_iter.exit.i.i
  %i.ac = sub nuw i32 %i.k, %i.aa                 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.e, i64 52      ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %.03951.i.i.i = add i32 %i.ae, -1               ; 2 uses
  %i.af = icmp sgt i32 %.03951.i.i.i, -1
  br i1 %i.af, label %.lr.ph.preheader.i.i.i, label %.critedge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %2 = zext nneg i32 %.03951.i.i.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %2, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.e ] ; 4 uses
  %.03853.i.i.i = phi i32 [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ak, %bb.e ] ; 3 uses
  %i.ag = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ugt i32 %.03853.i.i.i, %i.ai
  br i1 %i.aj, label %bb.e, label %.critedge45.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = sub nuw i32 %.03853.i.i.i, %i.ai        ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  %i.al = icmp sgt i64 %indvars.iv.i.i.i, 0
  br i1 %i.al, label %.lr.ph.i.i.i, label %.critedge.i.i.i, !llvm.loop !10

.critedge.i.i.i:                                  ; preds = %bb.e, %bb.d
  %.038.lcssa.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.ak, %bb.e ]
  %i.am = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 33, i32 2323, i64 16) #3, !srcloc !12
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.am) #2
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !13
  %i.an = load i32, ptr %i.w, align 8
  %i.ao = sub i32 %i.an, %.038.lcssa.i.i.i
  store i32 %i.ao, ptr %i.w, align 8
  store i32 0, ptr %i.z, align 8
  store i32 0, ptr %i.ad, align 4
  br label %dm_bio_rewind.exit

.critedge45.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr i8, ptr %i.ag, i64 8
  %3 = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  store i32 %3, ptr %i.ad, align 4
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = sub i32 %i.aq, %.03853.i.i.i
  store i32 %i.ar, ptr %i.z, align 8
  br label %dm_bio_rewind.exit

dm_bio_rewind.exit:                               ; preds = %bb.b, %bb.c, %.critedge.i.i.i, %.critedge45.i.i.i
  %i.as = getelementptr i8, ptr %0, i64 76
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  tail call void @bio_trim(ptr noundef %i.e, i64 noundef 0, i64 noundef %i.au) #2
  tail call void @bio_chain(ptr noundef %i.e, ptr noundef %i.b) #2
  %i.av = getelementptr i8, ptr %i.b, i64 28      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.av, ptr elementtype(i32) %i.av) #3, !srcloc !14
  store ptr %i.e, ptr %i.a, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @bio_alloc_clone(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @bio_trim(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind "no-builtin-wcslen" }
attributes #3 = { nounwind }

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
!12 = !{i64 2158597946, i64 2158597973, i64 2158598387, i64 2158598420, i64 2158598455, i64 2158598471, i64 2158599312, i64 2158599370, i64 2158599419, i64 2158599229, i64 2158598530, i64 2158598562}
!13 = !{i64 2158596281}
!14 = !{i64 2148818048, i64 2148818087, i64 2148818108, i64 2148818145, i64 2148818168, i64 2148818039}
end_hunk_0
