inline.NumInlined: 1494
inline.NumDeleted: 609
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS6_RKmSJ_SD_EEEvDpOT_:bb.a
bb.a:
  %6 = alloca %"class.std::unique_ptr.470", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.b, align 8, !tbaa !330
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES5_mmSC_EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %5, align 8, !tbaa !15
  store ptr %i.g, ptr %i.f, align 8, !tbaa !332
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %4, align 8, !tbaa !19
  store i64 %i.i, ptr %i.h, align 8, !tbaa !334
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %3, align 8, !tbaa !19
  store i64 %i.k, ptr %i.j, align 8, !tbaa !336
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !63
  store ptr %i.m, ptr %i.l, align 8, !tbaa !338
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.o = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.o, ptr %i.n, align 8, !tbaa !340
  store ptr %i.e, ptr %6, align 8, !tbaa !342
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %6, align 8, !tbaa !342    ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IRPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS3_RKmSG_SA_EvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #22, !inline_history !344
  br label %_ZNSt6threadC2IRPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS3_RKmSG_SA_EvEEOT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !342    ; 3 uses
  %.not.i9.i = icmp eq ptr %i.u, null
  br i1 %.not.i9.i, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit11.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #22, !inline_history !344
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit11.i

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit11.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i, %bb.d
  resume { ptr, i32 } %i.t

_ZNSt6threadC2IRPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS3_RKmSG_SA_EvEEOT_DpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !68
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS6_RKmSJ_SD_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6threadC2IRPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS3_RKmSG_SA_EvEEOT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEE3getILb1EEERKmm.exit, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEE3getILb1EEERKmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !72

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #25
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS6_RKmSJ_SD_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %7 = alloca %"class.std::unique_ptr.470", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !65     ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 0, ptr %i.r, align 8, !tbaa !330
  %i.s = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc unwind label %bb.g     ; 7 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES5_mmSC_EEEEEE, i64 16), ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %6, align 8, !tbaa !15
  store ptr %i.u, ptr %i.t, align 8, !tbaa !332
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %5, align 8, !tbaa !19
  store i64 %i.w, ptr %i.v, align 8, !tbaa !334
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load i64, ptr %4, align 8, !tbaa !19
  store i64 %i.y, ptr %i.x, align 8, !tbaa !336
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ac = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !340
  store ptr %i.s, ptr %7, align 8, !tbaa !342
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %7, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %7, align 8, !tbaa !342   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #22, !inline_history !344
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !342   ; 3 uses
  %.not.i9.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i: ; preds = %bb.d
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #22, !inline_history !344
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %8 = add i64 %i.a, -8
  %i.am = sub i64 %8, %i.f                        ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ap = add i64 %i.a, -8
  %i.aq = sub i64 %i.ap, %i.f
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.as
  %scevgep56 = getelementptr i8, ptr %i.d, i64 %i.as
  %bound0 = icmp ult ptr %i.q, %scevgep56
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.d, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aw ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.d, i64 %i.aw ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ax = getelementptr i8, ptr %next.gep57, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !19, !alias.scope !350, !noalias !345
  %wide.load58 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !19, !alias.scope !350, !noalias !345
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !353, !noalias !350
  store <2 x i64> %wide.load58, ptr %i.ay, align 8, !tbaa !19, !alias.scope !353, !noalias !350
  store <2 x i64> zeroinitializer, ptr %next.gep57, align 8, !tbaa !19, !alias.scope !350, !noalias !345
  store <2 x i64> zeroinitializer, ptr %i.ax, align 8, !tbaa !19, !alias.scope !350, !noalias !345
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i.preheader83

.lr.ph.i.i.i.i.preheader83:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader83, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader83 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !348, !noalias !345
  store i64 %i.ba, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !345, !noalias !348
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !348, !noalias !345
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !358

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i.i30 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i30, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, label %.lr.ph.i.i.i.i31.preheader

