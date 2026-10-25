Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pagewalk?download=true
inline.NumInlined: 183
inline.NumDeleted: 105
begin_hunk_0_@folio_walk_start:bb.a
  br i1 %.not4.i, label %p4d_none_or_clear_bad.exit, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void @p4d_clear_bad(ptr noundef %.0.i122) #7
  br label %pgd_none_or_clear_bad.exit

p4d_none_or_clear_bad.exit:                       ; preds = %bb.g
  %i.aj = and i64 %i.ag, 4503599627366400
  %i.ak = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.al = add i64 %i.ak, %i.aj
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = lshr i64 %2, 30
  %i.ao = and i64 %i.an, 511
  %i.ap = getelementptr [8 x i8], ptr %i.am, i64 %i.ao ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0.0.copyload.i = load volatile i64, ptr %i.ap, align 8 ; 4 uses
  store volatile i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.aq = and i64 %.sroa.0.0.copyload.i, -97
  %.not147 = icmp eq i64 %i.aq, 0
  br i1 %.not147, label %pgd_none_or_clear_bad.exit, label %bb.i

bb.i:                                             ; preds = %p4d_none_or_clear_bad.exit
  %i.ar = and i64 %.sroa.0.0.copyload.i, 129
  %or.cond.not = icmp eq i64 %i.ar, 1
  br i1 %or.cond.not, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.b, align 16
  %i.at = getelementptr i8, ptr %i.as, i64 460    ; 5 uses
  tail call void @_raw_spin_lock(ptr noundef %i.at) #7
  store ptr %i.at, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i125)
  %.sroa.0.0.copyload.i126 = load volatile i64, ptr %i.ap, align 8 ; 6 uses
  store volatile i64 %.sroa.0.0.copyload.i126, ptr %.sroa.0.i125, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i125)
  %i.au = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %0, i64 24
  store i64 %.sroa.0.0.copyload.i126, ptr %i.aw, align 8
  %i.ax = and i64 %.sroa.0.0.copyload.i126, -97
  %.not148 = icmp eq i64 %i.ax, 0
  br i1 %.not148, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_raw_spin_unlock(ptr noundef %i.at) #7
  br label %pgd_none_or_clear_bad.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = and i64 %.sroa.0.0.copyload.i126, 1
  %.not104 = icmp eq i64 %i.ay, 0
  br i1 %.not104, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = and i64 %.sroa.0.0.copyload.i126, 128
  %.not149 = icmp eq i64 %i.az, 0
  br i1 %.not149, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_raw_spin_unlock(ptr noundef %i.at) #7
  %.val121.pre = load i64, ptr %i.ap, align 8
  %.pre = load i64, ptr @page_offset_base, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = tail call ptr @vm_normal_page_pud(ptr noundef %1, i64 noundef %2, i64 %.sroa.0.0.copyload.i126) #7 ; 2 uses
  %.not118 = icmp eq ptr %i.ba, null
  br i1 %.not118, label %.thread, label %.thread139

.thread:                                          ; preds = %bb.l, %bb.o
  tail call void @_raw_spin_unlock(ptr noundef %i.at) #7
  br label %pgd_none_or_clear_bad.exit

