inline.NumInlined: 5278
inline.NumDeleted: 2139
begin_hunk_0_@_ZN5arrow13BooleanScalarD0Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_11BooleanTypeEbE4dataEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_11BooleanTypeEbE4viewEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %.fca.1.insert = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow6Status10WithDetailESt10shared_ptrINS_12StatusDetailEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.78", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status4codeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 8, !tbaa !290
  br label %_ZNK5arrow6Status4codeEv.exit

_ZNK5arrow6Status4codeEv.exit:                    ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !115
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !116  ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !131

.noexc6.i:                                        ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.n = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !130
  store i64 %i.i, ptr %i.f, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNK5arrow6Status4codeEv.exit
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %_ZNK5arrow6Status4codeEv.exit ] ; 3 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !117
  store i8 %i.p, ptr %i.o, align 1, !tbaa !117
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.q, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !93
  store ptr null, ptr %i.s, align 8, !tbaa !90
  store <2 x ptr> %i.t, ptr %4, align 16, !tbaa !93
  store ptr null, ptr %2, align 8, !tbaa !291
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.d, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90   ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !138
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !140
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !inline_history !292
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !inline_history !292
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !131

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.al = load ptr, ptr %3, align 8, !tbaa !130   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = load i64, ptr %i.f, align 8, !tbaa !117
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  %i.aq = load ptr, ptr %3, align 8, !tbaa !130   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.n
  %i.as = load i64, ptr %i.f, align 8, !tbaa !117
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %i.ap
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Status6detailEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !134    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #28
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.f, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 2 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.e
  %10 = shl nuw nsw i64 %7, 5                     ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !215 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !216 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !115
  %i.j = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %i.k = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #28
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.l = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.e

.noexc.i.i.i.i:                                   ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %.noexc.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !131

