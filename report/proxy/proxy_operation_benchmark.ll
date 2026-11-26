Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_operation_benchmark?download=true
inline.NumInlined: 818
inline.NumDeleted: 416
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_149BM_SmallObjectInvocationViaVirtualFunction_SharedERN9benchmark5StateE:bb.a

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.k = load ptr, ptr %1, align 8, !tbaa !131    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i ], [ %i.k, %_ZNK9benchmark5State13StateIteratorneERKS1_.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !137
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !138
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !8
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !8
  br label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i, !prof !32

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17
  br label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  %i.af = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNK9benchmark5State13StateIteratorneERKS1_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #19
  br label %_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.k:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph29.split:                                   ; preds = %.lr.ph29, %_ZN9benchmark5State3endEv.exit
  %.sroa.020.028 = phi i64 [ %i.ap, %_ZN9benchmark5State3endEv.exit ], [ %i.f, %.lr.ph29 ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !129   ; 2 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !129 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN9benchmark5State3endEv.exit, label %.lr.ph

_ZN9benchmark5State3endEv.exit:                   ; preds = %bb.l, %.lr.ph29.split
  %i.ap = add nsw i64 %.sroa.020.028, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.ap, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph29.split, !prof !109, !llvm.loop !170

.lr.ph:                                           ; preds = %.lr.ph29.split, %bb.l
  %.sroa.016.026 = phi ptr [ %i.au, %bb.l ], [ %i.am, %.lr.ph29.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aq = load ptr, ptr %.sroa.016.026, align 8, !tbaa !141 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %.lr.ph
  store i32 %i.at, ptr %i.a, align 4, !tbaa !113
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.at) #17, !srcloc !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.016.026, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.an
  br i1 %i.av, label %_ZN9benchmark5State3endEv.exit, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.aw, %bb.m ]
  call void @_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_149BM_SmallObjectInvocationViaVirtualFunction_RawPtrERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.38", align 8    ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_Z42GenerateSmallObjectVirtualFunctionTestDatav(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.38") align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !123    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #18
          to label %.noexc22 unwind label %.thread

