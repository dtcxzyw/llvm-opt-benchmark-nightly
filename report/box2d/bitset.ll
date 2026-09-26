Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/bitset?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden { ptr, i64 } @b2CreateBitSet(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = add nuw nsw i64 %i.a, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = tail call ptr @b2Alloc(i64 noundef %i.d) #5 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.d, i1 false)
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare ptr @b2Alloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b2DestroyBitSet(ptr nofree noundef captures(none) initializes((12, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @b2Free(ptr noundef %i.a, i64 noundef %i.e) #5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @b2Free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b2SetBitCountAndClear(ptr nofree noundef captures(none) initializes((12, 16)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = add nuw nsw i64 %i.a, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  tail call void @b2Free(ptr noundef %.pre, i64 noundef %i.i) #5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.j = lshr i32 %1, 1
  %i.k = add i32 %i.j, %1
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 63
  %i.n = lshr i64 %i.m, 6                         ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3                  ; 2 uses
  %i.p = tail call ptr @b2Alloc(i64 noundef %i.o) #5 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.o, i1 false)
  store ptr %i.p, ptr %0, align 8, !tbaa !14
  store i64 %i.n, ptr %i.e, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi ptr [ %i.p, %bb.b ], [ %.pre, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.r, align 4, !tbaa !13
  %i.s = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.s, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define hidden void @b2GrowBitSet(ptr nofree noundef captures(none) initializes((12, 16)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = icmp ugt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1                         ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !12
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = tail call ptr @b2Alloc(i64 noundef %i.g) #5 ; 3 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !12
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = zext i32 %i.b to i64
  %i.n = shl nuw nsw i64 %i.m, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.l, i64 %i.n, i1 false)
  %i.o = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @b2Free(ptr noundef %i.o, i64 noundef %i.n) #5
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.p, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2InPlaceUnion(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !11     ; 8 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.e
  %scevgep9 = getelementptr i8, ptr %i.c, i64 %i.e
  %bound0 = icmp ult ptr %i.d, %scevgep9
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !23, !alias.scope !24
  %wide.load10 = load <2 x i64>, ptr %i.g, align 8, !tbaa !23, !alias.scope !24
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load11 = load <2 x i64>, ptr %i.h, align 8, !tbaa !23, !alias.scope !25, !noalias !24
  %wide.load12 = load <2 x i64>, ptr %i.i, align 8, !tbaa !23, !alias.scope !25, !noalias !24
  %i.j = or <2 x i64> %wide.load11, %wide.load
  %i.k = or <2 x i64> %wide.load12, %wide.load10
  store <2 x i64> %i.j, ptr %i.h, align 8, !tbaa !23, !alias.scope !25, !noalias !24
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !23, !alias.scope !25, !noalias !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.prol
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.prol ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  %i.q = or i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8, !tbaa !23
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !20

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.r = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23
  %i.x = or i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = or i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.1
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.1 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !23
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.2
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.2 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !21
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 long", !8, i64 0}
!10 = !{!"b2BitSet", !9, i64 0, !5, i64 8, !5, i64 12}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!10, !5, i64 12}
!14 = !{!9, !9, i64 0}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !26, !27, !28}
!20 = distinct !{!20, !29}
!21 = distinct !{!21, !26, !27}
!22 = !{!"long", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!17}
!25 = !{!18}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