.lr.ph.i.i.i.i31.preheader:                       ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %9 = add i64 %i.e, -8
  %i.be = sub i64 %9, %i.a                        ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.be, 184
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i31.preheader82, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i.i.i.i31.preheader
  %i.bh = add i64 %i.e, -8
  %i.bi = sub i64 %i.bh, %i.a
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.bj
  %scevgep61 = getelementptr i8, ptr %i.bk, i64 16
  %i.bl = getelementptr i8, ptr %1, i64 %i.bj
  %scevgep62 = getelementptr i8, ptr %i.bl, i64 8
  %bound063 = icmp ult ptr %i.bd, %scevgep62
  %bound164 = icmp ult ptr %1, %scevgep61
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i.i.i31.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck60
  %n.vec70 = and i64 %i.bg, 4611686018427387900   ; 3 uses
  %i.bm = shl i64 %n.vec70, 3                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.bp = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep74 = getelementptr i8, ptr %1, i64 %i.bp ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.bq = getelementptr i8, ptr %next.gep74, i64 16 ; 2 uses
  %wide.load75 = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !19, !alias.scope !364, !noalias !359
  %wide.load76 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !19, !alias.scope !364, !noalias !359
  %i.br = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep73, align 8, !tbaa !19, !alias.scope !367, !noalias !364
  store <2 x i64> %wide.load76, ptr %i.br, align 8, !tbaa !19, !alias.scope !367, !noalias !364
  store <2 x i64> zeroinitializer, ptr %next.gep74, align 8, !tbaa !19, !alias.scope !364, !noalias !359
  store <2 x i64> zeroinitializer, ptr %i.bq, align 8, !tbaa !19, !alias.scope !364, !noalias !359
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.bs, label %middle.block78, label %vector.body71, !llvm.loop !369

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.bg, %n.vec70
  br i1 %cmp.n79, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, label %.lr.ph.i.i.i.i31.preheader82

.lr.ph.i.i.i.i31.preheader82:                     ; preds = %vector.memcheck60, %.lr.ph.i.i.i.i31.preheader, %middle.block78
  %.012.i.i.i.i32.ph = phi ptr [ %i.bd, %vector.memcheck60 ], [ %i.bd, %.lr.ph.i.i.i.i31.preheader ], [ %i.bn, %middle.block78 ]
  %.0911.i.i.i.i33.ph = phi ptr [ %1, %vector.memcheck60 ], [ %1, %.lr.ph.i.i.i.i31.preheader ], [ %i.bo, %middle.block78 ]
  br label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %.lr.ph.i.i.i.i31.preheader82, %.lr.ph.i.i.i.i31
  %.012.i.i.i.i32 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i31 ], [ %.012.i.i.i.i32.ph, %.lr.ph.i.i.i.i31.preheader82 ] ; 2 uses
  %.0911.i.i.i.i33 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i31 ], [ %.0911.i.i.i.i33.ph, %.lr.ph.i.i.i.i31.preheader82 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.bt = load i64, ptr %.0911.i.i.i.i33, align 8, !tbaa !19, !alias.scope !362, !noalias !359
  store i64 %i.bt, ptr %.012.i.i.i.i32, align 8, !tbaa !19, !alias.scope !359, !noalias !362
  store i64 0, ptr %.0911.i.i.i.i33, align 8, !tbaa !19, !alias.scope !362, !noalias !359
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.bu, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, label %.lr.ph.i.i.i.i31, !llvm.loop !370

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36: ; preds = %.lr.ph.i.i.i.i31, %middle.block78, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.bd, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bn, %middle.block78 ], [ %i.bv, %.lr.ph.i.i.i.i31 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !68
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !69
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.g ], [ %i.ah, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i ], [ %i.ah, %bb.d ]
  %i.ca = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.cb = call ptr @__cxa_begin_catch(ptr %i.ca) #22 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.q) #24
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bz

