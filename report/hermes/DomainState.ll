inline.NumInlined: 601
inline.NumDeleted: 374
begin_hunk_0_@_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE17_M_realloc_insertIJRS8_SG_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_:bb.a
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !93     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE17_M_realloc_insertIJRS8_SG_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_:bb.a

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !53
  %.pre44 = load ptr, ptr %i.r, align 8, !tbaa !53
  br label %.noexc27

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit
  %4 = phi ptr [ %i.s, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %.pre44, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ]
  %5 = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ]
  %i.z = phi ptr [ null, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 4 uses
  store ptr %i.z, ptr %i.q, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !95
  %i.ad = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %5, ptr %4, ptr noundef %i.z)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc27
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE17_M_realloc_insertIJRS8_DnEEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_:bb.a
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !93     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE17_M_realloc_insertIJRS8_DnEEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_:bb.a

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !53
  %.pre44 = load ptr, ptr %i.r, align 8, !tbaa !53
  br label %.noexc27

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit
  %4 = phi ptr [ %i.s, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %.pre44, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ]
  %5 = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ]
  %i.z = phi ptr [ null, %_ZNKSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISD_EEESaISH_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 4 uses
  store ptr %i.z, ptr %i.q, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !95
  %i.ad = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %5, ptr %4, ptr noundef %i.z)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc27
end_hunk_3
