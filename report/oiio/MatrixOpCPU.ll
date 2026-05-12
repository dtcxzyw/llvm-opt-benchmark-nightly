inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0_@_ZN16OpenColorIO_v2_517GetMatrixRendererERSt10shared_ptrIKNS_12MatrixOpDataEE:bb.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %i.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15, !noalias !45 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !48, !noalias !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_517GetMatrixRendererERSt10shared_ptrIKNS_12MatrixOpDataEE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !51, !noalias !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE, i64 16), ptr %i.n, align 8, !tbaa !51, !noalias !45
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53, !noalias !45 ; 4 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !54, !noalias !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_517GetMatrixRendererERSt10shared_ptrIKNS_12MatrixOpDataEE:bb.a
  %i.ab = insertelement <4 x double> %i.aa, double %i.x, i64 3
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float>
  store <4 x float> %i.ac, ptr %i.r, align 8, !tbaa !56, !noalias !45
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.af = load <4 x double>, ptr %i.ad, align 8, !tbaa !54, !noalias !45
  %i.ag = fptrunc <4 x double> %i.af to <4 x float>
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_517GetMatrixRendererERSt10shared_ptrIKNS_12MatrixOpDataEE:bb.a

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f
  %i.ah = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15, !noalias !58 ; 6 uses
  %i.ai = getelementptr i8, ptr %.val, i64 192
  %.val11.val.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !53, !noalias !58 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !48, !noalias !58
end_hunk_3
