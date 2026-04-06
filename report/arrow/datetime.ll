begin_hunk_0
inline.NumInlined: 2499
inline.NumDeleted: 992
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i unwind label %bb.l ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !30
  store i64 %spec.select, ptr %i.au, align 8, !tbaa !31
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bb, i64 noundef %i.bc)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !103 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i unwind label %bb.n ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store ptr %i.ax, ptr %8, align 8, !tbaa !30
  store i64 %spec.select, ptr %i.at, align 8, !tbaa !31
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii:bb.a
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !127 ; 2 uses
end_hunk_4
