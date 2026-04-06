begin_hunk_0
inline.NumInlined: 203
inline.NumDeleted: 50
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = load i64, ptr %2, align 8
  %i.e = add i64 %i.d, %i.c                       ; 8 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, label %bb.b

end_hunk_1
begin_hunk_2_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.e, 15
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.e)
  %.pre.i.i.i.i = load ptr, ptr %0, align 8
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_:bb.a
  br i1 %cond.i.i.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  %i.g = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.e, i1 false)
  %.pre = load ptr, ptr %0, align 8
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i, %bb.d
  %i.h = phi ptr [ %.pre, %bb.d ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  store i64 %i.e, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  store i8 0, ptr %i.i, align 1
end_hunk_3
begin_hunk_4_@__assert_fail
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
end_hunk_4
begin_hunk_5_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_:bb.a
  %i.d = load i64, ptr %2, align 8
  %i.e = load i64, ptr %3, align 8
  %i.f = add i64 %i.d, %i.c
  %i.g = add i64 %i.f, %i.e                       ; 8 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, label %bb.b

end_hunk_5
begin_hunk_6_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.g, 15
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.g)
  %.pre.i.i.i.i = load ptr, ptr %0, align 8
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_:bb.a
  br i1 %cond.i.i.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  %i.i = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %0, align 8
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i, %bb.d
  %i.j = phi ptr [ %.pre, %bb.d ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  store i64 %i.g, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 0, ptr %i.k, align 1
end_hunk_7
begin_hunk_8_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_S2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
end_hunk_8
begin_hunk_9_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_S2_:bb.a
  %i.f = load i64, ptr %4, align 8
  %i.g = add i64 %i.d, %i.c
  %i.h = add i64 %i.g, %i.e
  %i.i = add i64 %i.h, %i.f                       ; 8 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, label %bb.b

end_hunk_9
begin_hunk_10_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_S2_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.i, 15
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.i)
  %.pre.i.i.i.i = load ptr, ptr %0, align 8
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
end_hunk_10
begin_hunk_11_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_S2_:bb.a
  br i1 %cond.i.i.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  %i.k = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.i, i1 false)
  %.pre = load ptr, ptr %0, align 8
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i, %bb.d
  %i.l = phi ptr [ %.pre, %bb.d ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  store i64 %i.i, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 0, ptr %i.m, align 1
end_hunk_11
begin_hunk_12_@_ZN4absl16strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  %i.o = add <2 x i64> %strided.vec53, %vec.phi50 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.o, %i.n
end_hunk_12
begin_hunk_13_@_ZN4absl16strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  %i.r = add i64 %.sroa.029.0.copyload, %.040     ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02439, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph
  %.not37 = icmp eq i64 %i.r, 0
end_hunk_13
begin_hunk_14_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #9
end_hunk_14
begin_hunk_15_@llvm.vector.reduce.add.v2i64
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !7, !6}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_15