bb.p:                                             ; preds = %bb.i, %bb.n
  %i.bb = phi i64 [ %i.ak, %bb.i ], [ %.pre, %bb.n ]
  %.val121 = phi i64 [ %.sroa.0.0.copyload.i, %bb.i ], [ %.val121.pre, %bb.n ] ; 2 uses
  %i.bc = and i64 %.val121, 128
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 4503599627366400, i64 4503598553628672
  %i.bd = and i64 %..i.i.i, %.val121
  %i.be = add i64 %i.bd, %i.bb
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = lshr i64 %2, 21
  %i.bh = and i64 %i.bg, 511
  %i.bi = getelementptr [8 x i8], ptr %i.bf, i64 %i.bh ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.0.copyload.i.i = load volatile i64, ptr %i.bi, align 8 ; 4 uses
  store volatile i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bj = and i64 %.sroa.0.0.copyload.i.i, -97
  %.not150 = icmp eq i64 %i.bj, 0
  br i1 %.not150, label %pgd_none_or_clear_bad.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = and i64 %.sroa.0.0.copyload.i.i, 385
  %.not106 = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %.sroa.0.0.copyload.i.i, 128
  %i.bm = icmp ne i64 %i.bl, 0
  %or.cond146 = or i1 %.not106, %i.bm
  br i1 %or.cond146, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bn = tail call fastcc ptr @pmd_lock(ptr noundef %i.bi) #8 ; 4 uses
  store ptr %i.bn, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i127)
  %.sroa.0.0.copyload.i128 = load volatile i64, ptr %i.bi, align 8 ; 6 uses
  store volatile i64 %.sroa.0.0.copyload.i128, ptr %.sroa.0.i127, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i127)
  %i.bo = getelementptr i8, ptr %0, i64 8
  store i32 1, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %0, i64 24
  store i64 %.sroa.0.0.copyload.i128, ptr %i.bq, align 8
  %i.br = and i64 %.sroa.0.0.copyload.i128, -97
  %.not151 = icmp eq i64 %i.br, 0
  br i1 %.not151, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_raw_spin_unlock(ptr noundef %i.bn) #7
  br label %pgd_none_or_clear_bad.exit

bb.t:                                             ; preds = %bb.r
  %i.bs = and i64 %.sroa.0.0.copyload.i128, 385
  %.not108 = icmp eq i64 %i.bs, 0
  br i1 %.not108, label %.thread138, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = and i64 %.sroa.0.0.copyload.i128, 128
  %.not152 = icmp eq i64 %i.bt, 0
  br i1 %.not152, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_raw_spin_unlock(ptr noundef %i.bn) #7
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bu = tail call ptr @vm_normal_page_pmd(ptr noundef %1, i64 noundef %2, i64 %.sroa.0.0.copyload.i128) #7 ; 2 uses
  %.not115 = icmp eq ptr %i.bu, null
  br i1 %.not115, label %.thread138, label %.thread139

.thread138:                                       ; preds = %bb.w, %bb.t
  tail call void @_raw_spin_unlock(ptr noundef %i.bn) #7
  br label %pgd_none_or_clear_bad.exit

bb.x:                                             ; preds = %bb.q, %bb.v
  %i.bv = load ptr, ptr %i.b, align 16
  %i.bw = call ptr @pte_offset_map_lock(ptr noundef %i.bv, ptr noundef %i.bi, i64 noundef %2, ptr noundef nonnull %i.a) #7 ; 3 uses
  %.not109 = icmp eq ptr %i.bw, null
  br i1 %.not109, label %pgd_none_or_clear_bad.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i129)
  %.sroa.0.0.copyload.i130 = load volatile i64, ptr %i.bw, align 8 ; 6 uses
  store volatile i64 %.sroa.0.0.copyload.i130, ptr %.sroa.0.i129, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i129)
  %i.bx = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %0, i64 16
  store ptr %i.bw, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %0, i64 24
  store i64 %.sroa.0.0.copyload.i130, ptr %i.bz, align 8
  %i.ca = and i64 %.sroa.0.0.copyload.i130, 257
  %.not110 = icmp eq i64 %i.ca, 0
  br i1 %.not110, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = call ptr @vm_normal_page(ptr noundef %1, i64 noundef %2, i64 %.sroa.0.0.copyload.i130) #7 ; 2 uses
  %.not111 = icmp eq ptr %i.cb, null
  br i1 %.not111, label %bb.aa, label %.thread139

