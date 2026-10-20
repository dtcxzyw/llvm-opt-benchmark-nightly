Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU5applyEPKvPvl
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address) %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.d = load i8, ptr %i.c, align 8, !tbaa !67, !range !68, !noundef !42
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %1, i64 %i.f, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(1208) %i.b) ; 21 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 21 uses
  %i.m = icmp sgt i64 %3, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.084 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.e ]
  %.07883 = phi ptr [ %2, %.lr.ph ], [ %i.v, %bb.e ] ; 26 uses
  %.07982 = phi ptr [ %1, %.lr.ph ], [ %i.u, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.07883, ptr noundef nonnull align 4 dereferenceable(16) %.07982, i64 16, i1 false)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 0, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 1, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 2, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 3, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 3, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 3, i1 noundef zeroext false, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 3, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(936) %i.l, i32 noundef 3, i1 noundef zeroext true, ptr noundef nonnull %.07883)
  %.val = load double, ptr %i.n, align 8, !tbaa !69
  tail call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU9scontrastERKNS_11GradingToneERKNS_20GradingTonePreRenderEPf(double %.val, ptr noundef nonnull align 8 dereferenceable(936) %i.l, ptr noundef nonnull %.07883)
  %i.o = load <2 x float>, ptr %.07883, align 4, !tbaa !70 ; 2 uses
  %i.p = fcmp ogt <2 x float> %i.o, splat (float 6.550400e+04)
  %i.q = select <2 x i1> %i.p, <2 x float> splat (float 6.550400e+04), <2 x float> %i.o
  store <2 x float> %i.q, ptr %.07883, align 4, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %.07883, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !70 ; 2 uses
  %i.t = fcmp ogt float %i.s, 6.550400e+04
  %.sroa.speculated.i = select i1 %i.t, float 6.550400e+04, float %i.s
  store float %.sroa.speculated.i, ptr %i.r, align 4, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %.07982, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.07883, i64 16
  %i.w = add nuw nsw i64 %.084, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !103

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !45
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !104
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !104
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK16OpenColorIO_v2_530DynamicPropertyGradingToneImpl18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.11") align 8, ptr noundef nonnull align 8 dereferenceable(1208)) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, ptr nofree noundef captures(none) %3) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %2) ; 2 uses
  %i.c = fcmp ogt float %i.b, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.c, float %i.b, float f0x3C23D70A ; 2 uses
  %i.d = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.d, float 1.990000e+00, float %.sroa.speculated2.i
  %i.e = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = zext nneg i32 %2 to i64                  ; 4 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.g ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.g ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !70 ; 9 uses
  %i.z = load <4 x float>, ptr %i.h, align 8, !tbaa !70 ; 3 uses
  %i.aa = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.ab = load float, ptr %i.j, align 8, !tbaa !70 ; 3 uses
  %i.ac = load float, ptr %i.i, align 4, !tbaa !70
  %i.ad = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 2 uses
  %i.ae = load float, ptr %i.m, align 4, !tbaa !70 ; 2 uses
  %i.af = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.z, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.aj = fsub <4 x float> %i.ag, %i.ai           ; 2 uses
  %i.ak = shufflevector <4 x float> %i.z, <4 x float> %i.ah, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.al = fsub <4 x float> %i.ak, %i.ai           ; 2 uses
  %i.am = fdiv <4 x float> %i.aj, %i.al           ; 2 uses
  %4 = fmul <4 x float> %i.al, %i.am
  %i.an = load <4 x float>, ptr %i.t, align 8, !tbaa !70 ; 3 uses
  %i.ao = fmul <4 x float> %i.am, splat (float 5.000000e-01)
  %i.ap = load <2 x float>, ptr %i.v, align 8, !tbaa !70
  %i.aq = load float, ptr %i.w, align 4, !tbaa !70
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.as = shufflevector <4 x float> %i.an, <4 x float> %i.ar, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.at = shufflevector <4 x float> %i.an, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.au = fsub <4 x float> %i.as, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.au, <4 x float> %i.at)
  %i.aw = load <2 x float>, ptr %i.o, align 8, !tbaa !70 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.q, align 4, !tbaa !70
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %i.av, <4 x float> %i.ay) ; 4 uses
  %i.ba = fcmp olt float %i.y, %i.ac
  %i.bb = extractelement <4 x float> %i.az, i64 0
  %i.bc = extractelement <4 x float> %i.az, i64 1
  %i.bd = select i1 %i.ba, float %i.bb, float %i.bc
  %i.be = fcmp ogt float %i.y, %i.ab
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bf = load float, ptr %i.u, align 8, !tbaa !70 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !70
  %i.bi = fsub float %i.y, %i.ab
  %i.bj = fsub float %i.aa, %i.ab                 ; 2 uses
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = fmul float %i.bk, 5.000000e-01
  %i.bn = fsub float %i.bh, %i.bf
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.bf)
  %i.bp = load float, ptr %i.p, align 8, !tbaa !70
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bo, float %i.bp)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi float [ %i.bq, %bb.d ], [ %i.bd, %bb.c ]
  %i.br = fcmp ogt float %i.y, %i.aa
  %i.bs = extractelement <4 x float> %i.az, i64 2
  %.1 = select i1 %i.br, float %i.bs, float %.0
  %i.bt = extractelement <2 x float> %i.ad, i64 0
  %i.bu = fcmp ogt float %i.y, %i.bt
  %i.bv = extractelement <4 x float> %i.az, i64 3
  %.2 = select i1 %i.bu, float %i.bv, float %.1
  %i.bw = extractelement <4 x float> %i.z, i64 0
  %i.bx = fcmp olt float %i.y, %i.bw
  %i.by = extractelement <4 x float> %i.aj, i64 0
  %i.bz = extractelement <4 x float> %i.an, i64 0
  %i.ca = extractelement <2 x float> %i.aw, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bz, float %i.ca)
  %.3 = select i1 %i.bx, float %i.cb, float %.2
  %i.cc = fcmp ogt float %i.y, %i.ae
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = load float, ptr %i.r, align 4, !tbaa !70
  %i.ce = fsub float %i.y, %i.ae
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.aq, float %i.cd)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi float [ %i.cf, %bb.f ], [ %.3, %bb.e ]
  store float %.4, ptr %i.x, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !70 ; 9 uses
  %i.cl = load float, ptr %i.o, align 8, !tbaa !70 ; 3 uses
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !70 ; 2 uses
  %i.cn = load float, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  %i.co = load float, ptr %i.q, align 4, !tbaa !70 ; 2 uses
  %i.cp = load float, ptr %i.ch, align 8, !tbaa !70 ; 2 uses
  %i.cq = load float, ptr %i.r, align 4, !tbaa !70 ; 2 uses
  %i.cr = load <2 x float>, ptr %3, align 4, !tbaa !70 ; 12 uses
  %i.cs = load <4 x float>, ptr %i.h, align 8, !tbaa !70 ; 6 uses
  %i.ct = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fsub <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cw = extractelement <4 x float> %i.cs, i64 0
  %i.cx = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cy = fsub <2 x float> %i.cr, %i.cx
  %i.cz = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.da = fsub <2 x float> %i.cr, %i.cz
  %i.db = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.dc = fsub <2 x float> %i.cr, %i.db
  %i.dd = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 4 uses
  %i.de = load float, ptr %i.m, align 4, !tbaa !70 ; 3 uses
  %i.df = extractelement <2 x float> %i.dd, i64 0 ; 3 uses
  %i.dg = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 2 uses
  %i.dh = load float, ptr %i.j, align 8, !tbaa !70
  %i.di = shufflevector <2 x float> %i.dd, <2 x float> %i.dg, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.dj = insertelement <4 x float> %i.di, float %i.ct, i64 2 ; 2 uses
  %i.dk = shufflevector <4 x float> %i.cs, <4 x float> %i.dj, <4 x i32> <i32 0, i32 4, i32 5, i32 6> ; 2 uses
  %i.dl = fsub <4 x float> %i.dj, %i.dk           ; 6 uses
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fdiv <2 x float> %i.cv, %i.dm           ; 2 uses
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dp = fdiv <2 x float> %i.cy, %i.do           ; 2 uses
  %i.dq = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.dr = fdiv <2 x float> %i.da, %i.dq           ; 2 uses
  %i.ds = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = fsub <4 x float> %i.dt, %i.dk           ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.dw = fdiv <2 x float> %i.dc, %i.dv           ; 2 uses
  %i.dx = fdiv <4 x float> %i.du, %i.dl           ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fsub <2 x float> %i.cr, %i.dy
  %i.ea = fsub float %i.ck, %i.df
  %i.eb = fsub float %i.de, %i.df                 ; 3 uses
  %i.ec = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fdiv <2 x float> %i.dz, %i.ed           ; 2 uses
  %i.ef = fdiv float %i.ea, %i.eb                 ; 2 uses
  %i.eg = fmul <2 x float> %i.dm, %i.dn
  %i.eh = fmul <2 x float> %i.dn, splat (float 5.000000e-01)
  %i.ei = load <4 x float>, ptr %i.t, align 8, !tbaa !70 ; 6 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = fmul <2 x float> %i.do, %i.dp
  %i.en = fmul <2 x float> %i.dp, splat (float 5.000000e-01)
  %i.eo = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.dq, %i.dr
  %i.es = fmul <2 x float> %i.dr, splat (float 5.000000e-01)
  %i.et = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.eu = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.dv, %i.dw
  %i.ex = fmul <2 x float> %i.dw, splat (float 5.000000e-01)
  %i.ey = load <2 x float>, ptr %i.v, align 8, !tbaa !70 ; 4 uses
  %i.ez = load float, ptr %i.w, align 4, !tbaa !70 ; 2 uses
  %i.fa = extractelement <2 x float> %i.ey, i64 0 ; 2 uses
  %i.fb = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fc = load <2 x float>, ptr %i.u, align 8, !tbaa !70 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.cg, align 4, !tbaa !70
  %i.fe = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ff = shufflevector <2 x float> %i.fc, <2 x float> %i.ey, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.fg = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fi = shufflevector <4 x float> %i.ei, <4 x float> %i.fg, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fk = fsub <4 x float> %i.fh, %i.fj           ; 5 uses
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.eh, %i.fl
  %i.fn = fadd <2 x float> %i.ej, %i.fm
  %i.fo = fmul <2 x float> %i.eg, %i.fn
  %i.fp = fadd <2 x float> %i.el, %i.fo
  %i.fq = fmul <4 x float> %i.dl, %i.dx
  %i.fr = fmul <4 x float> %i.dx, splat (float 5.000000e-01)
  %i.fs = fmul <4 x float> %i.fr, %i.fk
  %i.ft = fadd <4 x float> %i.fj, %i.fs
  %i.fu = fmul <4 x float> %i.fq, %i.ft           ; 4 uses
  %i.fv = extractelement <4 x float> %i.fu, i64 0
  %i.fw = fadd float %i.cl, %i.fv
  %i.fx = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fy = fmul <2 x float> %i.en, %i.fx
  %i.fz = fadd <2 x float> %i.eo, %i.fy
  %i.ga = fmul <2 x float> %i.em, %i.fz
  %i.gb = fadd <2 x float> %i.eq, %i.ga
  %i.gc = extractelement <4 x float> %i.fu, i64 1
  %i.gd = fadd float %i.cm, %i.gc
  %i.ge = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gf = fmul <2 x float> %i.es, %i.ge
  %i.gg = fadd <2 x float> %i.et, %i.gf
  %i.gh = fmul <2 x float> %i.er, %i.gg
  %i.gi = fadd <2 x float> %i.ev, %i.gh
  %i.gj = extractelement <4 x float> %i.fu, i64 2
  %i.gk = fadd float %i.cn, %i.gj
  %i.gl = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gm = fmul <2 x float> %i.ex, %i.gl
  %i.gn = fadd <2 x float> %i.fb, %i.gm
  %i.go = fmul <2 x float> %i.ew, %i.gn
  %i.gp = insertelement <2 x float> poison, float %i.co, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fadd <2 x float> %i.gq, %i.go
  %i.gs = extractelement <4 x float> %i.fu, i64 3
  %i.gt = fadd float %i.co, %i.gs
  %i.gu = fmul <2 x float> %i.ed, %i.ee
  %i.gv = fmul float %i.eb, %i.ef
  %i.gw = fmul <2 x float> %i.ee, splat (float 5.000000e-01)
  %i.gx = fmul float %i.ef, 5.000000e-01
  %i.gy = fsub float %i.ez, %i.fa                 ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %i.gw, %i.ha
  %i.hc = fmul float %i.gx, %i.gy
  %i.hd = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fadd <2 x float> %i.hd, %i.hb
  %i.hf = fadd float %i.fa, %i.hc
  %i.hg = fmul <2 x float> %i.gu, %i.he
  %i.hh = fmul float %i.gv, %i.hf
  %i.hi = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fadd <2 x float> %i.hj, %i.hg
  %i.hl = fadd float %i.cp, %i.hh
  %i.hm = fmul <2 x float> %i.cv, %i.ej
  %foldExtExtBinop = fmul <4 x float> %i.du, %i.ei
  %i.hn = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ho = fadd <2 x float> %i.el, %i.hm
  %i.hp = fadd float %i.cl, %i.hn
  %i.hq = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hr = fsub <2 x float> %i.cr, %i.hq
  %i.hs = fsub float %i.ck, %i.de
  %i.ht = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x float> %i.hr, %i.ht
  %i.hv = fmul float %i.hs, %i.ez
  %i.hw = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fadd <2 x float> %i.hu, %i.hx
  %i.hz = fadd float %i.hv, %i.cq
  %i.ia = fcmp olt <2 x float> %i.cr, %i.cx
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.fp, <2 x float> %i.gb
  %i.ic = extractelement <2 x float> %i.dg, i64 0
  %i.id = fcmp olt float %i.ck, %i.ic
  %i.ie = select i1 %i.id, float %i.fw, float %i.gd
  %i.if = fcmp olt <2 x float> %i.cr, %i.cz
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.ib, <2 x float> %i.gi
  %i.ih = fcmp olt float %i.ck, %i.dh
  %i.ii = select i1 %i.ih, float %i.ie, float %i.gk
  %i.ij = fcmp olt <2 x float> %i.cr, %i.db
  %i.ik = select <2 x i1> %i.ij, <2 x float> %i.ig, <2 x float> %i.gr
  %i.il = fcmp olt float %i.ck, %i.ct
  %i.im = select i1 %i.il, float %i.ii, float %i.gt
  %i.in = fcmp olt <2 x float> %i.cr, %i.dy
  %i.io = select <2 x i1> %i.in, <2 x float> %i.ik, <2 x float> %i.hk
  %i.ip = fcmp olt float %i.ck, %i.df
  %i.iq = select i1 %i.ip, float %i.im, float %i.hl
  %i.ir = fcmp olt <2 x float> %i.cr, %i.cu
  %i.is = select <2 x i1> %i.ir, <2 x float> %i.ho, <2 x float> %i.io
  %i.it = fcmp olt float %i.ck, %i.cw
  %i.iu = select i1 %i.it, float %i.hp, float %i.iq
  %i.iv = fcmp olt <2 x float> %i.cr, %i.hq
  %i.iw = select <2 x i1> %i.iv, <2 x float> %i.is, <2 x float> %i.hy
  %i.ix = fcmp olt float %i.ck, %i.de
  %i.iy = select i1 %i.ix, float %i.iu, float %i.hz
  store <2 x float> %i.iw, ptr %3, align 4, !tbaa !70
  store float %i.iy, ptr %i.cj, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
  %. = select i1 %3, i64 48, i64 144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.b = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %2) ; 2 uses
  %i.c = fsub float 2.000000e+00, %i.b
  %.0 = select i1 %3, float %i.b, float %i.c      ; 2 uses
  %i.d = fcmp oeq float %.0, 1.000000e+00
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.f = zext i1 %3 to i64                        ; 3 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.f
  %i.h = zext nneg i32 %2 to i64                  ; 5 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.f
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.h ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.h ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.u = fcmp olt float %.0, 1.000000e+00
  %.not82 = icmp eq i32 %2, 3                     ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !70 ; 5 uses
  %i.x = load float, ptr %i.n, align 4, !tbaa !70 ; 2 uses
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fsub <2 x float> %i.ab, %i.y            ; 2 uses
  %i.ad = fsub <2 x float> %i.z, %i.y             ; 2 uses
  %i.ae = fdiv <2 x float> %i.ac, %i.ad           ; 7 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ag = fneg float %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.af, float 1.000000e+00)
  %7 = extractelement <2 x float> %i.ae, i64 1    ; 2 uses
  %8 = fsub float 1.000000e+00, %7                ; 2 uses
  %9 = fsub float 2.000000e+00, %7
  %10 = load <2 x float>, ptr %i.o, align 4, !tbaa !70 ; 3 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.ai = fmul float %11, %8
  %12 = insertelement <2 x float> %i.ae, float %9, i64 1
  %13 = fmul <2 x float> %12, %10
  %14 = fmul <2 x float> %i.ae, %13
  %15 = insertelement <2 x float> poison, float %i.x, i64 0
  %16 = insertelement <2 x float> %15, float %i.ai, i64 1
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %8, i64 1
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %18, <2 x float> %14)
  %i.aj = extractelement <2 x float> %i.y, i64 1
  %20 = fcmp olt float %i.w, %i.aj
  %21 = extractelement <2 x float> %i.y, i64 0
  %22 = fcmp olt float %i.w, %21
  %23 = extractelement <2 x float> %i.z, i64 1    ; 2 uses
  %24 = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %25 = insertelement <2 x float> %i.ae, float 1.000000e+00, i64 0
  %26 = insertelement <2 x float> %i.ae, float 1.000000e+00, i64 1
  %27 = fsub <2 x float> %25, %26
  %28 = fmul <2 x float> %27, %24
  %29 = fmul <2 x float> %i.ae, %28
  %30 = fsub float %i.w, %23
  %31 = shufflevector <2 x float> %i.ad, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %32 = insertelement <4 x float> %31, float %30, i64 3
  %33 = shufflevector <2 x float> %24, <2 x float> %29, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %34 = shufflevector <2 x float> %19, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %35 = insertelement <4 x float> %34, float %i.x, i64 2
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %33, <4 x float> %35) ; 4 uses
  %i.ak = extractelement <4 x float> %36, i64 0
  %37 = extractelement <4 x float> %36, i64 1
  %i.al = select i1 %20, float %i.ak, float %37
  %i.am = extractelement <4 x float> %36, i64 2
  %38 = select i1 %22, float %i.am, float %i.al
  %39 = fcmp olt float %i.w, %23
  %40 = extractelement <4 x float> %36, i64 3
  %i.an = select i1 %39, float %38, float %40
  store float %i.an, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ao = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.ao, ptr %5, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.aq, ptr %i.ar, align 8, !tbaa !70
  %i.as = load float, ptr %i.i, align 4, !tbaa !70
  %i.at = load float, ptr %i.j, align 8, !tbaa !70
  %i.au = load float, ptr %i.k, align 4, !tbaa !70
  %i.av = load float, ptr %i.n, align 4, !tbaa !70
  %i.aw = load float, ptr %i.o, align 8, !tbaa !70
  %i.ax = load float, ptr %i.p, align 4, !tbaa !70
  %i.ay = load float, ptr %i.s, align 8, !tbaa !70
  %i.az = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.as, float noundef %i.at, float noundef %i.au, float noundef %i.av, float noundef %i.aw, float noundef %i.ax, float noundef %i.ay, float noundef %i.az, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !70 ; 5 uses
  %i.bc = load float, ptr %i.p, align 4, !tbaa !70 ; 4 uses
  %i.bd = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 3 uses
  %i.be = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 3 uses
  %i.bf = load <2 x float>, ptr %i.n, align 4, !tbaa !70 ; 6 uses
  %i.bg = fsub <2 x float> %i.be, %i.bd           ; 4 uses
  %i.bh = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.bi = fmul float %i.bh, -2.000000e+00
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bc, float 2.000000e+00, float %i.bi)
  %i.bk = extractelement <2 x float> %i.bg, i64 1
  %i.bl = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = insertelement <2 x float> %i.bf, float %i.bc, i64 1
  %i.bn = fsub <2 x float> %i.bl, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fsub <2 x float> %i.bf, %i.bp           ; 2 uses
  %i.br = fneg <2 x float> %i.bq
  %i.bs = fcmp olt float %i.bb, %i.bh
  %i.bt = extractelement <2 x float> %i.bf, i64 0
  %i.bu = fcmp olt float %i.bb, %i.bt
  %i.bv = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 4 uses
  %i.bw = load float, ptr %i.t, align 4, !tbaa !70
  %i.bx = extractelement <2 x float> %i.bv, i64 0
  %i.by = fneg float %i.bx
  %i.bz = fneg float %i.bw
  %foldExtExtBinop = fmul <2 x float> %i.bg, %i.bv ; 2 uses
  %i.ca = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bk, float %i.bj) ; 2 uses
  %i.cc = insertelement <2 x float> %i.bv, float %i.by, i64 0
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.bg, <2 x float> %i.bn)
  %i.ce = fmul <2 x float> %i.cd, splat (float 4.000000e+00)
  %i.cf = fmul <2 x float> %i.ce, %i.br
  %i.cg = insertelement <2 x float> %foldExtExtBinop, float %i.cb, i64 1 ; 2 uses
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cg, <2 x float> %i.cf) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = tail call noundef float @sqrtf(float noundef %i.ci) #22
  %i.ck = fadd float %i.ca, %i.cj
  %i.cl = extractelement <2 x float> %i.ch, i64 1
  %i.cm = tail call noundef float @sqrtf(float noundef %i.cl) #22
  %i.cn = fadd float %i.cb, %i.cm
  %i.co = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.bb, i64 2
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.cq = shufflevector <2 x float> %i.bq, <2 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float %i.bc, i64 3 ; 2 uses
  %i.cs = fmul <4 x float> %i.cp, %i.cr
  %i.ct = fsub <4 x float> %i.cp, %i.cr
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cv = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.cw = insertelement <4 x float> %i.cv, float %i.ck, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.cn, i64 1
  %i.cy = fdiv <4 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.da = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.bg, <2 x float> %i.da) ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = extractelement <2 x float> %i.db, i64 1
  %i.de = select i1 %i.bs, float %i.dc, float %i.dd
  %i.df = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 0, i32 3>
  %i.dg = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dh = fadd <2 x float> %i.df, %i.dg           ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0
  %i.dj = select i1 %i.bu, float %i.di, float %i.de
  %i.dk = fcmp olt float %i.bb, %i.bc
  %i.dl = extractelement <2 x float> %i.dh, i64 1
  %i.dm = select i1 %i.dk, float %i.dj, float %i.dl
  store float %i.dm, ptr %i.ba, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dn = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.dn, ptr %6, align 8, !tbaa !70
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !70
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.dp, ptr %i.dq, align 8, !tbaa !70
  %i.dr = load float, ptr %i.i, align 4, !tbaa !70
  %i.ds = load float, ptr %i.j, align 8, !tbaa !70
  %i.dt = load float, ptr %i.k, align 4, !tbaa !70
  %i.du = load float, ptr %i.n, align 4, !tbaa !70
  %i.dv = load float, ptr %i.o, align 8, !tbaa !70
  %i.dw = load float, ptr %i.p, align 4, !tbaa !70
  %i.dx = load float, ptr %i.s, align 8, !tbaa !70
  %i.dy = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.dr, float noundef %i.ds, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, float noundef %i.dw, float noundef %i.dx, float noundef %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #15 align 2 {
