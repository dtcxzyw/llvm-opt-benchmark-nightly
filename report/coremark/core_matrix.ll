Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_matrix?download=true
inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@matrix_mul_matrix:bb.a
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !29
  %i.s = sext i16 %i.r to i32
  %i.t = mul nsw i32 %i.s, %i.m
  %i.u = add nsw i32 %i.t, %i.g
  %i.v = trunc i64 %indvars.iv to i32
  %i.w = or disjoint i32 %i.v, 1                  ; 2 uses
  %i.x = add i32 %i.b, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !29
  %i.ab = sext i16 %i.aa to i32
  %i.ac = mul i32 %0, %i.w
  %i.ad = add i32 %i.ac, %i.c
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !29
  %i.ah = sext i16 %i.ag to i32
  %i.ai = mul nsw i32 %i.ah, %i.ab
  %i.aj = add nsw i32 %i.ai, %i.u                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.new, !llvm.loop !5

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %bb.b ], [ %i.aj, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.ak = trunc nuw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.al = add i32 %i.b, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !29
  %i.ap = sext i16 %i.ao to i32
  %i.aq = mul i32 %0, %i.ak
  %i.ar = add i32 %i.aq, %i.c
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.ap
  %i.ax = add nsw i32 %i.aw, %.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.aj, %.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  store i32 %.lcssa, ptr %i.f, align 4, !tbaa !35
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %bb.d, label %bb.b, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.ay = add nuw i32 %.02529, 1                  ; 2 uses
  %exitcond36.not = icmp eq i32 %i.ay, %0
  br i1 %exitcond36.not, label %._crit_edge, label %.preheader, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matrix_mul_matrix_bitextract(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count36 = zext i32 %0 to i64         ; 3 uses
  %xtraiter = and i64 %wide.trip.count36, 1
  %i.a = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count36, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod41 = trunc i32 %0 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.d
  %.031 = phi i32 [ %i.bn, %bb.d ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.b = mul i32 %.031, %0                        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv33 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next34, %bb.c ] ; 2 uses
  %i.c = trunc nuw i64 %indvars.iv33 to i32       ; 4 uses
  %i.d = add i32 %i.b, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  br i1 %i.a, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ 0, %bb.b ] ; 3 uses
  %i.g = phi i32 [ %i.at, %.new ], [ 0, %bb.b ]
  %niter = phi i64 [ %niter.next.1, %.new ], [ 0, %bb.b ]
  %i.h = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.i = add i32 %i.b, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !29
  %i.m = zext i16 %i.l to i32
  %i.n = mul i32 %0, %i.h
  %i.o = add i32 %i.n, %i.c
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !29
  %i.s = zext i16 %i.r to i32
  %i.t = mul nuw i32 %i.s, %i.m                   ; 2 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 15
  %i.w = lshr i32 %i.t, 5
  %i.x = and i32 %i.w, 127
  %i.y = mul nuw nsw i32 %i.v, %i.x
  %i.z = add i32 %i.y, %i.g
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = or disjoint i32 %i.aa, 1                ; 2 uses
  %i.ac = add i32 %i.b, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul i32 %0, %i.ab
  %i.ai = add i32 %i.ah, %i.c
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !29
  %i.am = zext i16 %i.al to i32
  %i.an = mul nuw i32 %i.am, %i.ag                ; 2 uses
  %i.ao = lshr i32 %i.an, 2
  %i.ap = and i32 %i.ao, 15
  %i.aq = lshr i32 %i.an, 5
  %i.ar = and i32 %i.aq, 127
  %i.as = mul nuw nsw i32 %i.ap, %i.ar
  %i.at = add i32 %i.as, %i.z                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.new, !llvm.loop !8

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %bb.b ], [ %i.at, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.au = trunc nuw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.av = add i32 %i.b, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !29
  %i.az = zext i16 %i.ay to i32
  %i.ba = mul i32 %0, %i.au
  %i.bb = add i32 %i.ba, %i.c
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !29
  %i.bf = zext i16 %i.be to i32
  %i.bg = mul nuw i32 %i.bf, %i.az                ; 2 uses
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = and i32 %i.bh, 15
  %i.bj = lshr i32 %i.bg, 5
  %i.bk = and i32 %i.bj, 127
  %i.bl = mul nuw nsw i32 %i.bi, %i.bk
  %i.bm = add i32 %i.bl, %.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.at, %.unr-lcssa ], [ %i.bm, %.epil.preheader ]
  store i32 %.lcssa, ptr %i.f, align 4, !tbaa !35
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %bb.d, label %bb.b, !llvm.loop !9

