Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/widemuldiv?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Ptngc_largeint_add(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %i.b = add i32 %i.a, %0
  %i.c = xor i32 %0, -1
  %i.d = icmp ugt i32 %i.a, %i.c
  store i32 %i.b, ptr %1, align 4, !tbaa !8
  %i.e = icmp sgt i32 %2, 1
  %i.f = select i1 %i.e, i1 %i.d, i1 false
  br i1 %i.f, label %.lr.ph.preheader.i, label %largeint_add_gen.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.j = add i32 %i.i, 1
  %i.k = icmp eq i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next.i, %i.g
  %i.m = select i1 %i.l, i1 %i.k, i1 false
  br i1 %i.m, label %.lr.ph.i, label %largeint_add_gen.exit, !llvm.loop !9

largeint_add_gen.exit:                            ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ptngc_largeint_mul(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = shl nsw i64 %i.a, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.b, i1 false)
  %i.c = add i32 %3, -1                           ; 2 uses
  %i.d = icmp sgt i32 %3, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %largeint_add_gen.exit31
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.pre-phi, %largeint_add_gen.exit31 ] ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8    ; 2 uses
  %.not25 = icmp eq i32 %i.f, 0
  br i1 %.not25, label %.lr.ph.largeint_add_gen.exit31_crit_edge, label %bb.b

.lr.ph.largeint_add_gen.exit31_crit_edge:         ; preds = %.lr.ph
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %largeint_add_gen.exit31

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call { i32, i32 } asm sideeffect "mull %edx\0A\09", "={ax},={dx},{ax},{dx},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 range(i32 1, 0) %i.f) #3, !srcloc !11 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %i.l = add i32 %i.k, %i.h
  %i.m = xor i32 %i.h, -1
  %i.n = icmp ugt i32 %i.k, %i.m
  store i32 %i.l, ptr %i.j, align 4, !tbaa !8
  %i.o = add nuw nsw i64 %indvars.iv, 1           ; 4 uses
  br i1 %i.n, label %.lr.ph.i, label %largeint_add_gen.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8    ; 2 uses
  %i.r = add i32 %i.q, 1
  %i.s = icmp eq i32 %i.q, -1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.a
  %i.u = select i1 %i.t, i1 %i.s, i1 false
  br i1 %i.u, label %.lr.ph.i, label %largeint_add_gen.exit, !llvm.loop !9

largeint_add_gen.exit:                            ; preds = %.lr.ph.i, %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8    ; 2 uses
  %i.x = add i32 %i.w, %i.i
  %i.y = xor i32 %i.i, -1
  %i.z = icmp ugt i32 %i.w, %i.y
  store i32 %i.x, ptr %i.v, align 4, !tbaa !8
  %4 = trunc i64 %indvars.iv to i32
  %5 = add i32 %4, 2
  %i.aa = icmp slt i32 %5, %3
  %i.ab = select i1 %i.aa, i1 %i.z, i1 false
  br i1 %i.ab, label %.lr.ph.preheader.i27, label %largeint_add_gen.exit31

.lr.ph.preheader.i27:                             ; preds = %largeint_add_gen.exit
  %i.ac = add nuw nsw i64 %indvars.iv, 2
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28, %.lr.ph.preheader.i27
  %indvars.iv.i29 = phi i64 [ %i.ac, %.lr.ph.preheader.i27 ], [ %indvars.iv.next.i30, %.lr.ph.i28 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i29 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %i.af = add i32 %i.ae, 1
  %i.ag = icmp eq i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !8
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %i.ah = icmp slt i64 %indvars.iv.next.i30, %i.a
  %i.ai = select i1 %i.ah, i1 %i.ag, i1 false
  br i1 %i.ai, label %.lr.ph.i28, label %largeint_add_gen.exit31, !llvm.loop !9

largeint_add_gen.exit31:                          ; preds = %.lr.ph.i28, %.lr.ph.largeint_add_gen.exit31_crit_edge, %largeint_add_gen.exit
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %.lr.ph.largeint_add_gen.exit31_crit_edge ], [ %i.o, %largeint_add_gen.exit ], [ %i.o, %.lr.ph.i28 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %largeint_add_gen.exit31
  %i.aj = zext nneg i32 %i.c to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.aj, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8  ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %largeint_add_gen.exit37, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.am = tail call { i32, i32 } asm sideeffect "mull %edx\0A\09", "={ax},={dx},{ax},{dx},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 range(i32 1, 0) %i.al) #3, !srcloc !11
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.lcssa ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = add i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !8
  br label %largeint_add_gen.exit37

largeint_add_gen.exit37:                          ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define i32 @Ptngc_largeint_div(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %.not12 = icmp eq i32 %3, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = sext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.a, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.01113 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.f, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = tail call { i32, i32 } asm sideeffect "divl %ecx\0A\09", "={ax},={dx},{ax},{dx},{cx},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.c, i32 %.01113, i32 %0) #3, !srcloc !13 ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1        ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.e, ptr %i.g, align 4, !tbaa !8
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.011.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %.lr.ph ]
  ret i32 %.011.lcssa
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 1977, i64 1990}
!12 = distinct !{!12, !10}
!13 = !{i64 3934, i64 3947}
!14 = distinct !{!14, !10}
end_hunk_0
