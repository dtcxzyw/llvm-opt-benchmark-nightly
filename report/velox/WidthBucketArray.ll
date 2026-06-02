inline.NumInlined: 6662
inline.NumDeleted: 2140
begin_hunk_0_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim:bb.a
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.cf, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.t

.loopexit:                                        ; preds = %bb.j, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #28
          to label %bb.x unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.cg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.ch = icmp eq i32 %i.bo, %i.cg
  br i1 %i.ch, label %bb.l, label %.loopexit19

bb.l:                                             ; preds = %bb.k
  %i.ci = call ptr @__cxa_begin_catch(ptr %i.bn) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %3, align 8, !tbaa !414
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit

bb.o:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %3, align 8, !tbaa !414
  %.not.i12 = icmp eq ptr %i.cl, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.w

bb.q:                                             ; preds = %.loopexit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cn = load ptr, ptr %4, align 8, !tbaa !414
  %.not.i14 = icmp eq ptr %i.cn, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit

bb.t:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %4, align 8, !tbaa !414
  %.not.i16 = icmp eq ptr %i.cp, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.co, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17 ], [ %i.cm, %bb.q ]
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.w

.loopexit19:                                      ; preds = %bb.k, %bb.v, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %.merged.i = phi { ptr, i32 } [ %i.ck, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ], [ %.pn.i, %bb.v ], [ %i.bm, %bb.k ]
  resume { ptr, i32 } %.merged.i

bb.w:                                             ; preds = %bb.v, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #27
  unreachable

bb.x:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %i.cs = add i64 %.027, -1
  %i.ct = and i64 %i.cs, %.027                    ; 2 uses
  %.not10 = icmp eq i64 %i.ct, 0
  br i1 %.not10, label %.loopexit18, label %bb.b, !llvm.loop !612

.loopexit18:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24, !inline_history !613
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !321  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %10 = alloca %class.anon.634, align 8           ; 9 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %class.anon.631, align 1           ; 3 uses
  %14 = alloca %class.anon.623, align 8           ; 12 uses
  %15 = alloca %"class.std::shared_ptr.38", align 16 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.198", align 16 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %17 = alloca %"class.facebook::velox::exec::DecodedArgs", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %18 = alloca %"class.std::shared_ptr.41", align 8 ; 8 uses
  %19 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 9 uses
  %20 = alloca %"class.facebook::velox::exec::LocalDecodedVector", align 8 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.198") align 8 %16)
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.g = load <2 x ptr>, ptr %16, align 16, !tbaa !38
  store ptr null, ptr %i.f, align 8, !tbaa !35
  store <2 x ptr> %i.g, ptr %15, align 16, !tbaa !38
  store ptr null, ptr %16, align 16, !tbaa !324
  %i.h = load ptr, ptr %4, align 8, !tbaa !327    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365
  invoke void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.k)
          to label %_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit unwind label %bb.dh

_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.n, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !42
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !366
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !366
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !35  ; 8 uses
  %.not.i.i31 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i31, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ad, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !42
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24, !inline_history !367
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24, !inline_history !367
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i32 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i34 = phi i32 [ %i.ag, %bb.k ], [ %i.aq, %bb.l ]
  %i.ar = icmp eq i32 %.0.i.i.i.i34, 1
  br i1 %i.ar, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.as = load ptr, ptr %5, align 8, !tbaa !94
  %i.at = call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.as)
  store ptr %i.at, ptr %i.a, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZN8facebook5velox4exec11DecodedArgsC2ERKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS9_EERNS1_7EvalCtxE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(104) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.au = load ptr, ptr %17, align 8, !tbaa !368
  %i.av = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit unwind label %bb.di

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit:  ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.av, ptr %i.b, align 8, !tbaa !371
  %i.aw = load ptr, ptr %17, align 8, !tbaa !368
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35 unwind label %bb.dj ; 5 uses

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !614
  %i.bb = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ba, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !97
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !115
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !94 ; 3 uses
  store ptr %i.bh, ptr %18, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !35
  %.not.i.i.i36 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i36, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %18, align 8, !tbaa !94
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35, %bb.o, %bb.p
  %i.bq = phi ptr [ %i.bh, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35 ], [ %i.bh, %bb.o ], [ %.pre, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !431
  %i.bt = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, ptr noundef nonnull %1)
          to label %bb.q unwind label %bb.dk

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !408 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.r, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ay)
          to label %.noexc unwind label %bb.dk

.noexc:                                           ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !408
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

