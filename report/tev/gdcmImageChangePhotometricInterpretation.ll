Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmImageChangePhotometricInterpretation?download=true
inline.NumInlined: 454
inline.NumDeleted: 269
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4gdcm36ImageChangePhotometricInterpretation13ChangeRGB2YBREv:bb.a
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #20
  br label %common.resume

_ZNK4gdcm12SmartPointerINS_6BitmapEEdeEv.exit:    ; preds = %bb.a
  %i.h = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm6Bitmap28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(106) %i.e)
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.t, label %bb.e

bb.e:                                             ; preds = %_ZNK4gdcm12SmartPointerINS_6BitmapEEdeEv.exit
  %i.m = tail call noundef i64 @_ZNK4gdcm6Bitmap15GetBufferLengthEv(ptr noundef nonnull align 8 dereferenceable(106) %i.e) ; 6 uses
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #24 ; 5 uses
  %i.o = tail call noundef zeroext i1 @_ZNK4gdcm6Bitmap9GetBufferEPc(ptr noundef nonnull align 8 dereferenceable(106) %i.e, ptr noundef %i.n) ; 0 uses
  %i.p = tail call noundef i32 @_ZNK4gdcm6Bitmap22GetPlanarConfigurationEv(ptr noundef nonnull align 8 dereferenceable(106) %i.e)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.r = tail call noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.q)
  %.not53 = icmp eq i16 %i.r, 3
  br i1 %.not53, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.t = load i16, ptr %i.s, align 2, !tbaa !69
  %.not.i55.not = icmp eq i16 %i.t, 0
  br i1 %.not.i55.not, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 30 ; 3 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !71
  switch i16 %i.v, label %bb.s [
    i16 16, label %bb.i
    i16 8, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.w = udiv i64 %i.m, 6
  %.not66 = icmp ult i64 %i.m, 6
  br i1 %.not66, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.j

._crit_edge64:                                    ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.s

bb.j:                                             ; preds = %.lr.ph63, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit
  %.05261 = phi i64 [ 0, %.lr.ph63 ], [ %i.ak, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ] ; 2 uses
  %.idx = mul nuw nsw i64 %.05261, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 3 uses
  %i.ab = load <2 x i16>, ptr %i.aa, align 2, !tbaa !18
  store <2 x i16> %i.ab, ptr %i.a, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !18
  store i16 %i.ad, ptr %i.x, align 4, !tbaa !18
  %i.ae = load i16, ptr %i.y, align 2, !tbaa !81  ; 2 uses
  %i.af = load i16, ptr %i.u, align 2, !tbaa !71
  %.not.i56 = icmp ugt i16 %i.ae, %i.af
  br i1 %.not.i56, label %bb.k, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 131, ptr noundef nonnull @.str.3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #20
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit:     ; preds = %bb.j
  call void @_ZN4gdcm36ImageChangePhotometricInterpretation7RGB2YBRItEEvPT_PKS2_t(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i16 noundef zeroext %i.ae)
  %i.ai = load <2 x i16>, ptr %i.b, align 4, !tbaa !18
  store <2 x i16> %i.ai, ptr %i.aa, align 2, !tbaa !18
  %i.aj = load i16, ptr %i.z, align 4, !tbaa !18
  store i16 %i.aj, ptr %i.ac, align 2, !tbaa !18
  %i.ak = add nuw nsw i64 %.05261, 1              ; 2 uses
  %exitcond67.not = icmp eq i64 %i.ak, %i.w
  br i1 %exitcond67.not, label %._crit_edge64, label %bb.j, !llvm.loop !82

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.al = udiv i64 %i.m, 3
  %.not65 = icmp ult i64 %i.m, 3
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.o

._crit_edge:                                      ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit58, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit58
  %.05160 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit58 ] ; 2 uses
  %i.ar = mul nuw i64 %.05160, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ar ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !55
  store i8 %i.at, ptr %i.c, align 1, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  store i8 %i.av, ptr %i.am, align 1, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !55
  store i8 %i.ax, ptr %i.an, align 1, !tbaa !55
  %i.ay = load i16, ptr %i.ao, align 2, !tbaa !81 ; 2 uses
  %i.az = load i16, ptr %i.u, align 2, !tbaa !71
  %.not.i57 = icmp ugt i16 %i.ay, %i.az
  br i1 %.not.i57, label %bb.p, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit58

bb.p:                                             ; preds = %bb.o
  %i.ba = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 131, ptr noundef nonnull @.str.3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #21
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ba) #20
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit58:   ; preds = %bb.o
  call void @_ZN4gdcm36ImageChangePhotometricInterpretation7RGB2YBRIhEEvPT_PKS2_t(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i16 noundef zeroext %i.ay)
  %i.bc = load i8, ptr %i.d, align 1, !tbaa !55
  store i8 %i.bc, ptr %i.as, align 1, !tbaa !55
  %i.bd = load i8, ptr %i.ap, align 1, !tbaa !55
  store i8 %i.bd, ptr %i.au, align 1, !tbaa !55
  %i.be = load i8, ptr %i.aq, align 1, !tbaa !55
  store i8 %i.be, ptr %i.aw, align 1, !tbaa !55
  %i.bf = add nuw nsw i64 %.05160, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !83

