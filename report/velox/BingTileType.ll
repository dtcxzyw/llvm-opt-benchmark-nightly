begin_hunk_0
inline.NumInlined: 603
inline.NumDeleted: 219
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1

$_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_ = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_ = comdat any
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em:bb.a
  %i.f = and i32 %i.e, 16777215
  %i.g = trunc i64 %1 to i32
  %i.h = and i32 %i.g, 16777215
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign ugt i64 %i.k, 15
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %spec.select30 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 30) ; 2 uses
  %2 = add nuw nsw i64 %spec.select30, 1
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #20 ; 2 uses
  store ptr %3, ptr %0, align 8, !tbaa !15
  store i64 %spec.select30, ptr %i.i, align 8, !tbaa !10
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em:bb.a
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.l = phi ptr [ %3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.k, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.k, ptr %i.j, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !10
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12BingTileType17bingTileToQuadKeyB5cxx11Em:bb.a
  %i.p = and i64 %i.a, 63
  %i.q = and i64 %i.a, 63
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv28 = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next29, %bb.c ] ; 2 uses
end_hunk_5
begin_hunk_6_@llvm.memmove.p0.p0.i64

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9
end_hunk_6
