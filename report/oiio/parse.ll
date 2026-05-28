inline.NumInlined: 301
inline.NumDeleted: 143
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #2 align 2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4YAML4NodeEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i
  %.05.i = phi ptr [ %i.v, %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !75
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !75
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.s) #20
  br label %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i

_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i:           ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4YAML4NodeEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !57

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4YAML4NodeEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4YAML4NodeESaIS1_EE12emplace_backIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 8, !tbaa !17, !range !77, !noundef !78
  store i8 %i.f, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !9    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.l, ptr %i.a, align 8, !tbaa !29
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !9
  %i.o = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.o, ptr %i.i, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc.i.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !28
  store i8 %i.q, ptr %i.p, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !79
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN4YAML4NodeC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN4YAML4NodeC2ERKS0_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4YAML4NodeC2ERKS0_.exit

_ZN4YAML4NodeC2ERKS0_.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !80
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !55
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4YAML4NodeC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52     ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775744
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 6                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 144115188075855871)
  %7 = select i1 %5, i64 144115188075855871, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 6
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #23 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 7 uses
  %i.j = load i8, ptr %2, align 8, !tbaa !17, !range !77, !noundef !78
  store i8 %i.j, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.p, ptr %i.a, align 8, !tbaa !29
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE11_M_allocateEm.exit
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %i.k, align 8, !tbaa !9
  %i.s = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.s, ptr %i.m, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE11_M_allocateEm.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.m, %_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !28
  store i8 %i.u, ptr %i.t, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !27
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !79
  store <2 x ptr> %i.ad, ptr %i.z, align 8, !tbaa !79
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !80
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4YAML4NodeEPS1_ET0_T_S6_S5_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %11)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %bb.p

_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4YAML4NodeEPS1_ET0_T_S6_S5_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.an)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit30 unwind label %bb.q

_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit30, %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit30 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ar, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !48
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #19, !inline_history !56
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #19, !inline_history !56
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.n, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !50

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #19
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bh) #20
  br label %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i

_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i:         ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !57

_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit:          ; preds = %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit30
  %.not.i31 = icmp eq ptr %i.d, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.d) #20
  br label %_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %0, align 8, !tbaa !52
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %11, i64 %7
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !76
  ret void

bb.p:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #19 ; 0 uses
  call void @_ZN4YAML4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.i) #19
  br label %bb.s

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.noexc.i.i
  %.0.ph = phi ptr [ %11, %.noexc.i.i ], [ %i.an, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_(ptr noundef nonnull %11, ptr noundef nonnull %.0.ph)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.s:                                             ; preds = %bb.p, %bb.q
  call void @_ZdlPv(ptr noundef nonnull %11) #20
  invoke void @__cxa_rethrow() #21
          to label %bb.v unwind label %bb.r

bb.t:                                             ; preds = %bb.r
  resume { ptr, i32 } %i.br

bb.u:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #22
  unreachable

bb.v:                                             ; preds = %bb.s
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKN4YAML4NodeEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.016 = phi ptr [ %i.af, %bb.g ], [ %2, %bb.a ] ; 8 uses
  %.01215 = phi ptr [ %i.ae, %bb.g ], [ %0, %bb.a ] ; 7 uses
  %i.b = load i8, ptr %.01215, align 8, !tbaa !17, !range !77, !noundef !78
  store i8 %i.b, ptr %.016, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !26
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.h, ptr %i.a, align 8, !tbaa !29
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !9
  %i.k = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.k, ptr %i.e, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %.lr.ph ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !28
  store i8 %i.m, ptr %i.l, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.016, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.r = getelementptr inbounds nuw i8, ptr %.016, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %.01215, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.01215, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !79
  store <2 x ptr> %i.v, ptr %i.r, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.016, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %.01215, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.016, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #21
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.af, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.aj

bb.l:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #22
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
end_hunk_0