bb.a:
  %.sink.idx = select i1 %3, i64 0, i64 192
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.idx
  %i.a = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %.sink, i32 noundef %2) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.c = zext i1 %3 to i64                        ; 4 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = zext nneg i32 %2 to i64                  ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.e ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.e ; 2 uses
  %8 = load float, ptr %i.p, align 4, !tbaa !70   ; 5 uses
  %i.q = load float, ptr %i.f, align 8, !tbaa !70 ; 13 uses
  %9 = load float, ptr %5, align 4, !tbaa !70     ; 14 uses
  %10 = load float, ptr %i.i, align 8, !tbaa !70  ; 5 uses
  %11 = load float, ptr %6, align 4, !tbaa !70    ; 3 uses
  %12 = load float, ptr %i.l, align 8, !tbaa !70  ; 7 uses
  %13 = load float, ptr %7, align 4, !tbaa !70    ; 5 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !70 ; 4 uses
  %i.s = fsub float 2.000000e+00, %i.a
  %i.t = select i1 %3, float %i.s, float %i.a     ; 2 uses
  %i.u = fcmp olt float %i.t, 1.000000e+00
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = fsub float %8, %i.q                      ; 2 uses
  %14 = fsub float %9, %i.q                       ; 2 uses
  %i.w = fdiv float %i.v, %14                     ; 2 uses
  %i.x = fmul float %14, %i.w
  %i.y = fmul float %i.w, 5.000000e-01
  %15 = fsub float %13, %12
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %15, float %12)
  %16 = tail call float @llvm.fmuladd.f32(float %i.x, float %i.z, float %10)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.v, float %12, float %10)
  %i.ab = fcmp olt float %8, %i.q
  %17 = select i1 %i.ab, float %i.aa, float %16
  %18 = fsub float %8, %9
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %13, float %11)
  %i.ac = fcmp olt float %8, %9
  %i.ad = select i1 %i.ac, float %17, float %19
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.ae = fcmp ogt float %i.t, 1.000000e+00
  br i1 %i.ae, label %bb.e, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.e:                                             ; preds = %bb.d
  %..i = select i1 %3, float %9, float %i.q       ; 2 uses
  %i.af = fsub float %8, %..i
  %i.ag = fsub float %13, %12                     ; 2 uses
  %i.ah = fmul float %i.ag, 5.000000e-01
  %i.ai = fsub float %9, %i.q                     ; 6 uses
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = fmul float %i.ai, %12                   ; 3 uses
  %i.al = fmul float %i.aj, 4.000000e+00
  %i.am = tail call float @llvm.fmuladd.f32(float %i.af, float %i.r, float %..i) ; 6 uses
  %i.an = fsub float %10, %i.am                   ; 2 uses
  %i.ao = fneg float %i.an
  %i.ap = fmul float %i.al, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.ap)
  %i.ar = tail call noundef float @sqrtf(float noundef %i.aq) #22
  %i.as = fadd float %i.ak, %i.ar
  %i.at = fsub float %i.am, %10
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.an, i64 1
  %i.aw = fmul <2 x float> %i.av, <float 1.000000e+00, float -2.000000e+00>
  %20 = insertelement <2 x float> poison, float %12, i64 0
  %i.ax = insertelement <2 x float> %20, float %i.as, i64 1
  %i.ay = fdiv <2 x float> %i.aw, %i.ax           ; 2 uses
  %i.az = extractelement <2 x float> %i.ay, i64 1
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ai, float %i.q)
  %21 = extractelement <2 x float> %i.ay, i64 0
  %22 = fadd float %i.q, %21
  %i.bb = fcmp olt float %i.am, %10
  %i.bc = select i1 %i.bb, float %22, float %i.ba ; 2 uses
  br i1 %3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = fsub float %i.bc, %i.q
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ai, i64 1
  %i.bg = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv <2 x float> %i.bf, %i.bh
  %23 = insertelement <2 x float> poison, float %i.q, i64 0
  %i.bj = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fadd <2 x float> %i.bj, %i.bi           ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ai, float 9.900000e-01, float %i.q) ; 2 uses
  %i.bm = fsub float %i.bl, %i.q
  %i.bn = fmul float %i.bm, %i.ag
  %i.bo = fdiv float %i.bn, %i.ai
  %i.bp = fadd float %12, %i.bo
  %i.bq = fdiv float 1.000000e+00, %i.bp
  %i.br = fdiv float 1.000000e+00, %13            ; 2 uses
  %i.bs = fsub float %9, %i.bl
  %i.bt = fneg float %9
  %24 = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bu = insertelement <2 x float> %24, float %i.am, i64 1
  %i.bv = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.q, i64 1
  %i.bx = fsub <2 x float> %i.bu, %i.bw
  %i.by = fmul <2 x float> %i.bx, <float 5.000000e-01, float 1.000000e+00>
  %i.bz = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.r, i64 1
  %i.cb = fdiv <2 x float> %i.by, %i.ca           ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 3 uses
  %i.cd = fmul float %i.cc, -2.000000e+00
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %9, float %i.br) ; 2 uses
  %i.cf = fneg float %i.ce
  %i.cg = extractelement <2 x float> %i.bk, i64 1
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cf, float %9, float %i.cg)
  %i.ci = fmul float %i.cc, %i.bt
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %9, float %i.ch)
  %25 = extractelement <2 x float> %i.cb, i64 1
  %26 = fadd float %i.q, %25                      ; 3 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cc, float %26, float %i.ce)
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %26, float %i.cj)
  %i.cm = fcmp olt float %26, %9
  %i.cn = extractelement <2 x float> %i.bk, i64 0
  %i.co = select i1 %i.cm, float %i.cn, float %i.cl
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.cp = fsub float %i.am, %11
  %i.cq = fdiv float %i.cp, %13
  %i.cr = fadd float %9, %i.cq
  %i.cs = fcmp olt float %i.am, %11
  %i.ct = select i1 %i.cs, float %i.bc, float %i.cr
  %i.cu = fsub float %i.ct, %9
  %i.cv = fdiv float %i.cu, %i.r
  %i.cw = fadd float %9, %i.cv
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.c
  %.0.sink.i = phi float [ %i.ad, %bb.c ], [ %i.cw, %bb.g ], [ %i.co, %bb.f ]
  store float %.0.sink.i, ptr %i.p, align 4, !tbaa !70
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.h:                                             ; preds = %bb.a
  %i.cx = load float, ptr %4, align 4, !tbaa !70  ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cz = load float, ptr %i.i, align 8, !tbaa !70 ; 5 uses
  %i.da = load float, ptr %6, align 4, !tbaa !70  ; 5 uses
  %i.db = load <2 x float>, ptr %i.cy, align 4, !tbaa !70 ; 6 uses
  %i.dc = load <2 x float>, ptr %i.f, align 8, !tbaa !70 ; 5 uses
  %i.dd = load float, ptr %5, align 4, !tbaa !70  ; 16 uses
  %i.de = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 6 uses
  %i.df = load float, ptr %7, align 4, !tbaa !70  ; 6 uses
  %i.dg = load float, ptr %i.o, align 4, !tbaa !70 ; 6 uses
  %i.dh = fsub float 2.000000e+00, %i.a
  %i.di = select i1 %3, float %i.dh, float %i.a   ; 2 uses
  %i.dj = fcmp olt float %i.di, 1.000000e+00
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dk = extractelement <2 x float> %i.dc, i64 0 ; 3 uses
  %i.dl = fsub float %i.cx, %i.dk                 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fsub <2 x float> %i.db, %i.dm           ; 2 uses
  %i.do = fsub float %i.dd, %i.dk                 ; 3 uses
  %i.dp = fdiv float %i.dl, %i.do                 ; 2 uses
  %i.dq = fmul float %i.do, %i.dp
  %i.dr = fmul float %i.dp, 5.000000e-01
  %i.ds = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.dt = fsub float %i.df, %i.ds                 ; 2 uses
  %i.du = fmul float %i.dr, %i.dt
  %i.dv = fadd float %i.ds, %i.du
  %i.dw = fmul float %i.dq, %i.dv
  %i.dx = fmul float %i.dl, %i.ds
  %i.dy = fcmp olt float %i.cx, %i.dk
  %.v640.i = select i1 %i.dy, float %i.dx, float %i.dw
  %i.dz = fadd float %i.cz, %.v640.i
  %i.ea = fcmp olt <2 x float> %i.db, %i.dm
  %i.eb = fsub float %i.cx, %i.dd
  %i.ec = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ed = fsub <2 x float> %i.db, %i.ec
  %i.ee = fmul float %i.eb, %i.df
  %i.ef = fadd float %i.da, %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.do, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ei = fdiv <2 x float> %i.dn, %i.eh           ; 2 uses
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %i.ek = fmul <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.el = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ek, %i.em
  %i.eo = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fadd <2 x float> %i.eo, %i.en
  %i.eq = fmul <2 x float> %i.ej, %i.ep
  %i.er = fmul <2 x float> %i.dn, %i.eo
  %i.es = select <2 x i1> %i.ea, <2 x float> %i.er, <2 x float> %i.eq
  %i.et = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fadd <2 x float> %i.eu, %i.es
  %i.ew = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul <2 x float> %i.ed, %i.ew
  %i.ey = insertelement <2 x float> poison, float %i.da, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fadd <2 x float> %i.ez, %i.ex
  %i.fb = fcmp olt float %i.cx, %i.dd
  %i.fc = select i1 %i.fb, float %i.dz, float %i.ef
  %i.fd = fcmp olt <2 x float> %i.db, %i.ec
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.ev, <2 x float> %i.fa
  store float %i.fc, ptr %4, align 4, !tbaa !70
  br label %.sink.split.i52

