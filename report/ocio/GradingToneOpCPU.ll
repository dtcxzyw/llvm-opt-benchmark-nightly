Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUD0Ev:bb.a
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD2Ev.exit, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !54
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress uwtable
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
  %4 = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
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
  %i.ax = fmul <4 x float> %i.al, %i.am
  %i.ay = load <2 x float>, ptr %i.q, align 4, !tbaa !70
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.av, <4 x float> %i.az) ; 4 uses
  %i.bb = fcmp olt float %i.y, %i.ac
  %i.bc = extractelement <4 x float> %i.ba, i64 0
  %i.bd = extractelement <4 x float> %i.ba, i64 1
  %i.be = select i1 %i.bb, float %i.bc, float %i.bd
  %i.bf = fcmp ogt float %i.y, %i.ab
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bg = load float, ptr %4, align 8, !tbaa !70  ; 2 uses
  %i.bh = load float, ptr %i.u, align 4, !tbaa !70
  %i.bi = fsub float %i.y, %i.ab
  %i.bj = fsub float %i.aa, %i.ab                 ; 2 uses
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = fmul float %i.bk, 5.000000e-01
  %i.bn = fsub float %i.bh, %i.bg
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.bg)
  %i.bp = load float, ptr %i.p, align 8, !tbaa !70
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bo, float %i.bp)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi float [ %i.bq, %bb.d ], [ %i.be, %bb.c ]
  %i.br = fcmp ogt float %i.y, %i.aa
  %i.bs = extractelement <4 x float> %i.ba, i64 2
  %.1 = select i1 %i.br, float %i.bs, float %.0
  %i.bt = extractelement <2 x float> %i.ad, i64 0
  %i.bu = fcmp ogt float %i.y, %i.bt
  %i.bv = extractelement <4 x float> %i.ba, i64 3
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
  %i.dl = fsub <4 x float> %i.dj, %i.dk           ; 8 uses
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
  %i.dx = fdiv <4 x float> %i.du, %i.dl           ; 6 uses
  %i.dy = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fsub <2 x float> %i.cr, %i.dy
  %i.ea = fsub float %i.ck, %i.df
  %i.eb = fsub float %i.de, %i.df                 ; 3 uses
  %i.ec = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fdiv <2 x float> %i.dz, %i.ed           ; 2 uses
  %i.ef = fdiv float %i.ea, %i.eb                 ; 2 uses
  %i.eg = fmul <2 x float> %i.dm, %i.dn
  %5 = extractelement <4 x float> %i.dx, i64 0
  %foldExtExtBinop = fmul <4 x float> %i.dl, %i.dx
  %6 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.eh = fmul <2 x float> %i.dn, splat (float 5.000000e-01)
  %7 = fmul float %5, 5.000000e-01
  %i.ei = load <4 x float>, ptr %i.t, align 8, !tbaa !70 ; 6 uses
  %8 = load float, ptr %i.u, align 4, !tbaa !70   ; 3 uses
  %9 = load float, ptr %4, align 8, !tbaa !70     ; 3 uses
  %10 = load float, ptr %i.cg, align 4, !tbaa !70 ; 3 uses
  %11 = extractelement <4 x float> %i.ei, i64 0   ; 2 uses
  %12 = fsub float %10, %11                       ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %12, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.eh, %i.ek
  %13 = fmul float %7, %12
  %14 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = fadd <2 x float> %14, %i.el
  %16 = fadd float %11, %13
  %i.em = fmul <2 x float> %i.eg, %15
  %17 = fmul float %6, %16
  %i.en = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %18 = fadd <2 x float> %i.eo, %i.em
  %19 = fadd float %i.cl, %17
  %i.ep = fmul <2 x float> %i.do, %i.dp
  %i.eq = fmul <2 x float> %i.dp, splat (float 5.000000e-01)
  %20 = fsub float %9, %10                        ; 2 uses
  %i.er = insertelement <2 x float> poison, float %20, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %i.eq, %i.es
  %21 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %22 = fadd <2 x float> %21, %i.et
  %i.eu = fmul <2 x float> %i.ep, %22
  %23 = insertelement <2 x float> poison, float %i.cm, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fadd <2 x float> %24, %i.eu
  %26 = fmul <2 x float> %i.dq, %i.dr
  %27 = fmul <2 x float> %i.dr, splat (float 5.000000e-01)
  %28 = shufflevector <4 x float> %i.dl, <4 x float> %i.dx, <4 x i32> <i32 1, i32 5, i32 2, i32 6>
  %29 = shufflevector <4 x float> %i.dx, <4 x float> <float poison, float 5.000000e-01, float poison, float 5.000000e-01>, <4 x i32> <i32 1, i32 5, i32 2, i32 7>
  %30 = fmul <4 x float> %28, %29                 ; 4 uses
  %31 = extractelement <4 x float> %30, i64 1
  %32 = fmul float %31, %20
  %33 = fadd float %10, %32
  %34 = extractelement <4 x float> %30, i64 0
  %35 = fmul float %34, %33
  %36 = fadd float %i.cm, %35
  %37 = fsub float %8, %9                         ; 2 uses
  %38 = insertelement <2 x float> poison, float %37, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %27, %39
  %40 = extractelement <4 x float> %30, i64 3
  %41 = fmul float %40, %37
  %42 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %43 = fadd <2 x float> %42, %i.ev
  %44 = fadd float %9, %41
  %45 = fmul <2 x float> %26, %43
  %i.ew = extractelement <4 x float> %30, i64 2
  %46 = fmul float %i.ew, %44
  %47 = insertelement <2 x float> poison, float %i.cn, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fadd <2 x float> %48, %45
  %49 = fadd float %i.cn, %46
  %50 = fmul <2 x float> %i.dv, %i.dw
  %i.ey = extractelement <4 x float> %i.dx, i64 3
  %foldExtExtBinop173 = fmul <4 x float> %i.dl, %i.dx
  %51 = extractelement <4 x float> %foldExtExtBinop173, i64 3
  %i.ez = fmul <2 x float> %i.dw, splat (float 5.000000e-01)
  %52 = fmul float %i.ey, 5.000000e-01
  %53 = load <2 x float>, ptr %i.v, align 8, !tbaa !70 ; 3 uses
  %54 = load float, ptr %i.w, align 4, !tbaa !70  ; 2 uses
  %i.fa = extractelement <2 x float> %53, i64 0   ; 3 uses
  %55 = fsub float %i.fa, %8                      ; 2 uses
  %56 = insertelement <2 x float> poison, float %55, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.ez, %57
  %58 = fmul float %52, %55
  %59 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fc = fadd <2 x float> %59, %i.fb
  %60 = fadd float %8, %58
  %i.fd = fmul <2 x float> %50, %i.fc
  %61 = fmul float %51, %60
  %i.fe = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = fadd <2 x float> %i.ff, %i.fd
  %i.fh = fadd float %i.co, %61
  %i.fi = fmul <2 x float> %i.ed, %i.ee
  %i.fj = fmul float %i.eb, %i.ef
  %i.fk = fmul <2 x float> %i.ee, splat (float 5.000000e-01)
  %i.fl = fmul float %i.ef, 5.000000e-01
  %i.fm = fsub float %54, %i.fa                   ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.fk, %i.fo
  %i.fq = fmul float %i.fl, %i.fm
  %i.fr = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fadd <2 x float> %i.fr, %i.fp
  %i.ft = fadd float %i.fa, %i.fq
  %i.fu = fmul <2 x float> %i.fi, %i.fs
  %i.fv = fmul float %i.fj, %i.ft
  %i.fw = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fadd <2 x float> %i.fx, %i.fu
  %i.fz = fadd float %i.cp, %i.fv
  %i.ga = fmul <2 x float> %i.cv, %14
  %foldExtExtBinop175 = fmul <4 x float> %i.du, %i.ei
  %i.gb = extractelement <4 x float> %foldExtExtBinop175, i64 0
  %i.gc = fadd <2 x float> %i.eo, %i.ga
  %i.gd = fadd float %i.cl, %i.gb
  %i.ge = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gf = fsub <2 x float> %i.cr, %i.ge
  %i.gg = fsub float %i.ck, %i.de
  %i.gh = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x float> %i.gf, %i.gh
  %i.gj = fmul float %i.gg, %54
  %i.gk = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fadd <2 x float> %i.gi, %i.gl
  %i.gn = fadd float %i.gj, %i.cq
  %i.go = fcmp olt <2 x float> %i.cr, %i.cx
  %i.gp = select <2 x i1> %i.go, <2 x float> %18, <2 x float> %25
  %i.gq = extractelement <2 x float> %i.dg, i64 0
  %i.gr = fcmp olt float %i.ck, %i.gq
  %i.gs = select i1 %i.gr, float %19, float %36
  %i.gt = fcmp olt <2 x float> %i.cr, %i.cz
  %i.gu = select <2 x i1> %i.gt, <2 x float> %i.gp, <2 x float> %i.ex
  %i.gv = fcmp olt float %i.ck, %i.dh
  %i.gw = select i1 %i.gv, float %i.gs, float %49
  %i.gx = fcmp olt <2 x float> %i.cr, %i.db
  %i.gy = select <2 x i1> %i.gx, <2 x float> %i.gu, <2 x float> %i.fg
  %i.gz = fcmp olt float %i.ck, %i.ct
  %i.ha = select i1 %i.gz, float %i.gw, float %i.fh
  %i.hb = fcmp olt <2 x float> %i.cr, %i.dy
  %i.hc = select <2 x i1> %i.hb, <2 x float> %i.gy, <2 x float> %i.fy
  %i.hd = fcmp olt float %i.ck, %i.df
  %i.he = select i1 %i.hd, float %i.ha, float %i.fz
  %i.hf = fcmp olt <2 x float> %i.cr, %i.cu
  %i.hg = select <2 x i1> %i.hf, <2 x float> %i.gc, <2 x float> %i.hc
  %i.hh = fcmp olt float %i.ck, %i.cw
  %i.hi = select i1 %i.hh, float %i.gd, float %i.he
  %i.hj = fcmp olt <2 x float> %i.cr, %i.ge
  %i.hk = select <2 x i1> %i.hj, <2 x float> %i.hg, <2 x float> %i.gm
  %i.hl = fcmp olt float %i.ck, %i.de
  %i.hm = select i1 %i.hl, float %i.hi, float %i.gn
  store <2 x float> %i.hk, ptr %3, align 4, !tbaa !70
  store float %i.hm, ptr %i.cj, align 4, !tbaa !70
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.h ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 4 uses
  %i.u = fcmp olt float %.0, 1.000000e+00
  %.not82 = icmp eq i32 %2, 3                     ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !70 ; 5 uses
  %i.x = load float, ptr %i.n, align 4, !tbaa !70 ; 2 uses
  %i.y = load float, ptr %i.o, align 4, !tbaa !70 ; 2 uses
  %i.z = load float, ptr %i.p, align 4, !tbaa !70 ; 2 uses
  %i.aa = load float, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.ab = load float, ptr %i.t, align 4, !tbaa !70 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.ad = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.w, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fsub <2 x float> %i.af, %i.ac           ; 2 uses
  %i.ah = fsub <2 x float> %i.ad, %i.ac           ; 3 uses
  %i.ai = fdiv <2 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 6 uses
  %i.ak = fneg float %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aj, float 1.000000e+00)
  %i.am = fmul float %i.aj, %i.y
  %i.an = fmul float %i.aj, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.x, float %i.al, float %i.an)
  %i.ap = fsub float 1.000000e+00, %i.aj
  %i.aq = fmul float %i.ap, %i.aa
  %i.ar = fmul float %i.aj, %i.aq
  %i.as = extractelement <2 x float> %i.ah, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.as, float %i.ao)
  %i.au = extractelement <2 x float> %i.ai, i64 1 ; 5 uses
  %i.av = fsub float 1.000000e+00, %i.au          ; 2 uses
  %i.aw = fmul float %i.y, %i.av
  %i.ax = fsub float 2.000000e+00, %i.au
  %i.ay = fmul float %i.z, %i.ax
  %i.az = fmul float %i.au, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.av, float %i.az)
  %i.bb = fadd float %i.au, -1.000000e+00
  %i.bc = fmul float %i.bb, %i.ab
  %i.bd = fmul float %i.au, %i.bc
  %i.be = extractelement <2 x float> %i.ah, i64 1
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.be, float %i.ba)
  %i.bg = extractelement <2 x float> %i.ac, i64 1
  %i.bh = fcmp olt float %i.w, %i.bg
  %i.bi = select i1 %i.bh, float %i.at, float %i.bf
  %i.bj = extractelement <2 x float> %i.ag, i64 0
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.aa, float %i.x)
  %i.bl = extractelement <2 x float> %i.ac, i64 0
  %i.bm = fcmp olt float %i.w, %i.bl
  %i.bn = select i1 %i.bm, float %i.bk, float %i.bi
  %i.bo = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.bp = fsub float %i.w, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ab, float %i.z)
  %i.br = fcmp olt float %i.w, %i.bo
  %i.bs = select i1 %i.br, float %i.bn, float %i.bq
  store float %i.bs, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bt = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.bt, ptr %5, align 8, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !70
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bv, ptr %i.bw, align 8, !tbaa !70
  %i.bx = load float, ptr %i.i, align 4, !tbaa !70
  %i.by = load float, ptr %i.j, align 4, !tbaa !70
  %i.bz = load float, ptr %i.k, align 4, !tbaa !70
  %i.ca = load float, ptr %i.n, align 4, !tbaa !70
  %i.cb = load float, ptr %i.o, align 4, !tbaa !70
  %i.cc = load float, ptr %i.p, align 4, !tbaa !70
  %i.cd = load float, ptr %i.s, align 8, !tbaa !70
  %i.ce = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.bx, float noundef %i.by, float noundef %i.bz, float noundef %i.ca, float noundef %i.cb, float noundef %i.cc, float noundef %i.cd, float noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !70 ; 5 uses
  %i.ch = load float, ptr %i.p, align 4, !tbaa !70 ; 4 uses
  %i.ci = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.n, align 4, !tbaa !70 ; 6 uses
  %i.cl = fsub <2 x float> %i.cj, %i.ci           ; 4 uses
  %i.cm = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cn = fmul float %i.cm, -2.000000e+00
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ch, float 2.000000e+00, float %i.cn)
  %i.cp = extractelement <2 x float> %i.cl, i64 1
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = insertelement <2 x float> %i.ck, float %i.ch, i64 1
  %i.cs = fsub <2 x float> %i.cq, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fsub <2 x float> %i.ck, %i.cu           ; 2 uses
  %i.cw = fneg <2 x float> %i.cv
  %i.cx = fcmp olt float %i.cg, %i.cm
  %i.cy = extractelement <2 x float> %i.ck, i64 0
  %i.cz = fcmp olt float %i.cg, %i.cy
  %i.da = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 4 uses
  %i.db = load float, ptr %i.t, align 4, !tbaa !70
  %i.dc = extractelement <2 x float> %i.da, i64 0
  %i.dd = fneg float %i.dc
  %i.de = fneg float %i.db
  %foldExtExtBinop = fmul <2 x float> %i.cl, %i.da ; 2 uses
  %i.df = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.de, float %i.cp, float %i.co) ; 2 uses
  %i.dh = insertelement <2 x float> %i.da, float %i.dd, i64 0
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.cl, <2 x float> %i.cs)
  %i.dj = fmul <2 x float> %i.di, splat (float 4.000000e+00)
  %i.dk = fmul <2 x float> %i.dj, %i.cw
  %i.dl = insertelement <2 x float> %foldExtExtBinop, float %i.dg, i64 1 ; 2 uses
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dl, <2 x float> %i.dk) ; 2 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0
  %i.do = tail call noundef float @sqrtf(float noundef %i.dn) #22
  %i.dp = fadd float %i.df, %i.do
  %i.dq = extractelement <2 x float> %i.dm, i64 1
  %i.dr = tail call noundef float @sqrtf(float noundef %i.dq) #22
  %i.ds = fadd float %i.dg, %i.dr
  %i.dt = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.cg, i64 2
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.dv = shufflevector <2 x float> %i.cv, <2 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.dw = insertelement <4 x float> %i.dv, float %i.ch, i64 3 ; 2 uses
  %i.dx = fmul <4 x float> %i.du, %i.dw
  %i.dy = fsub <4 x float> %i.du, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.eb = insertelement <4 x float> %i.ea, float %i.dp, i64 0
  %i.ec = insertelement <4 x float> %i.eb, float %i.ds, i64 1
  %i.ed = fdiv <4 x float> %i.dz, %i.ec           ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ef = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.cl, <2 x float> %i.ef) ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0
  %i.ei = extractelement <2 x float> %i.eg, i64 1
  %i.ej = select i1 %i.cx, float %i.eh, float %i.ei
  %i.ek = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.el = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.em = fadd <2 x float> %i.ek, %i.el           ; 2 uses
end_hunk_0
