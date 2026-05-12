inline.NumInlined: 182
inline.NumDeleted: 75
begin_hunk_0_@_GLOBAL__sub_I_config.cc:bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 166), align 2, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !19
  %i.a = invoke noalias noundef nonnull dereferenceable(103) ptr @_Znwm(i64 noundef 103) #18
          to label %.noexc68.i unwind label %bb.b ; 3 uses

.noexc68.i:                                       ; preds = %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !7
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_config.cc:bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !19
  %i.c = invoke noalias noundef nonnull dereferenceable(41) ptr @_Znwm(i64 noundef 41) #18
          to label %.noexc76.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ; 3 uses

.noexc76.i:                                       ; preds = %.noexc68.i
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !7
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_config.cc:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i: ; preds = %.noexc68.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a: ; preds = %.noexc76.i
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !7 ; 2 uses
  %i.i = icmp eq ptr %.pre.i, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224)
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224), align 16, !tbaa !13
  %i.j = add i64 %.pre, 1
  tail call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.j) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.a ] ; 2 uses
  %0 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !7 ; 2 uses
  %1 = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192)
  br i1 %1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), align 16, !tbaa !13
  %3 = add i64 %2, 1
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef %3) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i, %bb.b
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i ]
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 144), align 16, !tbaa !7 ; 2 uses
  %i.l = icmp eq ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160)
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i
end_hunk_2
