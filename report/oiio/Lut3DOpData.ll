inline.NumInlined: 609
inline.NumDeleted: 278
begin_hunk_0_@_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !50
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !85
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !85
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511Lut3DOpData5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !86
  %i.a = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27, !noalias !86 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKS1_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %1)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !86

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 248) #28, !noalias !86
  resume { ptr, i32 } %i.b

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53, !alias.scope !86
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %0, align 8, !tbaa !54, !alias.scope !86
  ret void
}

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7combineERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_513EvalTransformEPKfPflRNS_10OpRcPtrVecE(ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #25
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !50
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !93
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !93
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !94

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 48)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayE, i64 16), ptr %0, align 8, !tbaa !51
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6resizeEmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef 3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc unwind label %bb.d, !inline_history !97 ; 9 uses

.noexc:                                           ; preds = %bb.b
  %i.f = sitofp i64 %i.e to float
  %i.g = fadd float %i.f, -1.000000e+00
  %i.h = fdiv float 1.000000e+00, %i.g            ; 2 uses
  %i.i = mul nsw i64 %i.e, %i.e
  %i.j = mul nsw i64 %i.i, %i.e                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray4fillEv.exit

.lr.ph.i:                                         ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84
  %2 = insertelement <2 x float> poison, float %i.h, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %bb.c ] ; 4 uses
  %.idx.i = mul nuw nsw i64 %.028.i, 12
  %4 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i ; 2 uses
  %5 = sdiv i64 %.028.i, %i.e                     ; 2 uses
  %6 = sdiv i64 %5, %i.e
  %7 = srem i64 %5, %i.e
  %8 = srem i64 %6, %i.e
  %9 = sitofp i64 %7 to float
  %10 = sitofp i64 %8 to float
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %12 = insertelement <2 x float> %11, float %9, i64 1
  %13 = fmul <2 x float> %3, %12
  store <2 x float> %13, ptr %4, align 4, !tbaa !98
  %i.n = srem i64 %.028.i, %i.e
  %i.o = uitofp nneg i64 %i.n to float
  %i.p = fmul float %i.h, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.p, ptr %i.q, align 4, !tbaa !98
  %i.r = add nuw nsw i64 %.028.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.j
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray4fillEv.exit, label %bb.c, !llvm.loop !100

_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray4fillEv.exit: ; preds = %bb.c, %.noexc
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %0, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_56ArrayTIfED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #28, !inline_history !102
  br label %_ZN16OpenColorIO_v2_56ArrayTIfED2Ev.exit

_ZN16OpenColorIO_v2_56ArrayTIfED2Ev.exit:         ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray4fillEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 9 uses
  %i.e = sitofp i64 %i.d to float
  %i.f = fadd float %i.e, -1.000000e+00
  %i.g = fdiv float 1.000000e+00, %i.f            ; 2 uses
  %i.h = mul nsw i64 %i.d, %i.d
  %i.i = mul nsw i64 %i.h, %i.d                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %1 = insertelement <2 x float> poison, float %i.g, i64 0
  %2 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 4 uses
  %.idx = mul nuw nsw i64 %.028, 12
  %3 = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %4 = sdiv i64 %.028, %i.d                       ; 2 uses
  %5 = sdiv i64 %4, %i.d
  %6 = srem i64 %4, %i.d
  %7 = srem i64 %5, %i.d
  %8 = sitofp i64 %6 to float
  %9 = sitofp i64 %7 to float
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %11 = insertelement <2 x float> %10, float %8, i64 1
  %12 = fmul <2 x float> %2, %11
  store <2 x float> %12, ptr %3, align 4, !tbaa !98
  %i.m = srem i64 %.028, %i.d
  %i.n = uitofp nneg i64 %i.m to float
  %i.o = fmul float %i.g, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.o, ptr %i.p, align 4, !tbaa !98
  %i.q = add nuw nsw i64 %.028, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !100
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_56ArrayTIfED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !102
  br label %_ZN16OpenColorIO_v2_56ArrayTIfED2Ev.exit

