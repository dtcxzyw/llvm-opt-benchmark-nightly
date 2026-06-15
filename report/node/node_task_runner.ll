inline.NumInlined: 6274
inline.NumDeleted: 2305
begin_hunk_0_@_ZN4node11task_runner11EscapeShellB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i30
  %i.ew = load i64, ptr %i.ai, align 8
  store ptr %i.en, ptr %0, align 8
  %i.ex = load <2 x i64>, ptr %i.eg, align 8
  store <2 x i64> %i.ex, ptr %i.aj, align 8
  %.not.i32 = icmp eq ptr %i.el, null
  br i1 %.not.i32, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i31
  store ptr %i.el, ptr %9, align 8
  store i64 %i.ew, ptr %i.ef, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i31, %.thread.i37
  store ptr %i.ef, ptr %9, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38: ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34, %bb.aw, %bb.ax
  %i.ey = phi ptr [ %i.el, %bb.aw ], [ %i.ef, %bb.ax ], [ %i.en, %bb.as ], [ %.pre.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34 ]
  store i64 0, ptr %i.eg, align 8
  store i8 0, ptr %i.ey, align 1
  %i.ez = load ptr, ptr %9, align 8               ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ef
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38
  %i.fb = load i64, ptr %i.ef, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %._crit_edge.i.i
  ret void
}

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare i32 @uv_os_environ(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @uv_os_free_environ(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__detail::_Compiler", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %3, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !noalias !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8              ; 8 uses
  store <2 x ptr> %i.g, ptr %i.b, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !80
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !80
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit

_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  store i32 %2, ptr %0, align 8
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !81
  br label %_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #24
  ret void
}

declare void @uv_close(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4node11task_runner13ProcessRunner6OnExitEli(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %. = zext i1 %i.a to i32
  store i32 %., ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11task_runner13ProcessRunner3RunEv(ptr noundef nonnull align 8 dereferenceable(504) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.b = load ptr, ptr %2, align 8, !noalias !88  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !88 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.e, ptr %1, align 8, !alias.scope !88
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.d, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %i.d, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !88
  store i64 %i.d, ptr %i.e, align 8, !alias.scope !88
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.b, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit

_ZNKSt10filesystem7__cxx114path6stringEv.exit:    ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i64 %i.d, ptr %i.o, align 8, !alias.scope !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %1, align 8                ; 5 uses
  %i.v = icmp eq ptr %i.u, %i.e                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  br i1 %i.v, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  br i1 %i.v, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = load i64, ptr %i.o, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  switch i64 %i.w, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %i.u, align 1
  store i8 %i.y, ptr %i.r, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.z = load i64, ptr %i.o, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  %.pre.i = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.u, ptr %i.q, align 8
  %i.ae = load <2 x i64>, ptr %i.o, align 8
  store <2 x i64> %i.ae, ptr %i.ad, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.s, align 8
  store ptr %i.u, ptr %i.q, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load <2 x i64>, ptr %i.o, align 8
  store <2 x i64> %i.ah, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %1, align 8
  store i64 %i.af, ptr %i.e, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %3 = phi ptr [ %i.r, %bb.m ], [ %i.e, %bb.n ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %3, align 1
  %i.ai = load ptr, ptr %1, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.e
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ak = load i64, ptr %i.e, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.an) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %2, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.at = load ptr, ptr %i.q, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = call i32 @uv_spawn(ptr noundef %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.au) #24 ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.az = load ptr, ptr @stderr, align 8
  %i.ba = call ptr @uv_strerror(i32 noundef %i.ay) #24
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.30, ptr noundef %i.ba) #29 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = call i32 @uv_run(ptr noundef %i.bc, i32 noundef 0) #24 ; 0 uses
  ret void
}

declare void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare i32 @uv_spawn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare ptr @uv_strerror(i32 noundef) local_unnamed_addr #5

declare i32 @uv_run(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11task_runner15FindPackageJsonERKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 15 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 8 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 17 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 15 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 13 uses
  %18 = alloca %"class.std::tuple.38", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA13_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.31, i8 noundef zeroext 2)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !89
  %i.b = load ptr, ptr %1, align 8, !noalias !89  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !89 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !alias.scope !89
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !89
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.b, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit

_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !89
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #24
  %i.p = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) #24 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.r) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.h, %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.s = load ptr, ptr %3, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.z, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.aa, align 8
  store i8 0, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNKSt10filesystem7__cxx114path9root_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ab, ptr %7, align 8
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  %i.ad = load i64, ptr %i.c, align 8             ; 8 uses
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %bb.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.af = icmp slt i64 %i.ad, 0
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
  unreachable
end_hunk_0