bb.d:                                             ; preds = %bb.c
  %i.bn = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond38.not = icmp eq i32 %i.bn, %0
  br i1 %exitcond38.not, label %._crit_edge, label %.preheader, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @core_init_matrix(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 3
  %i.c = and i64 %i.b, 4294967292
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04653 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 5 uses
  %i.f = add i32 %.04653, 1                       ; 3 uses
  %i.g = shl i32 %i.f, 3
  %i.h = mul i32 %i.g, %i.f
  %i.i = icmp ult i32 %i.h, %0
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph
  %4 = ptrtoint ptr %1 to i64
  %5 = add i64 %4, 3
  %6 = and i64 %5, 4294967292
  %7 = inttoptr i64 %6 to ptr                     ; 3 uses
  %8 = mul i32 %.04653, %.04653
  %9 = zext i32 %8 to i64                         ; 3 uses
  %10 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %9 ; 2 uses
  %.not61 = icmp eq i32 %.04653, 0
  br i1 %.not61, label %._crit_edge60, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.j = phi ptr [ %i.e, %._crit_edge.thread ], [ %10, %._crit_edge ] ; 2 uses
  %11 = phi i64 [ 1, %._crit_edge.thread ], [ %9, %._crit_edge ]
  %i.k = phi ptr [ %i.d, %._crit_edge.thread ], [ %7, %._crit_edge ] ; 2 uses
  %.046.lcssa68 = phi i32 [ -1, %._crit_edge.thread ], [ %.04653, %._crit_edge ] ; 4 uses
  %wide.trip.count = zext i32 %.046.lcssa68 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %.14759 = phi i32 [ %i.z, %bb.c ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04858 = phi i32 [ %i.y, %bb.c ], [ 1, %.preheader.preheader ]
  %.05057 = phi i32 [ %i.n, %bb.c ], [ %spec.store.select, %.preheader.preheader ]
  %i.l = mul i32 %.14759, %.046.lcssa68
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.14955 = phi i32 [ %.04858, %.preheader ], [ %i.y, %bb.b ] ; 4 uses
  %.15154 = phi i32 [ %.05057, %.preheader ], [ %i.n, %bb.b ]
  %i.m = mul nsw i32 %.14955, %.15154
  %i.n = srem i32 %i.m, 65536                     ; 3 uses
  %i.o = add nsw i32 %i.n, %.14955                ; 2 uses
  %i.p = trunc i32 %i.o to i16
  %i.q = trunc nuw i64 %indvars.iv to i32
  %i.r = add i32 %i.l, %i.q
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.s
  store i16 %i.p, ptr %i.t, align 2, !tbaa !29
  %i.u = add i32 %i.o, %.14955
  %i.v = trunc i32 %i.u to i16
  %i.w = and i16 %i.v, 255
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.s
  store i16 %i.w, ptr %i.x, align 2, !tbaa !29
  %i.y = add nsw i32 %.14955, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !61

bb.c:                                             ; preds = %bb.b
  %i.z = add nuw i32 %.14759, 1                   ; 2 uses
  %exitcond64.not = icmp eq i32 %i.z, %.046.lcssa68
  br i1 %exitcond64.not, label %._crit_edge60, label %.preheader, !llvm.loop !62

._crit_edge60:                                    ; preds = %bb.c, %._crit_edge
  %i.aa = phi ptr [ %10, %._crit_edge ], [ %i.j, %bb.c ] ; 2 uses
  %12 = phi i64 [ %9, %._crit_edge ], [ %11, %bb.c ]
  %i.ab = phi ptr [ %7, %._crit_edge ], [ %i.k, %bb.c ]
  %.046.lcssa69.a = phi i32 [ 0, %._crit_edge ], [ %.046.lcssa68, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %12
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 3
  %i.ah = and i64 %i.ag, 4294967292
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !25
  store i32 %.046.lcssa69.a, ptr %3, align 8, !tbaa !24
  ret i32 %.046.lcssa69.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{!4, !30}
!5 = distinct !{!5, !30}
!6 = distinct !{!6, !30}
!7 = distinct !{!7, !30}
!8 = distinct !{!8, !30}
!9 = distinct !{!9, !30}
!10 = distinct !{!10, !30}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 short", !20, i64 0}
!22 = !{!"p1 int", !20, i64 0}
!23 = !{!"MAT_PARAMS_S", !17, i64 0, !21, i64 8, !21, i64 16, !22, i64 24}
!24 = !{!23, !17, i64 0}
!25 = !{!23, !22, i64 24}
!26 = !{!23, !21, i64 8}
!27 = !{!23, !21, i64 16}
!28 = !{!"short", !16, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!17, !17, i64 0}
!36 = distinct !{!36, !30, !31, !32}
!37 = distinct !{!37, !30, !31, !32}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !30, !31}
!40 = distinct !{!40, !30, !31, !32}
!41 = distinct !{!41, !34}
!42 = distinct !{!42, !30, !31}
!43 = distinct !{!43, !30, !31, !32}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !30, !31}
!46 = distinct !{!46, !30, !31, !32}
!47 = distinct !{!47, !30, !31, !32}
!48 = distinct !{!48, !34}
!49 = distinct !{!49, !30, !31}
!50 = distinct !{!50, !30, !31, !32}
!51 = distinct !{!51, !30, !31, !32}
!52 = distinct !{!52, !34}
!53 = distinct !{!53, !30, !31}
!54 = distinct !{!54, !30, !31, !32}
!55 = distinct !{!55, !34}
!56 = distinct !{!56, !30, !31}
!57 = distinct !{!57, !30, !31, !32}
!58 = distinct !{!58, !34}
!59 = distinct !{!59, !30, !31}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
end_hunk_0