.noexc9.i.i.i.i:                                  ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %.noexc9.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.e
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24
          to label %.noexc28 unwind label %bb.m   ; 2 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.h, align 8, !tbaa !130
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !117
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc28, %bb.c
  %i.q = phi ptr [ %i.p, %.noexc28 ], [ %i.i, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !117
  store i8 %i.r, ptr %i.q, align 1, !tbaa !117
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.s, align 8, !tbaa !116
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.copyload.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !117
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %.012.i.i.i, align 8, !tbaa !115, !alias.scope !293, !noalias !296
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !130, !alias.scope !296, !noalias !293 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !116, !alias.scope !296, !noalias !293 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !298
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !130, !alias.scope !293, !noalias !296
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !117, !alias.scope !296, !noalias !293
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !117, !alias.scope !293, !noalias !296
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !116, !alias.scope !296, !noalias !293
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.i
  %i.ad = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !116, !alias.scope !293, !noalias !296
  store ptr %i.w, ptr %.0911.i.i.i, align 8, !tbaa !130, !alias.scope !296, !noalias !293
  store i64 0, ptr %i.ae, align 8, !tbaa !116, !alias.scope !296, !noalias !293
  store i8 0, ptr %i.w, align 8, !tbaa !117, !alias.scope !296, !noalias !293
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !299

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.h ], [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36
  %.012.i.i.i31 = phi ptr [ %i.aw, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i32 = phi ptr [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 16 ; 3 uses
  store ptr %i.aj, ptr %.012.i.i.i31, align 8, !tbaa !115, !alias.scope !300, !noalias !303
  %i.ak = load ptr, ptr %.0911.i.i.i32, align 8, !tbaa !130, !alias.scope !303, !noalias !300 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33

bb.j:                                             ; preds = %.lr.ph.i.i.i30
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !116, !alias.scope !303, !noalias !300 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !305
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i30
  store ptr %i.ak, ptr %.012.i.i.i31, align 8, !tbaa !130, !alias.scope !300, !noalias !303
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !117, !alias.scope !303, !noalias !300
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !117, !alias.scope !300, !noalias !303
  %.phi.trans.insert.i.i.i.i34 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %.pre.i.i.i.i35 = load i64, ptr %.phi.trans.insert.i.i.i.i34, align 8, !tbaa !116, !alias.scope !303, !noalias !300
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33, %bb.j
  %i.as = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !116, !alias.scope !300, !noalias !303
  store ptr %i.al, ptr %.0911.i.i.i32, align 8, !tbaa !130, !alias.scope !303, !noalias !300
  store i64 0, ptr %i.at, align 8, !tbaa !116, !alias.scope !303, !noalias !300
  store i8 0, ptr %i.al, align 8, !tbaa !117, !alias.scope !303, !noalias !300
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, label %.lr.ph.i.i.i30, !llvm.loop !299

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !82
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, %bb.k
  store ptr %11, ptr %0, align 8, !tbaa !134
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !135
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !82
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc9.i.i.i.i, %.noexc.i.i.i.i, %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #26
  invoke void @__cxa_rethrow() #28
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bc

bb.o:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #27
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !306    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !93
  store ptr null, ptr %i.r, align 8, !tbaa !90
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !93
  store ptr null, ptr %2, align 8, !tbaa !94
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !93, !alias.scope !310, !noalias !307
  store ptr null, ptr %i.t, align 8, !tbaa !90, !alias.scope !310, !noalias !307
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !93, !alias.scope !307, !noalias !310
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !94, !alias.scope !310, !noalias !307
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !312

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !93, !alias.scope !316, !noalias !313
  store ptr null, ptr %i.y, align 8, !tbaa !90, !alias.scope !316, !noalias !313
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !93, !alias.scope !313, !noalias !316
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !94, !alias.scope !316, !noalias !313
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !312

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !268
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !306
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !265
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow10MakeScalarIjNS_11CTypeTraitsIjEENS_12UInt32ScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.103", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev(), !noalias !318 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90, !noalias !318 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !93, !noalias !318
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !93, !alias.scope !318
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !318
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !318
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !318
  br label %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !318 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc unwind label %bb.o     ; 11 uses

.noexc:                                           ; preds = %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !138, !noalias !321
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 3 uses
  store i32 1, ptr %i.m, align 4, !tbaa !140, !noalias !321
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12UInt32ScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !38, !noalias !321
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.r = load <2 x ptr>, ptr %2, align 16, !tbaa !93, !noalias !321
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !321
  store i64 0, ptr %i.p, align 8, !noalias !321
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !93, !noalias !321
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 1, ptr %i.s, align 8, !tbaa !159, !noalias !321
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store i32 %1, ptr %i.t, align 4, !tbaa !324, !noalias !321
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12UInt32ScalarE, i64 16), ptr %i.n, align 8, !tbaa !38, !noalias !321
  store ptr %i.n, ptr %i.o, align 8, !tbaa !169, !noalias !321
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !321
  %.not.i.i3.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %.noexc
  store i32 2, ptr %i.m, align 4, !tbaa !3, !noalias !321
  br label %_ZNSt12__shared_ptrIN5arrow12UInt32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.v = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !321 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !170, !noalias !321 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12UInt32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !321
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !321 ; 2 uses
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3, !noalias !321
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4, !noalias !321
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12UInt32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !38, !noalias !321
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !321
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i) #25, !noalias !321, !inline_history !326
  br label %_ZNSt12__shared_ptrIN5arrow12UInt32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12UInt32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h
  store ptr %i.k, ptr %i.p, align 8, !tbaa !170, !noalias !321
  store ptr %i.n, ptr %0, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.af, align 8, !tbaa !90
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !90  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12UInt32ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ah, align 8, !tbaa !138
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !140
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #25, !inline_history !288
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #25, !inline_history !288
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i2 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIdSaIdEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE:bb.a
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !94, !noalias !992 ; 3 uses
  store ptr null, ptr %i.as, align 8, !tbaa !90, !noalias !992
  store <2 x ptr> %i.bj, ptr %10, align 16, !tbaa !93, !alias.scope !992
  store ptr null, ptr %i.aq, align 8, !tbaa !94, !noalias !992
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !356, !noalias !993 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !357, !noalias !993
  %.not.i41 = icmp eq i32 %i.bo, 12
  br i1 %.not.i41, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !993
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !993
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !38, !noalias !993
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !993
  invoke void %i.br(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.bm, i1 noundef zeroext false)
          to label %.noexc42 unwind label %bb.ab, !inline_history !996

.noexc42:                                         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !997
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(15) @.str.54, ptr noundef nonnull align 4 dereferenceable(4) @_ZN5arrow6detail9CTypeImplINS_10DoubleTypeENS_17FloatingPointTypeELNS_4Type4typeE12EdE7type_idE, ptr noundef nonnull align 1 dereferenceable(10) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.v, !noalias !993

.noexc.i:                                         ; preds = %.noexc42
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.r unwind label %bb.s, !noalias !993

bb.r:                                             ; preds = %.noexc.i
  %i.bs = load ptr, ptr %1, align 8, !tbaa !130, !noalias !997 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.at
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.bu = load i64, ptr %i.at, align 8, !tbaa !117, !noalias !997
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #26, !noalias !993
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.s:                                             ; preds = %.noexc.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %1, align 8, !tbaa !130, !noalias !997 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.at
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.s
  %i.bz = load i64, ptr %i.at, align 8, !tbaa !117, !noalias !997
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #26, !noalias !993
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !997
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !997
  call void @_ZN5arrow6ResultIdEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %i.cb = load ptr, ptr %2, align 8, !tbaa !100, !noalias !993 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.t, !prof !103

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !104, !range !113, !noundef !114
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.u, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cf = load ptr, ptr %3, align 8, !tbaa !130, !noalias !993 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.au
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ch = load i64, ptr %i.au, align 8, !tbaa !117, !noalias !993
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !993
  br label %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.v:                                             ; preds = %.noexc42
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cj, %bb.v ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i ]
  %i.ck = load ptr, ptr %3, align 8, !tbaa !130, !noalias !993 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.au
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %.body.i
  %i.cm = load i64, ptr %i.au, align 8, !tbaa !117, !noalias !993
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #26, !noalias !993
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !993
  br label %.body43

