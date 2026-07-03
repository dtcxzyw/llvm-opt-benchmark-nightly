inline.NumInlined: 188
inline.NumDeleted: 90
begin_hunk_0_@_ZN5arrow6Status11DeleteStateEv:bb.a
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !22
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !43
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !43
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !15

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !16
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status12CodeAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge.i.i, label %_ZNK5arrow6Status4codeEv.exit

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7
  store i16 19279, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !16
  br label %bb.b

_ZNK5arrow6Status4codeEv.exit:                    ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !tbaa !26
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i8 %1, 43
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #20 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !15

.noexc11.i:                                       ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !11
  store i64 %i.d, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %.0, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %.0, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.a = load ptr, ptr %1, align 8, !tbaa !36, !noalias !44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7, !alias.scope !44
  store i16 19279, ptr %i.c, align 8, !alias.scope !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !14, !alias.scope !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !16, !alias.scope !44
  br label %bb.ae

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit:    ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !tbaa !26, !noalias !44
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  %i.g = icmp eq ptr %.pre, null
  br i1 %i.g, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 5 uses
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, 9223372036854775806
  br i1 %i.k, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.l = add nsw i64 %i.i, 2                      ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %3 = load i64, ptr %i.n, align 8
  %4 = select i1 %i.o, i64 15, i64 %3
  %.not.i.i.i = icmp ugt i64 %i.l, %4
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store i16 8250, ptr %i.q, align 1
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %bb.d, %bb.e
  store i64 %i.l, ptr %i.h, align 8, !tbaa !14
  %i.r = load ptr, ptr %0, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i8 0, ptr %i.s, align 1, !tbaa !16
  %i.t = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14   ; 6 uses
  %i.y = load i64, ptr %i.h, align 8, !tbaa !14   ; 5 uses
  %i.z = sub i64 9223372036854775807, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ab = add i64 %i.y, %i.x                      ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n                 ; 2 uses
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ae = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %5 = load i64, ptr %i.n, align 8
  %6 = select i1 %i.ad, i64 15, i64 %5
  %.not.i.i.i.i = icmp ugt i64 %i.ab, %6
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not8.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.x, 1
  br i1 %cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.v, align 1, !tbaa !16
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !16
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.x)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  store i64 %i.ab, ptr %i.h, align 8, !tbaa !14
  %i.ah = load ptr, ptr %0, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store i8 0, ptr %i.ai, align 1, !tbaa !16
  %i.aj = load ptr, ptr %1, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.h, align 8, !tbaa !14  ; 5 uses
  %i.an = icmp sgt i64 %i.am, 9223372036854775797
  br i1 %i.an, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i11

.invoke:                                          ; preds = %bb.n, %bb.f, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #18
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i11: ; preds = %bb.n
  %i.ao = add nsw i64 %i.am, 10                   ; 3 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.n                 ; 2 uses
  br i1 %i.aq, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i12

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i11
  %i.ar = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i12: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i11
  %7 = load i64, ptr %i.n, align 8
  %8 = select i1 %i.aq, i64 15, i64 %7
  %.not.i.i.i13 = icmp ugt i64 %i.ao, %8
  br i1 %.not.i.i.i13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.as, ptr noundef nonnull align 1 dereferenceable(10) @.str.20, i64 10, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am, i64 noundef 0, ptr noundef nonnull @.str.20, i64 noundef 10)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.p, %bb.q
  store i64 %i.ao, ptr %i.h, align 8, !tbaa !14
  %i.at = load ptr, ptr %0, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ao
  store i8 0, ptr %i.au, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.av = load ptr, ptr %1, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %2, align 8, !tbaa !11    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14 ; 6 uses
  %i.be = load i64, ptr %i.h, align 8, !tbaa !14  ; 5 uses
  %i.bf = sub i64 9223372036854775807, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #18
          to label %.noexc24 unwind label %bb.ad

.noexc24:                                         ; preds = %bb.t
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19: ; preds = %bb.s
  %i.bh = add i64 %i.be, %i.bd                    ; 3 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.n                 ; 2 uses
  br i1 %i.bj, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19
  %i.bk = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i19
  %9 = load i64, ptr %i.n, align 8
  %10 = select i1 %i.bj, i64 15, i64 %9
  %.not.i.i.i.i21 = icmp ugt i64 %i.bh, %10
  br i1 %.not.i.i.i.i21, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20
  %.not8.i.i.i.i22 = icmp eq i64 %i.bd, 0
  br i1 %.not8.i.i.i.i22, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.be ; 2 uses
  %cond.i.i.i.i23 = icmp eq i64 %i.bd, 1
  br i1 %cond.i.i.i.i23, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = load i8, ptr %i.bb, align 1, !tbaa !16
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !16
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bb, i64 %i.bd, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.be, i64 noundef 0, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.v, %bb.z
  store i64 %i.bh, ptr %i.h, align 8, !tbaa !14
  %i.bn = load ptr, ptr %0, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh
  store i8 0, ptr %i.bo, align 1, !tbaa !16
  %i.bp = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ae

