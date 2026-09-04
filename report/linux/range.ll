Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/range?download=true
inline.NumInlined: 1
begin_hunk_0_@add_range:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr [16 x i8], ptr %0, i64 %i.a ; 2 uses
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store i64 %4, ptr %i.c, align 8
  %i.d = add nsw i32 %2, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local i32 @add_range_with_merge(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i64 %3, %4
  br i1 %.not, label %.preheader, label %add_range.exit

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.05973 = phi i32 [ %.1, %bb.d ], [ %2, %.preheader ] ; 4 uses
  %.06072 = phi i64 [ %.161, %bb.d ], [ %3, %.preheader ] ; 4 uses
  %.06271 = phi i64 [ %.163, %bb.d ], [ %4, %.preheader ] ; 4 uses
  %.06470 = phi i32 [ %i.v, %bb.d ], [ 0, %.preheader ] ; 5 uses
  %i.b = sext i32 %.06470 to i64
  %i.c = getelementptr [16 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %.not69 = icmp eq i64 %i.e, 0
  br i1 %.not69, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i64, ptr %i.c, align 8              ; 2 uses
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.06072)
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %.06271)
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %.06072)
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %.06271)
  %i.l = add nsw i32 %.06470, 1                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [16 x i8], ptr %0, i64 %i.m
  %i.o = sub i32 %.05973, %i.l
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %i.n, i64 %i.q, i1 false)
  %i.r = add nsw i32 %.05973, -1                  ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr %0, i64 %i.s
  %i.u = add i32 %.06470, -1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.lr.ph, %bb.c
  %.165 = phi i32 [ %.06470, %.lr.ph ], [ %i.u, %bb.c ], [ %.06470, %bb.b ]
  %.163 = phi i64 [ %.06271, %.lr.ph ], [ %i.k, %bb.c ], [ %.06271, %bb.b ] ; 2 uses
  %.161 = phi i64 [ %.06072, %.lr.ph ], [ %i.j, %bb.c ], [ %.06072, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.05973, %.lr.ph ], [ %i.r, %bb.c ], [ %.05973, %bb.b ] ; 3 uses
  %i.v = add i32 %.165, 1                         ; 2 uses
  %i.w = icmp slt i32 %i.v, %.1
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.062.lcssa = phi i64 [ %4, %.preheader ], [ %.163, %bb.d ] ; 2 uses
  %.060.lcssa = phi i64 [ %3, %.preheader ], [ %.161, %bb.d ] ; 2 uses
  %.059.lcssa = phi i32 [ %2, %.preheader ], [ %.1, %bb.d ] ; 4 uses
  %.not.i = icmp ult i64 %.060.lcssa, %.062.lcssa
  %.not17.i = icmp slt i32 %.059.lcssa, %1
  %or.cond.i = and i1 %.not.i, %.not17.i
  br i1 %or.cond.i, label %bb.e, label %add_range.exit

bb.e:                                             ; preds = %._crit_edge
  %i.x = sext i32 %.059.lcssa to i64
  %i.y = getelementptr [16 x i8], ptr %0, i64 %i.x ; 2 uses
  store i64 %.060.lcssa, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store i64 %.062.lcssa, ptr %i.z, align 8
  %i.aa = add nsw i32 %.059.lcssa, 1
  br label %add_range.exit