bb.k:                                             ; preds = %bb.h
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #25
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES5_mmSC_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPN6duckdb10FileHandleEmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES5_mmSC_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.h = load i64, ptr %i.d, align 8, !tbaa !19
  %i.i = load i64, ptr %i.e, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void %i.f(ptr noundef %i.g, i64 noundef %i.h, i64 noundef %i.i, ptr noundef %i.j), !inline_history !371
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS5_RKmSI_SC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.470", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.b, align 8, !tbaa !330
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_mmSB_EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %5, align 8, !tbaa !15
  store ptr %i.g, ptr %i.f, align 8, !tbaa !332
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %4, align 8, !tbaa !19
  store i64 %i.i, ptr %i.h, align 8, !tbaa !334
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %3, align 8, !tbaa !19
  store i64 %i.k, ptr %i.j, align 8, !tbaa !336
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !79
  store ptr %i.m, ptr %i.l, align 8, !tbaa !372
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.o = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.o, ptr %i.n, align 8, !tbaa !374
  store ptr %i.e, ptr %6, align 8, !tbaa !342
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %6, align 8, !tbaa !342    ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IRPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS2_RKmSF_S9_EvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #22, !inline_history !376
  br label %_ZNSt6threadC2IRPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS2_RKmSF_S9_EvEEOT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !342    ; 3 uses
  %.not.i9.i = icmp eq ptr %i.u, null
  br i1 %.not.i9.i, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit11.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #22, !inline_history !376
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit11.i

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit11.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i, %bb.d
  resume { ptr, i32 } %i.t

_ZNSt6threadC2IRPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS2_RKmSF_S9_EvEEOT_DpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !68
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS5_RKmSI_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6threadC2IRPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS2_RKmSF_S9_EvEEOT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS5_RKmSI_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %7 = alloca %"class.std::unique_ptr.470", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !65     ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 0, ptr %i.r, align 8, !tbaa !330
  %i.s = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc unwind label %bb.g     ; 7 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_mmSB_EEEEEE, i64 16), ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %6, align 8, !tbaa !15
  store ptr %i.u, ptr %i.t, align 8, !tbaa !332
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %5, align 8, !tbaa !19
  store i64 %i.w, ptr %i.v, align 8, !tbaa !334
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load i64, ptr %4, align 8, !tbaa !19
  store i64 %i.y, ptr %i.x, align 8, !tbaa !336
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = load ptr, ptr %3, align 8, !tbaa !79
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !372
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ac = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !374
  store ptr %i.s, ptr %7, align 8, !tbaa !342
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %7, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %7, align 8, !tbaa !342   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #22, !inline_history !376
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !342   ; 3 uses
  %.not.i9.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i: ; preds = %bb.d
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #22, !inline_history !376
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %8 = add i64 %i.a, -8
  %i.am = sub i64 %8, %i.f                        ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ap = add i64 %i.a, -8
  %i.aq = sub i64 %i.ap, %i.f
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.as
  %scevgep56 = getelementptr i8, ptr %i.d, i64 %i.as
  %bound0 = icmp ult ptr %i.q, %scevgep56
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.d, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aw ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.d, i64 %i.aw ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ax = getelementptr i8, ptr %next.gep57, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !19, !alias.scope !382, !noalias !377
  %wide.load58 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !19, !alias.scope !382, !noalias !377
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !385, !noalias !382
  store <2 x i64> %wide.load58, ptr %i.ay, align 8, !tbaa !19, !alias.scope !385, !noalias !382
  store <2 x i64> zeroinitializer, ptr %next.gep57, align 8, !tbaa !19, !alias.scope !382, !noalias !377
  store <2 x i64> zeroinitializer, ptr %i.ax, align 8, !tbaa !19, !alias.scope !382, !noalias !377
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i.preheader83

.lr.ph.i.i.i.i.preheader83:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader83, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader83 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !380, !noalias !377
  store i64 %i.ba, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !377, !noalias !380
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !380, !noalias !377
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !388

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i.i30 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i30, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, label %.lr.ph.i.i.i.i31.preheader