bb.ab:                                            ; preds = %.invoke, %bb.q, %bb.l, %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.ad:                                            ; preds = %bb.z, %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.ad
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !16
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.ac ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread, %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  ret void

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.bu, %bb.ab ]
  %i.cc = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.af
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status27ToStringWithoutContextLinesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = select i1 %i.b, ptr @_ZZNK5arrow6Status7messageB5cxx11EvE10no_messageB5cxx11, ptr %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Status6detailEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow6Status6detailEvE9no_detail acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow6Status6detailEvE9no_detail) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZNK5arrow6Status6detailEvE9no_detail, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5arrow6Status6detailEvE9no_detail) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %.not1 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %spec.select = select i1 %.not1, ptr @_ZZNK5arrow6Status6detailEvE9no_detail, ptr %i.f
  ret ptr %spec.select
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #8

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK5arrow6Status5AbortEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !16
  invoke void @_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.a, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.21, i64 noundef 24) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.e, i64 noundef %i.c)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.h = load ptr, ptr %2, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZNK5arrow6Status4WarnEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %bb.f, !inline_history !70

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit

bb.b:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %2, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc7 unwind label %bb.f, !inline_history !70

.noexc7:                                          ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit unwind label %bb.f ; 0 uses

_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit: ; preds = %.noexc, %.noexc7
  %i.m = load ptr, ptr %2, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc9 unwind label %bb.f, !inline_history !71

.noexc9:                                          ; preds = %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit
  br i1 %i.p, label %bb.c, label %_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_.exit

bb.c:                                             ; preds = %.noexc9
  %i.q = load ptr, ptr %2, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc10 unwind label %bb.f, !inline_history !71

.noexc10:                                         ; preds = %bb.c
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_.exit unwind label %bb.f ; 0 uses

_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_.exit: ; preds = %.noexc9, %.noexc10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc12 unwind label %bb.h, !inline_history !70

.noexc12:                                         ; preds = %bb.d
  br i1 %i.y, label %bb.e, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit15

bb.e:                                             ; preds = %.noexc12
  %i.z = load ptr, ptr %2, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc13 unwind label %bb.h, !inline_history !70

.noexc13:                                         ; preds = %bb.e
  %i.ad = load ptr, ptr %3, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit15 unwind label %bb.h ; 0 uses

_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit15: ; preds = %.noexc12, %.noexc13
  %i.ah = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit15
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.f:                                             ; preds = %.noexc10, %bb.c, %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit, %.noexc7, %bb.b, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.h:                                             ; preds = %.noexc13, %bb.e, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.h
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.g
  %.pn = phi { ptr, i32 } [ %i.an, %bb.g ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.ao, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.am, %bb.f ]
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !72
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %5 = load i64, ptr %i.h, align 8                ; 2 uses
  %6 = select i1 %i.i, i64 15, i64 %5             ; 2 uses
  %i.k = icmp slt i64 %i.f, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.l = icmp ugt i64 %i.f, %6
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %6, 1                        ; 2 uses
  %i.n = icmp ult i64 %i.f, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.o = add nuw i64 %.0, 1                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.r = load i8, ptr %i.g, align 1, !tbaa !16
  store i8 %i.r, ptr %i.q, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.s = icmp ne ptr %3, null
  %i.t = icmp ne i64 %4, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = load i8, ptr %3, align 1, !tbaa !16
  store i8 %i.v, ptr %i.u, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.z, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ab = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ac = add i64 %5, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ac) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a
  store ptr %i.q, ptr %0, align 8, !tbaa !11
  store i64 %.0, ptr %i.h, align 8, !tbaa !16
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!19 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!20 = !{!21, !4, i64 8}
!21 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!22 = !{!21, !4, i64 12}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow6Status5StateE", !28, i64 0, !29, i64 1, !12, i64 8, !30, i64 40}
!28 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !31, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !18, i64 8}
!32 = !{!"p1 _ZTSN5arrow12StatusDetailE", !10, i64 0}
!33 = !{!27, !29, i64 1}
!34 = !{!10, !10, i64 0}
!35 = !{!31, !32, i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN5arrow6StatusE", !38, i64 0}
!38 = !{!"p1 _ZTSN5arrow6Status5StateE", !10, i64 0}
!39 = distinct !{null, null}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK5arrow6Status12CodeAsStringB5cxx11Ev: argument 0"}
!46 = distinct !{!46, !"_ZNK5arrow6Status12CodeAsStringB5cxx11Ev"}
!47 = !{!"branch_weights", i32 1, i32 1048575}
!48 = !{!49, !60, i64 240}
!49 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !50, i64 0, !58, i64 216, !5, i64 224, !29, i64 225, !59, i64 232, !60, i64 240, !61, i64 248, !62, i64 256}
!50 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !51, i64 24, !52, i64 28, !52, i64 32, !53, i64 40, !54, i64 48, !5, i64 64, !4, i64 192, !55, i64 200, !56, i64 208}
!51 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!52 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!53 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!54 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !13, i64 8}
!55 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!56 = !{!"_ZTSSt6locale", !57, i64 0}
!57 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!58 = !{!"p1 _ZTSSo", !10, i64 0}
!59 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!60 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!61 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!62 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!63 = !{!64, !5, i64 56}
!64 = !{!"_ZTSSt5ctypeIcE", !65, i64 0, !66, i64 16, !29, i64 24, !67, i64 32, !67, i64 40, !68, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!65 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!66 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!67 = !{!"p1 int", !10, i64 0}
!68 = !{!"p1 short", !10, i64 0}
!69 = distinct !{null, null}
!70 = distinct !{null}
!71 = distinct !{null}
!72 = distinct !{null}
end_hunk_1
