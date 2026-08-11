inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE3popCs1hjZZAukk1a_12thread_local(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNCNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE3pop0Cs1hjZZAukk1a_12thread_local.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1                     ; 9 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load i64, ptr %0, align 8, !range !4, !noundef !3
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 13 uses
  %i.i = icmp ult i64 %i.b, 1152921504606846977
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 6 uses
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE3pop0Cs1hjZZAukk1a_12thread_local.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8
  store i64 %i.k, ptr %i.h, align 8
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 2)
  %.not.not8.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not8.i.i, label %._crit_edge.i.thread.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %2 = add nsw i64 %i.b, -3
  %i.m = icmp eq i64 %i.ai, %2
  br i1 %i.m, label %.thread.i.i, label %bb.d

._crit_edge.i.thread.i:                           ; preds = %bb.c
  %i.n = icmp eq i64 %i.d, 2
  br i1 %i.n, label %.thread.i.i, label %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE19sift_down_to_bottomCs1hjZZAukk1a_12thread_local.exit.i

.thread.i.i:                                      ; preds = %._crit_edge.i.thread.i, %._crit_edge.i.i
  %.sroa.05.0.lcssa.i5.i = phi i64 [ 1, %._crit_edge.i.thread.i ], [ %i.aj, %._crit_edge.i.i ] ; 2 uses
  %.sroa.12.0.lcssa.i4.i = phi i64 [ 0, %._crit_edge.i.thread.i ], [ %i.ae, %._crit_edge.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i5.i ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i4.i
  %i.q = load i64, ptr %i.o, align 8
  store i64 %i.q, ptr %i.p, align 8
  store i64 %i.k, ptr %i.o, align 8, !noalias !5
  br label %.lr.ph.i.preheader.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae
  store i64 %i.k, ptr %i.r, align 8, !noalias !5
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d, %.thread.i.i
  %.lcssa17.sink.i = phi i64 [ %i.ae, %bb.d ], [ %.sroa.05.0.lcssa.i5.i, %.thread.i.i ] ; 2 uses
  %i.s = icmp samesign ult i64 %.lcssa17.sink.i, %i.d
  tail call void @llvm.assume(i1 %i.s)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.preheader.i.i
  %storemerge11.i.i.i = phi i64 [ %i.u, %bb.e ], [ %.lcssa17.sink.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.t = add nsw i64 %storemerge11.i.i.i, -1
  %i.u = lshr i64 %i.t, 1                         ; 4 uses
  %i.v = icmp samesign ult i64 %i.u, %i.d
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.u
  %.val1.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !10, !noalias !13, !noundef !3 ; 2 uses
  %.not9.i.i.i = icmp ugt i64 %.val1.i.i.i, %i.k
  br i1 %.not9.i.i.i, label %bb.e, label %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE19sift_down_to_bottomCs1hjZZAukk1a_12thread_local.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %storemerge11.i.i.i
  store i64 %.val1.i.i.i, ptr %i.x, align 8
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE19sift_down_to_bottomCs1hjZZAukk1a_12thread_local.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.05.010.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 1, %bb.c ] ; 3 uses
  %.sroa.12.09.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.05.010.i.i
  %i.z = add nuw nsw i64 %.sroa.05.010.i.i, 1     ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.d
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !15, !noalias !18, !noundef !3
  %.val17.i.i = load i64, ptr %i.ab, align 8, !alias.scope !18, !noalias !15, !noundef !3
  %i.ac = icmp ule i64 %.val17.i.i, %.val.i.i
  %i.ad = zext i1 %i.ac to i64
  %i.ae = add nuw nsw i64 %.sroa.05.010.i.i, %i.ad ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.12.09.i.i
  %i.ah = load i64, ptr %i.af, align 8
  store i64 %i.ah, ptr %i.ag, align 8
  %i.ai = shl nuw nsw i64 %i.ae, 1                ; 3 uses
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %.not.not.not.i.i = icmp samesign ult i64 %i.ai, %1
  br i1 %.not.not.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE19sift_down_to_bottomCs1hjZZAukk1a_12thread_local.exit.i: ; preds = %bb.e, %.lr.ph.i.i.i, %._crit_edge.i.thread.i
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %._crit_edge.i.thread.i ], [ 0, %bb.e ], [ %storemerge11.i.i.i, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %storemerge.lcssa.i.i.i
  store i64 %i.k, ptr %i.ak, align 8, !noalias !20
  br label %_RNCNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE3pop0Cs1hjZZAukk1a_12thread_local.exit

_RNCNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE3pop0Cs1hjZZAukk1a_12thread_local.exit: ; preds = %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE19sift_down_to_bottomCs1hjZZAukk1a_12thread_local.exit.i, %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.k, %bb.b ], [ %.sroa.0.0.copyload.i, %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE19sift_down_to_bottomCs1hjZZAukk1a_12thread_local.exit.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE19sift_down_to_bottomCs1hjZZAukk1a_12thread_local.exit.i ]
  %i.al = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.am = insertvalue { i64, i64 } %i.al, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE4pushCs1hjZZAukk1a_12thread_local(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 8 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !4, !alias.scope !25, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8grow_oneCs1hjZZAukk1a_12thread_local(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !25, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b
  store i64 %1, ptr %i.h, align 8
  %i.i = add nuw nsw i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !25
  %.val = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %.not10.i = icmp eq i64 %i.b, 0
  br i1 %.not10.i, label %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE7sift_upCs1hjZZAukk1a_12thread_local.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local.exit, %bb.c
  %storemerge11.i = phi i64 [ %i.m, %bb.c ], [ %i.b, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local.exit ] ; 3 uses
  %i.l = add nsw i64 %storemerge11.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = icmp samesign ule i64 %i.m, %i.b
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.m
  %.val1.i = load i64, ptr %i.o, align 8, !alias.scope !28, !noalias !31, !noundef !3 ; 2 uses
  %.not9.i = icmp ugt i64 %.val1.i, %i.k
  br i1 %.not9.i, label %bb.c, label %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE7sift_upCs1hjZZAukk1a_12thread_local.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %storemerge11.i
  store i64 %.val1.i, ptr %i.p, align 8
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE7sift_upCs1hjZZAukk1a_12thread_local.exit, label %.lr.ph.i

_RNvMs9_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE7sift_upCs1hjZZAukk1a_12thread_local.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local.exit
  %storemerge.lcssa.i = phi i64 [ 0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local.exit ], [ 0, %bb.c ], [ %storemerge11.i, %.lr.ph.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %storemerge.lcssa.i
  store i64 %i.k, ptr %i.q, align 8, !noalias !33
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8grow_oneCs1hjZZAukk1a_12thread_local(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #5

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i64 0, i64 -9223372036854775808}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"_RNvXsc_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_4HoleINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEENtNtNtB18_3ops4drop4Drop4dropCs1hjZZAukk1a_12thread_local: argument 0"}
!7 = distinct !{!7, !"_RNvXsc_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_4HoleINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEENtNtNtB18_3ops4drop4Drop4dropCs1hjZZAukk1a_12thread_local"}
!8 = distinct !{!8, !9, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1hjZZAukk1a_12thread_local: argument 0"}
!9 = distinct !{!9, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1hjZZAukk1a_12thread_local"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!12 = distinct !{!12, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!17 = distinct !{!17, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_RNvXsc_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_4HoleINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEENtNtNtB18_3ops4drop4Drop4dropCs1hjZZAukk1a_12thread_local: argument 0"}
!22 = distinct !{!22, !"_RNvXsc_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_4HoleINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEENtNtNtB18_3ops4drop4Drop4dropCs1hjZZAukk1a_12thread_local"}
!23 = distinct !{!23, !24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1hjZZAukk1a_12thread_local: argument 0"}
!24 = distinct !{!24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1hjZZAukk1a_12thread_local"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local: argument 0"}
!27 = distinct !{!27, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEE8push_mutCs1hjZZAukk1a_12thread_local"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!30 = distinct !{!30, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_RNvXsc_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_4HoleINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEENtNtNtB18_3ops4drop4Drop4dropCs1hjZZAukk1a_12thread_local: argument 0"}
!35 = distinct !{!35, !"_RNvXsc_NtNtCscdodAO9FK5_5alloc11collections11binary_heapINtB5_4HoleINtNtCs4NRVxsYgnAr_4core3cmp7ReversejEENtNtNtB18_3ops4drop4Drop4dropCs1hjZZAukk1a_12thread_local"}
!36 = distinct !{!36, !37, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1hjZZAukk1a_12thread_local: argument 0"}
!37 = distinct !{!37, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1hjZZAukk1a_12thread_local"}
end_hunk_0