_ZNK8facebook5velox13DecodedVector7indicesEv.exit: ; preds = %.noexc, %bb.q
  %i.bw = phi ptr [ %.pre.i, %.noexc ], [ %i.bv, %bb.q ]
  invoke void @_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::SelectivityVector") align 8 %19, i32 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull %i.bb, ptr noundef %i.bt, ptr noundef %i.bw)
          to label %bb.s unwind label %bb.dk

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %21 = load ptr, ptr %18, align 8, !tbaa !94
  %i.bx = load ptr, ptr %4, align 8, !tbaa !327
  store ptr %i.bx, ptr %20, align 8, !tbaa !461
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr null, ptr %i.by, align 8, !tbaa !469
  %i.bz = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, ptr noundef nonnull align 8 dereferenceable(94) %21, ptr noundef nonnull align 8 dereferenceable(38) %19, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #24
  br label %.body

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !408 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cb, null
  br i1 %.not.i37, label %bb.v, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40

bb.v:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ay)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.v
  %.pre.i38 = load ptr, ptr %i.bu, align 8, !tbaa !408
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40

_ZNK8facebook5velox13DecodedVector7indicesEv.exit40: ; preds = %.noexc39, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.cc = phi ptr [ %.pre.i38, %.noexc39 ], [ %i.cb, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit ]
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.c, ptr %14, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr %i.e, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.d, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  store ptr %i.a, ptr %.sroa.665.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 4 uses
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  store ptr %20, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !373, !range !51, !noundef !52
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.w

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40
  %.0.in.pre.i.i.i.i = load i8, ptr %i.cd, align 4, !tbaa !375, !range !51
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.w:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !376
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.x, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !385 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !386
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.y, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %1, align 8, !tbaa !387   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cq = and i32 %i.cl, 2147483584               ; 3 uses
  %i.cr = zext nneg i32 %i.cq to i64
  %.not37.i.i.not.i.i.i.i169.not = icmp eq i32 %i.cq, 0
  br i1 %.not37.i.i.not.i.i.i.i169.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph

bb.aa:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i170, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.cr
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i.i, !llvm.loop !388

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %indvars.iv.i.i.i.i170 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.cs = lshr exact i64 %indvars.iv.i.i.i.i170, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !190
  %i.cv = icmp eq i64 %i.cu, -1
  br i1 %i.cv, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !388

.critedge.i.i.i.i.i.i:                            ; preds = %bb.aa, %bb.z
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.cl, %i.cq
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.cw = lshr i32 %i.cl, 6
  %i.cx = and i32 %i.cl, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.cy
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !190
  %.demorgan.i.i.i.i = or i64 %i.db, %notmask.i40.i.i.i.i.i.i
  %i.dc = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.dd = zext i1 %i.dc to i16
  %i.de = or disjoint i16 %i.dd, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph, %bb.ab, %.critedge.i.i.i.i.i.i, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.x ], [ 256, %bb.w ], [ 257, %bb.y ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.de, %bb.ab ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.cd, align 4
  %i.df = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.df, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i41 = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i41, label %bb.ac, label %bb.ax

bb.ac:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !385 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !376 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.dh
  br i1 %i.dk, label %.lr.ph.i.i.i, label %.loopexit66

.lr.ph.i.i.i:                                     ; preds = %bb.ac
  %i.dl = sext i32 %i.dj to i64
  br label %bb.ad

bb.ad:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i ] ; 5 uses
  %i.dm = load ptr, ptr %14, align 8, !tbaa !615, !nonnull !52, !align !222
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !522
  %i.do = load ptr, ptr %.sroa.463.0..sroa_idx, align 8, !tbaa !618, !nonnull !52, !align !222
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !522
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = load ptr, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !619, !nonnull !52, !align !222
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !522
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !620, !nonnull !52, !align !222
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !371 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !395
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 58
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !405, !range !51, !noundef !52
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 3 uses
  br i1 %i.ef, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !406, !range !51, !noundef !52
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !407
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !408
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %indvars.iv.i.i.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.ag ], [ %i.el, %bb.af ], [ %i.eg, %bb.ad ]
  %i.eq = sext i32 %.0.i.i.i.i.i.i to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !149
  %i.et = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !621, !nonnull !52, !align !222
  %i.eu = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %.noexc.i.i.i unwind label %bb.ah

.noexc.i.i.i:                                     ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i
  %i.ev = invoke fastcc noundef i64 @_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEii(double noundef %i.es, ptr noundef nonnull align 8 dereferenceable(120) %i.eu, i32 noundef %i.dy, i32 noundef %i.du)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit.i.i.i unwind label %bb.ah

_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ew = load ptr, ptr %.sroa.665.0..sroa_idx, align 8, !tbaa !622, !nonnull !52, !align !222
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !229
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %indvars.iv.i.i.i
  store i64 %i.ev, ptr %i.ey, align 8, !tbaa !190
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i