_ZN16OpenColorIO_v2_56ArrayTIfED2Ev.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !102
  br label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD2Ev.exit

_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayaSERKNS_6ArrayTIfEE(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6resizeEmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp ugt i64 %1, 129
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.2, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEm.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 129)
          to label %_ZNSolsEm.exit16 unwind label %bb.e

_ZNSolsEm.exit16:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZNSolsEm.exit16
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.h = load ptr, ptr %4, align 8, !tbaa !103
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.h)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #26
          to label %bb.m unwind label %bb.f

bb.e:                                             ; preds = %_ZNSolsEm.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !56
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn20, %bb.g ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.q, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.r, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %0), !inline_history !106 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !107  ; 2 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !84   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 3 uses
  %i.ae = icmp ugt i64 %i.w, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = sub nuw i64 %i.w, %i.ad
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.af)
  br label %_ZN16OpenColorIO_v2_56ArrayTIfE6resizeEmm.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = icmp ult i64 %i.w, %i.ad
  br i1 %i.ag, label %bb.l, label %_ZN16OpenColorIO_v2_56ArrayTIfE6resizeEmm.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.ah
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_56ArrayTIfE6resizeEmm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.l
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !107
  br label %_ZN16OpenColorIO_v2_56ArrayTIfE6resizeEmm.exit

_ZN16OpenColorIO_v2_56ArrayTIfE6resizeEmm.exit:   ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i
  ret void
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_56ArrayTIfE6resizeEmm:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.p)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8, !tbaa !107
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray12getNumValuesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.e = load ptr, ptr %0, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.i = load ptr, ptr %0, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.m = mul i64 %i.d, 3
  %i.n = mul i64 %i.m, %i.h
  %i.o = mul i64 %i.n, %i.l
  ret i64 %i.o
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = mul nsw i64 %i.d, %1
  %i.g = add i64 %i.f, %2
  %i.h = mul i64 %i.g, %i.d
  %i.i = add nsw i64 %i.h, %3
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !84
  %.idx = mul i64 %i.i, 12
  %i.k = getelementptr i8, ptr %i.j, i64 %.idx    ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !98
  store float %i.l, ptr %4, align 4, !tbaa !98
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.n, ptr %i.o, align 4, !tbaa !98
  %i.p = getelementptr i8, ptr %i.k, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = mul nsw i64 %i.d, %1
  %i.g = add i64 %i.f, %2
  %i.h = mul i64 %i.g, %i.d
  %i.i = add nsw i64 %i.h, %3
  %i.j = load float, ptr %4, align 4, !tbaa !98
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !84
  %.idx = mul i64 %i.i, 12
  %i.l = getelementptr i8, ptr %i.k, i64 %.idx    ; 3 uses
  store float %i.j, ptr %i.l, align 4, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !98
  %i.o = getelementptr i8, ptr %i.l, i64 4
  store float %i.n, ptr %i.o, align 4, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !98
  %i.r = getelementptr i8, ptr %i.l, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray5scaleEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, float noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fcmp une float %1, 1.000000e+00
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !84   ; 4 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.j, align 4, !tbaa !98
  %wide.load11 = load <4 x float>, ptr %i.k, align 4, !tbaa !98
  %i.l = fmul <4 x float> %broadcast.splat, %wide.load
  %i.m = fmul <4 x float> %broadcast.splat, %wide.load11
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !98
  store <4 x float> %i.m, ptr %i.k, align 4, !tbaa !98
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %.09 = phi i64 [ %i.r, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader12 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.09 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !98
  %i.q = fmul float %1, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !98
  %i.r = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.i
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpDataC2Em(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 254, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayE, i64 16), ptr %i.b, align 8, !tbaa !51
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6resizeEmm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef %1, i64 noundef 3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc.i unwind label %bb.d, !inline_history !97 ; 9 uses

.noexc.i:                                         ; preds = %bb.b
  %i.h = sitofp i64 %i.g to float
  %i.i = fadd float %i.h, -1.000000e+00
  %i.j = fdiv float 1.000000e+00, %i.i            ; 2 uses
  %i.k = mul nsw i64 %i.g, %i.g
  %i.l = mul nsw i64 %i.k, %i.g                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit

.lr.ph.i.i:                                       ; preds = %.noexc.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84
  %2 = insertelement <2 x float> poison, float %i.j, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.028.i.i, 12
  %4 = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i ; 2 uses
  %5 = sdiv i64 %.028.i.i, %i.g                   ; 2 uses
  %6 = sdiv i64 %5, %i.g
  %7 = srem i64 %5, %i.g
  %8 = srem i64 %6, %i.g
  %9 = sitofp i64 %7 to float
  %10 = sitofp i64 %8 to float
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %12 = insertelement <2 x float> %11, float %9, i64 1
  %13 = fmul <2 x float> %3, %12
  store <2 x float> %13, ptr %4, align 4, !tbaa !98
  %i.p = srem i64 %.028.i.i, %i.g
  %i.q = uitofp nneg i64 %i.p to float
  %i.r = fmul float %i.j, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !98
  %i.t = add nuw nsw i64 %.028.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit, label %bb.c, !llvm.loop !100

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %i.b, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28, !inline_history !102
  br label %.body

_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit: ; preds = %bb.c, %.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.ad, align 4, !tbaa !55
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #25
  resume { ptr, i32 } %i.u
}