bb.w:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !159, !range !113, !noalias !993, !noundef !114
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !993
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.56)
          to label %.noexc45 unwind label %bb.ab

.noexc45:                                         ; preds = %bb.x
  call void @_ZN5arrow6ResultIdEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  %i.cr = load ptr, ptr %4, align 8, !tbaa !100, !noalias !993 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.cr, null
  br i1 %.not.i9.i, label %_ZN5arrow6StatusD2Ev.exit10.i, label %bb.y, !prof !103

bb.y:                                             ; preds = %.noexc45
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !104, !range !113, !noundef !114
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN5arrow6StatusD2Ev.exit10.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZN5arrow6StatusD2Ev.exit10.i

_ZN5arrow6StatusD2Ev.exit10.i:                    ; preds = %bb.z, %bb.y, %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !993
  br label %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.thread: ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr null, ptr %11, align 8, !tbaa !100, !alias.scope !993
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !63, !noalias !993 ; 2 uses
  store double %i.cw, ptr %i.av, align 8, !tbaa !63, !alias.scope !993
  br label %bb.ac

_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pr = load ptr, ptr %11, align 8, !tbaa !100
  %i.cx = icmp eq ptr %.pr, null
  br i1 %i.cx, label %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit._crit_edge, label %bb.aa, !prof !1002

_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit._crit_edge: ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit
  %.pre = load double, ptr %i.av, align 8, !tbaa !63
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit
  call void @_ZN5arrow6ResultISt6vectorIdSaIdEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #25
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.ab:                                            ; preds = %bb.x, %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.ac:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit._crit_edge, %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.thread
  %i.cz = phi double [ %.pre, %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit._crit_edge ], [ %i.cw, %_ZN5arrow7compute8internalL17GenericFromScalarIdEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.thread ] ; 2 uses
  %.not.i.i46 = icmp eq ptr %.sroa.10.048, %.sroa.14.049
  br i1 %.not.i.i46, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store double %i.cz, ptr %.sroa.10.048, align 8, !tbaa !63
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.10.048, i64 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.ae:                                            ; preds = %bb.ac
  %i.db = ptrtoint ptr %.sroa.14.049 to i64
  %i.dc = ptrtoint ptr %.sroa.0.050 to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.af, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #28
          to label %.noexc47 unwind label %bb.ay