bb.ah:                                            ; preds = %.noexc.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0      ; 2 uses
  %i.fb = extractvalue { ptr, i32 } %i.ez, 1      ; 2 uses
  %i.fc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #24
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ai, label %bb.aj
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlT_E_ZNS4_22applyToSelectedNoThrowISS_EEvSC_SR_EUlSR_E_EEvSC_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a

bb.h:                                             ; preds = %bb.f
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.cg = icmp eq i32 %i.bn, %i.cf
  br i1 %i.cg, label %bb.i, label %.loopexit19

bb.i:                                             ; preds = %bb.h
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.bm) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !414
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.l:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %3, align 8, !tbaa !414
  %.not.i12 = icmp eq ptr %i.ck, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cm = load ptr, ptr %4, align 8, !tbaa !414
  %.not.i14 = icmp eq ptr %i.cm, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.q:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %4, align 8, !tbaa !414
  %.not.i16 = icmp eq ptr %i.co, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17 ], [ %i.cl, %bb.n ]
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.t

.loopexit19:                                      ; preds = %bb.h, %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %.merged.i = phi { ptr, i32 } [ %i.cj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ], [ %.pn.i, %bb.s ], [ %i.bl, %bb.h ]
  resume { ptr, i32 } %.merged.i

bb.t:                                             ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #27
  unreachable

bb.u:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %i.cr = add i64 %.025, -1
  %i.cs = and i64 %i.cr, %.025                    ; 2 uses
  %.not10 = icmp eq i64 %i.cs, 0
  br i1 %.not10, label %.loopexit18, label %bb.b, !llvm.loop !669

.loopexit18:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24, !inline_history !670
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !321  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14VectorFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %10 = alloca %class.anon.647, align 8           ; 9 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %class.anon.644, align 1           ; 3 uses
  %14 = alloca %class.anon.643, align 8           ; 12 uses
  %15 = alloca %"class.std::shared_ptr.38", align 16 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.198", align 16 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %17 = alloca %"class.facebook::velox::exec::DecodedArgs", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %18 = alloca %"class.std::shared_ptr.41", align 8 ; 8 uses
  %19 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 9 uses
  %20 = alloca %"class.facebook::velox::exec::LocalDecodedVector", align 8 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.198") align 8 %16)
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.g = load <2 x ptr>, ptr %16, align 16, !tbaa !38
  store ptr null, ptr %i.f, align 8, !tbaa !35
  store <2 x ptr> %i.g, ptr %15, align 16, !tbaa !38
  store ptr null, ptr %16, align 16, !tbaa !324
  %i.h = load ptr, ptr %4, align 8, !tbaa !327    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365
  invoke void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.k)
          to label %_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit unwind label %bb.dh

_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.n, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !42
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !366
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !366
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox4exec7EvalCtx14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERS6_INS0_10BaseVectorEE.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !35  ; 8 uses
  %.not.i.i31 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i31, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ad, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !42
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24, !inline_history !367
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24, !inline_history !367
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i32 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i34 = phi i32 [ %i.ag, %bb.k ], [ %i.aq, %bb.l ]
  %i.ar = icmp eq i32 %.0.i.i.i.i34, 1
  br i1 %i.ar, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.as = load ptr, ptr %5, align 8, !tbaa !94
  %i.at = call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.as)
  store ptr %i.at, ptr %i.a, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZN8facebook5velox4exec11DecodedArgsC2ERKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS9_EERNS1_7EvalCtxE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(104) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.au = load ptr, ptr %17, align 8, !tbaa !368
  %i.av = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit unwind label %bb.di

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit:  ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.av, ptr %i.b, align 8, !tbaa !371
  %i.aw = load ptr, ptr %17, align 8, !tbaa !368
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35 unwind label %bb.dj ; 5 uses

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !614
  %i.bb = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ba, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !97
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !115
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !94 ; 3 uses
  store ptr %i.bh, ptr %18, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !35
  %.not.i.i.i36 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i36, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %18, align 8, !tbaa !94
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35, %bb.o, %bb.p
  %i.bq = phi ptr [ %i.bh, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit35 ], [ %i.bh, %bb.o ], [ %.pre, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !431
  %i.bt = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, ptr noundef nonnull %1)
          to label %bb.q unwind label %bb.dk

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !408 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.r, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ay)
          to label %.noexc unwind label %bb.dk

.noexc:                                           ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !408
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

