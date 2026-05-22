inline.NumInlined: 366
inline.NumDeleted: 202
begin_hunk_0_@_ZNK16OpenColorIO_v2_520GradingPrimaryOpData10isIdentityEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !69, !range !70, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.t, label %bb.b

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
  br i1 %i.ae, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %i.ag = load double, ptr %i.af, align 8, !tbaa !43
  %i.ah = fcmp oeq double %i.u, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !44
  %i.ak = fcmp oeq double %i.w, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.f, align 8, !tbaa !9
  switch i32 %i.al, label %bb.r [
    i32 0, label %bb.f
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.an = load double, ptr %i.am, align 8, !tbaa !85
  %i.ao = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !86
  %i.ar = fcmp oeq double %i.aq, 1.000000e+00
  br i1 %i.ar, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.as = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  br i1 %i.as, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.au = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  br i1 %i.au, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.aw = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  br i1 %i.aw, label %bb.s, label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ay = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
  br i1 %i.ay, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ba = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  br i1 %i.ba, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.bd = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
  br i1 %i.bd, label %bb.s, label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.bf = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
  br i1 %i.bf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.bh = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
  br i1 %i.bh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.bk = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.bm = call noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GradingRGBMES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
  br i1 %i.bm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.m, %bb.l, %bb.k, %bb.q, %bb.p, %bb.o, %bb.n, %bb.d, %bb.c, %bb.b
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.m, %bb.j, %bb.r
  %.0 = phi i1 [ false, %bb.r ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  %.1 = phi i1 [ %.0, %bb.s ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData9isDynamicEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #6 align 2 {
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
define hidden void @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData22getIdentityReplacementEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.11") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %.sink24.a = phi ptr [ %i.t, %bb.e ], [ %i.y, %.thread ]
  %.sink.a = phi ptr [ %i.q, %bb.e ], [ %i.v, %.thread ]
  store ptr %.sink24.a, ptr %0, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.a, ptr %i.aa, align 8, !tbaa !52
  ret void
}

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampBlackEv() local_unnamed_addr #1

declare noundef double @_ZN16OpenColorIO_v2_511RangeOpData10EmptyValueEv() local_unnamed_addr #1

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampWhiteEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData19hasChannelCrosstalkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) unnamed_addr #0 align 2 {
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
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData9isInverseERSt10shared_ptrIKS0_E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
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
define hidden noundef i32 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData12getDirectionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #6 align 2 {
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
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !51, !noalias !104
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !7, !noalias !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_520GradingPrimaryOpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(192) %1)
          to label %_ZNK16OpenColorIO_v2_520GradingPrimaryOpData5cloneEv.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !104

common.resume:                                    ; preds = %bb.c, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %i.n, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_520GradingPrimaryOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #19, !noalias !104
  br label %common.resume

_ZNK16OpenColorIO_v2_520GradingPrimaryOpData5cloneEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !52, !alias.scope !104
  store ptr %i.d, ptr %0, align 8, !tbaa !84, !alias.scope !104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !58
  %i.k = invoke noundef i32 @_ZN16OpenColorIO_v2_528GetInverseTransformDirectionENS_18TransformDirectionE(i32 noundef %i.j)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK16OpenColorIO_v2_520GradingPrimaryOpData5cloneEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  tail call void @_ZN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImpl12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(392) %i.m, i32 noundef %i.k) #17
  ret void

bb.c:                                             ; preds = %_ZNK16OpenColorIO_v2_520GradingPrimaryOpData5cloneEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_520GradingPrimaryOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %common.resume
}

declare noundef i32 @_ZN16OpenColorIO_v2_528GetInverseTransformDirectionENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_520GradingPrimaryOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !72
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !72
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
end_hunk_0