bb.s:                                             ; preds = %bb.h, %._crit_edge, %._crit_edge64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = trunc i64 %i.m to i32
  call void @_ZN4gdcm11DataElement12SetByteValueEPKcNS_2VLE(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef %i.n, i32 %i.bj)
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !9
  call void @_ZN4gdcm6Bitmap28SetPhotometricInterpretationERKNS_25PhotometricInterpretationE(ptr noundef nonnull align 8 dereferenceable(106) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  call void @free(ptr noundef %i.n) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e, %bb.g, %bb.f, %_ZNK4gdcm12SmartPointerINS_6BitmapEEdeEv.exit
  %.1 = phi i1 [ true, %_ZNK4gdcm12SmartPointerINS_6BitmapEEdeEv.exit ], [ true, %bb.s ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm36ImageChangePhotometricInterpretation7RGB2YBRItEEvPT_PKS2_t(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i16 %2, 17
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 82, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #20
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i16, ptr %i.d, align 2, !tbaa !18
  %3 = uitofp i16 %i.e to double                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18
  %i.h = uitofp i16 %i.g to double
  %i.i = load i16, ptr %1, align 2, !tbaa !18
  %4 = uitofp i16 %i.i to double                  ; 2 uses
  %i.j = zext nneg i16 %2 to i32
  %i.k = add nsw i32 %i.j, -1
  %i.l = shl nuw nsw i32 1, %i.k
  %i.m = fmul nnan double %i.h, 5.870000e-01      ; 2 uses
  %i.n = fneg double %i.m
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> <double -2.990000e-01, double 7.010000e-01>, <2 x double> %i.p)
  %7 = insertelement <2 x double> poison, double %3, i64 0
  %i.r = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> <double 8.860000e-01, double -1.140000e-01>, <2 x double> %i.q)
  %i.t = fdiv <2 x double> %i.s, <double 1.772000e+00, double 1.402000e+00>
  %i.u = uitofp nneg i32 %i.l to double
  %i.v = tail call double @llvm.fmuladd.f64(double %4, double 2.990000e-01, double %i.m)
  %i.w = tail call double @llvm.fmuladd.f64(double %3, double 1.140000e-01, double %i.v)
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = insertelement <2 x double> poison, double %i.u, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fadd <2 x double> %i.t, %i.z            ; 2 uses
  %i.ab = shufflevector <2 x double> %i.x, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ac = fadd <2 x double> %i.ab, splat (double 5.000000e-01)
  %i.ad = fptosi <2 x double> %i.ac to <2 x i32>  ; 2 uses
  %i.ae = extractelement <2 x double> %i.aa, i64 1
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32              ; 2 uses
  %i.ah = icmp slt <2 x i32> %i.ad, zeroinitializer
  %i.ai = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ad, <2 x i32> splat (i32 65535))
  %i.aj = trunc nuw <2 x i32> %i.ai to <2 x i16>
  %i.ak = select <2 x i1> %i.ah, <2 x i16> zeroinitializer, <2 x i16> %i.aj
  store <2 x i16> %i.ak, ptr %0, align 2, !tbaa !18
  %i.al = icmp slt i32 %i.ag, 0
  %spec.select3.i25 = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 65535)
  %spec.select.i26 = trunc nuw i32 %spec.select3.i25 to i16
  %i.am = select i1 %i.al, i16 0, i16 %spec.select.i26
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.am, ptr %i.an, align 2, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm36ImageChangePhotometricInterpretation7RGB2YBRIhEEvPT_PKS2_t(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i16 %2, 9
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 82, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #20
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !55
  %3 = uitofp i8 %i.e to double                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = uitofp i8 %i.g to double
  %i.i = load i8, ptr %1, align 1, !tbaa !55
  %4 = uitofp i8 %i.i to double                   ; 2 uses
  %i.j = zext nneg i16 %2 to i32
  %i.k = add nsw i32 %i.j, -1
  %i.l = shl nuw nsw i32 1, %i.k
  %i.m = fmul nnan double %i.h, 5.870000e-01      ; 2 uses
  %5 = tail call double @llvm.fmuladd.f64(double %4, double 2.990000e-01, double %i.m)
  %6 = tail call double @llvm.fmuladd.f64(double %3, double 1.140000e-01, double %5)
  %7 = fadd double %6, 5.000000e-01
  %8 = fptosi double %7 to i32                    ; 2 uses
  %9 = fneg double %i.m
  %10 = uitofp nneg i32 %i.l to double
  %11 = insertelement <2 x double> poison, double %4, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = insertelement <2 x double> poison, double %9, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> <double -2.990000e-01, double 7.010000e-01>, <2 x double> %i.o)
  %13 = insertelement <2 x double> poison, double %3, i64 0
  %i.q = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> <double 8.860000e-01, double -1.140000e-01>, <2 x double> %i.p)
  %i.s = fdiv <2 x double> %i.r, <double 1.772000e+00, double 1.402000e+00>
  %i.t = icmp slt i32 %8, 0
  %spec.select3.i = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %spec.select.i = trunc nuw i32 %spec.select3.i to i8
  %i.u = select i1 %i.t, i8 0, i8 %spec.select.i
  store i8 %i.u, ptr %0, align 1, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.w = insertelement <2 x double> poison, double %10, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fadd <2 x double> %i.s, %i.x
  %i.z = fadd <2 x double> %i.y, splat (double 5.000000e-01)
  %i.aa = fptosi <2 x double> %i.z to <2 x i32>   ; 2 uses
  %i.ab = icmp slt <2 x i32> %i.aa, zeroinitializer
  %i.ac = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.aa, <2 x i32> splat (i32 255))
  %i.ad = trunc nuw <2 x i32> %i.ac to <2 x i8>
  %i.ae = select <2 x i1> %i.ab, <2 x i8> zeroinitializer, <2 x i8> %i.ad ; 2 uses
  %i.af = extractelement <2 x i8> %i.ae, i64 0
  store i8 %i.af, ptr %i.v, align 1, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ah = extractelement <2 x i8> %i.ae, i64 1
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm36ImageChangePhotometricInterpretation6ChangeEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_6BitmapEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.split, label %bb.g

