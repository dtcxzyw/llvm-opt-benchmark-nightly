Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingBSplineCurve?download=true
inline.NumInlined: 1494
inline.NumDeleted: 467
begin_hunk_0_@_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC2ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE:bb.a

.loopexit11:                                      ; preds = %.lr.ph.i.i.i.i.i, %.noexc7
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.j, %.noexc7 ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp ugt i64 %i.x, 2305843009213693951
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %.loopexit11
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #24
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i8 = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i.i8, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = ashr exact i64 %i.w, 1                   ; 3 uses
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #21
          to label %.noexc10 unwind label %bb.e   ; 4 uses

.noexc10:                                         ; preds = %bb.d
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !37
  %i.ad = and i64 %i.z, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 0, i64 %i.ad, i1 false), !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc10
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc10 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.ag, align 8, !tbaa !50
  ret void

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #22
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl18createEditableCopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21, !noalias !101, !inline_history !100 ; 11 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJiEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_523GradingBSplineCurveImplEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !101, !inline_history !100

common.resume:                                    ; preds = %bb.j, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.ak, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #22, !noalias !101, !inline_history !100
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_523GradingBSplineCurveImplEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !20, !alias.scope !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !52, !alias.scope !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.b unwind label %bb.j       ; 0 uses

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_523GradingBSplineCurveImplEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.m, ptr %i.n, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8
  store ptr %i.e, ptr %0, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread: ; preds = %bb.c
  %i.s = load i32, ptr %i.q, align 8, !tbaa !22
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 8, !tbaa !22
  store ptr %i.b, ptr %i.p, align 8, !tbaa !20
  br label %bb.d

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit: ; preds = %bb.c
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  store ptr %i.b, ptr %i.p, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit
  %.pr7 = phi ptr [ %i.b, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread ], [ %.pr.pre, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pr7, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.v, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %.pr7, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !25
  %i.aa = load ptr, ptr %.pr7, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.pr7) #23, !inline_history !0
  %i.ad = load ptr, ptr %.pr7, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %.pr7) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i3 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !28

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr7) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.j:                                             ; preds = %bb.b, %_ZSt11make_sharedIN16OpenColorIO_v2_523GradingBSplineCurveImplEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !31     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = load ptr, ptr %0, align 8, !tbaa !31     ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.r, i1 false), !tbaa !39
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !31       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #22
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !32
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 5 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 8
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 8
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 4, !tbaa !39
  store i64 %i.ad, ptr %i.i, align 4, !tbaa !39
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 8
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !55

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !31
  %.pre25 = load ptr, ptr %i.x, align 8, !tbaa !33 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !31  ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !33
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 8
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 4, !tbaa !39
  store i64 %i.ag, ptr %i.i, align 4, !tbaa !39
  br label %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.aa, %bb.m ], [ 8, %bb.n ]
  %i.ah = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 2 uses
  %i.ai = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 2 uses
  %i.aj = phi ptr [ %.pre25, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %bb.n ]
  %i.ak = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.pre-phi33 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %i.am = load i64, ptr %.0810.i.i.i.i, align 4, !tbaa !39
  store i64 %i.am, ptr %.011.i.i.i.i, align 4, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !102

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ap = phi ptr [ %2, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.ai, %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ai, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !55

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load float, ptr %i.c, align 4, !tbaa !39
  store float %i.r, ptr %i.o, align 4, !tbaa !39
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #22
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !37
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !55

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load float, ptr %i.c, align 4, !tbaa !39
  store float %i.ae, ptr %i.i, align 4, !tbaa !39
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !55

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !40 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !36
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !40
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load float, ptr %i.c, align 4, !tbaa !39
end_hunk_0
