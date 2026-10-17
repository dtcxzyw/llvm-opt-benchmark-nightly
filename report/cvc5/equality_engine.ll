Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/equality_engine?download=true
inline.NumInlined: 6219
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSB_:bb.a
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !398  ; 2 uses
  %i.l = load <2 x ptr>, ptr %2, align 8, !tbaa !397
  store <2 x ptr> %i.l, ptr %i.f, align 8, !tbaa !397
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !tbaa !205
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !205
  br label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !404
  br label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit

_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.r = phi ptr [ %i.f, %bb.c ], [ %i.f, %bb.e ], [ %.pre, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.e, align 8, !tbaa !404
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %0, ptr %3, align 8, !tbaa !855
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !398  ; 2 uses
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !397
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !397
  %.not.i.i.i.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i8, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueC2IJRKS6_EEEPS8_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !205
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !205
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueC2IJRKS6_EEEPS8_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueC2IJRKS6_EEEPS8_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueC2IJRKS6_EEEPS8_DpOT_.exit: ; preds = %bb.g, %bb.i, %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE13_M_insert_auxIS6_EEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueC2IJRKS6_EEEPS8_DpOT_.exit
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !398 ; 8 uses
  %.not.i.i.i9 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.af, align 8, !tbaa !400
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !401
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32, !inline_history !852
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32, !inline_history !852
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i10 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i10, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.ai, %bb.o ], [ %i.as, %bb.p ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.at, label %bb.q, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueD2Ev.exit, !prof !60

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueD2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueC2IJRKS6_EEEPS8_DpOT_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.au

bb.s:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE16_Temporary_valueD2Ev.exit, %bb.s
  %i.aw = load ptr, ptr %0, align 8, !tbaa !403
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.d
  ret ptr %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !405
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !398  ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !397
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !397
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !205
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !205
  br label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !404
  br label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit

_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.m = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %.pre, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.a, align 8, !tbaa !404
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEC2ERKS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !403    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !405
  %i.j = load ptr, ptr %0, align 8, !tbaa !403    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE11_M_allocateEm.exit.i, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !398  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !397
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !397
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !205
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !205
  br label %_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !856

_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !403   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !404 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, %_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i ], [ %i.aa, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !398 ; 8 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !400
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !401
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32, !inline_history !28
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32, !inline_history !28
  br label %_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i, !prof !60

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #32
  br label %_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !403
  br label %_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exit

_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exitthread-pre-split ], [ %i.aa, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !405
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #34
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEEvT_S8_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !403
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !405
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEEEvT_SE_.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !404 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.be, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp sgt i64 %i.g, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ci, %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !396
  store ptr %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !396
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !398 ; 4 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !398 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i27
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !205
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !205
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !398
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bq = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.br, align 8, !tbaa !400
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !401
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !211
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #32, !inline_history !857
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !211
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #32, !inline_history !857
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.x ], [ %i.ce, %bb.y ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !60

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !398
  br label %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i27
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ci = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit.loopexit, !llvm.loop !858

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEEaSERKS5_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !402
  %.pre66 = ptrtoint ptr %i.ch to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.ck = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit.loopexit ], [ %i.bc, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN4cvc58internal6theory2eq7EqProofEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0