declare void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpDataC2ElNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 254, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayE, i64 16), ptr %i.b, align 8, !tbaa !51
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6resizeEmm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef %1, i64 noundef 3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc.i unwind label %bb.d, !inline_history !97 ; 9 uses

.noexc.i:                                         ; preds = %bb.b
  %i.h = sitofp i64 %i.g to float
  %i.i = fadd float %i.h, -1.000000e+00
  %i.j = fdiv float 1.000000e+00, %i.i            ; 2 uses
  %i.k = mul nsw i64 %i.g, %i.g
  %i.l = mul nsw i64 %i.k, %i.g                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit

.lr.ph.i.i:                                       ; preds = %.noexc.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84
  %3 = insertelement <2 x float> poison, float %i.j, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.028.i.i, 12
  %5 = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i ; 2 uses
  %6 = sdiv i64 %.028.i.i, %i.g                   ; 2 uses
  %7 = sdiv i64 %6, %i.g
  %8 = srem i64 %6, %i.g
  %9 = srem i64 %7, %i.g
  %10 = sitofp i64 %8 to float
  %11 = sitofp i64 %9 to float
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = insertelement <2 x float> %12, float %10, i64 1
  %14 = fmul <2 x float> %4, %13
  store <2 x float> %14, ptr %5, align 4, !tbaa !98
  %i.p = srem i64 %.028.i.i, %i.g
  %i.q = uitofp nneg i64 %i.p to float
  %i.r = fmul float %i.j, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !98
  %i.t = add nuw nsw i64 %.028.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit, label %bb.c, !llvm.loop !100

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %i.b, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28, !inline_history !102
  br label %.body

_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit: ; preds = %bb.c, %.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %2, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.ad, align 4, !tbaa !55
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #25
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpDataC2ENS_13InterpolationEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayE, i64 16), ptr %i.b, align 8, !tbaa !51
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6resizeEmm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef %2, i64 noundef 3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc.i unwind label %bb.d, !inline_history !97 ; 9 uses

.noexc.i:                                         ; preds = %bb.b
  %i.h = sitofp i64 %i.g to float
  %i.i = fadd float %i.h, -1.000000e+00
  %i.j = fdiv float 1.000000e+00, %i.i            ; 2 uses
  %i.k = mul nsw i64 %i.g, %i.g
  %i.l = mul nsw i64 %i.k, %i.g                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit

