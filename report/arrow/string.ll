inline.NumInlined: 496
inline.NumDeleted: 207
begin_hunk_0_@_ZN5arrow6EscapeB5cxx11EPKcm:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !14
  store i8 %i.o, ptr %i.k, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal11JoinStringsB5cxx11ERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EES5_
define void @_ZN5arrow8internal11JoinStringsB5cxx11ERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EES5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !55 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58, !noalias !55 ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge.i.i.i, label %bb.b

end_hunk_4
begin_hunk_5_@_ZN5arrow8internal11JoinStringsB5cxx11ERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EES5_:bb.a
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.q, align 8, !tbaa !15, !alias.scope !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.copyload.i.i
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.c to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.u, 16
  br i1 %i.v, label %.lr.ph.i, label %_ZN5arrow8internalL15JoinStringLikesISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS4_SaIcEEERKSt6vectorIT_SaISB_EES5_.exit
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E
define void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66, !noalias !63 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !69, !noalias !63 ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !7, !alias.scope !63
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E:bb.a
  store i64 %i.i, ptr %i.q, align 8, !tbaa !15, !alias.scope !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.c to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.u, 32
  br i1 %i.v, label %.lr.ph.i, label %_ZN5arrow8internalL15JoinStringLikesINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EESt17basic_string_viewIcS5_E.exit
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d
end_hunk_9
begin_hunk_10_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.t, ptr %i.s, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
end_hunk_10
begin_hunk_11_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p
end_hunk_11
begin_hunk_12_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %5 = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_12
