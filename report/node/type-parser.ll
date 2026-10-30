Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-parser?download=true
inline.NumInlined: 1888
inline.NumDeleted: 883
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft10TypeParser9ParseTypeEv:bb.a

_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit80: ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit79, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.ah

.loopexit176:                                     ; preds = %bb.v, %bb.x, %.lr.ph.i71, %.loopexit177
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7127.0..sroa_idx, align 4
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8128.0..sroa_idx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.dt, align 8
  br label %bb.ah

.loopexit178:                                     ; preds = %bb.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i51, %.loopexit181
  %.promoted.i.i82 = phi i64 [ %.promoted.i.i47, %.loopexit181 ], [ %i.cj, %bb.t ], [ %i.cj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i51 ] ; 2 uses
  %i.du = icmp ult i64 %.promoted.i.i82, %i.b
  br i1 %i.du, label %.lr.ph.i.i84, label %.loopexit175

.lr.ph.i.i84:                                     ; preds = %.loopexit178
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8            ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph.i.i84
  %i.dx = phi i64 [ %.promoted.i.i82, %.lr.ph.i.i84 ], [ %i.eb, %bb.aa ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp eq i8 %i.dz, 32
  br i1 %i.ea, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eb = add nuw i64 %i.dx, 1                    ; 3 uses
  store i64 %i.eb, ptr %i.a, align 8
  %exitcond.not.i.i91 = icmp eq i64 %i.eb, %i.b
  br i1 %exitcond.not.i.i91, label %.loopexit175, label %bb.z, !llvm.loop !0

bb.ab:                                            ; preds = %bb.z
  %i.ec = sub nuw i64 %i.b, %i.dx
  %i.ed = icmp ult i64 %i.ec, 7
  br i1 %i.ed, label %.loopexit175, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i86

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i86: ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 1
  %i.eg = xor i32 %i.ef, 1634692166
  %i.eh = getelementptr i8, ptr %i.ee, i64 3
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = xor i32 %i.ei, 875983969
  %i.ek = or i32 %i.eg, %i.ej
  %i.el = icmp ne i32 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ac, label %.loopexit175

bb.ac:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i86
  %i.eo = add nuw i64 %i.dx, 7                    ; 4 uses
  store i64 %i.eo, ptr %i.a, align 8
  %i.ep = icmp ult i64 %i.eo, %i.b
  br i1 %i.ep, label %.lr.ph.i95, label %.loopexit174

.lr.ph.i95:                                       ; preds = %bb.ac, %bb.ad
  %i.eq = phi i64 [ %i.et, %bb.ad ], [ %i.eo, %bb.ac ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  switch i8 %i.es, label %.loopexit174 [
    i8 32, label %bb.ad
    i8 123, label %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit103
  ]

bb.ad:                                            ; preds = %.lr.ph.i95
  %i.et = add nuw i64 %i.eq, 1                    ; 3 uses
  store i64 %i.et, ptr %i.a, align 8
  %exitcond.not.i102 = icmp eq i64 %i.et, %i.b
  br i1 %exitcond.not.i102, label %.loopexit, label %.lr.ph.i95, !llvm.loop !0

_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit103: ; preds = %.lr.ph.i95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_9FloatTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ew = load i8, ptr %i.ev, align 8, !range !15, !noundef !16
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ae, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit

bb.ae:                                            ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 24, i1 false)
  store i8 1, ptr %i.eu, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit

_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit103, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ah

.loopexit174:                                     ; preds = %.lr.ph.i95, %bb.ac
  %.promoted.i104 = phi i64 [ %i.eo, %bb.ac ], [ %i.eq, %.lr.ph.i95 ] ; 2 uses
  %i.ey = icmp ult i64 %.promoted.i104, %i.b
  br i1 %i.ey, label %.lr.ph.i106, label %.loopexit

.lr.ph.i106:                                      ; preds = %.loopexit174, %bb.af
  %i.ez = phi i64 [ %i.fc, %bb.af ], [ %.promoted.i104, %.loopexit174 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  switch i8 %i.fb, label %.loopexit [
    i8 32, label %bb.af
    i8 91, label %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit114
  ]

bb.af:                                            ; preds = %.lr.ph.i106
  %i.fc = add nuw i64 %i.ez, 1                    ; 3 uses
  store i64 %i.fc, ptr %i.a, align 8
  %exitcond.not.i113 = icmp eq i64 %i.fc, %i.b
  br i1 %exitcond.not.i113, label %.loopexit, label %.lr.ph.i106, !llvm.loop !0

_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit114: ; preds = %.lr.ph.i106
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_9FloatTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ff = load i8, ptr %i.fe, align 8, !range !15, !noundef !16
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ag, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115

bb.ag:                                            ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 24, i1 false)
  store i8 1, ptr %i.fd, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115

_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115: ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit114, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ah

.loopexit:                                        ; preds = %bb.ad, %bb.af, %.lr.ph.i106, %.loopexit174
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.fh, align 8
  br label %bb.ah

.loopexit175:                                     ; preds = %bb.c, %bb.k, %bb.s, %bb.aa, %bb.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i86, %.loopexit178
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.fi, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit175, %.loopexit, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit, %.loopexit176, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit80, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit, %.loopexit179, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit46, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit, %.loopexit182, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit12, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_8WordTypeILm32EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit20

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit20 [
    i8 32, label %bb.c
    i8 123, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit20, label %bb.b, !llvm.loop !0

.loopexit20:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  br label %bb.z

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.f, 1
  store i64 %i.k, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser16ParseSetElementsIjEESt8optionalISt6vectorIT_SaIS7_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.m = load i8, ptr %i.l, align 8, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread43

.thread43:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.o, align 8
  br label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i2 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.q = icmp ult i64 %.promoted.i.i2, %i.p
  br i1 %i.q, label %.lr.ph.i.i4, label %.thread

.lr.ph.i.i4:                                      ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i4
  %i.s = phi i64 [ %.promoted.i.i2, %.lr.ph.i.i4 ], [ %i.v, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  switch i8 %i.u, label %.thread [
    i8 32, label %bb.g
    i8 125, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  %exitcond.not.i.i11 = icmp eq i64 %i.v, %i.p
  br i1 %exitcond.not.i.i11, label %.thread, label %bb.f, !llvm.loop !0

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.w, align 8
  store i8 0, ptr %i.l, align 8
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %2, align 8               ; 12 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 8 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %bb.i, label %bb.j, !prof !17

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = icmp samesign ult i64 %i.ae, 3
  br i1 %i.ai, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aj = load i32, ptr %i.aa, align 4, !noalias !23
  %i.ak = icmp eq i64 %i.ad, 8
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = load i32, ptr %i.al, align 4, !noalias !23
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw i64 %i.an, 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.4.0.i.i = phi i64 [ %i.ao, %bb.n ], [ 0, %bb.m ]
  %.sroa.04.0.insert.ext.i.i = zext i32 %i.aj to i64
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.i.i, %.sroa.04.0.insert.ext.i.i
  br label %bb.w

bb.p:                                             ; preds = %bb.l
  %i.ap = add nuw i64 %i.ad, 4
  %i.aq = and i64 %i.ap, -8                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !23 ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, !prof !17

bb.q:                                             ; preds = %bb.p
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 noundef %i.aq) #13, !noalias !23
  %.pre.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !23
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i: ; preds = %bb.q, %bb.p
  %i.ax = phi i64 [ %.pre.i.i.i.i, %bb.q ], [ %i.au, %bb.p ] ; 3 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 8 uses
  %i.az = add i64 %i.ax, %i.aq
  store i64 %i.az, ptr %i.at, align 8, !noalias !23
  %i.ba = load i32, ptr %i.aa, align 4, !noalias !23
  store i32 %i.ba, ptr %i.ay, align 4, !noalias !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.bc, ptr %i.bd, align 4, !noalias !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !noalias !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.bf, ptr %i.bg, align 4, !noalias !23
  %exitcond.not.i.i13.2 = icmp eq i64 %i.ad, 12
  br i1 %exitcond.not.i.i13.2, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.bi, ptr %i.bj, align 4, !noalias !23
  %exitcond.not.i.i13.3 = icmp eq i64 %i.ad, 16
  br i1 %exitcond.not.i.i13.3, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 %i.bl, ptr %i.bm, align 4, !noalias !23
  %exitcond.not.i.i13.4 = icmp eq i64 %i.ad, 20
  br i1 %exitcond.not.i.i13.4, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i32 %i.bo, ptr %i.bp, align 4, !noalias !23
  %exitcond.not.i.i13.5 = icmp eq i64 %i.ad, 24
  br i1 %exitcond.not.i.i13.5, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !noalias !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %i.br, ptr %i.bs, align 4, !noalias !23
  %exitcond.not.i.i13.6 = icmp eq i64 %i.ad, 28
  br i1 %exitcond.not.i.i13.6, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  store i32 %i.bu, ptr %i.bv, align 4, !noalias !23
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i
  %.pre.pre = load i8, ptr %i.l, align 8, !range !15
  %i.bw = trunc nuw i8 %.pre.pre to i1
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit
  %.pre = phi i1 [ true, %bb.o ], [ %i.bw, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.13.0 = phi i64 [ %.sroa.04.0.insert.insert.i.i, %bb.o ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.7.0 = trunc nuw nsw i64 %i.ae to i8
  store i8 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.15.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bx, align 8
  store i8 0, ptr %i.l, align 8
  br i1 %.pre, label %bb.x, label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit

bb.x:                                             ; preds = %.thread, %bb.w
  %i.by = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #15
  br label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit: ; preds = %.thread43, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit, %.loopexit20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_8WordTypeILm32EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit41

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit41 [
    i8 32, label %bb.c
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit41, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.f, 1
  store i64 %i.j, ptr %i.a, align 8
  %i.k = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIjEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i64 %i.k to i32
  %i.l = and i64 %i.k, 4294967296
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i1 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.n = icmp ult i64 %.promoted.i.i1, %i.m
  br i1 %i.n, label %.lr.ph.i.i3, label %.loopexit41

.lr.ph.i.i3:                                      ; preds = %bb.e
  %i.o = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i3
  %i.p = phi i64 [ %.promoted.i.i1, %.lr.ph.i.i3 ], [ %i.s, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  switch i8 %i.r, label %.loopexit41 [
    i8 32, label %bb.g
    i8 44, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw i64 %i.p, 1                      ; 3 uses
  store i64 %i.s, ptr %i.a, align 8
  %exitcond.not.i.i10 = icmp eq i64 %i.s, %i.m
  br i1 %exitcond.not.i.i10, label %.loopexit41, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.f
  %i.t = add nuw i64 %i.p, 1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIjEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.sroa.023.0.extract.trunc = trunc i64 %i.u to i32
  %i.v = and i64 %i.u, 4294967296
  %.not38 = icmp eq i64 %i.v, 0
  br i1 %.not38, label %.loopexit41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i12 = load i64, ptr %i.a, align 8  ; 2 uses
  %i.x = icmp ult i64 %.promoted.i.i12, %i.w
  br i1 %i.x, label %.lr.ph.i.i14, label %.loopexit41

.lr.ph.i.i14:                                     ; preds = %bb.i
  %i.y = load ptr, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i14
  %i.z = phi i64 [ %.promoted.i.i12, %.lr.ph.i.i14 ], [ %i.ac, %bb.k ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  switch i8 %i.ab, label %.loopexit41 [
    i8 32, label %bb.k
    i8 93, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = add nuw i64 %i.z, 1                     ; 3 uses
  store i64 %i.ac, ptr %i.a, align 8
  %exitcond.not.i.i21 = icmp eq i64 %i.ac, %i.w
  br i1 %exitcond.not.i.i21, label %.loopexit41, label %bb.j, !llvm.loop !0

bb.l:                                             ; preds = %bb.j
  %i.ad = add nuw i64 %i.z, 1
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %.sroa.027.0.extract.trunc, i32 noundef %.sroa.023.0.extract.trunc, ptr noundef %i.af)
  br label %.loopexit41

.loopexit41:                                      ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.j, %bb.k, %bb.i, %bb.h, %bb.e, %bb.d, %bb.a, %bb.l
  %.sink = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.l ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_8WordTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.57", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit21

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit21 [
    i8 32, label %bb.c
    i8 123, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit21, label %bb.b, !llvm.loop !0

.loopexit21:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.f, 1
  store i64 %i.k, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser16ParseSetElementsImEESt8optionalISt6vectorIT_SaIS7_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.57") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.m = load i8, ptr %i.l, align 8, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread44

.thread44:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.o, align 8
  br label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i2 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.q = icmp ult i64 %.promoted.i.i2, %i.p
  br i1 %i.q, label %.lr.ph.i.i4, label %.thread

.lr.ph.i.i4:                                      ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i4
  %i.s = phi i64 [ %.promoted.i.i2, %.lr.ph.i.i4 ], [ %i.v, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  switch i8 %i.u, label %.thread [
    i8 32, label %bb.g
    i8 125, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  %exitcond.not.i.i11 = icmp eq i64 %i.v, %i.p
  br i1 %exitcond.not.i.i11, label %.thread, label %bb.f, !llvm.loop !0

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.w, align 8
  store i8 0, ptr %i.l, align 8
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %2, align 8               ; 12 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 10 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %bb.i, label %bb.j, !prof !17

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = icmp samesign ult i64 %i.ae, 3
  br i1 %i.ai, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.aa, align 8, !noalias !28 ; 2 uses
  %i.ak = icmp eq i64 %i.ad, 16
  br i1 %i.ak, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !28
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noalias !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !28 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = icmp ugt i64 %i.ad, %i.ar
  br i1 %i.as, label %bb.p, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, !prof !17

bb.p:                                             ; preds = %bb.o
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 noundef %i.ad) #13, !noalias !28
  %.pre.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !28
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i: ; preds = %bb.p, %bb.o
  %i.at = phi i64 [ %.pre.i.i.i.i, %bb.p ], [ %i.aq, %bb.o ] ; 3 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 8 uses
  %i.av = add i64 %i.at, %i.ad
  store i64 %i.av, ptr %i.ap, align 8, !noalias !28
  %i.aw = load i64, ptr %i.aa, align 8, !noalias !28
  store i64 %i.aw, ptr %i.au, align 8, !noalias !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !noalias !28
  %exitcond.not.i.i13.2 = icmp eq i64 %i.ad, 24
  br i1 %exitcond.not.i.i13.2, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !noalias !28
  %exitcond.not.i.i13.3 = icmp eq i64 %i.ad, 32
  br i1 %exitcond.not.i.i13.3, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.bh, ptr %i.bi, align 8, !noalias !28
  %exitcond.not.i.i13.4 = icmp eq i64 %i.ad, 40
  br i1 %exitcond.not.i.i13.4, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !28
  %exitcond.not.i.i13.5 = icmp eq i64 %i.ad, 48
  br i1 %exitcond.not.i.i13.5, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i64 %i.bn, ptr %i.bo, align 8, !noalias !28
  %exitcond.not.i.i13.6 = icmp eq i64 %i.ad, 56
  br i1 %exitcond.not.i.i13.6, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i64 %i.bq, ptr %i.br, align 8, !noalias !28
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit

_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i
  %.pre.pre = load i8, ptr %i.l, align 8, !range !15
  %i.bs = trunc nuw i8 %.pre.pre to i1
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bb.m, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit
  %.pre = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ %i.bs, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit ]
  %.sink17.i.i = phi i64 [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.at, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit ]
  %.sink.i.i = phi i64 [ undef, %bb.m ], [ %i.am, %bb.n ], [ 0, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit ]
  %i.bt = trunc nuw nsw i64 %i.ae to i8
  store i8 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bt, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bu, align 8
  store i8 0, ptr %i.l, align 8
  br i1 %.pre, label %bb.w, label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit

bb.w:                                             ; preds = %.thread, %bb.v
  %i.bv = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #15
  br label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit: ; preds = %.thread44, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit, %.loopexit21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_8WordTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit38

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit38 [
    i8 32, label %bb.c
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit38, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.f, 1
  store i64 %i.j, ptr %i.a, align 8
  %i.k = tail call { i64, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueImEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.l = extractvalue { i64, i8 } %i.k, 0
  %i.m = extractvalue { i64, i8 } %i.k, 1
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.loopexit38

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i1 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.p = icmp ult i64 %.promoted.i.i1, %i.o
  br i1 %i.p, label %.lr.ph.i.i3, label %.loopexit38

.lr.ph.i.i3:                                      ; preds = %bb.e
  %i.q = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i3
  %i.r = phi i64 [ %.promoted.i.i1, %.lr.ph.i.i3 ], [ %i.u, %bb.g ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %.loopexit38 [
    i8 32, label %bb.g
    i8 44, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw i64 %i.r, 1                      ; 3 uses
  store i64 %i.u, ptr %i.a, align 8
  %exitcond.not.i.i10 = icmp eq i64 %i.u, %i.o
  br i1 %exitcond.not.i.i10, label %.loopexit38, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.r, 1
  store i64 %i.v, ptr %i.a, align 8
  %i.w = tail call { i64, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueImEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.x = extractvalue { i64, i8 } %i.w, 0
  %i.y = extractvalue { i64, i8 } %i.w, 1
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %.loopexit38

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %1, align 8               ; 2 uses
  %.promoted.i.i12 = load i64, ptr %i.a, align 8  ; 2 uses
  %i.ab = icmp ult i64 %.promoted.i.i12, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i14, label %.loopexit38

.lr.ph.i.i14:                                     ; preds = %bb.i
  %i.ac = load ptr, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i14
  %i.ad = phi i64 [ %.promoted.i.i12, %.lr.ph.i.i14 ], [ %i.ag, %bb.k ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %.loopexit38 [
    i8 32, label %bb.k
    i8 93, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = add nuw i64 %i.ad, 1                    ; 3 uses
  store i64 %i.ag, ptr %i.a, align 8
  %exitcond.not.i.i21 = icmp eq i64 %i.ag, %i.aa
  br i1 %exitcond.not.i.i21, label %.loopexit38, label %bb.j, !llvm.loop !0

bb.l:                                             ; preds = %bb.j
  %i.ah = add nuw i64 %i.ad, 1
  store i64 %i.ah, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType.13") align 8 %0, i64 noundef %i.l, i64 noundef %i.x, ptr noundef %i.aj)
  br label %.loopexit38

.loopexit38:                                      ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.j, %bb.k, %bb.i, %bb.h, %bb.e, %bb.d, %bb.a, %bb.l
  %.sink = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.l ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_9FloatTypeILm32EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.91", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit21

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit21 [
    i8 32, label %bb.c
    i8 123, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit21, label %bb.b, !llvm.loop !0

.loopexit21:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.f, 1
  store i64 %i.k, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser16ParseSetElementsIfEESt8optionalISt6vectorIT_SaIS7_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.91") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.m = load i8, ptr %i.l, align 8, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread45

.thread45:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.o, align 8
  br label %_ZNSt14_Optional_baseISt6vectorIfSaIfEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i2 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.q = icmp ult i64 %.promoted.i.i2, %i.p
  br i1 %i.q, label %.lr.ph.i.i4, label %.thread

.lr.ph.i.i4:                                      ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i4
  %i.s = phi i64 [ %.promoted.i.i2, %.lr.ph.i.i4 ], [ %i.v, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  switch i8 %i.u, label %.thread [
    i8 32, label %bb.g
    i8 125, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  %exitcond.not.i.i11 = icmp eq i64 %i.v, %i.p
  br i1 %exitcond.not.i.i11, label %.thread, label %bb.f, !llvm.loop !0

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.w, align 8
  store i8 0, ptr %i.l, align 8
  br label %bb.ai

bb.h:                                             ; preds = %bb.f
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %2, align 8               ; 12 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 8 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %bb.i, label %bb.j, !prof !17

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = icmp samesign ult i64 %i.ae, 3
  br i1 %i.ai, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aj = load float, ptr %i.aa, align 4, !noalias !31 ; 2 uses
  %i.ak = fpext float %i.aj to double
  %i.al = call noundef i1 @llvm.is.fpclass.f64(double %i.ak, /* (nzero) */ i32 32)
  br i1 %i.al, label %bb.n, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i, !prof !17

bb.n:                                             ; preds = %bb.m
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.017.0.i = phi float [ 0.000000e+00, %bb.n ], [ %i.aj, %bb.m ]
  %.0.i.i = phi i32 [ 2, %bb.n ], [ 0, %bb.m ]    ; 2 uses
  %i.am = icmp eq i64 %i.ad, 8
  br i1 %i.am, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ao = load float, ptr %i.an, align 4, !noalias !31 ; 2 uses
  %i.ap = fpext float %i.ao to double
  %i.aq = call noundef i1 @llvm.is.fpclass.f64(double %i.ap, /* (nzero) */ i32 32)
  br i1 %i.aq, label %bb.p, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit12.i, !prof !17

bb.p:                                             ; preds = %bb.o
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit12.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit12.i: ; preds = %bb.p, %bb.o
  %.sroa.6.1.i = phi float [ 0.000000e+00, %bb.p ], [ %i.ao, %bb.o ]
  %.0.i11.i = phi i32 [ 2, %bb.p ], [ %.0.i.i, %bb.o ]
  %i.ar = bitcast float %.sroa.6.1.i to i32
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit12.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i
  %.sroa.6.0.i = phi i32 [ %i.ar, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit12.i ], [ undef, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i ]
  %.010.i = phi i32 [ %.0.i11.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit12.i ], [ %.0.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i ]
  %i.as = bitcast float %.sroa.017.0.i to i32
  br label %bb.ah

bb.r:                                             ; preds = %bb.l
  %i.at = add nuw i64 %i.ad, 4
  %i.au = and i64 %i.at, -8                       ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noalias !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !31 ; 2 uses
  %i.az = sub i64 %i.aw, %i.ay
  %i.ba = icmp ugt i64 %i.au, %i.az
  br i1 %i.ba, label %bb.s, label %_ZN2v88internal4Zone13AllocateArrayIfA_fEEPT_m.exit.i, !prof !17

bb.s:                                             ; preds = %bb.r
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 noundef %i.au) #13, !noalias !31
  %.pre.i.i.i = load i64, ptr %i.ax, align 8, !noalias !31
  br label %_ZN2v88internal4Zone13AllocateArrayIfA_fEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIfA_fEEPT_m.exit.i: ; preds = %bb.s, %bb.r
  %i.bb = phi i64 [ %.pre.i.i.i, %bb.s ], [ %i.ay, %bb.r ] ; 4 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 8 uses
  %i.bd = add i64 %i.bb, %i.au
  store i64 %i.bd, ptr %i.ax, align 8, !noalias !31
  %i.be = load float, ptr %i.aa, align 4, !noalias !31 ; 2 uses
  %i.bf = fpext float %i.be to double
  %i.bg = call noundef i1 @llvm.is.fpclass.f64(double %i.bf, /* (nzero) */ i32 32)
  br i1 %i.bg, label %bb.u, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i, !prof !17

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.7, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.6, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.5, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.4, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.3, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.2
  %.0.i13.i.lcssa = phi i32 [ %.0.i13.i.7, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.7 ], [ %.0.i13.i.6, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.6 ], [ %.0.i13.i.2, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.2 ], [ %.0.i13.i.3, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.3 ], [ %.0.i13.i.4, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.4 ], [ %.0.i13.i.5, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.5 ]
  %.sroa.13.sroa.0.0.extract.trunc = trunc i64 %i.bb to i32
  %.sroa.13.sroa.5.0.extract.shift = lshr i64 %i.bb, 32
  %.sroa.13.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.13.sroa.5.0.extract.shift to i32
  %.pre.pre = load i8, ptr %i.l, align 8, !range !15
  %i.bh = trunc nuw i8 %.pre.pre to i1
  br label %bb.ah

bb.u:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIfA_fEEPT_m.exit.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i: ; preds = %bb.u, %_ZN2v88internal4Zone13AllocateArrayIfA_fEEPT_m.exit.i
  %storemerge.i = phi float [ 0.000000e+00, %bb.u ], [ %i.be, %_ZN2v88internal4Zone13AllocateArrayIfA_fEEPT_m.exit.i ]
  %.0.i13.i = phi i32 [ 2, %bb.u ], [ 0, %_ZN2v88internal4Zone13AllocateArrayIfA_fEEPT_m.exit.i ]
  store float %storemerge.i, ptr %i.bc, align 4, !noalias !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !noalias !31 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bl = fpext float %i.bj to double
  %i.bm = call noundef i1 @llvm.is.fpclass.f64(double %i.bl, /* (nzero) */ i32 32)
  br i1 %i.bm, label %bb.v, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.1, !prof !17

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.1

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.1: ; preds = %bb.v, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i
  %storemerge.i.1 = phi float [ 0.000000e+00, %bb.v ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i ]
  %.0.i13.i.1 = phi i32 [ 2, %bb.v ], [ %.0.i13.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i ]
  store float %storemerge.i.1, ptr %i.bk, align 4, !noalias !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !noalias !31 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bq = fpext float %i.bo to double
  %i.br = call noundef i1 @llvm.is.fpclass.f64(double %i.bq, /* (nzero) */ i32 32)
  br i1 %i.br, label %bb.w, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.2, !prof !17

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.1
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.2

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.2: ; preds = %bb.w, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.1
  %storemerge.i.2 = phi float [ 0.000000e+00, %bb.w ], [ %i.bo, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.1 ]
  %.0.i13.i.2 = phi i32 [ 2, %bb.w ], [ %.0.i13.i.1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.1 ] ; 2 uses
  store float %storemerge.i.2, ptr %i.bp, align 4, !noalias !31
  %exitcond.not.i.2 = icmp eq i64 %i.ad, 12
  br i1 %exitcond.not.i.2, label %bb.t, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.bt = load float, ptr %i.bs, align 4, !noalias !31 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bv = fpext float %i.bt to double
  %i.bw = call noundef i1 @llvm.is.fpclass.f64(double %i.bv, /* (nzero) */ i32 32)
  br i1 %i.bw, label %bb.y, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.3, !prof !17

bb.y:                                             ; preds = %bb.x
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.3

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.3: ; preds = %bb.y, %bb.x
  %storemerge.i.3 = phi float [ 0.000000e+00, %bb.y ], [ %i.bt, %bb.x ]
  %.0.i13.i.3 = phi i32 [ 2, %bb.y ], [ %.0.i13.i.2, %bb.x ] ; 3 uses
  store float %storemerge.i.3, ptr %i.bu, align 4, !noalias !31
  %exitcond.not.i.3 = icmp eq i64 %i.ad, 16
  br i1 %exitcond.not.i.3, label %bb.t, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.by = load float, ptr %i.bx, align 4, !noalias !31 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ca = fpext float %i.by to double
  %i.cb = call noundef i1 @llvm.is.fpclass.f64(double %i.ca, /* (nzero) */ i32 32)
  br i1 %i.cb, label %bb.aa, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.4, !prof !17

bb.aa:                                            ; preds = %bb.z
  %i.cc = or i32 %.0.i13.i.3, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.4

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.4: ; preds = %bb.aa, %bb.z
  %storemerge.i.4 = phi float [ 0.000000e+00, %bb.aa ], [ %i.by, %bb.z ]
  %.0.i13.i.4 = phi i32 [ %i.cc, %bb.aa ], [ %.0.i13.i.3, %bb.z ] ; 3 uses
  store float %storemerge.i.4, ptr %i.bz, align 4, !noalias !31
  %exitcond.not.i.4 = icmp eq i64 %i.ad, 20
  br i1 %exitcond.not.i.4, label %bb.t, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ce = load float, ptr %i.cd, align 4, !noalias !31 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.cg = fpext float %i.ce to double
  %i.ch = call noundef i1 @llvm.is.fpclass.f64(double %i.cg, /* (nzero) */ i32 32)
  br i1 %i.ch, label %bb.ac, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.5, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.ci = or i32 %.0.i13.i.4, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.5

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.5: ; preds = %bb.ac, %bb.ab
  %storemerge.i.5 = phi float [ 0.000000e+00, %bb.ac ], [ %i.ce, %bb.ab ]
  %.0.i13.i.5 = phi i32 [ %i.ci, %bb.ac ], [ %.0.i13.i.4, %bb.ab ] ; 3 uses
  store float %storemerge.i.5, ptr %i.cf, align 4, !noalias !31
  %exitcond.not.i.5 = icmp eq i64 %i.ad, 24
  br i1 %exitcond.not.i.5, label %bb.t, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !noalias !31 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.cm = fpext float %i.ck to double
  %i.cn = call noundef i1 @llvm.is.fpclass.f64(double %i.cm, /* (nzero) */ i32 32)
  br i1 %i.cn, label %bb.ae, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.6, !prof !17

bb.ae:                                            ; preds = %bb.ad
  %i.co = or i32 %.0.i13.i.5, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.6

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.6: ; preds = %bb.ae, %bb.ad
  %storemerge.i.6 = phi float [ 0.000000e+00, %bb.ae ], [ %i.ck, %bb.ad ]
  %.0.i13.i.6 = phi i32 [ %i.co, %bb.ae ], [ %.0.i13.i.5, %bb.ad ] ; 3 uses
  store float %storemerge.i.6, ptr %i.cl, align 4, !noalias !31
  %exitcond.not.i.6 = icmp eq i64 %i.ad, 28
  br i1 %exitcond.not.i.6, label %bb.t, label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.cq = load float, ptr %i.cp, align 4, !noalias !31 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.cs = fpext float %i.cq to double
  %i.ct = call noundef i1 @llvm.is.fpclass.f64(double %i.cs, /* (nzero) */ i32 32)
  br i1 %i.ct, label %bb.ag, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.7, !prof !17

bb.ag:                                            ; preds = %bb.af
  %i.cu = or i32 %.0.i13.i.6, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.7

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit14.i.7: ; preds = %bb.ag, %bb.af
  %storemerge.i.7 = phi float [ 0.000000e+00, %bb.ag ], [ %i.cq, %bb.af ]
  %.0.i13.i.7 = phi i32 [ %i.cu, %bb.ag ], [ %.0.i13.i.6, %bb.af ]
  store float %storemerge.i.7, ptr %i.cr, align 4, !noalias !31
  br label %bb.t

bb.ah:                                            ; preds = %bb.t, %bb.q
  %.pre = phi i1 [ true, %bb.q ], [ %i.bh, %bb.t ]
  %.sroa.13.sroa.5.0 = phi i32 [ %.sroa.6.0.i, %bb.q ], [ %.sroa.13.sroa.5.0.extract.trunc, %bb.t ]
  %.sroa.13.sroa.0.0 = phi i32 [ %i.as, %bb.q ], [ %.sroa.13.sroa.0.0.extract.trunc, %bb.t ]
  %.sroa.11.0 = phi i32 [ %.010.i, %bb.q ], [ %.0.i13.i.lcssa, %bb.t ]
  %.sroa.7.0 = trunc nuw nsw i64 %i.ae to i8
  store i8 4, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.13.sroa.0.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.13.sroa.5.0, ptr %.sroa.13.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cv, align 8
  store i8 0, ptr %i.l, align 8
  br i1 %.pre, label %bb.ai, label %_ZNSt14_Optional_baseISt6vectorIfSaIfEELb0ELb0EED2Ev.exit

bb.ai:                                            ; preds = %.thread, %bb.ah
  %i.cw = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIfSaIfEELb0ELb0EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #15
  br label %_ZNSt14_Optional_baseISt6vectorIfSaIfEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIfSaIfEELb0ELb0EED2Ev.exit: ; preds = %.thread45, %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt14_Optional_baseISt6vectorIfSaIfEELb0ELb0EED2Ev.exit, %.loopexit21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_9FloatTypeILm32EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit44

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit44 [
    i8 32, label %bb.c
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit44, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.f, 1
  store i64 %i.j, ptr %i.a, align 8
  %i.k = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIfEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.sroa.029.0.extract.trunc = trunc i64 %i.k to i32
  %i.l = bitcast i32 %.sroa.029.0.extract.trunc to float ; 3 uses
  %i.m = and i64 %i.k, 4294967296
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.loopexit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i1 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.o = icmp ult i64 %.promoted.i.i1, %i.n
  br i1 %i.o, label %.lr.ph.i.i3, label %.loopexit44

.lr.ph.i.i3:                                      ; preds = %bb.e
  %i.p = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i3
  %i.q = phi i64 [ %.promoted.i.i1, %.lr.ph.i.i3 ], [ %i.t, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  switch i8 %i.s, label %.loopexit44 [
    i8 32, label %bb.g
    i8 44, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i64 %i.q, 1                      ; 3 uses
  store i64 %i.t, ptr %i.a, align 8
  %exitcond.not.i.i10 = icmp eq i64 %i.t, %i.n
  br i1 %exitcond.not.i.i10, label %.loopexit44, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.f
  %i.u = add nuw i64 %i.q, 1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIfEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.sroa.024.0.extract.trunc = trunc i64 %i.v to i32
  %i.w = bitcast i32 %.sroa.024.0.extract.trunc to float ; 3 uses
  %i.x = and i64 %i.v, 4294967296
  %.not41 = icmp eq i64 %i.x, 0
  br i1 %.not41, label %.loopexit44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i12 = load i64, ptr %i.a, align 8  ; 2 uses
  %i.z = icmp ult i64 %.promoted.i.i12, %i.y
  br i1 %i.z, label %.lr.ph.i.i14, label %.loopexit44

.lr.ph.i.i14:                                     ; preds = %bb.i
  %i.aa = load ptr, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i14
  %i.ab = phi i64 [ %.promoted.i.i12, %.lr.ph.i.i14 ], [ %i.ae, %bb.k ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  switch i8 %i.ad, label %.loopexit44 [
    i8 32, label %bb.k
    i8 93, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = add nuw i64 %i.ab, 1                    ; 3 uses
  store i64 %i.ae, ptr %i.a, align 8
  %exitcond.not.i.i21 = icmp eq i64 %i.ae, %i.y
  br i1 %exitcond.not.i.i21, label %.loopexit44, label %bb.j, !llvm.loop !0

bb.l:                                             ; preds = %bb.j
  %i.af = add nuw i64 %i.ab, 1
  store i64 %i.af, ptr %i.a, align 8
  %i.ag = fcmp ugt float %i.l, %i.w
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ah = fpext float %i.l to double
  %i.ai = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ah, /* (nzero) */ i32 32)
  br i1 %i.ai, label %bb.o, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i.i, !prof !17

bb.o:                                             ; preds = %bb.n
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i = phi float [ 0.000000e+00, %bb.o ], [ %i.l, %bb.n ] ; 4 uses
  %.0.i.i.i = phi i32 [ 2, %bb.o ], [ 0, %bb.n ]
  %i.aj = fpext float %i.w to double
  %i.ak = tail call noundef i1 @llvm.is.fpclass.f64(double %i.aj, /* (nzero) */ i32 32)
  br i1 %i.ak, label %bb.p, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i, !prof !17

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i: ; preds = %bb.p, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i.i
  %.015.i.i = phi float [ 0.000000e+00, %bb.p ], [ %i.w, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i.i ] ; 2 uses
  %.0.i4.i.i = phi i32 [ 2, %bb.p ], [ %.0.i.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit.i.i ] ; 2 uses
  %i.al = fcmp oeq float %.0.i.i, %.015.i.i
  br i1 %i.al, label %bb.q, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE5RangeEffPNS0_4ZoneE.exit

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i
  %i.am = fpext float %.0.i.i to double
  %i.an = tail call noundef i1 @llvm.is.fpclass.f64(double %i.am, /* (nzero) */ i32 32)
  br i1 %i.an, label %bb.r, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE5RangeEffPNS0_4ZoneE.exit, !prof !17

bb.r:                                             ; preds = %bb.q
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE5RangeEffPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE5RangeEffPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i, %bb.q, %bb.r
  %.sroa.13.0 = phi float [ %.0.i.i, %bb.q ], [ 0.000000e+00, %bb.r ], [ %.0.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i ]
  %.sroa.11.0 = phi i32 [ %.0.i4.i.i, %bb.q ], [ 2, %bb.r ], [ %.0.i4.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i ]
  %.sroa.7.0 = phi i8 [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i ] ; 2 uses
  store i8 4, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.015.i.i, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  br label %.loopexit44

.loopexit44:                                      ; preds = %bb.c, %bb.b, %bb.g, %bb.f, %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.a, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE5RangeEffPNS0_4ZoneE.exit
  %.sink = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE5RangeEffPNS0_4ZoneE.exit ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.ao, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_9FloatTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.127", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit20

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit20 [
    i8 32, label %bb.c
    i8 123, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit20, label %bb.b, !llvm.loop !0

.loopexit20:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.f, 1
  store i64 %i.k, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser16ParseSetElementsIdEESt8optionalISt6vectorIT_SaIS7_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.127") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.m = load i8, ptr %i.l, align 8, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread44

.thread44:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.o, align 8
  br label %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i2 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.q = icmp ult i64 %.promoted.i.i2, %i.p
  br i1 %i.q, label %.lr.ph.i.i4, label %.thread

.lr.ph.i.i4:                                      ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i4
  %i.s = phi i64 [ %.promoted.i.i2, %.lr.ph.i.i4 ], [ %i.v, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  switch i8 %i.u, label %.thread [
    i8 32, label %bb.g
    i8 125, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  %exitcond.not.i.i11 = icmp eq i64 %i.v, %i.p
  br i1 %exitcond.not.i.i11, label %.thread, label %bb.f, !llvm.loop !0

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.w, align 8
  store i8 0, ptr %i.l, align 8
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %2, align 8               ; 12 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 10 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %bb.i, label %bb.j, !prof !17

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = icmp samesign ult i64 %i.ae, 3
  br i1 %i.ai, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aj = load double, ptr %i.aa, align 8, !noalias !36 ; 2 uses
  %i.ak = call noundef i1 @llvm.is.fpclass.f64(double %i.aj, /* (nzero) */ i32 32)
  br i1 %i.ak, label %bb.n, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i, !prof !17

bb.n:                                             ; preds = %bb.m
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i: ; preds = %bb.n, %bb.m
  %.sroa.016.0.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.aj, %bb.m ]
  %.0.i.i.i = phi i32 [ 2, %bb.n ], [ 0, %bb.m ]  ; 2 uses
  %i.al = icmp eq i64 %i.ad, 16
  br i1 %i.al, label %bb.o, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.an = load double, ptr %i.am, align 8, !noalias !36 ; 2 uses
  %i.ao = call noundef i1 @llvm.is.fpclass.f64(double %i.an, /* (nzero) */ i32 32)
  br i1 %i.ao, label %bb.p, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i, !prof !17

bb.p:                                             ; preds = %bb.o
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i: ; preds = %bb.p, %bb.o, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  %.sroa.6.0.i.i = phi double [ undef, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ], [ 0.000000e+00, %bb.p ], [ %i.an, %bb.o ]
  %.010.i.i = phi i32 [ %.0.i.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ], [ 2, %bb.p ], [ %.0.i.i.i, %bb.o ]
  %i.ap = bitcast double %.sroa.016.0.i.i to i64
  %i.aq = bitcast double %.sroa.6.0.i.i to i64
  br label %bb.af

bb.q:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !36 ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.ad, %i.av
  br i1 %i.aw, label %bb.r, label %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i, !prof !17

bb.r:                                             ; preds = %bb.q
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 noundef %i.ad) #13, !noalias !36
  %.pre.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !36
  br label %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i: ; preds = %bb.r, %bb.q
  %i.ax = phi i64 [ %.pre.i.i.i.i, %bb.r ], [ %i.au, %bb.q ] ; 3 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 8 uses
  %i.az = add i64 %i.ax, %i.ad
  store i64 %i.az, ptr %i.at, align 8, !noalias !36
  %i.ba = load double, ptr %i.aa, align 8, !noalias !36 ; 2 uses
  %i.bb = call noundef i1 @llvm.is.fpclass.f64(double %i.ba, /* (nzero) */ i32 32)
  br i1 %i.bb, label %bb.s, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i, !prof !17

bb.s:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i: ; preds = %bb.s, %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i
  %storemerge.i.i = phi double [ 0.000000e+00, %bb.s ], [ %i.ba, %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i ]
  %.0.i13.i.i = phi i32 [ 2, %bb.s ], [ 0, %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i ]
  store double %storemerge.i.i, ptr %i.ay, align 8, !noalias !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !noalias !36 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = call noundef i1 @llvm.is.fpclass.f64(double %i.bd, /* (nzero) */ i32 32)
  br i1 %i.bf, label %bb.t, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1, !prof !17

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1: ; preds = %bb.t, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i
  %storemerge.i.i.1 = phi double [ 0.000000e+00, %bb.t ], [ %i.bd, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i ]
  %.0.i13.i.i.1 = phi i32 [ 2, %bb.t ], [ %.0.i13.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i ]
  store double %storemerge.i.i.1, ptr %i.be, align 8, !noalias !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !noalias !36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bj = call noundef i1 @llvm.is.fpclass.f64(double %i.bh, /* (nzero) */ i32 32)
  br i1 %i.bj, label %bb.u, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.2, !prof !17

bb.u:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.2

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.2: ; preds = %bb.u, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1
  %storemerge.i.i.2 = phi double [ 0.000000e+00, %bb.u ], [ %i.bh, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1 ]
  %.0.i13.i.i.2 = phi i32 [ 2, %bb.u ], [ %.0.i13.i.i.1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1 ] ; 2 uses
  store double %storemerge.i.i.2, ptr %i.bi, align 8, !noalias !36
  %exitcond.not.i.i13.2 = icmp eq i64 %i.ad, 24
  br i1 %exitcond.not.i.i13.2, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit, label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !noalias !36 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bn = call noundef i1 @llvm.is.fpclass.f64(double %i.bl, /* (nzero) */ i32 32)
  br i1 %i.bn, label %bb.w, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.3, !prof !17

bb.w:                                             ; preds = %bb.v
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.3

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.3: ; preds = %bb.w, %bb.v
  %storemerge.i.i.3 = phi double [ 0.000000e+00, %bb.w ], [ %i.bl, %bb.v ]
  %.0.i13.i.i.3 = phi i32 [ 2, %bb.w ], [ %.0.i13.i.i.2, %bb.v ] ; 3 uses
  store double %storemerge.i.i.3, ptr %i.bm, align 8, !noalias !36
  %exitcond.not.i.i13.3 = icmp eq i64 %i.ad, 32
  br i1 %exitcond.not.i.i13.3, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bp = load double, ptr %i.bo, align 8, !noalias !36 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.br = call noundef i1 @llvm.is.fpclass.f64(double %i.bp, /* (nzero) */ i32 32)
  br i1 %i.br, label %bb.y, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.4, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.bs = or i32 %.0.i13.i.i.3, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.4

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.4: ; preds = %bb.y, %bb.x
  %storemerge.i.i.4 = phi double [ 0.000000e+00, %bb.y ], [ %i.bp, %bb.x ]
  %.0.i13.i.i.4 = phi i32 [ %i.bs, %bb.y ], [ %.0.i13.i.i.3, %bb.x ] ; 3 uses
  store double %storemerge.i.i.4, ptr %i.bq, align 8, !noalias !36
  %exitcond.not.i.i13.4 = icmp eq i64 %i.ad, 40
  br i1 %exitcond.not.i.i13.4, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bu = load double, ptr %i.bt, align 8, !noalias !36 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bw = call noundef i1 @llvm.is.fpclass.f64(double %i.bu, /* (nzero) */ i32 32)
  br i1 %i.bw, label %bb.aa, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.5, !prof !17

bb.aa:                                            ; preds = %bb.z
  %i.bx = or i32 %.0.i13.i.i.4, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.5

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.5: ; preds = %bb.aa, %bb.z
  %storemerge.i.i.5 = phi double [ 0.000000e+00, %bb.aa ], [ %i.bu, %bb.z ]
  %.0.i13.i.i.5 = phi i32 [ %i.bx, %bb.aa ], [ %.0.i13.i.i.4, %bb.z ] ; 3 uses
  store double %storemerge.i.i.5, ptr %i.bv, align 8, !noalias !36
  %exitcond.not.i.i13.5 = icmp eq i64 %i.ad, 48
  br i1 %exitcond.not.i.i13.5, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.5
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.bz = load double, ptr %i.by, align 8, !noalias !36 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.cb = call noundef i1 @llvm.is.fpclass.f64(double %i.bz, /* (nzero) */ i32 32)
  br i1 %i.cb, label %bb.ac, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.6, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.cc = or i32 %.0.i13.i.i.5, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.6

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.6: ; preds = %bb.ac, %bb.ab
  %storemerge.i.i.6 = phi double [ 0.000000e+00, %bb.ac ], [ %i.bz, %bb.ab ]
  %.0.i13.i.i.6 = phi i32 [ %i.cc, %bb.ac ], [ %.0.i13.i.i.5, %bb.ab ] ; 3 uses
  store double %storemerge.i.i.6, ptr %i.ca, align 8, !noalias !36
  %exitcond.not.i.i13.6 = icmp eq i64 %i.ad, 56
  br i1 %exitcond.not.i.i13.6, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ce = load double, ptr %i.cd, align 8, !noalias !36 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.cg = call noundef i1 @llvm.is.fpclass.f64(double %i.ce, /* (nzero) */ i32 32)
  br i1 %i.cg, label %bb.ae, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.7, !prof !17

bb.ae:                                            ; preds = %bb.ad
  %i.ch = or i32 %.0.i13.i.i.6, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.7

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.7: ; preds = %bb.ae, %bb.ad
  %storemerge.i.i.7 = phi double [ 0.000000e+00, %bb.ae ], [ %i.ce, %bb.ad ]
  %.0.i13.i.i.7 = phi i32 [ %i.ch, %bb.ae ], [ %.0.i13.i.i.6, %bb.ad ]
  store double %storemerge.i.i.7, ptr %i.cf, align 8, !noalias !36
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.7, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.6, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.5, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.4, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.3, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.2
  %.0.i13.i.i.lcssa = phi i32 [ %.0.i13.i.i.7, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.7 ], [ %.0.i13.i.i.6, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.6 ], [ %.0.i13.i.i.2, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.2 ], [ %.0.i13.i.i.3, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.3 ], [ %.0.i13.i.i.4, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.4 ], [ %.0.i13.i.i.5, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.5 ]
  %.pre.pre = load i8, ptr %i.l, align 8, !range !15
  %i.ci = trunc nuw i8 %.pre.pre to i1
  br label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit
  %.pre = phi i1 [ true, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ %i.ci, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.15.0 = phi i64 [ %i.aq, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.13.0 = phi i64 [ %i.ap, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.11.0 = phi i32 [ %.010.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ %.0.i13.i.i.lcssa, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.7.0 = trunc nuw nsw i64 %i.ae to i8
  store i8 5, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cj, align 8
  store i8 0, ptr %i.l, align 8
  br i1 %.pre, label %bb.ag, label %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit

bb.ag:                                            ; preds = %.thread, %bb.af
  %i.ck = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #15
  br label %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit: ; preds = %.thread44, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit, %.loopexit20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_9FloatTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.13 = alloca double, align 8              ; 6 uses
  %.sroa.15 = alloca double, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit43

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %.loopexit43 [
    i8 32, label %bb.c
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 3 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit43, label %bb.b, !llvm.loop !0

.loopexit43:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.f, 1
  store i64 %i.k, ptr %i.a, align 8
  %i.l = tail call { double, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIdEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.m = extractvalue { double, i8 } %i.l, 0      ; 3 uses
  %i.n = extractvalue { double, i8 } %i.l, 1
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.p, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %1, align 8                ; 2 uses
  %.promoted.i.i1 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i1, %i.q
  br i1 %i.r, label %.lr.ph.i.i3, label %.loopexit42

.lr.ph.i.i3:                                      ; preds = %bb.f
  %i.s = load ptr, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i3
  %i.t = phi i64 [ %.promoted.i.i1, %.lr.ph.i.i3 ], [ %i.w, %bb.h ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  switch i8 %i.v, label %.loopexit42 [
    i8 32, label %bb.h
    i8 44, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i64 %i.t, 1                      ; 3 uses
  store i64 %i.w, ptr %i.a, align 8
  %exitcond.not.i.i10 = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i10, label %.loopexit42, label %bb.g, !llvm.loop !0

.loopexit42:                                      ; preds = %bb.h, %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.x, align 8
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.a, align 8
  %i.z = tail call { double, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIdEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.aa = extractvalue { double, i8 } %i.z, 0     ; 3 uses
  %i.ab = extractvalue { double, i8 } %i.z, 1
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ad, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %1, align 8               ; 2 uses
  %.promoted.i.i12 = load i64, ptr %i.a, align 8  ; 2 uses
  %i.af = icmp ult i64 %.promoted.i.i12, %i.ae
  br i1 %i.af, label %.lr.ph.i.i14, label %.loopexit

.lr.ph.i.i14:                                     ; preds = %bb.k
  %i.ag = load ptr, ptr %i.d, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i14
  %i.ah = phi i64 [ %.promoted.i.i12, %.lr.ph.i.i14 ], [ %i.ak, %bb.m ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  switch i8 %i.aj, label %.loopexit [
    i8 32, label %bb.m
    i8 93, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ak = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.ak, ptr %i.a, align 8
  %exitcond.not.i.i21 = icmp eq i64 %i.ak, %i.ae
  br i1 %exitcond.not.i.i21, label %.loopexit, label %bb.l, !llvm.loop !0

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.al, align 8
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.am = add nuw i64 %i.ah, 1
  store i64 %i.am, ptr %i.a, align 8
  %i.an = fcmp ugt double %i.m, %i.aa
  br i1 %i.an, label %bb.o, label %bb.p, !prof !17

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21) #14
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.ao = tail call noundef i1 @llvm.is.fpclass.f64(double %i.m, /* (nzero) */ i32 32)
  br i1 %i.ao, label %bb.q, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i, !prof !17

bb.q:                                             ; preds = %bb.p
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i = phi double [ 0.000000e+00, %bb.q ], [ %i.m, %bb.p ] ; 4 uses
  %.0.i.i.i = phi i32 [ 2, %bb.q ], [ 0, %bb.p ]
  %i.ap = tail call noundef i1 @llvm.is.fpclass.f64(double %i.aa, /* (nzero) */ i32 32)
  br i1 %i.ap, label %bb.r, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i, !prof !17

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i: ; preds = %bb.r, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  %.014.i.i = phi double [ 0.000000e+00, %bb.r ], [ %i.aa, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ] ; 2 uses
  %.0.i4.i.i = phi i32 [ 2, %bb.r ], [ %.0.i.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ] ; 2 uses
  %i.aq = fcmp oeq double %.0.i.i, %.014.i.i
  br i1 %i.aq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i
  %i.ar = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i.i, /* (nzero) */ i32 32)
  br i1 %i.ar, label %bb.t, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit, !prof !17

bb.t:                                             ; preds = %bb.s
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit

bb.u:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i
  store double %.0.i.i, ptr %.sroa.13, align 8, !alias.scope !41
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.11.0 = phi i32 [ %.0.i4.i.i, %bb.u ], [ 2, %bb.t ], [ %.0.i4.i.i, %bb.s ]
  %.sroa.7.0 = phi i8 [ 0, %bb.u ], [ 1, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %.sink5.i.sroa.phi = phi ptr [ %.sroa.15, %bb.u ], [ %.sroa.13, %bb.t ], [ %.sroa.13, %bb.s ]
  %.sroa.016.0.i.sink.i = phi double [ %.014.i.i, %bb.u ], [ 0.000000e+00, %bb.t ], [ %.0.i.i, %bb.s ]
  store double %.sroa.016.0.i.sink.i, ptr %.sink5.i.sroa.phi, align 8, !alias.scope !42
  store i8 5, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
end_hunk_0
