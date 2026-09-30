Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bone_parents?download=true
inline.NumInlined: 53
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl12bone_parentsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12bone_parentsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !22   ; 11 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !13     ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.f, i64 %i.c ; 6 uses
  %i.g = shl i64 %i.c, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.h = shl i64 %i.c, 3
  %scevgep29 = getelementptr i8, ptr %i.f, i64 %i.h
  %min.iters.check = icmp ult i64 %i.c, 8
  %bound0 = icmp ult ptr %i.e, %scevgep29
  %bound1 = icmp ult ptr %invariant.gep.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound030 = icmp ult ptr %i.e, %invariant.gep.us
  %bound131 = icmp ult ptr %i.f, %scevgep
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx = or i1 %found.conflict, %found.conflict32
  %n.vec = and i64 %i.c, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph22
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %._crit_edge.us ], [ 0, %.lr.ph22 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv25 ; 5 uses
  store i32 -1, ptr %i.i, align 4, !tbaa !24
  %i.j = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv25 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24, !alias.scope !25
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.l = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !24, !alias.scope !26
  %wide.load33 = load <4 x i32>, ptr %i.m, align 4, !tbaa !24, !alias.scope !26
  %i.n = icmp eq <4 x i32> %broadcast.splat, %wide.load ; 4 uses
  %i.o = icmp eq <4 x i32> %broadcast.splat, %wide.load33 ; 5 uses
  %i.p = shufflevector <4 x i1> %i.o, <4 x i1> %i.n, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.q = bitcast <8 x i1> %i.p to i8
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  %i.r = extractelement <4 x i1> %i.o, i64 3
  %i.s = trunc i64 %index to i32
  %i.t = extractelement <4 x i1> %i.o, i64 2
  %i.u = extractelement <4 x i1> %i.o, i64 1
  %i.v = extractelement <4 x i1> %i.o, i64 0
  %i.w = extractelement <4 x i1> %i.n, i64 3
  %i.x = extractelement <4 x i1> %i.n, i64 2
  %i.y = extractelement <4 x i1> %i.n, i64 1
  %i.z = zext i1 %i.y to i32
  %spec.select48.v.a = select i1 %i.x, i32 2, i32 %i.z
  %spec.select49.v.a = select i1 %i.w, i32 3, i32 %spec.select48.v.a
  %spec.select50.v.a = select i1 %i.v, i32 4, i32 %spec.select49.v.a
  %spec.select51.v = select i1 %i.u, i32 5, i32 %spec.select50.v.a
  %spec.select52.v = select i1 %i.t, i32 6, i32 %spec.select51.v
  %spec.select53.v = select i1 %i.r, i32 7, i32 %spec.select52.v
  %spec.select53 = or disjoint i32 %spec.select53.v, %i.s
  store i32 %spec.select53, ptr %i.i, align 4, !tbaa !24, !alias.scope !27, !noalias !28
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %bb.c
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !24
  %gep.us.prol = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %indvars.iv.ph
  %i.ac = load i32, ptr %gep.us.prol, align 4, !tbaa !24
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %scalar.ph.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %scalar.ph.prol
  %i.ae = trunc nuw nsw i64 %indvars.iv.ph to i32
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !24
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.d, %scalar.ph.prol
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.af = icmp eq i64 %i.c, %.neg
  br i1 %i.af, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %2
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %2 ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !24
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %indvars.iv
  %i.ah = load i32, ptr %gep.us, align 4, !tbaa !24
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %scalar.ph.1

bb.e:                                             ; preds = %scalar.ph
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !24
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.e, %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !24
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next
  %i.al = load i32, ptr %gep.us.1, align 4, !tbaa !24
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %2

bb.f:                                             ; preds = %scalar.ph.1
  %i.an = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.an, ptr %i.i, align 4, !tbaa !24
  br label %2

2:                                                ; preds = %bb.f, %scalar.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.c
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !19

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %2, %middle.block
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, %i.c
  br i1 %exitcond28.not, label %._crit_edge23, label %.lr.ph.us, !llvm.loop !20

._crit_edge23:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.i) #6
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !13
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !34
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !10, i64 0, !11, i64 8}
!13 = !{!12, !10, i64 0}
!14 = distinct !{!14, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !29, !30, !31}
!19 = distinct !{!19, !29, !30}
!20 = distinct !{!20, !29}
!21 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!22 = !{!21, !11, i64 8}
!23 = !{!21, !10, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!15}
!26 = !{!16}
!27 = !{!17}
!28 = !{!16, !15}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"vtable pointer", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!12, !11, i64 8}
end_hunk_0