.split:                                           ; preds = %bb.a
  %i.h = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  switch i32 %i.h, label %bb.g [
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 0, label %bb.f
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %.split
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm6Bitmap28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(106) %i.i)
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %.not2 = icmp eq i32 %i.k, 4
  br i1 %.not2, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 @_ZN4gdcm36ImageChangePhotometricInterpretation13ChangeRGB2YBREv(ptr noundef nonnull align 8 dereferenceable(20) %0)
  br label %bb.g

bb.d:                                             ; preds = %.split
  %i.m = load ptr, ptr %0, align 8, !tbaa !9
  %i.n = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm6Bitmap28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(106) %i.m)
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15
  %.not = icmp eq i32 %i.o, 8
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN4gdcm36ImageChangePhotometricInterpretation13ChangeYBR2RGBEv(ptr noundef nonnull align 8 dereferenceable(20) %0)
  br label %bb.g

bb.f:                                             ; preds = %.split, %.split
  %i.q = tail call noundef zeroext i1 @_ZN4gdcm36ImageChangePhotometricInterpretation16ChangeMonochromeEv(ptr noundef nonnull align 8 dereferenceable(20) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.split, %bb.d, %bb.b, %bb.f, %bb.e, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ %i.l, %bb.c ], [ false, %bb.b ], [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ false, %.split ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp ult i64 %i.g, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i = icmp samesign eq i64 %1, 0
  br i1 %.not10.i, label %_ZNSt3__16vectorIcNS_9allocatorIcEEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 0, i64 %1, i1 false), !tbaa !55
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE18__construct_at_endEm.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.6.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.h, %.lr.ph.preheader.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.c, align 8, !tbaa !67
  br label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ne180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  unreachable

_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ne180100Em.exit: ; preds = %bb.c
  %i.n = sub i64 %i.e, %i.j                       ; 2 uses
  %.not.i = icmp ult i64 %i.n, 4611686018427387903
  %i.o = shl nuw nsw i64 %i.n, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.l)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 3 uses
  %i.p = icmp eq i64 %.0.i, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ne180100Em.exit
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #22
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !67
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ne180100Em.exit
  %i.r = phi ptr [ %.pre26, %bb.e ], [ %i.i, %_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ne180100Em.exit ] ; 6 uses
  %i.s = phi ptr [ %.pre, %bb.e ], [ %i.d, %_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ne180100Em.exit ] ; 8 uses
  %storemerge.i = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %storemerge.i31 = ptrtoaddr ptr %storemerge.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.k ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %.0.i
  %i.w = getelementptr i8, ptr %i.u, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %1, i1 false), !tbaa !55
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.x = ptrtoaddr ptr %i.r to i64                ; 3 uses
  %i.y = sub i64 %i.t, %i.x                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = add i64 %i.t, %i.j
  %i.aa = add i64 %storemerge.i31, %i.f
  %i.ab = sub i64 %i.aa, %i.z
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  %i.ad = sub i64 0, %n.vec                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %next.gep33, i64 -16
  %i.ai = getelementptr inbounds i8, ptr %next.gep33, i64 -32
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !55, !noalias !84
  %wide.load34 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !55, !noalias !84
  %i.aj = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ak = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.aj, align 1, !tbaa !55, !noalias !84
  store <16 x i8> %wide.load34, ptr %i.ak, align 1, !tbaa !55, !noalias !84
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ne180100Ev.exit.i, label %vec.epilog.iter.check

end_hunk_0