_ZNK8facebook5velox13DecodedVector7indicesEv.exit: ; preds = %.noexc, %bb.q
  %i.bw = phi ptr [ %.pre.i, %.noexc ], [ %i.bv, %bb.q ]
  invoke void @_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::SelectivityVector") align 8 %19, i32 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull %i.bb, ptr noundef %i.bt, ptr noundef %i.bw)
          to label %bb.s unwind label %bb.dk

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %21 = load ptr, ptr %18, align 8, !tbaa !94
  %i.bx = load ptr, ptr %4, align 8, !tbaa !327
  store ptr %i.bx, ptr %20, align 8, !tbaa !461
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr null, ptr %i.by, align 8, !tbaa !469
  %i.bz = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, ptr noundef nonnull align 8 dereferenceable(94) %21, ptr noundef nonnull align 8 dereferenceable(38) %19, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #24
  br label %.body

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !408 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cb, null
  br i1 %.not.i37, label %bb.v, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40

bb.v:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ay)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.v
  %.pre.i38 = load ptr, ptr %i.bu, align 8, !tbaa !408
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40

_ZNK8facebook5velox13DecodedVector7indicesEv.exit40: ; preds = %.noexc39, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.cc = phi ptr [ %.pre.i38, %.noexc39 ], [ %i.cb, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit ]
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.c, ptr %14, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr %i.e, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.d, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  store ptr %i.a, ptr %.sroa.665.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 4 uses
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  store ptr %20, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !373, !range !51, !noundef !52
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.w

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40
  %.0.in.pre.i.i.i.i = load i8, ptr %i.cd, align 4, !tbaa !375, !range !51
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.w:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit40
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !376
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.x, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !385 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !386
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.y, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %1, align 8, !tbaa !387   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cq = and i32 %i.cl, 2147483584               ; 3 uses
  %i.cr = zext nneg i32 %i.cq to i64
  %.not37.i.i.not.i.i.i.i169.not = icmp eq i32 %i.cq, 0
  br i1 %.not37.i.i.not.i.i.i.i169.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph

bb.aa:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i170, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.cr
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i.i, !llvm.loop !388

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %indvars.iv.i.i.i.i170 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.cs = lshr exact i64 %indvars.iv.i.i.i.i170, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !190
  %i.cv = icmp eq i64 %i.cu, -1
  br i1 %i.cv, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !388

.critedge.i.i.i.i.i.i:                            ; preds = %bb.aa, %bb.z
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.cl, %i.cq
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.cw = lshr i32 %i.cl, 6
  %i.cx = and i32 %i.cl, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.cy
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !190
  %.demorgan.i.i.i.i = or i64 %i.db, %notmask.i40.i.i.i.i.i.i
  %i.dc = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.dd = zext i1 %i.dc to i16
  %i.de = or disjoint i16 %i.dd, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph, %bb.ab, %.critedge.i.i.i.i.i.i, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.x ], [ 256, %bb.w ], [ 257, %bb.y ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.de, %bb.ab ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.cd, align 4
  %i.df = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.df, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i41 = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i41, label %bb.ac, label %bb.ax

bb.ac:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !385 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !376 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.dh
  br i1 %i.dk, label %.lr.ph.i.i.i, label %.loopexit66

.lr.ph.i.i.i:                                     ; preds = %bb.ac
  %i.dl = sext i32 %i.dj to i64
  br label %bb.ad

bb.ad:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i ] ; 5 uses
  %i.dm = load ptr, ptr %14, align 8, !tbaa !671, !nonnull !52, !align !222
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !522
  %i.do = load ptr, ptr %.sroa.463.0..sroa_idx, align 8, !tbaa !673, !nonnull !52, !align !222
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !522
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = load ptr, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !674, !nonnull !52, !align !222
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !522
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !675, !nonnull !52, !align !222
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !371 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !395
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 58
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !405, !range !51, !noundef !52
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 3 uses
  br i1 %i.ef, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !406, !range !51, !noundef !52
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !407
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !408
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %indvars.iv.i.i.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.ag ], [ %i.el, %bb.af ], [ %i.eg, %bb.ad ]
  %i.eq = sext i32 %.0.i.i.i.i.i.i to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !149
  %i.et = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !676, !nonnull !52, !align !222
  %i.eu = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %.noexc.i.i.i unwind label %bb.ah

.noexc.i.i.i:                                     ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i
  %i.ev = invoke fastcc noundef i64 @_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIlEEldRNS0_13DecodedVectorEii(double noundef %i.es, ptr noundef nonnull align 8 dereferenceable(120) %i.eu, i32 noundef %i.dy, i32 noundef %i.du)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit.i.i.i unwind label %bb.ah

_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ew = load ptr, ptr %.sroa.665.0..sroa_idx, align 8, !tbaa !677, !nonnull !52, !align !222
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !229
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %indvars.iv.i.i.i
  store i64 %i.ev, ptr %i.ey, align 8, !tbaa !190
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i

bb.ah:                                            ; preds = %.noexc.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0      ; 2 uses
  %i.fb = extractvalue { ptr, i32 } %i.ez, 1      ; 2 uses
  %i.fc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #24
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ai, label %bb.aj
end_hunk_1