add_range.exit:                                   ; preds = %bb.e, %._crit_edge, %bb.a
  %.0 = phi i32 [ %2, %bb.a ], [ %i.aa, %bb.e ], [ %.059.lcssa, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @subtract_range(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i64 %2, %3
  %i.a = icmp sgt i32 %1, 0
  %or.cond84 = and i1 %.not, %i.a
  br i1 %or.cond84, label %.lr.ph83.split.us.preheader, label %.loopexit

.lr.ph83.split.us.preheader:                      ; preds = %bb.a
  %wide.trip.count90 = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph83.split.us

.lr.ph83.split.us:                                ; preds = %.lr.ph83.split.us.preheader, %bb.m
  %indvars.iv87 = phi i64 [ 0, %.lr.ph83.split.us.preheader ], [ %indvars.iv.next88, %bb.m ] ; 2 uses
  %i.b = getelementptr [16 x i8], ptr %0, i64 %indvars.iv87 ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %.not70.us = icmp eq i64 %i.d, 0
  br i1 %.not70.us, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.lr.ph83.split.us
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %.not71.us = icmp ugt i64 %2, %i.e              ; 2 uses
  %.not72.us = icmp ult i64 %3, %i.d              ; 3 uses
  %or.cond.us = or i1 %.not72.us, %.not71.us
  br i1 %or.cond.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  br i1 %.not71.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond75.us = and i1 %.not72.us, %i.f
  br i1 %or.cond75.us, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  store i64 %3, ptr %i.b, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %.not74.us = icmp uge i64 %3, %i.d
  %i.g = icmp ugt i64 %i.d, %2
  %or.cond76.us = and i1 %.not74.us, %i.g
  br i1 %or.cond76.us, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not72.us, label %.preheader.us, label %bb.m

bb.i:                                             ; preds = %.preheader.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count90
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %.preheader.us, !llvm.loop !12

.preheader.us:                                    ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.h = getelementptr [16 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.i

bb.j:                                             ; preds = %.preheader.us
  %i.l = getelementptr i8, ptr %i.h, i64 8
  store i64 %i.d, ptr %i.l, align 8
  store i64 %3, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %..critedge_crit_edge.us
  store i64 %2, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  store i64 %2, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.f, %bb.e, %bb.c, %.lr.ph83.split.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph83.split.us, !llvm.loop !13

..critedge_crit_edge.us:                          ; preds = %bb.i
  %i.m = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.subtract_range) #9 ; 0 uses
  br label %bb.k

.loopexit:                                        ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @clean_sort_range(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %1, -1                           ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a, %bb.d
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.d ], [ 0, %bb.a ] ; 6 uses
  %.03750 = phi i32 [ %.2, %bb.d ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = getelementptr [16 x i8], ptr %0, i64 %indvars.iv.a ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %.lr.ph52
  %i.f = sext i32 %.03750 to i64                  ; 2 uses
  %i.g = icmp slt i64 %indvars.iv.a, %i.f
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = trunc nuw nsw i64 %indvars.iv.a to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr [16 x i8], ptr %0, i64 %indvars.iv
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %.not42 = icmp eq i64 %i.k, 0
  br i1 %.not42, label %bb.b, label %._crit_edge.loopexit.split.loop.exit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %2 = icmp sgt i64 %indvars.iv.next, %indvars.iv.a
  br i1 %2, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %3 = trunc nuw nsw i64 %indvars.iv to i32       ; 2 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %.preheader
  %.038.lcssa = phi i32 [ %.03750, %.preheader ], [ %3, %._crit_edge.loopexit.split.loop.exit ], [ %i.h, %bb.b ]
  %.1 = phi i32 [ %.03750, %.preheader ], [ %3, %._crit_edge.loopexit.split.loop.exit ], [ %.03750, %bb.b ] ; 2 uses
  %i.l = zext i32 %.038.lcssa to i64
  %i.m = icmp eq i64 %indvars.iv.a, %i.l
  br i1 %i.m, label %._crit_edge53, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = sext i32 %.1 to i64
  %i.o = getelementptr [16 x i8], ptr %0, i64 %i.n ; 3 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.c, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.d, align 8
  %i.s = add i32 %.1, -1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph52, %bb.c
  %.2 = phi i32 [ %.03750, %.lr.ph52 ], [ %i.s, %bb.c ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.t = sext i32 %.2 to i64
  %i.u = icmp slt i64 %indvars.iv.next.a, %i.t
  br i1 %i.u, label %.lr.ph52, label %._crit_edge53, !llvm.loop !15

._crit_edge53:                                    ; preds = %bb.d, %._crit_edge, %bb.a
  %i.v = icmp sgt i32 %1, 0
  br i1 %i.v, label %.lr.ph57.preheader, label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %._crit_edge53
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %bb.e
  %indvars.iv63 = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next64, %bb.e ] ; 3 uses
  %i.w = getelementptr [16 x i8], ptr %0, i64 %indvars.iv63
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %.not43 = icmp eq i64 %i.y, 0
  br i1 %.not43, label %._crit_edge58.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph57
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !16

._crit_edge58.loopexit.split.loop.exit:           ; preds = %.lr.ph57
  %i.z = trunc nuw nsw i64 %indvars.iv63 to i32
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %bb.e, %._crit_edge58.loopexit.split.loop.exit, %._crit_edge53
  %.0 = phi i32 [ %1, %._crit_edge53 ], [ %i.z, %._crit_edge58.loopexit.split.loop.exit ], [ %1, %bb.e ] ; 2 uses
  %i.aa = sext i32 %.0 to i64
  tail call void @sort(ptr noundef %0, i64 noundef %i.aa, i64 noundef 16, ptr noundef nonnull @cmp_range, ptr noundef null) #10
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -1, 2) i32 @cmp_range(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @sort_range(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %1 to i64
  tail call void @sort(ptr noundef %0, i64 noundef %i.a, i64 noundef 16, ptr noundef nonnull @cmp_range, ptr noundef null) #10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #7

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }

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
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
end_hunk_0