.noexc47:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #24
          to label %.noexc48 unwind label %.thread107 ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store double %i.cz, ptr %i.dm, align 8, !tbaa !63
  %i.dn = icmp sgt i64 %i.dd, 0
  br i1 %i.dn, label %bb.ag, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.ag:                                            ; preds = %.noexc48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr align 8 %.sroa.0.050, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ag, %.noexc48
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.050, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.050, i64 noundef %i.dd) #26
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.ad, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.aa
  %i.dq = phi i1 [ false, %bb.aa ], [ true, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ true, %bb.ad ]
  %.sroa.10.2 = phi ptr [ %.sroa.10.048, %bb.aa ], [ %i.do, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.da, %bb.ad ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.049, %bb.aa ], [ %i.dp, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.14.049, %bb.ad ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.050, %bb.aa ], [ %i.dl, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.0.050, %bb.ad ] ; 3 uses
  %i.dr = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i49, label %_ZN5arrow6ResultIdED2Ev.exit, label %bb.ai, !prof !103

bb.ai:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !104, !range !113, !noundef !114
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6ResultIdED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultIdED2Ev.exit

_ZN5arrow6ResultIdED2Ev.exit:                     ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dv = load ptr, ptr %i.ar, align 8, !tbaa !90 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN5arrow6ResultIdED2Ev.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dw, align 8, !tbaa !138
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !140
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #25, !inline_history !141
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !38
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #25, !inline_history !141
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i = phi i32 [ %i.dz, %bb.an ], [ %i.ej, %bb.ao ]
  %i.ek = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ek, label %bb.ap, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !131

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #25
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultIdED2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.el = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.aq, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !103

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.en = load ptr, ptr %i.as, align 8, !tbaa !90 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.eo, align 8, !tbaa !138
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !140
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #25, !inline_history !269
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !38
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #25, !inline_history !269
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.er, %bb.au ], [ %i.fb, %bb.av ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fc, label %bb.aw, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !131

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.as
  %.pr.i.pr = load ptr, ptr %9, align 8, !tbaa !100 ; 2 uses
  %.not.i.i53 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i53, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !270

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fd = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.el, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !104, !range !113, !noundef !114
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %bb.aq, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.dq, label %bb.l, label %.loopexit14

.thread107:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIdED2Ev.exit56

bb.ay:                                            ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pre82 = load ptr, ptr %11, align 8, !tbaa !100 ; 2 uses
  %.not.i.i54 = icmp eq ptr %.pre82, null
  br i1 %.not.i.i54, label %_ZN5arrow6ResultIdED2Ev.exit56, label %bb.az, !prof !1003

bb.az:                                            ; preds = %bb.ay
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre82, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !104, !range !113, !noundef !114
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_ZN5arrow6ResultIdED2Ev.exit56, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %_ZN5arrow6ResultIdED2Ev.exit56

_ZN5arrow6ResultIdED2Ev.exit56:                   ; preds = %.thread107, %bb.ay, %bb.az, %bb.ba
  %lpad.phi110 = phi { ptr, i32 } [ %lpad.loopexit, %.thread107 ], [ %lpad.loopexit.split-lp, %bb.ay ], [ %lpad.loopexit.split-lp, %bb.az ], [ %lpad.loopexit.split-lp, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body43

.body43:                                          ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZN5arrow6ResultIdED2Ev.exit56
  %.pn = phi { ptr, i32 } [ %lpad.phi110, %_ZN5arrow6ResultIdED2Ev.exit56 ], [ %i.cy, %bb.ab ], [ %eh.lpad-body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ]
end_hunk_1
begin_hunk_2_@_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !117
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !270

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !104, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.41", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !100
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !131

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !130    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !117
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !130    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !117
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !117
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

declare void @_ZNK5arrow6Buffer8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.f = load ptr, ptr %2, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !116
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !134    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #28
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %3 = shl nuw nsw i64 %i.l, 5
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #24 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %6, ptr %5, align 8, !tbaa !115
  %7 = load ptr, ptr %2, align 8, !tbaa !130      ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not.i = icmp eq ptr %7, %8
  br i1 %.not.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !116  ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %i.r, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %7, ptr %5, align 8, !tbaa !130
  %i.s = load i64, ptr %8, align 8, !tbaa !117
  store i64 %i.s, ptr %6, align 8, !tbaa !117
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !116
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !116
  store ptr %8, ptr %2, align 8, !tbaa !130
  store i64 0, ptr %i.u, align 8, !tbaa !116
  store i8 0, ptr %8, align 8, !tbaa !117
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !115, !alias.scope !1322, !noalias !1325
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !130, !alias.scope !1325, !noalias !1322 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !116, !alias.scope !1325, !noalias !1322 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !1327
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !130, !alias.scope !1322, !noalias !1325
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !117, !alias.scope !1325, !noalias !1322
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !117, !alias.scope !1322, !noalias !1325
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !116, !alias.scope !1325, !noalias !1322
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !116, !alias.scope !1322, !noalias !1325
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !130, !alias.scope !1325, !noalias !1322
  store i64 0, ptr %i.ag, align 8, !tbaa !116, !alias.scope !1325, !noalias !1322
  store i8 0, ptr %i.y, align 8, !tbaa !117, !alias.scope !1325, !noalias !1322
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !299

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %4, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i18, align 8, !tbaa !115, !alias.scope !1328, !noalias !1331
  %i.am = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !130, !alias.scope !1331, !noalias !1328 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !116, !alias.scope !1331, !noalias !1328 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !1333
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.am, ptr %.012.i.i.i18, align 8, !tbaa !130, !alias.scope !1328, !noalias !1331
  %i.at = load i64, ptr %i.an, align 8, !tbaa !117, !alias.scope !1331, !noalias !1328
  store i64 %i.at, ptr %i.al, align 8, !tbaa !117, !alias.scope !1328, !noalias !1331
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !116, !alias.scope !1331, !noalias !1328
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.au = phi i64 [ %i.aq, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !116, !alias.scope !1328, !noalias !1331
  store ptr %i.an, ptr %.0911.i.i.i19, align 8, !tbaa !130, !alias.scope !1331, !noalias !1328
  store i64 0, ptr %i.av, align 8, !tbaa !116, !alias.scope !1331, !noalias !1328
  store i8 0, ptr %i.an, align 8, !tbaa !117, !alias.scope !1331, !noalias !1328
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !299

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !82
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %4, ptr %0, align 8, !tbaa !134
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !135
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_7compute17PivotWiderOptions21UnexpectedKeyBehaviorEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.41", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !100
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !131

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !130    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !117
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !130    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !117
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !117
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal17ValidateEnumValueINS0_17PivotWiderOptions21UnexpectedKeyBehaviorEjEENS_6ResultIT_EET0_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.640") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
.critedge:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(41) ptr @_Znwm(i64 noundef 41) #24, !noalias !1334 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !130, !alias.scope !1334
  store i64 40, ptr %i.b, align 8, !tbaa !117, !alias.scope !1334
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(40) @.str.76, i64 40, i1 false), !noalias !1334
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 40, ptr %i.d, align 8, !tbaa !116, !alias.scope !1334
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.e, align 1, !tbaa !117, !noalias !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1337
  invoke void @_ZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(19) @.str.62, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(3) @.str.51, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.g

bb.b:                                             ; preds = %.critedge
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.f, align 8, !tbaa !1109
  br label %bb.h

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !130, !noalias !1337 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !117, !noalias !1337
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !130, !noalias !1337 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !117, !noalias !1337
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1337
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1337
  call void @_ZN5arrow6ResultINS_7compute17PivotWiderOptions21UnexpectedKeyBehaviorEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.r = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !103

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !104, !range !113, !noundef !114
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.v = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !117
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_2
