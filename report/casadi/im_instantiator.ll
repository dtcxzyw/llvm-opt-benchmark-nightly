inline.NumInlined: 6408
inline.NumDeleted: 1102
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  resume { ptr, i32 } %i.p
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !64

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6casadi6MatrixIxE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE7densifyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::Matrix", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef 0.000000e+00)
  invoke void @_ZN6casadi6MatrixIxE7densifyERKS1_S3_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN6casadi6MatrixIxED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIxE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxEC2Ed(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) unnamed_addr #1 comdat($_ZN6casadi6MatrixIxEC5Ed) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %i.a, i64 noundef 1, i64 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.d = fptosi double %1 to i64
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  store i64 %i.d, ptr %i.c, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !14
  ret void

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

declare void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxEC2ERKSt6vectorIS2_IdSaIdEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN6casadi6MatrixIxEC5ERKSt6vectorIS2_IdSaIdEESaIS4_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %19 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN6casadi8SparsityC1Ex(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !69     ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = sdiv exact i64 %i.k, 24                  ; 3 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.m = icmp eq ptr %i.h, %i.g
  br i1 %i.m, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !tbaa !8
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !8
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ai, %.thread, %bb.b
  %i.v = phi i64 [ 1, %.thread ], [ %i.t, %bb.b ], [ %i.t, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %19, i64 noundef %i.l, i64 noundef %i.v)
          to label %bb.aj unwind label %bb.ao

.lr.ph:                                           ; preds = %bb.b, %bb.ai
  %.054133 = phi i64 [ %i.eg, %bb.ai ], [ 0, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.054133 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !73
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.s, %i.ac
  br i1 %i.ad, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.14)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.15)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.af = load ptr, ptr %1, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.054133 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  store i64 %i.an, ptr %i.c, align 8, !tbaa !50
  invoke void @_ZN6casadi3strImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.16)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !74
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #24
          to label %bb.aw unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread: ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.t:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.u:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.v:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.w:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.x:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.y:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.z:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.aa:                                            ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.ab:                                            ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ac:                                            ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.ad:                                            ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.ae:                                            ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.af:                                            ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.s, %bb.r
  %.020 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !34
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn56 = phi { ptr, i32 } [ %i.bb, %bb.af ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bc, %bb.ag ] ; 2 uses
  %.1 = phi i1 [ true, %bb.af ], [ %.020, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.020, %bb.ag ] ; 2 uses
  %i.bi = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