bb.aa:                                            ; preds = %bb.z
  %i.cc = and i32 %3, 1
  %.not112 = icmp eq i32 %i.cc, 0
  br i1 %.not112, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = and i64 %.sroa.0.0.copyload.i130, 1
  %sext = add nuw nsw i64 %i.cd, 4503599627370495
  %i.ce = xor i64 %.sroa.0.0.copyload.i130, %sext
  %i.cf = lshr i64 %i.ce, 12
  %i.cg = and i64 %i.cf, 1099511627775            ; 2 uses
  %i.ch = load i64, ptr @zero_page_pfn, align 8
  %.not153 = icmp eq i64 %i.cg, %i.ch
  br i1 %.not153, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa
  %i.ci = load ptr, ptr %i.a, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ci) #7
  call void @__rcu_read_unlock() #7
  br label %pgd_none_or_clear_bad.exit

pgd_none_or_clear_bad.exit:                       ; preds = %bb.h, %p4d_offset.exit, %bb.d, %pgd_none.exit.i, %.critedge120, %bb.x, %bb.p, %p4d_none_or_clear_bad.exit, %bb.ac, %.thread138, %bb.s, %.thread, %bb.k
  call void @vma_pgtable_walk_end(ptr noundef %1) #7
  br label %bb.af

.thread139:                                       ; preds = %bb.o, %bb.w, %bb.z
  %.094.ph = phi ptr [ %i.cb, %bb.z ], [ %i.bu, %bb.w ], [ %i.ba, %bb.o ] ; 2 uses
  %.092.ph = phi i64 [ 0, %bb.z ], [ 2093056, %bb.w ], [ 1073737728, %bb.o ]
  %i.cj = and i64 %.092.ph, %2
  %i.ck = lshr exact i64 %i.cj, 6
  %4 = getelementptr i8, ptr %.094.ph, i64 %i.ck
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr @vmemmap_base, align 8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr [64 x i8], ptr %i.cm, i64 %i.cg
  br label %bb.ae

