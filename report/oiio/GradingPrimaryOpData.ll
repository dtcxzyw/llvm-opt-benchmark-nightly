inline.NumInlined: 366
inline.NumDeleted: 202
begin_hunk_0_@_ZN16OpenColorIO_v2_520GradingPrimaryOpDataD2Ev:bb.a
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.r) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingPrimaryOpDataD0Ev(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_520GradingPrimaryOpDataE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_520GradingPrimaryOpDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !51
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !76
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !76
  br label %_ZN16OpenColorIO_v2_520GradingPrimaryOpDataD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_520GradingPrimaryOpDataD2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !77
  br label %_ZN16OpenColorIO_v2_520GradingPrimaryOpDataD2Ev.exit

_ZN16OpenColorIO_v2_520GradingPrimaryOpDataD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.r) #17, !inline_history !77
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.8") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !78
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #18, !noalias !78 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !49, !noalias !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !51, !noalias !78
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !7, !noalias !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_520GradingPrimaryOpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(192) %1)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_520GradingPrimaryOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !78

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #19, !noalias !78
  resume { ptr, i32 } %i.e

_ZSt11make_sharedIN16OpenColorIO_v2_520GradingPrimaryOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !52, !alias.scope !78
  store ptr %i.d, ptr %0, align 8, !tbaa !84, !alias.scope !78
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData8validateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(272) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(392) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !9
  tail call void @_ZNK16OpenColorIO_v2_514GradingPrimary8validateENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(272) %i.f, i32 noundef %i.h)
  ret void
}

declare void @_ZNK16OpenColorIO_v2_514GradingPrimary8validateENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(192) %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData10isIdentityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.OpenColorIO_v2_5::GradingPrimary", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !69, !range !70, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %1, i8 0, i64 32, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store <2 x double> splat (double 1.000000e+00), ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x double> splat (double 1.000000e+00), ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, i8 0, i64 96, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <2 x double> splat (double 1.000000e+00), ptr %i.n, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.q = icmp eq i32 %i.g, 0
  %i.r = select i1 %i.q, double -2.000000e-01, double 1.800000e-01
  store double %i.r, ptr %i.p, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.u = tail call noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampBlackEv() ; 2 uses
  store double %i.u, ptr %i.t, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.w = tail call noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampWhiteEv() ; 2 uses
  store double %i.w, ptr %i.v, align 8, !tbaa !44
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(272) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(392) %i.x) ; 15 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 224
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !39
  %i.ae = fcmp oeq double %i.ad, 1.000000e+00
  br i1 %i.ae, label %2, label %bb.p

2:                                                ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %4 = load double, ptr %3, align 8, !tbaa !43
  %5 = fcmp oeq double %i.u, %4
  br i1 %5, label %6, label %bb.p

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %8 = load double, ptr %7, align 8, !tbaa !44
  %9 = fcmp oeq double %i.w, %8
  br i1 %9, label %bb.c, label %bb.p

bb.c:                                             ; preds = %6
  %i.af = load i32, ptr %i.f, align 8, !tbaa !9
  switch i32 %i.af, label %bb.p [
    i32 0, label %bb.d
    i32 1, label %bb.i
    i32 2, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !85
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !86
  %i.al = fcmp oeq double %i.ak, 1.000000e+00
  br i1 %i.al, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.am = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  br i1 %i.am, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ao = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  br i1 %i.ao, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.aq = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
  br i1 %i.aq, label %bb.q, label %bb.p

bb.i:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.as = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
  br i1 %i.as, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.au = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  br i1 %i.au, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ax = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
  br i1 %i.ax, label %bb.q, label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.az = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  br i1 %i.az, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.bb = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  br i1 %i.bb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.be = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.bg = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k, %bb.j, %bb.i, %bb.o, %bb.n, %bb.m, %bb.l, %6, %2, %bb.b
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.k, %bb.h, %bb.p
  %.0 = phi i1 [ false, %bb.p ], [ true, %bb.k ], [ true, %bb.h ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.1 = phi i1 [ %.0, %bb.q ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData9isDynamicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !69, !range !70, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData22getIdentityReplacementEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.11") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(272) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(392) %i.b) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = load double, ptr %i.g, align 8, !tbaa !43 ; 2 uses
  %i.i = tail call noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampBlackEv()
  %i.j = fcmp oeq double %i.h, %i.i               ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef double @_ZN16OpenColorIO_v2_511RangeOpData10EmptyValueEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.m = load double, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %i.n = tail call noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampWhiteEv()
  %i.o = fcmp oeq double %i.m, %i.n
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef double @_ZN16OpenColorIO_v2_511RangeOpData10EmptyValueEv()
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #18, !noalias !87 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !49, !noalias !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.s, align 4, !tbaa !51, !noalias !87
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !tbaa !7, !noalias !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260) %i.t)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !87

common.resume:                                    ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 280) #19, !noalias !87
  br label %common.resume

.thread:                                          ; preds = %bb.c, %bb.d
  %.01720 = phi double [ %i.p, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.v = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #18, !noalias !90 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !49, !noalias !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !51, !noalias !90
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.v, align 8, !tbaa !7, !noalias !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511RangeOpDataC1Edddd(ptr noundef nonnull align 8 dereferenceable(228) %i.y, double noundef %.0, double noundef %.01720, double noundef %.0, double noundef %.01720)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !90

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 248) #19, !noalias !90
  br label %common.resume

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.e
  %.sink24 = phi ptr [ %i.t, %bb.e ], [ %i.y, %.thread ]
  %.sink = phi ptr [ %i.q, %bb.e ], [ %i.v, %.thread ]
  store ptr %.sink24, ptr %0, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.aa, align 8, !tbaa !52
  ret void
}

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampBlackEv() local_unnamed_addr #1

declare noundef double @_ZN16OpenColorIO_v2_511RangeOpData10EmptyValueEv() local_unnamed_addr #1

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampWhiteEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData19hasChannelCrosstalkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(272) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(392) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load double, ptr %i.g, align 8, !tbaa !39
  %i.i = fcmp une double %i.h, 1.000000e+00
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData9isInverseERSt10shared_ptrIKS0_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !69, !range !70, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !69, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load i32, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.o = load i32, ptr %i.n, align 8, !tbaa !9
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_519DynamicPropertyImpl6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %i.b, ptr noundef nonnull align 8 dereferenceable(13) %i.h)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !58
  %i.u = load ptr, ptr %1, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !58
  %i.z = tail call noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef %i.t, i32 noundef %i.y)
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.e ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_519DynamicPropertyImpl6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(13), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #1

declare noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData12getDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.8") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !104
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #18, !noalias !104 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !49, !noalias !104
end_hunk_0