.lr.ph.i.i:                                       ; preds = %.noexc.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84
  %3 = insertelement <2 x float> poison, float %i.j, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.028.i.i, 12
  %5 = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i ; 2 uses
  %6 = sdiv i64 %.028.i.i, %i.g                   ; 2 uses
  %7 = sdiv i64 %6, %i.g
  %8 = srem i64 %6, %i.g
  %9 = srem i64 %7, %i.g
  %10 = sitofp i64 %8 to float
  %11 = sitofp i64 %9 to float
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = insertelement <2 x float> %12, float %10, i64 1
  %14 = fmul <2 x float> %4, %13
  store <2 x float> %14, ptr %5, align 4, !tbaa !98
  %i.p = srem i64 %.028.i.i, %i.g
  %i.q = uitofp nneg i64 %i.p to float
  %i.r = fmul float %i.j, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !98
  %i.t = add nuw nsw i64 %.028.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit, label %bb.c, !llvm.loop !100

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %i.b, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28, !inline_history !102
  br label %.body

_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC2Em.exit: ; preds = %bb.c, %.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.ad, align 4, !tbaa !55
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #25
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpDataD2Ev(ptr noundef nonnull align 8 dereferenceable(232) initializes((0, 8), (176, 184)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28, !inline_history !102
  br label %_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD2Ev.exit

_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.i) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpDataD0Ev(ptr noundef nonnull align 8 dereferenceable(232) initializes((0, 8), (176, 184)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511Lut3DOpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_56ArrayTIfEE, i64 16), ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_511Lut3DOpDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28, !inline_history !112
  br label %_ZN16OpenColorIO_v2_511Lut3DOpDataD2Ev.exit

_ZN16OpenColorIO_v2_511Lut3DOpDataD2Ev.exit:      ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.i) #25, !inline_history !113
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(232) initializes((168, 172)) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1, ptr %i.a, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 2, 4) i32 @_ZNK16OpenColorIO_v2_511Lut3DOpData24getConcreteInterpolationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %switch.selectcmp.case1.i = icmp eq i32 %i.b, 255
  %switch.selectcmp.case2.i = icmp eq i32 %i.b, 3
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.c = select i1 %switch.selectcmp.i, i32 3, i32 2
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 2, 4) i32 @_ZN16OpenColorIO_v2_511Lut3DOpData24GetConcreteInterpolationENS_13InterpolationE(i32 noundef %0) local_unnamed_addr #11 align 2 {
bb.a:
  %switch.selectcmp.case1 = icmp eq i32 %0, 255
  %switch.selectcmp.case2 = icmp eq i32 %0, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.a = select i1 %switch.selectcmp, i32 3, i32 2
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData27setArrayFromRedFastestOrderERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 14 uses
  %i.f = mul i64 %i.e, 3
  %i.g = mul i64 %i.f, %i.e
  %i.h = mul i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = load ptr, ptr %1, align 8, !tbaa !84     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %.not = icmp eq i64 %i.h, %i.o
  br i1 %.not, label %.preheader65, label %bb.b

.preheader65:                                     ; preds = %bb.a
  %.not69 = icmp eq i64 %i.e, 0
  br i1 %.not69, label %._crit_edge, label %.preheader64.lr.ph

.preheader64.lr.ph:                               ; preds = %.preheader65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  br label %.preheader64

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.4, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.e)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.5, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %_ZNSolsEm.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.e)
          to label %_ZNSolsEm.exit54 unwind label %bb.e ; 2 uses

_ZNSolsEm.exit54:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.5, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZNSolsEm.exit54
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.e)
          to label %_ZNSolsEm.exit56 unwind label %bb.e

_ZNSolsEm.exit56:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.6, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZNSolsEm.exit56
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.7, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.aa = load ptr, ptr %1, align 8, !tbaa !84
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ae)
          to label %_ZNSolsEm.exit59 unwind label %bb.e

_ZNSolsEm.exit59:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.3, i64 noundef 2)
end_hunk_1
