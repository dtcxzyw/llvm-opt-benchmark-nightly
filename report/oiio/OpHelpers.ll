begin_hunk_0_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFfdEE:bb.a
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #14, !inline_history !69
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #14, !inline_history !69
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFfdEE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.p ], [ %i.bb, %bb.q ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.r, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #14
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !72
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !72
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFvPKdPdEE:bb.a
  %i.c = alloca [3 x double], align 16            ; 7 uses
  %i.d = alloca [3 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.e = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #16, !noalias !73 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.f, align 8, !tbaa !14, !noalias !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !16, !noalias !73
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !17, !noalias !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.h, i64 noundef %1)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !73

common.resume:                                    ; preds = %bb.q, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.pn.pn, %bb.q ]
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFvPKdPdEE:bb.a
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 384) #17, !noalias !73
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.j, align 8, !tbaa !19, !alias.scope !73
  store ptr %i.h, ptr %3, align 8, !tbaa !23, !alias.scope !73
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.h, i32 noundef 2)
          to label %bb.b unwind label %bb.c

end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFvPKdPdEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !76
  store ptr %i.d, ptr %i.b, align 8, !tbaa !76
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.f, label %bb.g
end_hunk_6
begin_hunk_7_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFvPKdPdEE:bb.a
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !78
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %.loopexit

end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFvPKdPdEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.ag = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !80

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFvPKdPdEE:bb.a
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #14, !inline_history !69
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #14, !inline_history !69
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

end_hunk_9
begin_hunk_10_@_ZN16OpenColorIO_v2_59CreateLutERNS_10OpRcPtrVecEmSt8functionIFvPKdPdEE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.al, %bb.n ], [ %i.av, %bb.o ]
  %i.aw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #14
end_hunk_10
begin_hunk_11_@_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE:bb.a
  %i.c = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.d = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #16, !noalias !81 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !14, !noalias !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !16, !noalias !81
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !17, !noalias !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.g, i32 noundef 1, i64 noundef 65536, i1 noundef zeroext true)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJNS1_9HalfFlagsEibEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !81

common.resume:                                    ; preds = %bb.v, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ], [ %.pn.pn, %bb.v ]
end_hunk_11
begin_hunk_12_@_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE:bb.a
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 384) #17, !noalias !81
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJNS1_9HalfFlagsEibEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.i, align 8, !tbaa !19, !alias.scope !81
  store ptr %i.g, ptr %2, align 8, !tbaa !23, !alias.scope !81
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.g, i32 noundef 2)
          to label %bb.b unwind label %bb.c

end_hunk_12
begin_hunk_13_@_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE:bb.a
  br i1 %i.aa, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !84
  %i.ac = and i64 %.01738, 65535
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !70
  %i.af = fpext float %i.ae to double
  %i.ag = and i16 %i.v, 32767
  %i.ah = icmp eq i16 %i.ag, 31744
end_hunk_13
begin_hunk_14_@_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE:bb.a
  store float %i.ay, ptr %i.bb, align 4, !tbaa !66
  %i.bc = add nuw i64 %.01738, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !86

.loopexit:                                        ; preds = %bb.i, %bb.k, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_14
begin_hunk_15_@_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE:bb.a
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #14, !inline_history !69
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #14, !inline_history !69
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

end_hunk_15
begin_hunk_16_@_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.s ], [ %i.br, %bb.t ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.u, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #14
end_hunk_16
begin_hunk_17_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_17
begin_hunk_18_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !87
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_18
begin_hunk_19_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(364) %i.a) #14, !inline_history !88
  ret void
}

end_hunk_19
begin_hunk_20_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

end_hunk_20
begin_hunk_21_@llvm.experimental.noalias.scope.decl
!66 = !{!67, !67, i64 0}
!67 = !{!"float", !5, i64 0}
!68 = distinct !{!68, !10}
!69 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!70 = !{!5, !5, i64 0}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = distinct !{null, null}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!75 = distinct !{!75, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 double", !22, i64 0}
!78 = !{!79, !22, i64 24}
!79 = !{!"_ZTSSt8functionIFvPKdPdEE", !62, i64 0, !22, i64 24}
!80 = distinct !{!80, !10}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJNS1_9HalfFlagsEibEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!83 = distinct !{!83, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJNS1_9HalfFlagsEibEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!84 = !{!85, !85, i64 0}
!85 = !{!"p1 _ZTS14imath_half_uif", !22, i64 0}
!86 = distinct !{!86, !10}
!87 = distinct !{null}
!88 = distinct !{null}
!89 = !{!90, !36, i64 8}
!90 = !{!"_ZTSSt9type_info", !36, i64 8}
end_hunk_21
