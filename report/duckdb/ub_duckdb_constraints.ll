inline.NumInlined: 733
inline.NumDeleted: 412
begin_hunk_0_@_ZNK6duckdb16UniqueConstraint8HasIndexEv:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_16UniqueConstraintEJRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb9make_uniqINS_16UniqueConstraintEJRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc6_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc6_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !55
  %.pre7 = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %.noexc6

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc6_crit_edge, %bb.a
  %4 = phi ptr [ %i.c, %bb.a ], [ %.pre7, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc6_crit_edge ]
  %5 = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc6_crit_edge ]
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc6_crit_edge ] ; 4 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !56
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %5, ptr %4, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc6
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %6 = load ptr, ptr %3, align 8, !tbaa !60       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %6) #23
  br label %.body

bb.e:                                             ; preds = %.noexc6
end_hunk_1
begin_hunk_2_@_ZNK6duckdb16UniqueConstraint17GetLogicalIndexesERKNS_10ColumnListE:bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %3, align 8, !tbaa !83
  store i64 %i.c, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !84
  br label %bb.n
end_hunk_2
begin_hunk_3_@_ZN6duckdb9make_uniqINS_20ForeignKeyConstraintEJRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESC_RKNS_14ForeignKeyInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %5 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %6 = alloca %"struct.duckdb::ForeignKeyInfo", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
end_hunk_3
begin_hunk_4_@_ZN6duckdb9make_uniqINS_20ForeignKeyConstraintEJRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESC_RKNS_14ForeignKeyInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge unwind label %bb.p

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !55
  %.pre35 = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %.noexc11

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge, %bb.a
  %7 = phi ptr [ %i.c, %bb.a ], [ %.pre35, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge ]
  %8 = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge ]
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge ] ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !56
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %8, ptr %7, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc11
end_hunk_4
begin_hunk_5_@_ZN6duckdb9make_uniqINS_20ForeignKeyConstraintEJRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESC_RKNS_14ForeignKeyInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

bb.e:                                             ; preds = %.noexc11
  store ptr %i.n, ptr %i.k, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 3 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !60     ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
end_hunk_5
begin_hunk_6_@_ZN6duckdb9make_uniqINS_20ForeignKeyConstraintEJRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESC_RKNS_14ForeignKeyInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13: ; preds = %bb.f
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13..noexc18_crit_edge unwind label %bb.q

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13..noexc18_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13
  %.pre36 = load ptr, ptr %2, align 8, !tbaa !55
  %.pre37 = load ptr, ptr %i.q, align 8, !tbaa !55
  br label %.noexc18

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13..noexc18_crit_edge, %bb.e
  %9 = phi ptr [ %i.r, %bb.e ], [ %.pre37, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13..noexc18_crit_edge ]
  %10 = phi ptr [ %i.s, %bb.e ], [ %.pre36, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13..noexc18_crit_edge ]
  %i.y = phi ptr [ null, %bb.e ], [ %i.x, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i13..noexc18_crit_edge ] ; 4 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !56
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %10, ptr %9, ptr noundef %i.y)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc18
end_hunk_6
