inline.NumInlined: 526
inline.NumDeleted: 277
begin_hunk_0_@_ZN16OpenColorIO_v2_522CreateIdentityMatrixOpERNS_10OpRcPtrVecENS_18TransformDirectionE:bb.a

common.resume:                                    ; preds = %bb.aa, %.body.i.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.bw, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i.i:                              ; preds = %bb.s, %bb.r, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.be, %bb.s ], [ %i.bd, %bb.r ], [ %i.o, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !75
  call void @_ZN16OpenColorIO_v2_52OpD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #17, !noalias !75
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 40) #19, !noalias !75
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpEJRA16_dRA4_KdRNS0_18TransformDirectionEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEaSINS0_12MatrixOpDataEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.i.i.i.i.i.i.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !75
  store ptr %i.i, ptr %3, align 8, !tbaa !71
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.bf, align 8, !tbaa !17
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec9push_backERKSt10shared_ptrINS_2OpEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpEJRA16_dRA4_KdRNS0_18TransformDirectionEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bh, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !14
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #17, !inline_history !74
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #17, !inline_history !74
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bk, %bb.x ], [ %i.bu, %bb.y ]
  %i.bv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bv, label %bb.z, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.aa:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpEJRA16_dRA4_KdRNS0_18TransformDirectionEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %common.resume
}

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVec9push_backERKSt10shared_ptrINS_2OpEE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !14
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !84
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !84
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !14
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #17, !inline_history !84
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #17, !inline_history !84
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [16 x double], align 16             ; 8 uses
  %5 = alloca [4 x double], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = load <2 x double>, ptr %2, align 8, !tbaa !7
  %8 = load <2 x double>, ptr %1, align 8, !tbaa !7 ; 2 uses
  %9 = fsub <2 x double> %7, %8
  %10 = fdiv <2 x double> splat (double 1.000000e+00), %9 ; 4 uses
  %11 = fneg <2 x double> %8
  %12 = fmul <2 x double> %10, %11                ; 2 uses
  store <2 x double> %12, ptr %5, align 16, !tbaa !7
  %13 = shufflevector <2 x double> %10, <2 x double> %12, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr = freeze <4 x double> %13
  %14 = fcmp une <4 x double> %.fr, <double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00>
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !7 ; 2 uses
  %i.e = fsub double %i.b, %i.d
  %.fr22 = freeze double %i.e
  %i.f = fdiv double 1.000000e+00, %.fr22         ; 3 uses
  %i.g = fneg double %i.d
  %i.h = fmul double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.h, ptr %i.i, align 16, !tbaa !7
  %i.j = fcmp une double %i.f, 1.000000e+00
  %i.k = fcmp une double %i.h, 0.000000e+00
  %15 = bitcast <4 x i1> %14 to i4
  %16 = icmp ne i4 %15, 0
  %op.rdx = or i1 %16, %i.j
  %op.rdx19 = select i1 %op.rdx, i1 true, i1 %i.k
  br i1 %op.rdx19, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %i.l = extractelement <2 x double> %10, i64 0
  store double %i.l, ptr %4, align 16, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %17 = extractelement <2 x double> %10, i64 1
  store double %17, ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 80
  store double %i.f, ptr %i.n, align 16, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 120
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !7
  call void @_ZN16OpenColorIO_v2_520CreateMatrixOffsetOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEffNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x double], align 16           ; 8 uses
  %i.b = alloca [4 x double], align 16            ; 6 uses
  %i.c = fpext float %1 to double                 ; 2 uses
  %i.d = fpext float %2 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = fsub double %i.d, %i.c
  %i.g = fdiv double 1.000000e+00, %i.f           ; 5 uses
  %i.h = fneg double %i.c
  %i.i = fmul double %i.g, %i.h                   ; 4 uses
  store double %i.i, ptr %i.b, align 16, !tbaa !7
  %4 = fcmp une double %i.g, 1.000000e+00
  %5 = fcmp une double %i.i, 0.000000e+00
  %narrow.i = or i1 %4, %5
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.i, ptr %6, align 8, !tbaa !7
  store double %i.i, ptr %i.e, align 16, !tbaa !7
  br i1 %narrow.i, label %bb.b, label %_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  store double %i.g, ptr %i.a, align 16, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.g, ptr %i.j, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.g, ptr %i.k, align 16, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !7
  call void @_ZN16OpenColorIO_v2_520CreateMatrixOffsetOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE.exit

_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecERSt10shared_ptrINS_12MatrixOpData11MatrixArrayEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.b = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #18, !noalias !88 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store i32 1, ptr %i.c, align 8, !tbaa !12, !noalias !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !14, !noalias !88
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !15, !noalias !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpDataC1ERKNS0_11MatrixArrayE(ptr noundef nonnull align 8 dereferenceable(260) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpDataEJRNS1_11MatrixArrayEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !88

common.resume:                                    ; preds = %bb.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.u, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 280) #19, !noalias !88
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpDataEJRNS1_11MatrixArrayEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !17, !alias.scope !88
  store ptr %i.e, ptr %3, align 8, !tbaa !21, !alias.scope !88
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecERSt10shared_ptrINS_12MatrixOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %2)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpDataEJRNS1_11MatrixArrayEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.h = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !12
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.j, -1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.h:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpDataEJRNS1_11MatrixArrayEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume
}

declare void @_ZNK16OpenColorIO_v2_512MatrixOpData5cloneEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(260)) local_unnamed_addr #3

declare noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522CreateIdentityMatrixOpERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %2 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN16OpenColorIO_v2_512MatrixOpData20CreateDiagonalMatrixEd(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, double noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %.val5 = load ptr, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val6 = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %.noexc unwind label %bb.v, !inline_history !62 ; 7 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !12, !noalias !91
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !14, !noalias !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !15, !noalias !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store i64 0, ptr %i.g, align 8, !noalias !91
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpE, i64 16), ptr %i.e, align 8, !tbaa !15, !noalias !91
  store ptr %.val5, ptr %i.f, align 8, !tbaa !66, !noalias !91
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val6, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpEJRSt10shared_ptrINS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !91
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !91
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !91
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !91 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !17, !noalias !91 ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8, !noalias !91 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !12, !noalias !91
  %i.q = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i.i.i.i.i.i.i, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !14, !noalias !91
  %i.r = load ptr, ptr %.pr.pre.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !15, !noalias !91
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !91
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i.i.i.i.i.i.i) #17, !noalias !91, !inline_history !69
  %i.u = load ptr, ptr %.pr.pre.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !15, !noalias !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !91
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i.i.i.i.i.i.i) #17, !noalias !91, !inline_history !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !91
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3, !noalias !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4, !noalias !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !25

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