bb.ae:                                            ; preds = %.thread139, %bb.ad
  %.094143 = phi ptr [ %i.cn, %bb.ad ], [ %.094.ph, %.thread139 ] ; 2 uses
  %i.co = phi ptr [ null, %bb.ad ], [ %4, %.thread139 ]
  store ptr %i.co, ptr %0, align 8
  %i.cp = load ptr, ptr %i.a, align 8
  %i.cq = getelementptr i8, ptr %0, i64 40
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %.094143, i64 8
  %i.cs = load volatile i64, ptr %i.cr, align 8   ; 2 uses
  %i.ct = ptrtoint ptr %.094143 to i64
  %i.cu = and i64 %i.cs, 1
  %i.cv = add nsw i64 %i.cu, -1
  %i.cw = or i64 %i.cv, %i.cs
  %i.cx = and i64 %i.cw, %i.ct
  %i.cy = inttoptr i64 %i.cx to ptr
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %pgd_none_or_clear_bad.exit
  %.0 = phi ptr [ null, %pgd_none_or_clear_bad.exit ], [ %i.cy, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vma_pgtable_walk_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vm_normal_page_pud(ptr noundef, i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @pmd_lock(ptr noundef %0) unnamed_addr #4 align 16 {
bb.a:
  %i.a = load i64, ptr @vmemmap_base, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, -4096
  %i.e = add i64 %i.d, 2147483648
  %i.f = icmp ugt ptr %0, inttoptr (i64 -2147483649 to ptr)
  %i.g = load i64, ptr @phys_base, align 8
  %i.h = load i64, ptr @page_offset_base, align 8
  %i.i = sub i64 -2147483648, %i.h
  %i.j = select i1 %i.f, i64 %i.g, i64 %i.i
  %i.k = add i64 %i.e, %i.j
  %i.l = lshr i64 %i.k, 12
  %i.m = getelementptr [64 x i8], ptr %i.b, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 40       ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.n) #7
  ret ptr %i.n
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vm_normal_page_pmd(ptr noundef, i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pte_offset_map_lock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vma_pgtable_walk_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__vma_start_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hugetlb_vma_lock_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hugetlb_vma_unlock_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @huge_pte_offset(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__p4d_alloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pud_alloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pmd_alloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pte_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pte_offset_map(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pgd_clear_bad(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @p4d_clear_bad(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { noredzone "no-builtin-wcslen" }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 2151329767, i64 2151329642}
!13 = !{i64 2151330290, i64 2151331381, i64 2151331414, i64 2151331449, i64 2151331465, i64 2151332392, i64 2151332450, i64 2151332499, i64 2151332309, i64 2151331524, i64 2151331556, i64 2151331639}
!14 = !{i64 2151332799, i64 2151332675}
!15 = !{i64 2151334357, i64 2151334232}
!16 = !{i64 2151334880, i64 2151335972, i64 2151336005, i64 2151336040, i64 2151336056, i64 2151336983, i64 2151337041, i64 2151337090, i64 2151336900, i64 2151336115, i64 2151336147, i64 2151336230}
!17 = !{i64 2151337390, i64 2151337266}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i64 18249}
!20 = !{i64 2150181987, i64 2150182016, i64 2150182022, i64 2150182218, i64 2150182224, i64 2150182240, i64 2150182256, i64 2150182283, i64 2150182395, i64 2150182404, i64 2150182478, i64 2150182526, i64 2150182574, i64 2150182629, i64 2150182683, i64 2150182738, i64 2150182754, i64 2150182801, i64 2150182912, i64 2150182943, i64 2150182949, i64 2150182971, i64 2150182987, i64 2150182036, i64 2150182038, i64 2150182054, i64 2150182081, i64 2150182181, i64 2150183051, i64 2150183165, i64 2150183213, i64 2150183261, i64 2150183325, i64 2150183382, i64 2150183434, i64 2150183563, i64 2150183778, i64 2150183649, i64 2150183680, i64 2150183686, i64 2150183702, i64 2150183718, i64 2466888, i64 2466928, i64 2150184237, i64 2466966, i64 2467003, i64 2467024, i64 2467044}
!21 = !{!"branch_weights", !"expected", i32 2145873841, i32 1609807}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!"auto-init"}
!24 = distinct !{!24, !18}
!25 = !{i64 12977}
!26 = distinct !{null}
!27 = distinct !{!27, !18}
!28 = !{i64 10666}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{null, null, null}
!32 = distinct !{null, null, null, null, null}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{i64 2149917400}
!40 = !{i64 2149938918, i64 2149938947, i64 2149938953, i64 2149938969, i64 2149938985, i64 2149939012, i64 2149939112, i64 2149939188, i64 2149939302, i64 2149939350, i64 2149939398, i64 2149939462, i64 2149939519, i64 2149939571, i64 2149939697, i64 2149939928, i64 2149939783, i64 2149939814, i64 2149939820, i64 2149939836, i64 2149939852}
!41 = !{i64 2157776061, i64 2157775936}
!42 = !{i64 2157776584, i64 2157777634, i64 2157777667, i64 2157777702, i64 2157777718, i64 2157778645, i64 2157778703, i64 2157778752, i64 2157778562, i64 2157777777, i64 2157777809, i64 2157777892}
!43 = !{i64 2157779044, i64 2157778920}
!44 = !{i64 19875}
!45 = !{i64 20383}
!46 = !{i64 21065}
!47 = distinct !{!47, !18}
!48 = !{i64 23462}
!49 = !{i64 2157808373, i64 2157808248}
!50 = !{i64 2157808896, i64 2157809977, i64 2157810010, i64 2157810045, i64 2157810061, i64 2157810988, i64 2157811046, i64 2157811095, i64 2157810905, i64 2157810120, i64 2157810152, i64 2157810235}
!51 = !{i64 2157811388, i64 2157811264}
end_hunk_0
