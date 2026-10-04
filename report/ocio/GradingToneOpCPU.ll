Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUD0Ev:bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
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
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !70 ; 9 uses
  %i.aa = load <4 x float>, ptr %i.h, align 8, !tbaa !70 ; 3 uses
  %i.ab = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.ac = load float, ptr %i.j, align 8, !tbaa !70 ; 3 uses
  %i.ad = load float, ptr %i.i, align 4, !tbaa !70
  %i.ae = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 2 uses
  %i.af = load float, ptr %i.m, align 4, !tbaa !70 ; 2 uses
  %i.ag = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aj = shufflevector <4 x float> %i.aa, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.ak = fsub <4 x float> %i.ah, %i.aj           ; 2 uses
  %i.al = shufflevector <4 x float> %i.aa, <4 x float> %i.ai, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.am = fsub <4 x float> %i.al, %i.aj           ; 2 uses
  %i.an = fdiv <4 x float> %i.ak, %i.am           ; 2 uses
  %i.ao = load <4 x float>, ptr %i.t, align 8, !tbaa !70 ; 3 uses
  %i.ap = fmul <4 x float> %i.an, splat (float 5.000000e-01)
  %i.aq = load <2 x float>, ptr %i.w, align 8, !tbaa !70
  %i.ar = load float, ptr %i.x, align 4, !tbaa !70
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> %i.ao, <4 x float> %i.as, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.au = shufflevector <4 x float> %i.ao, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.av = fsub <4 x float> %i.at, %i.au
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.av, <4 x float> %i.au)
  %4 = load <2 x float>, ptr %i.o, align 8, !tbaa !70 ; 2 uses
  %5 = fmul <4 x float> %i.am, %i.an
  %6 = load <2 x float>, ptr %i.q, align 4, !tbaa !70
  %7 = shufflevector <2 x float> %4, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %i.aw, <4 x float> %7) ; 4 uses
  %9 = fcmp olt float %i.z, %i.ad
  %i.ax = extractelement <4 x float> %8, i64 0
  %i.ay = extractelement <4 x float> %8, i64 1
  %i.az = select i1 %9, float %i.ax, float %i.ay
  %i.ba = fcmp ogt float %i.z, %i.ac
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = load float, ptr %i.u, align 8, !tbaa !70 ; 2 uses
  %i.bc = load float, ptr %i.v, align 4, !tbaa !70
  %i.bd = fsub float %i.z, %i.ac
  %i.be = fsub float %i.ab, %i.ac                 ; 2 uses
  %i.bf = fdiv float %i.bd, %i.be                 ; 2 uses
  %i.bg = fmul float %i.be, %i.bf
  %i.bh = fmul float %i.bf, 5.000000e-01
  %i.bi = fsub float %i.bc, %i.bb
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.bb)
  %i.bk = load float, ptr %i.p, align 8, !tbaa !70
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bj, float %i.bk)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi float [ %i.bl, %bb.d ], [ %i.az, %bb.c ]
  %i.bm = fcmp ogt float %i.z, %i.ab
  %10 = extractelement <4 x float> %8, i64 2
  %.1 = select i1 %i.bm, float %10, float %.0
  %i.bn = extractelement <2 x float> %i.ae, i64 0
  %i.bo = fcmp ogt float %i.z, %i.bn
  %11 = extractelement <4 x float> %8, i64 3
  %.2 = select i1 %i.bo, float %11, float %.1
  %i.bp = extractelement <4 x float> %i.aa, i64 0
  %i.bq = fcmp olt float %i.z, %i.bp
  %i.br = extractelement <4 x float> %i.ak, i64 0
  %i.bs = extractelement <4 x float> %i.ao, i64 0
  %12 = extractelement <2 x float> %4, i64 0
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bs, float %12)
  %.3 = select i1 %i.bq, float %i.bt, float %.2
  %i.bu = fcmp ogt float %i.z, %i.af
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bv = load float, ptr %i.r, align 4, !tbaa !70
  %i.bw = fsub float %i.z, %i.af
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ar, float %i.bv)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi float [ %i.bx, %bb.f ], [ %.3, %bb.e ]
  store float %.4, ptr %i.y, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %13 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !70 ; 9 uses
  %i.cb = load float, ptr %i.o, align 8, !tbaa !70 ; 3 uses
  %i.cc = load float, ptr %14, align 4, !tbaa !70 ; 2 uses
  %i.cd = load float, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  %i.ce = load float, ptr %i.q, align 4, !tbaa !70 ; 2 uses
  %i.cf = load float, ptr %13, align 8, !tbaa !70 ; 2 uses
  %i.cg = load float, ptr %i.r, align 4, !tbaa !70 ; 2 uses
  %i.ch = load <2 x float>, ptr %3, align 4, !tbaa !70 ; 12 uses
  %i.ci = load <4 x float>, ptr %i.h, align 8, !tbaa !70 ; 6 uses
  %i.cj = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fsub <2 x float> %i.ch, %i.ck           ; 2 uses
  %i.cm = extractelement <4 x float> %i.ci, i64 0
  %i.cn = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.co = fsub <2 x float> %i.ch, %i.cn
  %i.cp = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cq = fsub <2 x float> %i.ch, %i.cp
  %i.cr = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.cs = fsub <2 x float> %i.ch, %i.cr
  %i.ct = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 4 uses
  %i.cu = load float, ptr %i.m, align 4, !tbaa !70 ; 3 uses
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 3 uses
  %i.cw = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 2 uses
  %i.cx = load float, ptr %i.j, align 8, !tbaa !70
  %i.cy = shufflevector <2 x float> %i.ct, <2 x float> %i.cw, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.cz = insertelement <4 x float> %i.cy, float %i.cj, i64 2 ; 2 uses
  %i.da = shufflevector <4 x float> %i.ci, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 5, i32 6> ; 2 uses
  %i.db = fsub <4 x float> %i.cz, %i.da           ; 8 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fdiv <2 x float> %i.cl, %i.dc           ; 2 uses
  %i.de = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = fdiv <2 x float> %i.co, %i.de           ; 2 uses
  %i.dg = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.dh = fdiv <2 x float> %i.cq, %i.dg           ; 2 uses
  %i.di = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = fsub <4 x float> %i.dj, %i.da           ; 2 uses
  %i.dl = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.dm = fdiv <2 x float> %i.cs, %i.dl           ; 2 uses
  %i.dn = fdiv <4 x float> %i.dk, %i.db           ; 6 uses
  %i.do = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = fsub <2 x float> %i.ch, %i.do
  %i.dq = fsub float %i.ca, %i.cv
  %i.dr = fsub float %i.cu, %i.cv                 ; 3 uses
  %i.ds = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fdiv <2 x float> %i.dp, %i.dt           ; 2 uses
  %i.dv = fdiv float %i.dq, %i.dr                 ; 2 uses
  %i.dw = fmul <2 x float> %i.dc, %i.dd
  %i.dx = extractelement <4 x float> %i.dn, i64 0
  %foldExtExtBinop = fmul <4 x float> %i.db, %i.dn
  %i.dy = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.dz = fmul <2 x float> %i.dd, splat (float 5.000000e-01)
  %i.ea = fmul float %i.dx, 5.000000e-01
  %i.eb = load <4 x float>, ptr %i.t, align 8, !tbaa !70 ; 6 uses
  %i.ec = load float, ptr %i.v, align 4, !tbaa !70 ; 3 uses
  %i.ed = load float, ptr %i.u, align 8, !tbaa !70 ; 3 uses
  %i.ee = load float, ptr %i.by, align 4, !tbaa !70 ; 3 uses
  %i.ef = extractelement <4 x float> %i.eb, i64 0 ; 2 uses
  %i.eg = fsub float %i.ee, %i.ef                 ; 2 uses
  %i.eh = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.dz, %i.ei
  %i.ek = fmul float %i.ea, %i.eg
  %i.el = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = fadd <2 x float> %i.el, %i.ej
  %i.en = fadd float %i.ef, %i.ek
  %i.eo = fmul <2 x float> %i.dw, %i.em
  %i.ep = fmul float %i.dy, %i.en
  %i.eq = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fadd <2 x float> %i.er, %i.eo
  %i.et = fadd float %i.cb, %i.ep
  %i.eu = fmul <2 x float> %i.de, %i.df
  %i.ev = fmul <2 x float> %i.df, splat (float 5.000000e-01)
  %i.ew = fsub float %i.ed, %i.ee                 ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ev, %i.ey
  %i.fa = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = fadd <2 x float> %i.fa, %i.ez
  %i.fc = fmul <2 x float> %i.eu, %i.fb
  %i.fd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fadd <2 x float> %i.fe, %i.fc
  %i.fg = fmul <2 x float> %i.dg, %i.dh
  %i.fh = fmul <2 x float> %i.dh, splat (float 5.000000e-01)
  %i.fi = shufflevector <4 x float> %i.db, <4 x float> %i.dn, <4 x i32> <i32 1, i32 5, i32 2, i32 6>
  %i.fj = shufflevector <4 x float> %i.dn, <4 x float> <float poison, float 5.000000e-01, float poison, float 5.000000e-01>, <4 x i32> <i32 1, i32 5, i32 2, i32 7>
  %i.fk = fmul <4 x float> %i.fi, %i.fj           ; 4 uses
  %i.fl = extractelement <4 x float> %i.fk, i64 1
  %i.fm = fmul float %i.fl, %i.ew
  %i.fn = fadd float %i.ee, %i.fm
  %i.fo = extractelement <4 x float> %i.fk, i64 0
  %i.fp = fmul float %i.fo, %i.fn
  %i.fq = fadd float %i.cc, %i.fp
  %i.fr = fsub float %i.ec, %i.ed                 ; 2 uses
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x float> %i.fh, %i.ft
  %i.fv = extractelement <4 x float> %i.fk, i64 3
  %i.fw = fmul float %i.fv, %i.fr
  %i.fx = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fy = fadd <2 x float> %i.fx, %i.fu
  %i.fz = fadd float %i.ed, %i.fw
  %i.ga = fmul <2 x float> %i.fg, %i.fy
  %i.gb = extractelement <4 x float> %i.fk, i64 2
  %i.gc = fmul float %i.gb, %i.fz
  %i.gd = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fadd <2 x float> %i.ge, %i.ga
  %i.gg = fadd float %i.cd, %i.gc
  %i.gh = fmul <2 x float> %i.dl, %i.dm
  %i.gi = extractelement <4 x float> %i.dn, i64 3
  %foldExtExtBinop173 = fmul <4 x float> %i.db, %i.dn
  %i.gj = extractelement <4 x float> %foldExtExtBinop173, i64 3
  %i.gk = fmul <2 x float> %i.dm, splat (float 5.000000e-01)
  %i.gl = fmul float %i.gi, 5.000000e-01
  %i.gm = load <2 x float>, ptr %i.w, align 8, !tbaa !70 ; 3 uses
  %i.gn = load float, ptr %i.x, align 4, !tbaa !70 ; 2 uses
  %i.go = extractelement <2 x float> %i.gm, i64 0 ; 3 uses
  %i.gp = fsub float %i.go, %i.ec                 ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gk, %i.gr
  %i.gt = fmul float %i.gl, %i.gp
  %i.gu = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gv = fadd <2 x float> %i.gu, %i.gs
  %i.gw = fadd float %i.ec, %i.gt
  %i.gx = fmul <2 x float> %i.gh, %i.gv
  %i.gy = fmul float %i.gj, %i.gw
  %i.gz = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fadd <2 x float> %i.ha, %i.gx
  %i.hc = fadd float %i.ce, %i.gy
  %i.hd = fmul <2 x float> %i.dt, %i.du
  %i.he = fmul float %i.dr, %i.dv
  %i.hf = fmul <2 x float> %i.du, splat (float 5.000000e-01)
  %i.hg = fmul float %i.dv, 5.000000e-01
  %i.hh = fsub float %i.gn, %i.go                 ; 2 uses
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %i.hf, %i.hj
  %i.hl = fmul float %i.hg, %i.hh
  %i.hm = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fadd <2 x float> %i.hm, %i.hk
  %i.ho = fadd float %i.go, %i.hl
  %i.hp = fmul <2 x float> %i.hd, %i.hn
  %i.hq = fmul float %i.he, %i.ho
  %i.hr = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fadd <2 x float> %i.hs, %i.hp
  %i.hu = fadd float %i.cf, %i.hq
  %i.hv = fmul <2 x float> %i.cl, %i.el
  %foldExtExtBinop175 = fmul <4 x float> %i.dk, %i.eb
  %i.hw = extractelement <4 x float> %foldExtExtBinop175, i64 0
  %i.hx = fadd <2 x float> %i.er, %i.hv
  %i.hy = fadd float %i.cb, %i.hw
  %i.hz = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ia = fsub <2 x float> %i.ch, %i.hz
  %i.ib = fsub float %i.ca, %i.cu
  %i.ic = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.id = fmul <2 x float> %i.ia, %i.ic
  %i.ie = fmul float %i.ib, %i.gn
  %i.if = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fadd <2 x float> %i.id, %i.ig
  %i.ii = fadd float %i.ie, %i.cg
  %i.ij = fcmp olt <2 x float> %i.ch, %i.cn
  %i.ik = select <2 x i1> %i.ij, <2 x float> %i.es, <2 x float> %i.ff
  %i.il = extractelement <2 x float> %i.cw, i64 0
  %i.im = fcmp olt float %i.ca, %i.il
  %i.in = select i1 %i.im, float %i.et, float %i.fq
  %i.io = fcmp olt <2 x float> %i.ch, %i.cp
  %i.ip = select <2 x i1> %i.io, <2 x float> %i.ik, <2 x float> %i.gf
  %i.iq = fcmp olt float %i.ca, %i.cx
  %i.ir = select i1 %i.iq, float %i.in, float %i.gg
  %i.is = fcmp olt <2 x float> %i.ch, %i.cr
  %i.it = select <2 x i1> %i.is, <2 x float> %i.ip, <2 x float> %i.hb
  %i.iu = fcmp olt float %i.ca, %i.cj
  %i.iv = select i1 %i.iu, float %i.ir, float %i.hc
  %i.iw = fcmp olt <2 x float> %i.ch, %i.do
  %i.ix = select <2 x i1> %i.iw, <2 x float> %i.it, <2 x float> %i.ht
  %i.iy = fcmp olt float %i.ca, %i.cv
  %i.iz = select i1 %i.iy, float %i.iv, float %i.hu
  %i.ja = fcmp olt <2 x float> %i.ch, %i.ck
  %i.jb = select <2 x i1> %i.ja, <2 x float> %i.hx, <2 x float> %i.ix
  %i.jc = fcmp olt float %i.ca, %i.cm
  %i.jd = select i1 %i.jc, float %i.hy, float %i.iz
  %i.je = fcmp olt <2 x float> %i.ch, %i.hz
  %i.jf = select <2 x i1> %i.je, <2 x float> %i.jb, <2 x float> %i.ih
  %i.jg = fcmp olt float %i.ca, %i.cu
  %i.jh = select i1 %i.jg, float %i.jd, float %i.ii
  store <2 x float> %i.jf, ptr %3, align 4, !tbaa !70
  store float %i.jh, ptr %i.bz, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
end_hunk_0