bb.j:                                             ; preds = %bb.h
  %i.ff = fcmp ogt float %i.di, 1.000000e+00
  br i1 %i.ff, label %bb.k, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.fg = extractelement <2 x float> %i.dc, i64 0 ; 10 uses
  %..i51 = select i1 %3, float %i.dd, float %i.fg ; 3 uses
  %i.fh = extractelement <2 x float> %i.db, i64 1
  %i.fi = fsub float %i.fh, %..i51
  %i.fj = fmul float %i.fi, %i.dg
  %i.fk = fadd float %..i51, %i.fj                ; 5 uses
  %i.fl = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.fm = fsub float %i.df, %i.fl                 ; 2 uses
  %i.fn = fmul float %i.fm, 5.000000e-01
  %i.fo = fsub float %i.dd, %i.fg                 ; 7 uses
  %i.fp = fmul float %i.fo, %i.fn
  %i.fq = fmul float %i.fo, %i.fl                 ; 4 uses
  %i.fr = fmul float %i.fq, %i.fq                 ; 3 uses
  %i.fs = fmul float %i.fp, 4.000000e+00          ; 3 uses
  %i.ft = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fu = insertelement <2 x float> %i.ft, float %i.cx, i64 0
  %i.fv = insertelement <2 x float> poison, float %..i51, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fx = fsub <2 x float> %i.fu, %i.fw
  %i.fy = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ga = fmul <2 x float> %i.fx, %i.fz
  %i.gb = fadd <2 x float> %i.fw, %i.ga           ; 6 uses
  %i.gc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ge = fsub <2 x float> %i.gd, %i.gb           ; 3 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = fmul float %i.fs, %i.gf
  %i.gh = extractelement <2 x float> %i.ge, i64 1
  %i.gi = fmul float %i.fs, %i.gh
  %i.gj = fsub float %i.fr, %i.gg
  %i.gk = fsub float %i.fr, %i.gi
  %i.gl = tail call float @sqrtf(float noundef %i.gj) #22
  %i.gm = tail call float @sqrtf(float noundef %i.gk) #22
  %i.gn = fmul <2 x float> %i.ge, splat (float -2.000000e+00)
  %i.go = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.gm, i64 1
  %i.gs = fadd <2 x float> %i.gp, %i.gr
  %i.gt = fdiv <2 x float> %i.gn, %i.gs
  %i.gu = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.cz, i64 1 ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gx = fsub <2 x float> %i.gv, %i.gw           ; 2 uses
  %i.gy = extractelement <2 x float> %i.gx, i64 1
  %i.gz = fmul float %i.fs, %i.gy
  %i.ha = fsub float %i.fr, %i.gz
  %i.hb = fmul <2 x float> %i.gx, <float 1.000000e+00, float -2.000000e+00>
  %i.hc = tail call float @sqrtf(float noundef %i.ha) #22
  %i.hd = fadd float %i.fq, %i.hc
  %i.he = insertelement <2 x float> %i.de, float %i.hd, i64 1
  %i.hf = fdiv <2 x float> %i.hb, %i.he           ; 2 uses
  %i.hg = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x float> %i.hh, %i.gt
  %i.hj = extractelement <2 x float> %i.hf, i64 1
  %i.hk = fmul float %i.fo, %i.hj
  %i.hl = fsub <2 x float> %i.gb, %i.gd
  %i.hm = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fdiv <2 x float> %i.hl, %i.hm
  %i.ho = fcmp olt <2 x float> %i.gb, %i.gd
  %i.hp = select <2 x i1> %i.ho, <2 x float> %i.hn, <2 x float> %i.hi
  %i.hq = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.hr = fadd <2 x float> %i.hq, %i.hp           ; 2 uses
  %i.hs = fcmp olt float %i.fk, %i.cz
  %i.ht = extractelement <2 x float> %i.hf, i64 0
  %.v639.i = select i1 %i.hs, float %i.ht, float %i.hk
  %i.hu = fadd float %i.fg, %.v639.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hv = fsub float %i.hu, %i.fg
  %i.hw = fdiv float %i.hv, %i.dg
  %i.hx = fadd float %i.fg, %i.hw
  %i.hy = fdiv float %i.fo, %i.dg
  %i.hz = fadd float %i.fg, %i.hy
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.fo, float 9.900000e-01, float %i.fg) ; 2 uses
  %i.ib = fsub float %i.ia, %i.fg
  %i.ic = fmul float %i.ib, %i.fm
  %i.id = fdiv float %i.ic, %i.fo
  %i.ie = fadd float %i.fl, %i.id
  %i.if = insertelement <2 x float> poison, float %i.df, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ie, i64 1
  %i.ih = fdiv <2 x float> splat (float 1.000000e+00), %i.ig ; 3 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0
  %shift17 = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop18 = fsub <2 x float> %i.ih, %shift17
  %i.ij = extractelement <2 x float> %foldExtExtBinop18, i64 0
  %i.ik = fmul float %i.ij, 5.000000e-01
  %i.il = fsub float %i.dd, %i.ia
  %i.im = fdiv float %i.ik, %i.il                 ; 4 uses
  %i.in = fmul float %i.im, -2.000000e+00
  %i.io = fneg float %i.dd
  %i.ip = fmul float %i.im, %i.io
  %i.iq = fsub float %i.fk, %i.fg
  %i.ir = fdiv float %i.iq, %i.dg
  %i.is = fadd float %i.fg, %i.ir                 ; 3 uses
  %i.it = fmul float %i.is, %i.im
  %i.iu = fsub <2 x float> %i.hr, %i.hq
  %i.iv = fdiv <2 x float> %i.iu, %i.fz
  %i.iw = fadd <2 x float> %i.hq, %i.iv
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.in, float %i.dd, float %i.ii) ; 3 uses
  %i.iy = fneg float %i.ix
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.dd, float %i.hz)
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.dd, float %i.iz) ; 2 uses
  %i.jb = fsub <2 x float> %i.gb, %i.hq
  %i.jc = fdiv <2 x float> %i.jb, %i.fz
  %i.jd = fadd <2 x float> %i.hq, %i.jc           ; 3 uses
  %i.je = insertelement <2 x float> poison, float %i.im, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.jd, %i.jf
  %i.jh = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fadd <2 x float> %i.jg, %i.ji
  %i.jk = fadd float %i.it, %i.ix
  %i.jl = fmul <2 x float> %i.jd, %i.jj
  %i.jm = fmul float %i.is, %i.jk
  %i.jn = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fadd <2 x float> %i.jo, %i.jl
  %i.jq = fadd float %i.ja, %i.jm
  %i.jr = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fcmp olt <2 x float> %i.jd, %i.js
  %i.ju = select <2 x i1> %i.jt, <2 x float> %i.iw, <2 x float> %i.jp
  %i.jv = fcmp olt float %i.is, %i.dd
  %i.jw = select i1 %i.jv, float %i.hx, float %i.jq
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.jx = insertelement <2 x float> poison, float %i.da, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jz = fsub <2 x float> %i.gb, %i.jy
  %i.ka = fsub float %i.fk, %i.da
  %i.kb = fdiv float %i.ka, %i.df
  %i.kc = fadd float %i.dd, %i.kb
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
  %i.gh = fadd <2 x float> %i.gg, %i.gf
  %i.gi = extractelement <2 x float> %i.du, i64 1
  %i.gj = fcmp olt float %i.dp, %i.gi
  %i.gk = select i1 %i.gj, float %i.fm, float %i.fo
  %i.gl = fcmp olt <2 x float> %i.dr, %i.fi
  %i.gm = select <2 x i1> %i.gl, <2 x float> %i.gd, <2 x float> %i.gh
  store float %i.gk, ptr %4, align 4, !tbaa !70
  br label %.sink.split.i52

