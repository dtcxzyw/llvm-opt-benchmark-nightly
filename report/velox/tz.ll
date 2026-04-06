begin_hunk_0
inline.NumInlined: 839
inline.NumDeleted: 378
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
%"struct.std::_Vector_base<facebook::velox::date::transition, std::allocator<facebook::velox::date::transition>>::_Vector_impl" = type { %"struct.std::_Vector_base<facebook::velox::date::transition, std::allocator<facebook::velox::date::transition>>::_Vector_impl_data" }
%"struct.std::_Vector_base<facebook::velox::date::transition, std::allocator<facebook::velox::date::transition>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.facebook::velox::date::expanded_ttinfo" = type <{ %"class.std::chrono::duration", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>

$_ZN8facebook5velox4date16load_transitionsIiEESt6vectorINS1_10transitionESaIS4_EERSii = comdat any

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4date11load_ttinfoERSii:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4date18load_abbreviationsB5cxx11ERSii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !24
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4date18load_abbreviationsB5cxx11ERSii:bb.a
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.c, i64 30) ; 2 uses
  %3 = add nuw nsw i64 %spec.select, 1
  %4 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #13
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread unwind label %bb.d ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread: ; preds = %bb.b
  store ptr %4, ptr %0, align 8, !tbaa !27
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4date18load_abbreviationsB5cxx11ERSii:bb.a
  br i1 %cond.i.i.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  %i.d = phi ptr [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.c, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i ]
  store i64 %i.c, ptr %i.b, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.f, align 1, !tbaa !13
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4date20populate_transitionsERSt6vectorINS1_10transitionESaIS3_EERS2_INS1_15expanded_ttinfoESaIS7_EERSi:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i.i unwind label %bb.e ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.bm, ptr %12, align 8, !tbaa !27, !alias.scope !45
  store i64 %spec.select.i, ptr %i.bi, align 8, !tbaa !13, !alias.scope !45
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4date20populate_transitionsERSt6vectorINS1_10transitionESaIS3_EERS2_INS1_15expanded_ttinfoESaIS7_EERSi:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i.i194 unwind label %bb.bb ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i192
  store ptr %i.mq, ptr %6, align 8, !tbaa !27, !alias.scope !81
  store i64 %spec.select.i193, ptr %i.mm, align 8, !tbaa !13, !alias.scope !81
  br label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i60
end_hunk_6
begin_hunk_7_@llvm.memmove.p0.p0.i64

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

end_hunk_7