end_hunk_0
begin_hunk_1_@_ZN6casadi6MatrixIxEC2ERKSt6vectorIS2_IdSaIdEESaIS4_EE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !34
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ab
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.ab ], [ %.pn56.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn56.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.ab ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ] ; 2 uses
  %i.cc = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.aa
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.aa ], [ %.pn56.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn56.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  %.6 = phi i1 [ true, %bb.aa ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.ch = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !34
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.z
  %.pn56.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.z ], [ %.pn56.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn56.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %.7 = phi i1 [ true, %bb.z ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %i.cm = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !34
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.y
  %.pn56.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.y ], [ %.pn56.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn56.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.y ], [ %.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %i.cr = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !34
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.x
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.x ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %.9 = phi i1 [ true, %bb.x ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.cw = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !34
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.w
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.w ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %.10 = phi i1 [ true, %bb.w ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %i.db = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !34
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.v
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.v ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ] ; 2 uses
  %.11 = phi i1 [ true, %bb.v ], [ %.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ] ; 2 uses
  %i.dg = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !34
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.u
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  %.12 = phi i1 [ true, %bb.u ], [ %.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.dl = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !34
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.t
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 4 uses
  %.13 = phi i1 [ true, %bb.t ], [ %.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  %i.dq = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !34
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.dv = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread: ; preds = %bb.d
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !34
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !34
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.ef) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.13, label %bb.ah, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.13, label %bb.ah, label %bb.at

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn120.ph = phi { ptr, i32 } [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn120 = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn120.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ae) #28
  br label %bb.at

bb.ai:                                            ; preds = %.lr.ph
  %i.eg = add nuw nsw i64 %.054133, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !77

bb.aj:                                            ; preds = %._crit_edge
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN6casadi8SparsityaSEOS0_.exit unwind label %bb.ap ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit:                  ; preds = %bb.aj
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !8
  %i.el = load i64, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.em = mul nsw i64 %i.el, %i.ek                ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !14 ; 2 uses
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3                 ; 3 uses
  %i.eu = icmp ugt i64 %i.em, %i.et
  br i1 %i.eu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.ev = sub nuw i64 %i.em, %i.et
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ev)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge unwind label %bb.ar

._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge:    ; preds = %bb.al
  %.pre = load i64, ptr %i.b, align 8, !tbaa !8
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.am:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.ew = icmp ult i64 %i.em, %i.et
  br i1 %i.ew, label %bb.an, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.em ; 2 uses
  %.not.i.i = icmp eq ptr %i.eo, %i.ex
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.ex, ptr %i.en, align 8, !tbaa !14
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am
  %i.ey = phi i64 [ %.pre, %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge ], [ %i.el, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.el, %bb.an ], [ %i.el, %bb.am ] ; 2 uses
  %i.ez = icmp sgt i64 %i.ey, 0
  br i1 %i.ez, label %.preheader.lr.ph, label %._crit_edge140

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.preheader.preheader, label %._crit_edge140

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge137
  %i.fd = phi i64 [ %i.fm, %._crit_edge137 ], [ %i.ey, %.preheader.preheader ]
  %i.fe = phi i64 [ %i.fn, %._crit_edge137 ], [ %i.fa, %.preheader.preheader ] ; 2 uses
  %.019139 = phi i64 [ %i.fo, %._crit_edge137 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.0117.0138 = phi ptr [ %.sroa.0117.1.lcssa, %._crit_edge137 ], [ %i.fc, %.preheader.preheader ] ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  br i1 %i.ff, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %.preheader
  %i.fg = load ptr, ptr %1, align 8, !tbaa !69
  br label %bb.as

._crit_edge140:                                   ; preds = %._crit_edge137, %.preheader.lr.ph, %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.ao:                                            ; preds = %._crit_edge
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit115

bb.ap:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit115 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit115: ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.ao ], [ %i.fi, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.at

bb.ar:                                            ; preds = %bb.al
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

._crit_edge137.loopexit:                          ; preds = %bb.as
  %.pre143 = load i64, ptr %i.b, align 8, !tbaa !8
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.preheader
  %i.fm = phi i64 [ %i.fd, %.preheader ], [ %.pre143, %._crit_edge137.loopexit ] ; 2 uses
  %i.fn = phi i64 [ %i.fe, %.preheader ], [ %i.fx, %._crit_edge137.loopexit ]
  %.sroa.0117.1.lcssa = phi ptr [ %.sroa.0117.0138, %.preheader ], [ %i.fv, %._crit_edge137.loopexit ]
  %i.fo = add nuw nsw i64 %.019139, 1             ; 2 uses
  %i.fp = icmp slt i64 %i.fo, %i.fm
  br i1 %i.fp, label %.preheader, label %._crit_edge140, !llvm.loop !78

bb.as:                                            ; preds = %.lr.ph136, %bb.as
  %.0135 = phi i64 [ 0, %.lr.ph136 ], [ %i.fw, %bb.as ] ; 2 uses
  %.sroa.0117.1134 = phi ptr [ %.sroa.0117.0138, %.lr.ph136 ], [ %i.fv, %bb.as ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %.0135
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !73
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.019139
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !80
  %i.fu = fptosi double %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0117.1134, i64 8 ; 2 uses
  store i64 %i.fu, ptr %.sroa.0117.1134, align 8, !tbaa !8
  %i.fw = add nuw nsw i64 %.0135, 1               ; 2 uses
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.fy = icmp slt i64 %i.fw, %i.fx
  br i1 %i.fy, label %bb.as, label %._crit_edge137.loopexit, !llvm.loop !82

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.ah, %bb.ar, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit115
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit115 ], [ %i.fl, %bb.ar ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn120, %bb.ah ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.fz = load ptr, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !19
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.at, %bb.au
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit116 unwind label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit116: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.aw:                                            ; preds = %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !8
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZNSolsEx.exit unwind label %bb.e ; 0 uses

_ZNSolsEx.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !49, !alias.scope !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !48, !alias.scope !89
  store i8 0, ptr %i.d, align 8, !tbaa !34, !alias.scope !89
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90, !noalias !89 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !89 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
end_hunk_1
begin_hunk_2_@_ZN6casadi13einstein_evalIxEEvxRKSt6vectorIxSaIxEES5_S5_S5_PKT_S8_PS6_:bb.a
  %.pre215 = load ptr, ptr %3, align 8, !tbaa !20 ; 5 uses
  %.pre216 = load ptr, ptr %4, align 8, !tbaa !20 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre215, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre216, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre215, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8    ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre216, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8    ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !8
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre215, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre216, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !8
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 10 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.pre215, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.pre216, i64 8
  %i.an = load i64, ptr %.pre, align 8, !tbaa !8
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %.pre215, align 8, !tbaa !8
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %.pre216, align 8, !tbaa !8
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 2 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %.0137, 0
  %i.ay = icmp slt i64 %.0136164, 1               ; 2 uses
  %i.az = icmp slt i64 %.0135147163, 1            ; 2 uses
  br i1 %i.ax, label %.preheader171.lr.ph.split.us, label %.loopexit

.preheader171.lr.ph.split.us:                     ; preds = %.preheader171.lr.ph
  %i.ba = icmp sgt i64 %i.g, 3
  br i1 %i.ba, label %.preheader171.lr.ph.split.us.split.us, label %.preheader171.lr.ph.split.us.split

.preheader171.lr.ph.split.us.split.us:            ; preds = %.preheader171.lr.ph.split.us
  br i1 %i.ay, label %.loopexit, label %.preheader171.us.us.us.preheader

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph.split.us.split.us
  %i.bb = add nsw i64 %i.g, -4
  %xtraiter236 = and i64 %.0135147163, 1
  %i.bc = icmp eq i64 %.0135147163, 1
  %unroll_iter239 = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  %lcmp.mod238 = trunc i64 %.0135147163 to i1
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.split197.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.cx, %._crit_edge196.split197.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader171.us.us.us
  %.0120176.us.us.us = phi i64 [ 0, %.preheader171.us.us.us ], [ %i.bt, %bb.f ] ; 6 uses
  %.0121175.us.us.us = phi i64 [ %.0125198.us.us.us, %.preheader171.us.us.us ], [ %i.bs, %bb.f ] ; 2 uses
  %.0122174.us.us.us = phi ptr [ %i.as, %.preheader171.us.us.us ], [ %i.br, %bb.f ]
  %.0123173.us.us.us = phi ptr [ %i.aq, %.preheader171.us.us.us ], [ %i.bn, %bb.f ]
  %.0124172.us.us.us = phi ptr [ %i.ao, %.preheader171.us.us.us ], [ %i.bj, %bb.f ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !8  ; 2 uses
  %i.bf = srem i64 %.0121175.us.us.us, %i.be      ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !8
  %i.bi = mul nsw i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !8
  %i.bm = mul nsw i64 %i.bl, %i.bf
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !8
  %i.bq = mul nsw i64 %i.bp, %i.bf
  %i.br = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us, i64 %i.bq ; 2 uses
  %i.bs = sdiv i64 %.0121175.us.us.us, %i.be
  %i.bt = add nuw nsw i64 %.0120176.us.us.us, 1
  %exitcond210.not = icmp eq i64 %.0120176.us.us.us, %i.bb
  br i1 %exitcond210.not, label %..preheader170_crit_edge.us.us.us, label %bb.f, !llvm.loop !905

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %.0109181.us.us.us = phi ptr [ %i.cj, %.preheader.us.us.us.new ], [ %.0113186.us.us.us, %.preheader.us.us.us ] ; 3 uses
  %.0110180.us.us.us = phi ptr [ %i.ci, %.preheader.us.us.us.new ], [ %.0114185.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %.0111179.us.us.us = phi ptr [ %i.ch, %.preheader.us.us.us.new ], [ %.0115184.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %niter240 = phi i64 [ %niter240.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.bu = load i64, ptr %.0111179.us.us.us, align 8, !tbaa !8
  %i.bv = load i64, ptr %.0110180.us.us.us, align 8, !tbaa !8
  %i.bw = mul nsw i64 %i.bv, %i.bu
  %i.bx = load i64, ptr %.0109181.us.us.us, align 8, !tbaa !8
  %i.by = add nsw i64 %i.bx, %i.bw
  store i64 %i.by, ptr %.0109181.us.us.us, align 8, !tbaa !8
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0111179.us.us.us, i64 %.0128148162 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.0110180.us.us.us, i64 %.0127149161 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %.0109181.us.us.us, i64 %.0126150160 ; 3 uses
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !8
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !8
  %i.ce = mul nsw i64 %i.cd, %i.cc
  %i.cf = load i64, ptr %i.cb, align 8, !tbaa !8
  %i.cg = add nsw i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !8
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.0128148162 ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %.0127149161 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.0126150160 ; 2 uses
  %niter240.next.1 = add nuw nsw i64 %niter240, 2 ; 2 uses
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !906

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader169.us.us.us
  %.0112187.us.us.us = phi i64 [ 0, %.preheader169.us.us.us ], [ %i.cs, %._crit_edge.us.us.us ]
  %.0113186.us.us.us = phi ptr [ %.0117193.us.us.us, %.preheader169.us.us.us ], [ %i.cr, %._crit_edge.us.us.us ] ; 3 uses
  %.0114185.us.us.us = phi ptr [ %.0118191.us.us.us, %.preheader169.us.us.us ], [ %i.cq, %._crit_edge.us.us.us ] ; 3 uses
  %.0115184.us.us.us = phi ptr [ %.0119189.us.us.us, %.preheader169.us.us.us ], [ %i.cp, %._crit_edge.us.us.us ] ; 3 uses
  br i1 %i.bc, label %.epil.preheader235, label %.preheader.us.us.us.new

.preheader169.us.us.us:                           ; preds = %..preheader170_crit_edge.us.us.us, %._crit_edge188.us.us.us
  %.0116195.us.us.us = phi i64 [ %i.cw, %._crit_edge188.us.us.us ], [ 0, %..preheader170_crit_edge.us.us.us ]
  %.0117193.us.us.us = phi ptr [ %i.cv, %._crit_edge188.us.us.us ], [ %i.br, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0118191.us.us.us = phi ptr [ %i.cu, %._crit_edge188.us.us.us ], [ %i.bn, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0119189.us.us.us = phi ptr [ %i.ct, %._crit_edge188.us.us.us ], [ %i.bj, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  br label %.preheader.us.us.us

..preheader170_crit_edge.us.us.us:                ; preds = %bb.f
  br i1 %i.az, label %._crit_edge196.split197.us.us.us, label %.preheader169.us.us.us

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod237.not, label %._crit_edge.us.us.us, label %.epil.preheader235

.epil.preheader235:                               ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %.0109181.us.us.us.epil.init = phi ptr [ %.0113186.us.us.us, %.preheader.us.us.us ], [ %i.cj, %._crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  %.0110180.us.us.us.epil.init = phi ptr [ %.0114185.us.us.us, %.preheader.us.us.us ], [ %i.ci, %._crit_edge.us.us.us.unr-lcssa ]
  %.0111179.us.us.us.epil.init = phi ptr [ %.0115184.us.us.us, %.preheader.us.us.us ], [ %i.ch, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.ck = load i64, ptr %.0111179.us.us.us.epil.init, align 8, !tbaa !8
  %i.cl = load i64, ptr %.0110180.us.us.us.epil.init, align 8, !tbaa !8
  %i.cm = mul nsw i64 %i.cl, %i.ck
  %i.cn = load i64, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !8
  %i.co = add nsw i64 %i.cn, %i.cm
  store i64 %i.co, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !8
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader235
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0115184.us.us.us, i64 %.0131165
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0114185.us.us.us, i64 %.0130166
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0113186.us.us.us, i64 %.0129167
  %i.cs = add nuw nsw i64 %.0112187.us.us.us, 1   ; 2 uses
  %exitcond212.not.a = icmp eq i64 %i.cs, %.0136164
  br i1 %exitcond212.not.a, label %._crit_edge188.us.us.us, label %.preheader.us.us.us, !llvm.loop !907

._crit_edge188.us.us.us:                          ; preds = %._crit_edge.us.us.us
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0119189.us.us.us, i64 %.0134
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0118191.us.us.us, i64 %.0133
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0117193.us.us.us, i64 %.0132
  %i.cw = add nuw nsw i64 %.0116195.us.us.us, 1   ; 2 uses
  %exitcond213.not = icmp eq i64 %i.cw, %.0137
  br i1 %exitcond213.not, label %._crit_edge196.split197.us.us.us, label %.preheader169.us.us.us, !llvm.loop !908

._crit_edge196.split197.us.us.us:                 ; preds = %._crit_edge188.us.us.us, %..preheader170_crit_edge.us.us.us
  %i.cx = add nuw nsw i64 %.0125198.us.us.us, 1   ; 2 uses
  %exitcond214.not = icmp eq i64 %i.cx, %i.av
  br i1 %exitcond214.not, label %.loopexit, label %.preheader171.us.us.us, !llvm.loop !909

.preheader171.lr.ph.split.us.split:               ; preds = %.preheader171.lr.ph.split.us
  %brmerge = or i1 %i.ay, %i.az
  br i1 %brmerge, label %.loopexit, label %.preheader171.us.preheader

.preheader171.us.preheader:                       ; preds = %.preheader171.lr.ph.split.us.split
  %xtraiter = and i64 %.0135147163, 1
  %i.cy = icmp eq i64 %.0135147163, 1
  %unroll_iter = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod234 = trunc i64 %.0135147163 to i1
  br label %.preheader171.us

.preheader171.us:                                 ; preds = %.preheader171.us.preheader, %._crit_edge196.us
  %.0125198.us = phi i64 [ %i.ec, %._crit_edge196.us ], [ 0, %.preheader171.us.preheader ]
  br label %.preheader169.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.0109181.us = phi ptr [ %i.do, %.preheader.us.new ], [ %.0113186.us, %.preheader.us ] ; 3 uses
  %.0110180.us = phi ptr [ %i.dn, %.preheader.us.new ], [ %.0114185.us, %.preheader.us ] ; 2 uses
  %.0111179.us = phi ptr [ %i.dm, %.preheader.us.new ], [ %.0115184.us, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.cz = load i64, ptr %.0111179.us, align 8, !tbaa !8
  %i.da = load i64, ptr %.0110180.us, align 8, !tbaa !8
  %i.db = mul nsw i64 %i.da, %i.cz
  %i.dc = load i64, ptr %.0109181.us, align 8, !tbaa !8
  %i.dd = add nsw i64 %i.dc, %i.db
  store i64 %i.dd, ptr %.0109181.us, align 8, !tbaa !8
  %i.de = getelementptr inbounds [8 x i8], ptr %.0111179.us, i64 %.0128148162 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.0110180.us, i64 %.0127149161 ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0109181.us, i64 %.0126150160 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !tbaa !8
  %i.di = load i64, ptr %i.df, align 8, !tbaa !8
  %i.dj = mul nsw i64 %i.di, %i.dh
  %i.dk = load i64, ptr %i.dg, align 8, !tbaa !8
  %i.dl = add nsw i64 %i.dk, %i.dj
  store i64 %i.dl, ptr %i.dg, align 8, !tbaa !8
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.0128148162 ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.df, i64 %.0127149161 ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.0126150160 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !906

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader169.us
  %.0112187.us = phi i64 [ 0, %.preheader169.us ], [ %i.dx, %._crit_edge.us ]
  %.0113186.us = phi ptr [ %.0117193.us, %.preheader169.us ], [ %i.dw, %._crit_edge.us ] ; 3 uses
  %.0114185.us = phi ptr [ %.0118191.us, %.preheader169.us ], [ %i.dv, %._crit_edge.us ] ; 3 uses
  %.0115184.us = phi ptr [ %.0119189.us, %.preheader169.us ], [ %i.du, %._crit_edge.us ] ; 3 uses
  br i1 %i.cy, label %.epil.preheader, label %.preheader.us.new

.preheader169.us:                                 ; preds = %.preheader171.us, %._crit_edge188.us
  %.0116195.us = phi i64 [ 0, %.preheader171.us ], [ %i.eb, %._crit_edge188.us ]
  %.0117193.us = phi ptr [ %i.as, %.preheader171.us ], [ %i.ea, %._crit_edge188.us ] ; 2 uses
  %.0118191.us = phi ptr [ %i.aq, %.preheader171.us ], [ %i.dz, %._crit_edge188.us ] ; 2 uses
  %.0119189.us = phi ptr [ %i.ao, %.preheader171.us ], [ %i.dy, %._crit_edge188.us ] ; 2 uses
  br label %.preheader.us

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.0109181.us.epil.init = phi ptr [ %.0113186.us, %.preheader.us ], [ %i.do, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.0110180.us.epil.init = phi ptr [ %.0114185.us, %.preheader.us ], [ %i.dn, %._crit_edge.us.unr-lcssa ]
  %.0111179.us.epil.init = phi ptr [ %.0115184.us, %.preheader.us ], [ %i.dm, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %i.dp = load i64, ptr %.0111179.us.epil.init, align 8, !tbaa !8
  %i.dq = load i64, ptr %.0110180.us.epil.init, align 8, !tbaa !8
  %i.dr = mul nsw i64 %i.dq, %i.dp
  %i.ds = load i64, ptr %.0109181.us.epil.init, align 8, !tbaa !8
  %i.dt = add nsw i64 %i.ds, %i.dr
  store i64 %i.dt, ptr %.0109181.us.epil.init, align 8, !tbaa !8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.du = getelementptr inbounds [8 x i8], ptr %.0115184.us, i64 %.0131165
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0114185.us, i64 %.0130166
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0113186.us, i64 %.0129167
  %i.dx = add nuw nsw i64 %.0112187.us, 1         ; 2 uses
  %exitcond207.not = icmp eq i64 %i.dx, %.0136164
  br i1 %exitcond207.not, label %._crit_edge188.us, label %.preheader.us, !llvm.loop !907

._crit_edge188.us:                                ; preds = %._crit_edge.us
  %i.dy = getelementptr inbounds [8 x i8], ptr %.0119189.us, i64 %.0134
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0118191.us, i64 %.0133
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0117193.us, i64 %.0132
  %i.eb = add nuw nsw i64 %.0116195.us, 1         ; 2 uses
  %exitcond208.not = icmp eq i64 %i.eb, %.0137
  br i1 %exitcond208.not, label %._crit_edge196.us, label %.preheader169.us, !llvm.loop !908

._crit_edge196.us:                                ; preds = %._crit_edge188.us
  %i.ec = add nuw nsw i64 %.0125198.us, 1         ; 2 uses
  %exitcond209.not = icmp eq i64 %i.ec, %i.av
  br i1 %exitcond209.not, label %.loopexit, label %.preheader171.us, !llvm.loop !909

.loopexit:                                        ; preds = %._crit_edge196.us, %._crit_edge196.split197.us.us.us, %.preheader171.lr.ph, %.preheader171.lr.ph.split.us.split.us, %.preheader171.lr.ph.split.us.split, %.thread151, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE8einsteinERKS1_S3_RKSt6vectorIxSaIxEES8_S8_S8_S8_S8_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %10 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !17     ; 11 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.08.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ao, %.lr.ph.i ] ; 9 uses
  %.067.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.an, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8
  %i.l = mul nsw i64 %i.k, %.067.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !8
  %i.t = mul nsw i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = mul nsw i64 %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !8
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !8
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8
  %i.an = mul nsw i64 %i.am, %i.aj                ; 3 uses
  %i.ao = add nuw nsw i64 %.08.i, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !849

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ao, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %.067.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.an, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.as, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.067.i.epil = phi i64 [ %i.ar, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i.epil
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !8
  %i.ar = mul nsw i64 %i.aq, %.067.i.epil         ; 2 uses
  %i.as = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil, !llvm.loop !910

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit: ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.06.lcssa.i = phi i64 [ 1, %bb.a ], [ %i.an, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !911
  call void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %9, i64 noundef %.06.lcssa.i, i64 noundef 1), !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !914
  store i64 0, ptr %i.a, align 8, !tbaa !8, !noalias !914
  invoke void @_ZN6casadi6MatrixIxEC1ERKNS_8SparsityERKxb(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !914
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericMatrixINS_6MatrixIxEEE5zerosExx.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #26
  unreachable

bb.d:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #26
  unreachable

common.resume:                                    ; preds = %bb.i, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i
  %common.resume.op = phi { ptr, i32 } [ %i.av, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i ], [ %i.bi, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !911
  br label %common.resume

_ZN6casadi13GenericMatrixINS_6MatrixIxEEE5zerosExx.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !911
  invoke void @_ZN6casadi6MatrixIxE8einsteinERKS1_S3_S3_RKSt6vectorIxSaIxEES8_S8_S8_S8_S8_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixIxEEE5zerosExx.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_ZN6casadi6MatrixIxED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #26
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  ret void

bb.i:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixIxEEE5zerosExx.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE6cumsumERKS1_x(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.casadi::Matrix", align 8    ; 4 uses
  %4 = alloca %"class.casadi::SubMatrix.36", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.casadi::Slice", align 8     ; 5 uses
  %6 = alloca %"class.casadi::SubMatrix.36", align 8 ; 9 uses
  %7 = alloca %"class.casadi::Slice", align 8     ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.casadi::Matrix", align 8    ; 4 uses
  %9 = alloca %"class.casadi::SubMatrix.44", align 8 ; 9 uses
  %10 = alloca %"class.casadi::Slice", align 8    ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.casadi::SubMatrix.44", align 8 ; 9 uses
  %12 = alloca %"class.casadi::Slice", align 8    ; 5 uses
  %i.e = icmp eq i64 %2, -1
  br i1 %i.e, label %bb.b, label %bb.c

end_hunk_2