.noexc22:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16
          to label %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  %.pre91 = load ptr, ptr %i.b, align 8, !tbaa !121
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %i.k = phi ptr [ %.pre91, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.040.2 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 4 uses
  %.sroa.19.2 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit
  %.sroa.040.0.lcssa = phi ptr [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ], [ %.sroa.040.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ], [ %.sroa.12.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.19.0.lcssa = phi ptr [ %.sroa.19.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ], [ %.sroa.19.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !94
  %.not63 = icmp eq i32 %i.o, 0
  br i1 %.not63, label %bb.d, label %bb.j

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 16, !tbaa !95
  br label %bb.j

.thread:                                          ; preds = %bb.b, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28

.lr.ph:                                           ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit
  %.sroa.037.079 = phi ptr [ %i.ah, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %i.l, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.19.078 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %.sroa.19.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 5 uses
  %.sroa.12.077 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 4 uses
  %.sroa.040.076 = phi ptr [ %.sroa.040.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 7 uses
  %i.s = load ptr, ptr %.sroa.037.079, align 8, !tbaa !126 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.077, %.sroa.19.078
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store ptr %i.s, ptr %.sroa.12.077, align 8, !tbaa !126
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.t = ptrtoint ptr %.sroa.12.077 to i64
  %i.u = ptrtoint ptr %.sroa.040.076 to i64       ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.g, label %_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #18
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #16
          to label %.noexc25 unwind label %.loopexit ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !126
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %.sroa.040.076, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.h, %.noexc25
  %.not.i17.i.i.i = icmp eq ptr %.sroa.040.076, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %2 = ptrtoint ptr %.sroa.19.078 to i64
  %3 = sub i64 %2, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.076, i64 noundef %3) #19
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.e
  %.sroa.040.3 = phi ptr [ %i.ad, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.040.076, %bb.e ] ; 2 uses
  %.pn = phi ptr [ %i.ae, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.12.077, %bb.e ]
  %.sroa.19.3 = phi ptr [ %i.ag, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.19.078, %bb.e ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.079, i64 8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.k
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge, %bb.d
  %i.aj = phi i64 [ %i.q, %bb.d ], [ 0, %._crit_edge ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %.loopexit.split-lp

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.j
  %.not.i.not85 = icmp eq i64 %i.aj, 0
  %i.ak = icmp eq ptr %.sroa.040.0.lcssa, %.sroa.12.0.lcssa
  %or.cond = select i1 %.not.i.not85, i1 true, i1 %i.ak, !prof !117
  br i1 %or.cond, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !117

.preheader:                                       ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %._crit_edge84
  %.sroa.033.086 = phi i64 [ %i.bb, %._crit_edge84 ], [ %i.aj, %_ZN9benchmark5State3endEv.exit.preheader ]
  br label %bb.m

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %._crit_edge84, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %.loopexit.split-lp

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %.not.i.i.i = icmp eq ptr %.sroa.040.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  %i.al = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.am = ptrtoint ptr %.sroa.040.0.lcssa to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0.lcssa, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.k
  %i.ao = load ptr, ptr %1, align 8, !tbaa !123   ; 3 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.ao, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !126 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteI18InvocationTestBaseEclEPS0_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteI18InvocationTestBaseEclEPS0_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #17, !inline_history !6
  br label %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteI18InvocationTestBaseEclEPS0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.au, %i.ap
  br i1 %.not.i.i.i26, label %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !123
  br label %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit
  %i.av = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.ao, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #19
  br label %_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.j, %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.g
  %.sroa.040.075 = phi ptr [ %.sroa.040.0.lcssa, %bb.j ], [ %.sroa.040.0.lcssa, %_ZN9benchmark5State3endEv.exit._crit_edge.split ], [ %.sroa.040.076, %bb.g ]
  %.sroa.19.068 = phi ptr [ %.sroa.19.0.lcssa, %bb.j ], [ %.sroa.19.0.lcssa, %_ZN9benchmark5State3endEv.exit._crit_edge.split ], [ %.sroa.19.078, %bb.g ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge84:                                    ; preds = %bb.n
  %i.bb = add nsw i64 %.sroa.033.086, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bb, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !109

bb.m:                                             ; preds = %.preheader, %bb.n
  %.sroa.029.082 = phi ptr [ %.sroa.040.0.lcssa, %.preheader ], [ %i.bg, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bc = load ptr, ptr %.sroa.029.082, align 8, !tbaa !126 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.m
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !113
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.bf) #17, !srcloc !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.029.082, i64 8 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.12.0.lcssa
  br i1 %i.bh, label %._crit_edge84, label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %.sroa.040.073 = phi ptr [ %.sroa.040.0.lcssa, %bb.o ], [ %.sroa.040.076, %.loopexit ], [ %.sroa.040.075, %.loopexit.split-lp ] ; 3 uses
  %.sroa.19.066 = phi ptr [ %.sroa.19.0.lcssa, %bb.o ], [ %.sroa.19.078, %.loopexit ], [ %.sroa.19.068, %.loopexit.split-lp ]
  %.pn15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %.sroa.040.073, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = ptrtoint ptr %.sroa.19.066 to i64
  %i.bk = ptrtoint ptr %.sroa.040.073 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.073, i64 noundef %i.bl) #19
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28: ; preds = %.thread, %bb.p, %bb.q
  %.pn1562 = phi { ptr, i32 } [ %i.r, %.thread ], [ %.pn15, %bb.p ], [ %.pn15, %bb.q ]
  call void @_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn1562
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_132BM_LargeObjectInvocationViaProxyERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_Z32GenerateLargeObjectProxyTestDatav(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !94
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.f

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not28 = icmp eq i64 %i.f, 0
  br i1 %.not.i.not28, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph30, !prof !96

.lr.ph30:                                         ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !98
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph30.split

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %.lr.ph30, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.f

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.k = load ptr, ptr %1, align 8, !tbaa !100    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN3pro2v45proxyI20InvocationTestFacadeEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZSt8_DestroyIN3pro2v45proxyI20InvocationTestFacadeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN3pro2v45proxyI20InvocationTestFacadeEEEvPT_.exit.i.i.i ], [ %i.k, %_ZNK9benchmark5State13StateIteratorneERKS1_.exit ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_149BM_LargeObjectInvocationViaVirtualFunction_SharedERN9benchmark5StateE:bb.a

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.k = load ptr, ptr %1, align 8, !tbaa !131    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i ], [ %i.k, %_ZNK9benchmark5State13StateIteratorneERKS1_.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !137
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !138
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !8
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !8
  br label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i, !prof !32

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17
  br label %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrI18InvocationTestBaseEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  %i.af = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNK9benchmark5State13StateIteratorneERKS1_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #19
  br label %_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrI18InvocationTestBaseES2_EvT_S4_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.k:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph29.split:                                   ; preds = %.lr.ph29, %_ZN9benchmark5State3endEv.exit
  %.sroa.020.028 = phi i64 [ %i.ap, %_ZN9benchmark5State3endEv.exit ], [ %i.f, %.lr.ph29 ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !129   ; 2 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !129 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN9benchmark5State3endEv.exit, label %.lr.ph

_ZN9benchmark5State3endEv.exit:                   ; preds = %bb.l, %.lr.ph29.split
  %i.ap = add nsw i64 %.sroa.020.028, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.ap, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph29.split, !prof !109, !llvm.loop !174

.lr.ph:                                           ; preds = %.lr.ph29.split, %bb.l
  %.sroa.016.026 = phi ptr [ %i.au, %bb.l ], [ %i.am, %.lr.ph29.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aq = load ptr, ptr %.sroa.016.026, align 8, !tbaa !141 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %.lr.ph
  store i32 %i.at, ptr %i.a, align 4, !tbaa !113
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.at) #17, !srcloc !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.016.026, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.an
  br i1 %i.av, label %_ZN9benchmark5State3endEv.exit, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.aw, %bb.m ]
  call void @_ZNSt6vectorISt10shared_ptrI18InvocationTestBaseESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_149BM_LargeObjectInvocationViaVirtualFunction_RawPtrERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.38", align 8    ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_Z42GenerateLargeObjectVirtualFunctionTestDatav(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.38") align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !123    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #18
          to label %.noexc22 unwind label %.thread

.noexc22:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16
          to label %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  %.pre91 = load ptr, ptr %i.b, align 8, !tbaa !121
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %i.k = phi ptr [ %.pre91, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.040.2 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 4 uses
  %.sroa.19.2 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit
  %.sroa.040.0.lcssa = phi ptr [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ], [ %.sroa.040.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ], [ %.sroa.12.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.19.0.lcssa = phi ptr [ %.sroa.19.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ], [ %.sroa.19.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !94
  %.not63 = icmp eq i32 %i.o, 0
  br i1 %.not63, label %bb.d, label %bb.j

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 16, !tbaa !95
  br label %bb.j

.thread:                                          ; preds = %bb.b, %_ZNSt12_Vector_baseIP18InvocationTestBaseSaIS1_EE11_M_allocateEm.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28

.lr.ph:                                           ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit
  %.sroa.037.079 = phi ptr [ %i.ah, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %i.l, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.19.078 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %.sroa.19.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 5 uses
  %.sroa.12.077 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 4 uses
  %.sroa.040.076 = phi ptr [ %.sroa.040.3, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit ], [ %.sroa.040.2, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE7reserveEm.exit ] ; 7 uses
  %i.s = load ptr, ptr %.sroa.037.079, align 8, !tbaa !126 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.077, %.sroa.19.078
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store ptr %i.s, ptr %.sroa.12.077, align 8, !tbaa !126
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.t = ptrtoint ptr %.sroa.12.077 to i64
  %i.u = ptrtoint ptr %.sroa.040.076 to i64       ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.g, label %_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #18
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #16
          to label %.noexc25 unwind label %.loopexit ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !126
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %.sroa.040.076, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.h, %.noexc25
  %.not.i17.i.i.i = icmp eq ptr %.sroa.040.076, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %2 = ptrtoint ptr %.sroa.19.078 to i64
  %3 = sub i64 %2, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.076, i64 noundef %3) #19
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.e
  %.sroa.040.3 = phi ptr [ %i.ad, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.040.076, %bb.e ] ; 2 uses
  %.pn = phi ptr [ %i.ae, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.12.077, %bb.e ]
  %.sroa.19.3 = phi ptr [ %i.ag, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.19.078, %bb.e ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.079, i64 8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.k
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge, %bb.d
  %i.aj = phi i64 [ %i.q, %bb.d ], [ 0, %._crit_edge ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %.loopexit.split-lp

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.j
  %.not.i.not85 = icmp eq i64 %i.aj, 0
  %i.ak = icmp eq ptr %.sroa.040.0.lcssa, %.sroa.12.0.lcssa
  %or.cond = select i1 %.not.i.not85, i1 true, i1 %i.ak, !prof !117
  br i1 %or.cond, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !117

.preheader:                                       ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %._crit_edge84
  %.sroa.033.086 = phi i64 [ %i.bb, %._crit_edge84 ], [ %i.aj, %_ZN9benchmark5State3endEv.exit.preheader ]
  br label %bb.m

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %._crit_edge84, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %.loopexit.split-lp

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %.not.i.i.i = icmp eq ptr %.sroa.040.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  %i.al = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.am = ptrtoint ptr %.sroa.040.0.lcssa to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0.lcssa, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.k
  %i.ao = load ptr, ptr %1, align 8, !tbaa !123   ; 3 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.ao, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !126 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteI18InvocationTestBaseEclEPS0_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteI18InvocationTestBaseEclEPS0_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #17, !inline_history !6
  br label %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteI18InvocationTestBaseEclEPS0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.au, %i.ap
  br i1 %.not.i.i.i26, label %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !123
  br label %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit
  %i.av = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.ao, %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #19
  br label %_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIP18InvocationTestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.j, %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.g
  %.sroa.040.075 = phi ptr [ %.sroa.040.0.lcssa, %bb.j ], [ %.sroa.040.0.lcssa, %_ZN9benchmark5State3endEv.exit._crit_edge.split ], [ %.sroa.040.076, %bb.g ]
  %.sroa.19.068 = phi ptr [ %.sroa.19.0.lcssa, %bb.j ], [ %.sroa.19.0.lcssa, %_ZN9benchmark5State3endEv.exit._crit_edge.split ], [ %.sroa.19.078, %bb.g ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge84:                                    ; preds = %bb.n
  %i.bb = add nsw i64 %.sroa.033.086, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bb, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !109

bb.m:                                             ; preds = %.preheader, %bb.n
  %.sroa.029.082 = phi ptr [ %.sroa.040.0.lcssa, %.preheader ], [ %i.bg, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bc = load ptr, ptr %.sroa.029.082, align 8, !tbaa !126 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.m
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !113
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %i.bf) #17, !srcloc !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.029.082, i64 8 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.12.0.lcssa
  br i1 %i.bh, label %._crit_edge84, label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %.sroa.040.073 = phi ptr [ %.sroa.040.0.lcssa, %bb.o ], [ %.sroa.040.076, %.loopexit ], [ %.sroa.040.075, %.loopexit.split-lp ] ; 3 uses
  %.sroa.19.066 = phi ptr [ %.sroa.19.0.lcssa, %bb.o ], [ %.sroa.19.078, %.loopexit ], [ %.sroa.19.068, %.loopexit.split-lp ]
  %.pn15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %.sroa.040.073, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = ptrtoint ptr %.sroa.19.066 to i64
  %i.bk = ptrtoint ptr %.sroa.040.073 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.073, i64 noundef %i.bl) #19
  br label %_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28

_ZNSt6vectorIP18InvocationTestBaseSaIS1_EED2Ev.exit28: ; preds = %.thread, %bb.p, %bb.q
  %.pn1562 = phi { ptr, i32 } [ %i.r, %.thread ], [ %.pn15, %bb.p ], [ %.pn15, %bb.q ]
  call void @_ZNSt6vectorISt10unique_ptrI18InvocationTestBaseSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn1562
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_132BM_SmallObjectRelocationViaProxyERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 16      ; 15 uses
  %2 = alloca %"class.std::vector", align 16      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_Z32GenerateSmallObjectProxyTestDatav(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = load ptr, ptr %1, align 16, !tbaa !100   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 5 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #18
          to label %.noexc18 unwind label %bb.i

.noexc18:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EEC2EmRKS5_.exit.thread.i, label %_ZNSt12_Vector_baseIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt6vectorIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16
          to label %.noexc19 unwind label %bb.i   ; 4 uses

.noexc19:                                         ; preds = %_ZNSt12_Vector_baseIN3pro2v45proxyI20InvocationTestFacadeEESaIS4_EEC2EmRKS5_.exit.i
  store ptr %i.i, ptr %2, align 16, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.j, ptr %i.k, align 16, !tbaa !108
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc19, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %.noexc19 ] ; 2 uses
end_hunk_1