bb.j:                                             ; preds = %bb.h
  %i.gn = fcmp ogt float %i.dz, 1.000000e+00
  br i1 %i.gn, label %bb.k, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBRevIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.go = extractelement <2 x float> %i.ds, i64 0 ; 9 uses
  %..i51 = select i1 %3, float %i.dt, float %i.go ; 3 uses
  %i.gp = extractelement <2 x float> %i.dr, i64 1
  %i.gq = fsub float %i.gp, %..i51
  %i.gr = fmul float %i.gq, %i.dx
  %i.gs = fadd float %..i51, %i.gr                ; 4 uses
  %i.gt = fsub float %i.gs, %i.go                 ; 3 uses
  %i.gu = fmul float %i.dw, %i.gt
  %i.gv = extractelement <2 x float> %i.du, i64 0
  %i.gw = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gx = insertelement <2 x float> %i.gw, float %i.dp, i64 0
  %i.gy = insertelement <2 x float> poison, float %..i51, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fsub <2 x float> %i.gx, %i.gz
  %i.hb = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hd = fmul <2 x float> %i.ha, %i.hc
  %i.he = fadd <2 x float> %i.gz, %i.hd           ; 4 uses
  %i.hf = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.hg = fsub <2 x float> %i.he, %i.hf           ; 3 uses
  %i.hh = shufflevector <2 x float> %i.dv, <2 x float> %i.ds, <2 x i32> <i32 3, i32 1>
  %i.hi = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hj = shufflevector <2 x float> %i.ds, <2 x float> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.hk = fsub <2 x float> %i.hh, %i.hj           ; 4 uses
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = fdiv <2 x float> %i.hg, %i.hl           ; 2 uses
  %i.hn = extractelement <2 x float> %i.hk, i64 0 ; 5 uses
  %i.ho = fdiv float %i.gt, %i.hn                 ; 2 uses
  %i.hp = fmul <2 x float> %i.hl, %i.hm
  %i.hq = fmul float %i.hn, %i.ho
  %i.hr = fmul <2 x float> %i.hm, splat (float 5.000000e-01)
  %i.hs = fmul float %i.ho, 5.000000e-01
  %i.ht = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x float> %i.ht, %i.hr
  %i.hv = extractelement <2 x float> %i.hk, i64 1 ; 2 uses
  %i.hw = fmul float %i.hv, %i.hs
  %i.hx = fadd <2 x float> %i.hi, %i.hu
  %i.hy = fadd float %i.dw, %i.hw
  %i.hz = fmul <2 x float> %i.hp, %i.hx
  %i.ia = fmul float %i.hq, %i.hy
  %i.ib = fmul <2 x float> %i.hi, %i.hg
  %i.ic = fcmp olt <2 x float> %i.he, %i.hf
  %i.id = select <2 x i1> %i.ic, <2 x float> %i.ib, <2 x float> %i.hz
  %i.ie = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fadd <2 x float> %i.ie, %i.id           ; 2 uses
  %i.ig = fcmp olt float %i.gs, %i.go
  %.v680.i = select i1 %i.ig, float %i.gu, float %i.ia
  %i.ih = fadd float %i.gv, %.v680.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ii = fsub float %i.ih, %i.go
  %i.ij = fdiv float %i.ii, %i.dx
  %i.ik = fadd float %i.go, %i.ij
  %i.il = fdiv float %i.hn, %i.dx
  %i.im = fadd float %i.go, %i.il
  %i.in = tail call float @llvm.fmuladd.f32(float %i.hn, float 9.900000e-01, float %i.go) ; 2 uses
  %i.io = fsub float %i.in, %i.go
  %i.ip = fmul float %i.io, %i.hv
  %i.iq = fdiv float %i.ip, %i.hn
  %i.ir = fadd float %i.dw, %i.iq
  %i.is = fdiv float 1.000000e+00, %i.ir
  %i.it = extractelement <2 x float> %i.dv, i64 1
  %i.iu = fdiv float 1.000000e+00, %i.it          ; 2 uses
  %i.iv = fsub float %i.iu, %i.is
  %i.iw = fmul float %i.iv, 5.000000e-01
  %i.ix = fsub float %i.dt, %i.in
  %i.iy = fdiv float %i.iw, %i.ix                 ; 4 uses
  %i.iz = fmul float %i.iy, -2.000000e+00
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.dt, float %i.iu) ; 6 uses
  %i.jb = fneg float %i.ja
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.dt, float %i.im)
  %i.jd = fneg float %i.dt
  %i.je = fmul float %i.iy, %i.jd
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float %i.dt, float %i.jc) ; 3 uses
  %i.jg = fdiv float %i.gt, %i.dx
  %i.jh = fadd float %i.go, %i.jg                 ; 2 uses
  %i.ji = fsub float %i.jf, %i.jh                 ; 2 uses
  %i.jj = fmul float %i.ja, %i.ja                 ; 3 uses
  %i.jk = fmul float %i.iy, 4.000000e+00          ; 3 uses
  %i.jl = fmul float %i.jk, %i.ji
  %i.jm = fsub float %i.jj, %i.jl
  %i.jn = fmul float %i.ji, -2.000000e+00
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.dt, float %i.ja)
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jo, float %i.dt, float %i.jf) ; 2 uses
  %i.jq = fsub <2 x float> %i.if, %i.hf
  %i.jr = fdiv <2 x float> %i.jq, %i.hc
  %i.js = fadd <2 x float> %i.hf, %i.jr
  %i.jt = fdiv <2 x float> %i.hg, %i.hc
  %i.ju = fadd <2 x float> %i.hf, %i.jt           ; 2 uses
  %i.jv = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fsub <2 x float> %i.jw, %i.ju           ; 3 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 0
  %i.jz = fmul float %i.jk, %i.jy
  %i.ka = extractelement <2 x float> %i.jx, i64 1
  %i.kb = fmul float %i.jk, %i.ka
  %i.kc = fsub float %i.jj, %i.jz
  %i.kd = fsub float %i.jj, %i.kb
  %i.ke = tail call float @sqrtf(float noundef %i.kc) #22
  %i.kf = tail call float @sqrtf(float noundef %i.kd) #22
  %i.kg = tail call float @sqrtf(float noundef %i.jm) #22
  %i.kh = fmul <2 x float> %i.jx, splat (float -2.000000e+00)
  %i.ki = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.kf, i64 1
  %i.km = fadd <2 x float> %i.kj, %i.kl
  %i.kn = fadd float %i.ja, %i.kg
  %i.ko = fdiv <2 x float> %i.kh, %i.km
  %i.kp = fdiv float %i.jn, %i.kn
  %i.kq = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fcmp olt <2 x float> %i.ju, %i.kr
  %i.kt = select <2 x i1> %i.ks, <2 x float> %i.js, <2 x float> %i.ko
  %i.ku = fcmp olt float %i.jh, %i.jp
  %i.kv = select i1 %i.ku, float %i.ik, float %i.kp
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.kw = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kx = fsub <2 x float> %i.he, %i.kw
  %i.ky = fsub float %i.gs, %i.dt
  %i.kz = extractelement <2 x float> %i.dv, i64 1
  %i.la = fmul float %i.kz, %i.ky
  %i.lb = extractelement <2 x float> %i.du, i64 1
  %i.lc = fadd float %i.lb, %i.la
  %i.ld = fcmp olt <2 x float> %i.he, %i.kw
  %i.le = fcmp olt float %i.gs, %i.dt
  %i.lf = select i1 %i.le, float %i.ih, float %i.lc
  %i.lg = fsub float %i.lf, %i.dt
  %i.lh = fdiv float %i.lg, %i.dx
  %i.li = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fmul <2 x float> %i.li, %i.kx
  %i.lk = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ll = fadd <2 x float> %i.lk, %i.lj
  %i.lm = select <2 x i1> %i.ld, <2 x float> %i.if, <2 x float> %i.ll
  %i.ln = fsub <2 x float> %i.lm, %i.kw
  %i.lo = fdiv <2 x float> %i.ln, %i.hc
  %i.lp = fadd <2 x float> %i.kw, %i.lo
  %i.lq = fadd float %i.dt, %i.lh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0574.0.i = phi <2 x float> [ %i.lp, %bb.m ], [ %i.kt, %bb.l ] ; 2 uses
  %.sroa.23.0.i = phi float [ %i.lq, %bb.m ], [ %i.kv, %bb.l ]
  %.sroa.0574.0.vec.extract589.i = extractelement <2 x float> %.sroa.0574.0.i, i64 0
  store float %.sroa.0574.0.vec.extract589.i, ptr %4, align 4, !tbaa !70
  %i.lr = shufflevector <2 x float> %.sroa.0574.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ls = insertelement <2 x float> %i.lr, float %.sroa.23.0.i, i64 1
  br label %.sink.split.i52