.lr.ph.i.i.i.i31.preheader:                       ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %9 = add i64 %i.e, -8
  %i.be = sub i64 %9, %i.a                        ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.be, 184
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i31.preheader82, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i.i.i.i31.preheader
  %i.bh = add i64 %i.e, -8
  %i.bi = sub i64 %i.bh, %i.a
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.bj
  %scevgep61 = getelementptr i8, ptr %i.bk, i64 16
  %i.bl = getelementptr i8, ptr %1, i64 %i.bj
  %scevgep62 = getelementptr i8, ptr %i.bl, i64 8
  %bound063 = icmp ult ptr %i.bd, %scevgep62
  %bound164 = icmp ult ptr %1, %scevgep61
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i.i.i31.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck60
  %n.vec70 = and i64 %i.bg, 4611686018427387900   ; 3 uses
  %i.bm = shl i64 %n.vec70, 3                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.bp = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep74 = getelementptr i8, ptr %1, i64 %i.bp ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.bq = getelementptr i8, ptr %next.gep74, i64 16 ; 2 uses
  %wide.load75 = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !19, !alias.scope !394, !noalias !389
  %wide.load76 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !19, !alias.scope !394, !noalias !389
  %i.br = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep73, align 8, !tbaa !19, !alias.scope !397, !noalias !394
  store <2 x i64> %wide.load76, ptr %i.br, align 8, !tbaa !19, !alias.scope !397, !noalias !394
  store <2 x i64> zeroinitializer, ptr %next.gep74, align 8, !tbaa !19, !alias.scope !394, !noalias !389
  store <2 x i64> zeroinitializer, ptr %i.bq, align 8, !tbaa !19, !alias.scope !394, !noalias !389
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.bs, label %middle.block78, label %vector.body71, !llvm.loop !399

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.bg, %n.vec70
  br i1 %cmp.n79, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, label %.lr.ph.i.i.i.i31.preheader82

.lr.ph.i.i.i.i31.preheader82:                     ; preds = %vector.memcheck60, %.lr.ph.i.i.i.i31.preheader, %middle.block78
  %.012.i.i.i.i32.ph = phi ptr [ %i.bd, %vector.memcheck60 ], [ %i.bd, %.lr.ph.i.i.i.i31.preheader ], [ %i.bn, %middle.block78 ]
  %.0911.i.i.i.i33.ph = phi ptr [ %1, %vector.memcheck60 ], [ %1, %.lr.ph.i.i.i.i31.preheader ], [ %i.bo, %middle.block78 ]
  br label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %.lr.ph.i.i.i.i31.preheader82, %.lr.ph.i.i.i.i31
  %.012.i.i.i.i32 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i31 ], [ %.012.i.i.i.i32.ph, %.lr.ph.i.i.i.i31.preheader82 ] ; 2 uses
  %.0911.i.i.i.i33 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i31 ], [ %.0911.i.i.i.i33.ph, %.lr.ph.i.i.i.i31.preheader82 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.bt = load i64, ptr %.0911.i.i.i.i33, align 8, !tbaa !19, !alias.scope !392, !noalias !389
  store i64 %i.bt, ptr %.012.i.i.i.i32, align 8, !tbaa !19, !alias.scope !389, !noalias !392
  store i64 0, ptr %.0911.i.i.i.i33, align 8, !tbaa !19, !alias.scope !392, !noalias !389
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.bu, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, label %.lr.ph.i.i.i.i31, !llvm.loop !400

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36: ; preds = %.lr.ph.i.i.i.i31, %middle.block78, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.bd, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bn, %middle.block78 ], [ %i.bv, %.lr.ph.i.i.i.i31 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36, %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !68
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !69
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.g ], [ %i.ah, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i10.i ], [ %i.ah, %bb.d ]
  %i.ca = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.cb = call ptr @__cxa_begin_catch(ptr %i.ca) #22 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.q) #24
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bz

bb.k:                                             ; preds = %bb.h
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #25
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_mmSB_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_mmSB_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.h = load i64, ptr %i.d, align 8, !tbaa !19
  %i.i = load i64, ptr %i.e, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void %i.f(ptr noundef %i.g, i64 noundef %i.h, i64 noundef %i.i, ptr noundef %i.j), !inline_history !401
  ret void
}

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #6

declare void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #9

declare noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_16DatabaseInstanceEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1560), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN6duckdb12BooleanValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !7
  %i.t = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.v, ptr %i.a, align 8, !tbaa !19
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
end_hunk_0