.sink.split.i52:                                  ; preds = %bb.n, %bb.i
  %i.lt = phi <2 x float> [ %i.ls, %bb.n ], [ %i.gm, %bb.i ]
  store <2 x float> %i.lt, ptr %i.dq, align 4, !tbaa !70
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBRevIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBRevIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit: ; preds = %.sink.split.i52, %bb.j, %.sink.split.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
  %. = select i1 %3, i64 48, i64 144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.b = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %2) ; 2 uses
  %i.c = fsub float 2.000000e+00, %i.b
  %.0 = select i1 %3, float %i.b, float %i.c      ; 2 uses
  %i.d = fcmp oeq float %.0, 1.000000e+00
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.f = zext i1 %3 to i64                        ; 3 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.f
  %i.h = zext nneg i32 %2 to i64                  ; 5 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.f
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.h ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.h ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.u = fcmp olt float %.0, 1.000000e+00
  %.not82 = icmp eq i32 %2, 3                     ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !70 ; 5 uses
  %i.x = load float, ptr %i.p, align 4, !tbaa !70 ; 4 uses
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 3 uses
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 3 uses
  %i.aa = load <2 x float>, ptr %i.n, align 4, !tbaa !70 ; 6 uses
  %i.ab = fsub <2 x float> %i.z, %i.y             ; 4 uses
  %i.ac = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ad = fmul float %i.ac, -2.000000e+00
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.x, float 2.000000e+00, float %i.ad)
  %i.af = extractelement <2 x float> %i.ab, i64 1
  %i.ag = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = insertelement <2 x float> %i.aa, float %i.x, i64 1
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fsub <2 x float> %i.aa, %i.ak           ; 2 uses
  %i.am = fneg <2 x float> %i.al
  %i.an = fcmp olt float %i.w, %i.ac
  %i.ao = extractelement <2 x float> %i.aa, i64 0
  %i.ap = fcmp olt float %i.w, %i.ao
  %i.aq = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 4 uses
  %i.ar = load float, ptr %i.t, align 4, !tbaa !70
  %i.as = extractelement <2 x float> %i.aq, i64 0
  %i.at = fneg float %i.as
  %i.au = fneg float %i.ar
  %foldExtExtBinop = fmul <2 x float> %i.ab, %i.aq ; 2 uses
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.au, float %i.af, float %i.ae) ; 2 uses
  %i.ax = insertelement <2 x float> %i.aq, float %i.at, i64 0
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ab, <2 x float> %i.ai)
  %i.az = fmul <2 x float> %i.ay, splat (float 4.000000e+00)
  %i.ba = fmul <2 x float> %i.az, %i.am
  %i.bb = insertelement <2 x float> %foldExtExtBinop, float %i.aw, i64 1 ; 2 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bb, <2 x float> %i.ba) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = tail call noundef float @sqrtf(float noundef %i.bd) #22
  %i.bf = fadd float %i.av, %i.be
  %i.bg = extractelement <2 x float> %i.bc, i64 1
  %i.bh = tail call noundef float @sqrtf(float noundef %i.bg) #22
  %i.bi = fadd float %i.aw, %i.bh
  %i.bj = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.w, i64 2
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.bl = shufflevector <2 x float> %i.al, <2 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float %i.x, i64 3 ; 2 uses
  %i.bn = fmul <4 x float> %i.bk, %i.bm
  %i.bo = fsub <4 x float> %i.bk, %i.bm
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.br = insertelement <4 x float> %i.bq, float %i.bf, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bi, i64 1
  %i.bt = fdiv <4 x float> %i.bp, %i.bs           ; 2 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bv = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ab, <2 x float> %i.bv) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = extractelement <2 x float> %i.bw, i64 1
  %i.bz = select i1 %i.an, float %i.bx, float %i.by
  %i.ca = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 3>
  %i.cb = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cc = fadd <2 x float> %i.ca, %i.cb           ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = select i1 %i.ap, float %i.cd, float %i.bz
  %i.cf = fcmp olt float %i.w, %i.x
  %i.cg = extractelement <2 x float> %i.cc, i64 1
  %i.ch = select i1 %i.cf, float %i.ce, float %i.cg
  store float %i.ch, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ci = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.ci, ptr %5, align 8, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.ck, ptr %i.cl, align 8, !tbaa !70
  %i.cm = load float, ptr %i.i, align 4, !tbaa !70
  %i.cn = load float, ptr %i.j, align 8, !tbaa !70
  %i.co = load float, ptr %i.k, align 4, !tbaa !70
  %i.cp = load float, ptr %i.n, align 4, !tbaa !70
  %i.cq = load float, ptr %i.o, align 8, !tbaa !70
  %i.cr = load float, ptr %i.p, align 4, !tbaa !70
  %i.cs = load float, ptr %i.s, align 8, !tbaa !70
  %i.ct = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.cm, float noundef %i.cn, float noundef %i.co, float noundef %i.cp, float noundef %i.cq, float noundef %i.cr, float noundef %i.cs, float noundef %i.ct, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !70 ; 5 uses
  %i.cw = load float, ptr %i.n, align 4, !tbaa !70 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.cy = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fsub <2 x float> %i.da, %i.cx           ; 2 uses
  %i.dc = fsub <2 x float> %i.cy, %i.cx           ; 2 uses
  %i.dd = fdiv <2 x float> %i.db, %i.dc           ; 7 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %i.df = fneg float %i.de
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.de, float 1.000000e+00)
  %7 = extractelement <2 x float> %i.dd, i64 1    ; 2 uses
  %8 = fsub float 1.000000e+00, %7                ; 2 uses
  %9 = fsub float 2.000000e+00, %7
  %10 = load <2 x float>, ptr %i.o, align 4, !tbaa !70 ; 3 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.dh = fmul float %11, %8
  %12 = insertelement <2 x float> %i.dd, float %9, i64 1
  %13 = fmul <2 x float> %12, %10
  %14 = fmul <2 x float> %i.dd, %13
  %15 = insertelement <2 x float> poison, float %i.cw, i64 0
  %16 = insertelement <2 x float> %15, float %i.dh, i64 1
  %17 = insertelement <2 x float> poison, float %i.dg, i64 0
  %18 = insertelement <2 x float> %17, float %8, i64 1
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %18, <2 x float> %14)
  %i.di = extractelement <2 x float> %i.cx, i64 1
  %20 = fcmp olt float %i.cv, %i.di
  %21 = extractelement <2 x float> %i.cx, i64 0
  %22 = fcmp olt float %i.cv, %21
  %23 = extractelement <2 x float> %i.cy, i64 1   ; 2 uses
  %24 = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %25 = insertelement <2 x float> %i.dd, float 1.000000e+00, i64 0
  %26 = insertelement <2 x float> %i.dd, float 1.000000e+00, i64 1
  %27 = fsub <2 x float> %25, %26
  %28 = fmul <2 x float> %27, %24
  %29 = fmul <2 x float> %i.dd, %28
  %30 = fsub float %i.cv, %23
  %31 = shufflevector <2 x float> %i.dc, <2 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %32 = insertelement <4 x float> %31, float %30, i64 3
  %33 = shufflevector <2 x float> %24, <2 x float> %29, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %34 = shufflevector <2 x float> %19, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %35 = insertelement <4 x float> %34, float %i.cw, i64 2
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %33, <4 x float> %35) ; 4 uses
  %i.dj = extractelement <4 x float> %36, i64 0
  %37 = extractelement <4 x float> %36, i64 1
  %i.dk = select i1 %20, float %i.dj, float %37
  %i.dl = extractelement <4 x float> %36, i64 2
  %38 = select i1 %22, float %i.dl, float %i.dk
  %39 = fcmp olt float %i.cv, %23
  %40 = extractelement <4 x float> %36, i64 3
  %i.dm = select i1 %39, float %38, float %40
  store float %i.dm, ptr %i.cu, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dn = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.dn, ptr %6, align 8, !tbaa !70
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !70
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.dp, ptr %i.dq, align 8, !tbaa !70
  %i.dr = load float, ptr %i.i, align 4, !tbaa !70
  %i.ds = load float, ptr %i.j, align 8, !tbaa !70
  %i.dt = load float, ptr %i.k, align 4, !tbaa !70
  %i.du = load float, ptr %i.n, align 4, !tbaa !70
  %i.dv = load float, ptr %i.o, align 8, !tbaa !70
  %i.dw = load float, ptr %i.p, align 4, !tbaa !70
  %i.dx = load float, ptr %i.s, align 8, !tbaa !70
  %i.dy = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.dr, float noundef %i.ds, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, float noundef %i.dw, float noundef %i.dx, float noundef %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, ptr nofree noundef captures(none) %3) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %2) ; 2 uses
  %i.c = fcmp ogt float %i.b, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.c, float %i.b, float f0x3C23D70A ; 2 uses
  %i.d = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.d, float 1.990000e+00, float %.sroa.speculated2.i
  %i.e = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = zext nneg i32 %2 to i64                  ; 4 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.g ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.g ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !70 ; 13 uses
  %i.ad = load float, ptr %i.t, align 4, !tbaa !70
  %i.ae = fcmp ult float %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load float, ptr %i.h, align 8, !tbaa !70
  %i.ag = load float, ptr %i.o, align 8, !tbaa !70
  %i.ah = fsub float %i.ac, %i.ag
  %i.ai = load float, ptr %i.v, align 8, !tbaa !70
  %i.aj = fdiv float %i.ah, %i.ai
  %i.ak = fadd float %i.af, %i.aj
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.al = load float, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.am = fcmp ult float %i.ac, %i.al
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = fsub float %i.al, %i.ac                 ; 2 uses
  %i.ao = load float, ptr %i.z, align 8, !tbaa !70 ; 2 uses
  %i.ap = load float, ptr %i.m, align 4, !tbaa !70
  %i.aq = load float, ptr %i.l, align 8, !tbaa !70 ; 2 uses
  %i.ar = fsub float %i.ap, %i.aq                 ; 3 uses
  %i.as = fmul float %i.ao, %i.ar                 ; 3 uses
  %i.at = load float, ptr %i.aa, align 4, !tbaa !70
  %i.au = fsub float %i.at, %i.ao
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fmul float %i.ar, %i.av
  %i.ax = fmul float %i.aw, 4.000000e+00
  %i.ay = fneg float %i.an
  %i.az = fmul float %i.ax, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.az)
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #22
  %i.bc = fmul float %i.an, 2.000000e+00
  %i.bd = fneg float %i.bb
  %i.be = fsub float %i.bd, %i.as
  %i.bf = fdiv float %i.bc, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ar, float %i.aq)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.bh = load float, ptr %i.r, align 4, !tbaa !70 ; 2 uses
  %i.bi = fcmp ult float %i.ac, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = fsub float %i.bh, %i.ac                 ; 2 uses
  %i.bk = load float, ptr %i.y, align 4, !tbaa !70 ; 2 uses
  %i.bl = load float, ptr %i.l, align 8, !tbaa !70
  %i.bm = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.bn = fsub float %i.bl, %i.bm                 ; 3 uses
  %i.bo = fmul float %i.bk, %i.bn                 ; 3 uses
  %i.bp = load float, ptr %i.z, align 8, !tbaa !70
  %i.bq = fsub float %i.bp, %i.bk
  %i.br = fmul float %i.bq, 5.000000e-01
  %i.bs = fmul float %i.bn, %i.br
  %i.bt = fmul float %i.bs, 4.000000e+00
  %i.bu = fneg float %i.bj
  %i.bv = fmul float %i.bt, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bv)
  %i.bx = tail call noundef float @sqrtf(float noundef %i.bw) #22
  %i.by = fmul float %i.bj, 2.000000e+00
  %i.bz = fneg float %i.bx
  %i.ca = fsub float %i.bz, %i.bo
  %i.cb = fdiv float %i.by, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bn, float %i.bm)
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.cd = load float, ptr %i.q, align 8, !tbaa !70 ; 2 uses
  %i.ce = fcmp ult float %i.ac, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = fsub float %i.cd, %i.ac                 ; 2 uses
  %i.cg = load float, ptr %i.x, align 8, !tbaa !70 ; 2 uses
  %i.ch = load float, ptr %i.k, align 4, !tbaa !70
  %i.ci = load float, ptr %i.j, align 8, !tbaa !70 ; 2 uses
  %i.cj = fsub float %i.ch, %i.ci                 ; 3 uses
  %i.ck = fmul float %i.cg, %i.cj                 ; 3 uses
  %i.cl = load float, ptr %i.y, align 4, !tbaa !70
  %i.cm = fsub float %i.cl, %i.cg
  %i.cn = fmul float %i.cm, 5.000000e-01
  %i.co = fmul float %i.cj, %i.cn
  %i.cp = fmul float %i.co, 4.000000e+00
  %i.cq = fneg float %i.cf
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cr)
  %i.ct = tail call noundef float @sqrtf(float noundef %i.cs) #22
  %i.cu = fmul float %i.cf, 2.000000e+00
  %i.cv = fneg float %i.ct
  %i.cw = fsub float %i.cv, %i.ck
  %i.cx = fdiv float %i.cu, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cj, float %i.ci)
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.cz = load float, ptr %i.p, align 4, !tbaa !70 ; 2 uses
  %i.da = fcmp ult float %i.ac, %i.cz
  br i1 %i.da, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = fsub float %i.cz, %i.ac                 ; 2 uses
  %i.dc = load float, ptr %i.w, align 4, !tbaa !70 ; 2 uses
  %i.dd = load float, ptr %i.j, align 8, !tbaa !70
  %i.de = load float, ptr %i.i, align 4, !tbaa !70 ; 2 uses
  %i.df = fsub float %i.dd, %i.de                 ; 3 uses
  %i.dg = fmul float %i.dc, %i.df                 ; 3 uses
  %i.dh = load float, ptr %i.x, align 8, !tbaa !70
  %i.di = fsub float %i.dh, %i.dc
  %i.dj = fmul float %i.di, 5.000000e-01
  %i.dk = fmul float %i.df, %i.dj
  %i.dl = fmul float %i.dk, 4.000000e+00
  %i.dm = fneg float %i.db
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dn)
  %i.dp = tail call noundef float @sqrtf(float noundef %i.do) #22
  %i.dq = fmul float %i.db, 2.000000e+00
  %i.dr = fneg float %i.dp
  %i.ds = fsub float %i.dr, %i.dg
  %i.dt = fdiv float %i.dq, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.df, float %i.de)
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.dv = load float, ptr %i.o, align 8, !tbaa !70 ; 3 uses
  %i.dw = fcmp ult float %i.ac, %i.dv
  br i1 %i.dw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = fsub float %i.dv, %i.ac                 ; 2 uses
end_hunk_1
