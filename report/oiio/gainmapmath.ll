Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmath?download=true
inline.NumInlined: 483
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8ultrahdr6pqOetfEf:bb.a
  %i.a = fcmp contract ugt float %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fpext contract float %0 to double
  %i.c = tail call contract double @pow(double noundef %i.b, double noundef f0x3FC4640000000000) #35, !tbaa !9 ; 2 uses
  %i.d = fmul contract double %i.c, f0x4032DA0000000000
  %i.e = fadd contract double %i.d, f0x3FEAC00000000000
  %i.f = fmul contract double %i.c, 1.868750e+01
  %i.g = fadd contract double %i.f, 1.000000e+00
  %i.h = fdiv contract double %i.e, %i.g
  %i.i = tail call contract double @pow(double noundef %i.h, double noundef f0x4053B60000000000) #35, !tbaa !9
  %i.j = fptrunc contract double %i.i to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr6pqOetfENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %i.a = fcmp contract ugt float %.sroa.03.0.vec.extract, 0.000000e+00
  br i1 %i.a, label %bb.b, label %_ZN8ultrahdr6pqOetfEf.exit

bb.b:                                             ; preds = %bb.a
  %i.b = fpext contract float %.sroa.03.0.vec.extract to double
  %i.c = tail call contract double @pow(double noundef %i.b, double noundef f0x3FC4640000000000) #35, !tbaa !9 ; 2 uses
  %i.d = fmul contract double %i.c, f0x4032DA0000000000
  %i.e = fadd contract double %i.d, f0x3FEAC00000000000
  %i.f = fmul contract double %i.c, 1.868750e+01
  %i.g = fadd contract double %i.f, 1.000000e+00
  %i.h = fdiv contract double %i.e, %i.g
  %i.i = tail call contract double @pow(double noundef %i.h, double noundef f0x4053B60000000000) #35, !tbaa !9
  %i.j = fptrunc contract double %i.i to float
  br label %_ZN8ultrahdr6pqOetfEf.exit

_ZN8ultrahdr6pqOetfEf.exit:                       ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %i.k = fcmp contract ugt float %.sroa.03.4.vec.extract, 0.000000e+00
  br i1 %i.k, label %bb.c, label %_ZN8ultrahdr6pqOetfEf.exit8

bb.c:                                             ; preds = %_ZN8ultrahdr6pqOetfEf.exit
  %i.l = fpext contract float %.sroa.03.4.vec.extract to double
  %i.m = tail call contract double @pow(double noundef %i.l, double noundef f0x3FC4640000000000) #35, !tbaa !9 ; 2 uses
  %i.n = fmul contract double %i.m, f0x4032DA0000000000
  %i.o = fadd contract double %i.n, f0x3FEAC00000000000
  %i.p = fmul contract double %i.m, 1.868750e+01
  %i.q = fadd contract double %i.p, 1.000000e+00
  %i.r = fdiv contract double %i.o, %i.q
  %i.s = tail call contract double @pow(double noundef %i.r, double noundef f0x4053B60000000000) #35, !tbaa !9
  %i.t = fptrunc contract double %i.s to float
  br label %_ZN8ultrahdr6pqOetfEf.exit8

_ZN8ultrahdr6pqOetfEf.exit8:                      ; preds = %_ZN8ultrahdr6pqOetfEf.exit, %bb.c
  %.0.i7 = phi float [ %i.t, %bb.c ], [ 0.000000e+00, %_ZN8ultrahdr6pqOetfEf.exit ]
  %i.u = fcmp contract ugt float %1, 0.000000e+00
  br i1 %i.u, label %bb.d, label %_ZN8ultrahdr6pqOetfEf.exit10

bb.d:                                             ; preds = %_ZN8ultrahdr6pqOetfEf.exit8
  %i.v = fpext contract float %1 to double
  %i.w = tail call contract double @pow(double noundef %i.v, double noundef f0x3FC4640000000000) #35, !tbaa !9 ; 2 uses
  %i.x = fmul contract double %i.w, f0x4032DA0000000000
  %i.y = fadd contract double %i.x, f0x3FEAC00000000000
  %i.z = fmul contract double %i.w, 1.868750e+01
  %i.aa = fadd contract double %i.z, 1.000000e+00
  %i.ab = fdiv contract double %i.y, %i.aa
  %i.ac = tail call contract double @pow(double noundef %i.ab, double noundef f0x4053B60000000000) #35, !tbaa !9
  %i.ad = fptrunc contract double %i.ac to float
  br label %_ZN8ultrahdr6pqOetfEf.exit10

_ZN8ultrahdr6pqOetfEf.exit10:                     ; preds = %_ZN8ultrahdr6pqOetfEf.exit8, %bb.d
  %.0.i9 = phi float [ %i.ad, %bb.d ], [ 0.000000e+00, %_ZN8ultrahdr6pqOetfEf.exit8 ]
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %.0.i, i64 0
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %.0.i7, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.0.i9, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN8ultrahdr9pqOetfLUTEf(float noundef %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN8ultrahdr9pqOetfLUTEfE6kPqLut acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8ultrahdr9pqOetfLUTEfE6kPqLut) #35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit

_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit:           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN8ultrahdr6pqOetfEf, ptr %1, align 8, !tbaa !16
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E9_M_invokeERKSt9_Any_dataOf, ptr %i.e, align 8, !tbaa !19
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.f, align 8, !tbaa !20
  invoke void @_ZN8ultrahdr11LookUpTableC2EmSt8functionIFffEE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8ultrahdr9pqOetfLUTEfE6kPqLut, i64 noundef 65536, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i6 = icmp eq ptr %i.g, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZN8ultrahdr11LookUpTableD2Ev, ptr nonnull @_ZZN8ultrahdr9pqOetfLUTEfE6kPqLut, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8ultrahdr9pqOetfLUTEfE6kPqLut) #35
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.b, %bb.a
  %i.l = fmul contract float %0, 6.553500e+04
  %i.m = fpext contract float %i.l to double
  %i.n = fadd contract double %i.m, 5.000000e-01
  %i.o = fptosi double %i.n to i32
  %i.p = call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = call i32 @llvm.umin.i32(i32 %i.p, i32 65535)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = load ptr, ptr @_ZZN8ultrahdr9pqOetfLUTEfE6kPqLut, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load float, ptr %i.t, align 4, !tbaa !14
  ret float %i.u

bb.g:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.g, %bb.h
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8ultrahdr9pqOetfLUTEfE6kPqLut) #35
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define { <2 x float>, float } @_ZN8ultrahdr9pqOetfLUTENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = tail call contract noundef float @_ZN8ultrahdr9pqOetfLUTEf(float noundef %.sroa.03.0.vec.extract)
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %i.a, i64 0
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.b = tail call contract noundef float @_ZN8ultrahdr9pqOetfLUTEf(float noundef %.sroa.03.4.vec.extract)
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %i.b, i64 1
  %i.c = tail call contract noundef float @_ZN8ultrahdr9pqOetfLUTEf(float noundef %1)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef float @_ZN8ultrahdr9pqInvOetfEf(float noundef %0) #6 {
bb.a:
  %i.a = fpext contract float %0 to double
  %i.b = tail call contract double @pow(double noundef %i.a, double noundef f0x3F89F9B580000000) #35, !tbaa !9
  %i.c = fptrunc contract double %i.b to float    ; 2 uses
  %i.d = fadd contract float %i.c, f0xBF560000    ; 2 uses
  %i.e = fcmp contract olt float %i.d, 0.000000e+00
  %.sroa.speculated = select i1 %i.e, float 0.000000e+00, float %i.d
  %i.f = fmul contract float %i.c, 1.868750e+01
  %i.g = fsub contract float f0x4196D000, %i.f
  %i.h = fdiv contract float %.sroa.speculated, %i.g
  %i.i = fpext contract float %i.h to double
  %i.j = tail call contract double @pow(double noundef %i.i, double noundef f0x40191C0D60000000) #35, !tbaa !9
  %i.k = fptrunc contract double %i.j to float
  ret float %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9pqInvOetfENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #7 {
bb.a:
  %i.a = fpext <2 x float> %0 to <2 x double>     ; 2 uses
  %i.b = extractelement <2 x double> %i.a, i64 0
  %i.c = tail call contract double @pow(double noundef %i.b, double noundef f0x3F89F9B580000000) #35, !tbaa !9
  %i.d = fptrunc contract double %i.c to float    ; 2 uses
  %i.e = fadd contract float %i.d, f0xBF560000    ; 2 uses
  %i.f = fcmp contract olt float %i.e, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.f, float 0.000000e+00, float %i.e
  %i.g = fmul contract float %i.d, 1.868750e+01
  %i.h = fsub contract float f0x4196D000, %i.g
  %i.i = fdiv contract float %.sroa.speculated.i, %i.h
  %i.j = fpext contract float %i.i to double
  %i.k = tail call contract double @pow(double noundef %i.j, double noundef f0x40191C0D60000000) #35, !tbaa !9
  %i.l = extractelement <2 x double> %i.a, i64 1
  %i.m = tail call contract double @pow(double noundef %i.l, double noundef f0x3F89F9B580000000) #35, !tbaa !9
  %i.n = fptrunc contract double %i.m to float    ; 2 uses
  %i.o = fadd contract float %i.n, f0xBF560000    ; 2 uses
  %i.p = fcmp contract olt float %i.o, 0.000000e+00
  %.sroa.speculated.i7 = select i1 %i.p, float 0.000000e+00, float %i.o
  %i.q = fmul contract float %i.n, 1.868750e+01
  %i.r = fsub contract float f0x4196D000, %i.q
  %i.s = fdiv contract float %.sroa.speculated.i7, %i.r
  %i.t = fpext contract float %i.s to double
  %i.u = tail call contract double @pow(double noundef %i.t, double noundef f0x40191C0D60000000) #35, !tbaa !9
  %i.v = insertelement <2 x double> poison, double %i.k, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.u, i64 1
  %i.x = fptrunc <2 x double> %i.w to <2 x float>
  %i.y = fpext contract float %1 to double
  %i.z = tail call contract double @pow(double noundef %i.y, double noundef f0x3F89F9B580000000) #35, !tbaa !9
  %i.aa = fptrunc contract double %i.z to float   ; 2 uses
  %i.ab = fadd contract float %i.aa, f0xBF560000  ; 2 uses
  %i.ac = fcmp contract olt float %i.ab, 0.000000e+00
  %.sroa.speculated.i8 = select i1 %i.ac, float 0.000000e+00, float %i.ab
  %i.ad = fmul contract float %i.aa, 1.868750e+01
  %i.ae = fsub contract float f0x4196D000, %i.ad
  %i.af = fdiv contract float %.sroa.speculated.i8, %i.ae
  %i.ag = fpext contract float %i.af to double
  %i.ah = tail call contract double @pow(double noundef %i.ag, double noundef f0x40191C0D60000000) #35, !tbaa !9
  %i.ai = fptrunc contract double %i.ah to float
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.x, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ai, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN8ultrahdr12pqInvOetfLUTEf(float noundef %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut) #35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit

_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit:           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN8ultrahdr9pqInvOetfEf, ptr %1, align 8, !tbaa !16
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E9_M_invokeERKSt9_Any_dataOf, ptr %i.e, align 8, !tbaa !19
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.f, align 8, !tbaa !20
  invoke void @_ZN8ultrahdr11LookUpTableC2EmSt8functionIFffEE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut, i64 noundef 4096, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i6 = icmp eq ptr %i.g, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZN8ultrahdr11LookUpTableD2Ev, ptr nonnull @_ZZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut) #35
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.b, %bb.a
  %i.l = fmul contract float %0, 4.095000e+03
  %i.m = fpext contract float %i.l to double
  %i.n = fadd contract double %i.m, 5.000000e-01
  %i.o = fptosi double %i.n to i32
  %i.p = call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = call i32 @llvm.umin.i32(i32 %i.p, i32 4095)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = load ptr, ptr @_ZZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load float, ptr %i.t, align 4, !tbaa !14
  ret float %i.u

bb.g:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.g, %bb.h
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut) #35
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define { <2 x float>, float } @_ZN8ultrahdr12pqInvOetfLUTENS_5ColorE(<2 x float> %0, float %1) #11 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = tail call contract noundef float @_ZN8ultrahdr12pqInvOetfLUTEf(float noundef %.sroa.03.0.vec.extract)
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %i.a, i64 0
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.b = tail call contract noundef float @_ZN8ultrahdr12pqInvOetfLUTEf(float noundef %.sroa.03.4.vec.extract)
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %i.b, i64 1
  %i.c = tail call contract noundef float @_ZN8ultrahdr12pqInvOetfLUTEf(float noundef %1)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14getYuv4abPixelEP14uhdr_raw_imagemmii(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = zext i32 %i.n to i64
  %i.p = mul i64 %2, %i.e
  %i.q = sext i32 %3 to i64
  %i.r = udiv i64 %1, %i.q                        ; 2 uses
  %i.s = sext i32 %4 to i64
  %i.t = udiv i64 %2, %i.s                        ; 2 uses
  %i.u = mul i64 %i.t, %i.j
  %i.v = mul i64 %i.t, %i.o
  %i.w = getelementptr i8, ptr %i.b, i64 %1
  %i.x = getelementptr i8, ptr %i.w, i64 %i.p
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24
  %i.z = getelementptr i8, ptr %i.g, i64 %i.r
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.u
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.r
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.v
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = uitofp i8 %i.y to float
  %i.ag = zext i8 %i.ab to i32
  %i.ah = add nsw i32 %i.ag, -128
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fmul nnan contract <2 x float> %i.ak, splat (float f0x3B808081)
  %i.am = zext i8 %i.ae to i32
  %i.an = add nsw i32 %i.am, -128
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fmul nnan contract float %i.ao, f0x3B808081
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.al, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ap, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14getYuv444PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = zext i32 %i.n to i64
  %i.p = mul i64 %2, %i.e
  %i.q = mul i64 %2, %i.j
  %i.r = mul i64 %2, %i.o
  %i.s = getelementptr i8, ptr %i.b, i64 %1
  %i.t = getelementptr i8, ptr %i.s, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = getelementptr i8, ptr %i.g, i64 %1
  %i.w = getelementptr i8, ptr %i.v, i64 %i.q
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = getelementptr i8, ptr %i.l, i64 %1
  %i.z = getelementptr i8, ptr %i.y, i64 %i.r
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = uitofp i8 %i.u to float
  %i.ac = zext i8 %i.x to i32
  %i.ad = add nsw i32 %i.ac, -128
  %i.ae = sitofp i32 %i.ad to float
  %i.af = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.ae, i64 1
  %i.ah = fmul nnan contract <2 x float> %i.ag, splat (float f0x3B808081)
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr9applyGainENS_5ColorEfPNS_25uhdr_gainmap_metadata_extE:bb.a
  ret { <2 x float>, float } %.fca.1.insert.i.i43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9applyGainENS_5ColorEfPNS_25uhdr_gainmap_metadata_extEf(<2 x float> %0, float %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = fcmp contract une float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fpext contract float %2 to double
  %i.e = fdiv contract float 1.000000e+00, %i.b
  %i.f = fpext contract float %i.e to double
  %i.g = tail call contract double @pow(double noundef %i.d, double noundef %i.f) #35, !tbaa !9
  %i.h = fptrunc contract double %i.g to float
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.h, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !14
  %i.k = fpext contract float %i.j to double
  %i.l = tail call contract double @log2(double noundef %i.k) #35, !tbaa !9
  %i.m = fsub contract float 1.000000e+00, %.0
  %i.n = fpext contract float %i.m to double
  %i.o = fmul contract double %i.l, %i.n
  %i.p = load float, ptr %3, align 8, !tbaa !14
  %i.q = fpext contract float %i.p to double
  %i.r = tail call contract double @log2(double noundef %i.q) #35, !tbaa !9
  %i.s = fpext contract float %.0 to double
  %i.t = fmul contract double %i.r, %i.s
  %i.u = fadd contract double %i.o, %i.t
  %i.v = fptrunc contract double %i.u to float
  %i.w = fmul contract float %4, %i.v
  %i.x = fpext contract float %i.w to double
  %i.y = tail call contract double @exp2(double noundef %i.x) #35, !tbaa !9
  %i.z = fptrunc contract double %i.y to float    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14 ; 2 uses
  %i.ac = fadd contract float %1, %i.ab
  %i.ad = fmul contract float %i.ac, %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.af = load float, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fadd contract <2 x float> %0, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul contract <2 x float> %i.ai, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.af, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fsub contract <2 x float> %i.al, %i.an
  %i.ap = fsub contract float %i.ad, %i.af
  %.fca.0.insert.i.i43 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ao, 0
  %.fca.1.insert.i.i44 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i43, float %i.ap, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr12applyGainLUTENS_5ColorEfRNS_7GainLUTEPNS_25uhdr_gainmap_metadata_extE(<2 x float> %0, float %1, float noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load float, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = fcmp contract une float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = fpext contract float %2 to double
  %i.e = fpext contract float %i.b to double
  %i.f = tail call contract double @pow(double noundef %i.d, double noundef %i.e) #35, !tbaa !9
  %i.g = fptrunc contract double %i.f to float
  br label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit

_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit:      ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.g, %bb.b ], [ %2, %bb.a ]
  %i.h = fmul contract float %.0.i, 1.023000e+03
  %i.i = fpext contract float %i.h to double
  %i.j = fadd contract double %i.i, 5.000000e-01
  %i.k = fptosi double %i.j to i32
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 1023)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.t = load float, ptr %i.s, align 4, !tbaa !14 ; 2 uses
  %i.u = fadd contract float %1, %i.t
  %i.v = fmul contract float %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = load float, ptr %i.w, align 8, !tbaa !14 ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.t, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fadd contract <2 x float> %0, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul contract <2 x float> %i.ac, %i.aa
  %i.ae = insertelement <2 x float> poison, float %i.x, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fsub contract <2 x float> %i.ad, %i.af
  %i.ah = fsub contract float %i.v, %i.x
  %.fca.0.insert.i.i35 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ag, 0
  %.fca.1.insert.i.i36 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i35, float %i.ah, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9applyGainENS_5ColorES0_PNS_25uhdr_gainmap_metadata_extE(<2 x float> %0, float %1, <2 x float> %2, float %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = fcmp contract une float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.026.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.d = fpext contract float %.sroa.026.0.vec.extract to double
  %i.e = fdiv contract float 1.000000e+00, %i.b
  %i.f = fpext contract float %i.e to double
  %i.g = tail call contract double @pow(double noundef %i.d, double noundef %i.f) #35, !tbaa !9
  %i.h = fptrunc contract double %i.g to float
  %.sroa.026.0.vec.insert = insertelement <2 x float> %2, float %i.h, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.026.0 = phi <2 x float> [ %.sroa.026.0.vec.insert, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.k = fcmp contract une float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.026.4.vec.extract = extractelement <2 x float> %.sroa.026.0, i64 1
  %i.l = fpext contract float %.sroa.026.4.vec.extract to double
  %i.m = fdiv contract float 1.000000e+00, %i.j
  %i.n = fpext contract float %i.m to double
  %i.o = tail call contract double @pow(double noundef %i.l, double noundef %i.n) #35, !tbaa !9
  %i.p = fptrunc contract double %i.o to float
  %.sroa.026.4.vec.insert = insertelement <2 x float> %.sroa.026.0, float %i.p, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.026.1 = phi <2 x float> [ %.sroa.026.4.vec.insert, %bb.d ], [ %.sroa.026.0, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load float, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = fcmp contract une float %i.r, 1.000000e+00
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = fpext contract float %3 to double
  %i.u = fdiv contract float 1.000000e+00, %i.r
  %i.v = fpext contract float %i.u to double
  %i.w = tail call contract double @pow(double noundef %i.t, double noundef %i.v) #35, !tbaa !9
  %i.x = fptrunc contract double %i.w to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.9.0 = phi float [ %i.x, %bb.f ], [ %3, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !14
  %i.aa = fpext contract float %i.z to double
  %i.ab = tail call contract double @log2(double noundef %i.aa) #35, !tbaa !9
  %.sroa.026.0.vec.extract29 = extractelement <2 x float> %.sroa.026.1, i64 0 ; 2 uses
  %i.ac = fsub contract float 1.000000e+00, %.sroa.026.0.vec.extract29
  %i.ad = fpext contract float %i.ac to double
  %i.ae = fmul contract double %i.ab, %i.ad
  %i.af = load float, ptr %4, align 8, !tbaa !14
  %i.ag = fpext contract float %i.af to double
  %i.ah = tail call contract double @log2(double noundef %i.ag) #35, !tbaa !9
  %i.ai = fpext contract float %.sroa.026.0.vec.extract29 to double
  %i.aj = fmul contract double %i.ah, %i.ai
  %i.ak = fadd contract double %i.ae, %i.aj
  %i.al = fptrunc contract double %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load float, ptr %i.am, align 8, !tbaa !14
  %i.ao = fpext contract float %i.an to double
  %i.ap = tail call contract double @log2(double noundef %i.ao) #35, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !14
  %i.as = fpext contract float %i.ar to double
  %i.at = tail call contract double @log2(double noundef %i.as) #35, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.av = load float, ptr %i.au, align 4, !tbaa !14
  %i.aw = fpext contract float %i.av to double
  %i.ax = tail call contract double @log2(double noundef %i.aw) #35, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load float, ptr %i.ay, align 8, !tbaa !14
  %i.ba = fpext contract float %i.az to double
  %i.bb = tail call contract double @log2(double noundef %i.ba) #35, !tbaa !9
  %i.bc = fpext contract float %i.al to double
  %i.bd = tail call contract double @exp2(double noundef %i.bc) #35, !tbaa !9
  %i.be = shufflevector <2 x float> %.sroa.026.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x float> %i.be, float %.sroa.9.0, i64 1 ; 2 uses
  %i.bg = fsub contract <2 x float> splat (float 1.000000e+00), %i.bf
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.ax, i64 1
  %i.bk = fmul contract <2 x double> %i.bj, %i.bh
  %i.bl = fpext <2 x float> %i.bf to <2 x double>
  %i.bm = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bb, i64 1
  %i.bo = fmul contract <2 x double> %i.bn, %i.bl
  %i.bp = fadd contract <2 x double> %i.bk, %i.bo
  %i.bq = fptrunc <2 x double> %i.bp to <2 x float>
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %i.bt = tail call contract double @exp2(double noundef %i.bs) #35, !tbaa !9
  %i.bu = extractelement <2 x double> %i.br, i64 1
  %i.bv = tail call contract double @exp2(double noundef %i.bu) #35, !tbaa !9
  %i.bw = fptrunc contract double %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bz = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bt, i64 1
  %i.cb = fptrunc <2 x double> %i.ca to <2 x float>
  %i.cc = load <2 x float>, ptr %i.bx, align 4, !tbaa !14
  %i.cd = fadd contract <2 x float> %0, %i.cc
  %i.ce = fmul contract <2 x float> %i.cd, %i.cb
  %i.cf = load <2 x float>, ptr %i.by, align 8, !tbaa !14
  %i.cg = fsub contract <2 x float> %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !14
  %i.cj = fadd contract float %1, %i.ci
  %i.ck = fmul contract float %i.cj, %i.bw
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !14
  %i.cn = fsub contract float %i.ck, %i.cm
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.cg, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.cn, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9applyGainENS_5ColorES0_PNS_25uhdr_gainmap_metadata_extEf(<2 x float> %0, float %1, <2 x float> %2, float %3, ptr nofree noundef readonly captures(none) %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = fcmp contract une float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.029.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.d = fpext contract float %.sroa.029.0.vec.extract to double
  %i.e = fdiv contract float 1.000000e+00, %i.b
  %i.f = fpext contract float %i.e to double
  %i.g = tail call contract double @pow(double noundef %i.d, double noundef %i.f) #35, !tbaa !9
  %i.h = fptrunc contract double %i.g to float
  %.sroa.029.0.vec.insert = insertelement <2 x float> %2, float %i.h, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.029.0 = phi <2 x float> [ %.sroa.029.0.vec.insert, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.k = fcmp contract une float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.029.4.vec.extract = extractelement <2 x float> %.sroa.029.0, i64 1
  %i.l = fpext contract float %.sroa.029.4.vec.extract to double
  %i.m = fdiv contract float 1.000000e+00, %i.j
  %i.n = fpext contract float %i.m to double
  %i.o = tail call contract double @pow(double noundef %i.l, double noundef %i.n) #35, !tbaa !9
  %i.p = fptrunc contract double %i.o to float
  %.sroa.029.4.vec.insert = insertelement <2 x float> %.sroa.029.0, float %i.p, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.029.1 = phi <2 x float> [ %.sroa.029.4.vec.insert, %bb.d ], [ %.sroa.029.0, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load float, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = fcmp contract une float %i.r, 1.000000e+00
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = fpext contract float %3 to double
  %i.u = fdiv contract float 1.000000e+00, %i.r
  %i.v = fpext contract float %i.u to double
  %i.w = tail call contract double @pow(double noundef %i.t, double noundef %i.v) #35, !tbaa !9
  %i.x = fptrunc contract double %i.w to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.9.0 = phi float [ %i.x, %bb.f ], [ %3, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !14
  %i.aa = fpext contract float %i.z to double
  %i.ab = tail call contract double @log2(double noundef %i.aa) #35, !tbaa !9
  %.sroa.029.0.vec.extract32 = extractelement <2 x float> %.sroa.029.1, i64 0 ; 2 uses
  %i.ac = fsub contract float 1.000000e+00, %.sroa.029.0.vec.extract32
  %i.ad = fpext contract float %i.ac to double
  %i.ae = fmul contract double %i.ab, %i.ad
  %i.af = load float, ptr %4, align 8, !tbaa !14
  %i.ag = fpext contract float %i.af to double
  %i.ah = tail call contract double @log2(double noundef %i.ag) #35, !tbaa !9
  %i.ai = fpext contract float %.sroa.029.0.vec.extract32 to double
  %i.aj = fmul contract double %i.ah, %i.ai
  %i.ak = fadd contract double %i.ae, %i.aj
  %i.al = fptrunc contract double %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load float, ptr %i.am, align 8, !tbaa !14
  %i.ao = fpext contract float %i.an to double
  %i.ap = tail call contract double @log2(double noundef %i.ao) #35, !tbaa !9
  %.sroa.029.4.vec.extract37 = extractelement <2 x float> %.sroa.029.1, i64 1 ; 2 uses
  %i.aq = fsub contract float 1.000000e+00, %.sroa.029.4.vec.extract37
  %i.ar = fpext contract float %i.aq to double
  %i.as = fmul contract double %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !14
  %i.av = fpext contract float %i.au to double
  %i.aw = tail call contract double @log2(double noundef %i.av) #35, !tbaa !9
  %i.ax = fpext contract float %.sroa.029.4.vec.extract37 to double
  %i.ay = fmul contract double %i.aw, %i.ax
  %i.az = fadd contract double %i.as, %i.ay
  %i.ba = fptrunc contract double %i.az to float
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !14
  %i.bd = fpext contract float %i.bc to double
  %i.be = tail call contract double @log2(double noundef %i.bd) #35, !tbaa !9
  %i.bf = fsub contract float 1.000000e+00, %.sroa.9.0
  %i.bg = fpext contract float %i.bf to double
  %i.bh = fmul contract double %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !14
  %i.bk = fpext contract float %i.bj to double
  %i.bl = tail call contract double @log2(double noundef %i.bk) #35, !tbaa !9
  %i.bm = fpext contract float %.sroa.9.0 to double
  %i.bn = fmul contract double %i.bl, %i.bm
  %i.bo = fadd contract double %i.bh, %i.bn
  %i.bp = fptrunc contract double %i.bo to float
  %i.bq = fmul contract float %5, %i.al
  %i.br = fpext contract float %i.bq to double
  %i.bs = tail call contract double @exp2(double noundef %i.br) #35, !tbaa !9
  %i.bt = fmul contract float %5, %i.ba
  %i.bu = fpext contract float %i.bt to double
  %i.bv = tail call contract double @exp2(double noundef %i.bu) #35, !tbaa !9
  %i.bw = fmul contract float %5, %i.bp
  %i.bx = fpext contract float %i.bw to double
  %i.by = tail call contract double @exp2(double noundef %i.bx) #35, !tbaa !9
  %i.bz = fptrunc contract double %i.by to float
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cc = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.bv, i64 1
  %i.ce = fptrunc <2 x double> %i.cd to <2 x float>
  %i.cf = load <2 x float>, ptr %i.ca, align 4, !tbaa !14
  %i.cg = fadd contract <2 x float> %0, %i.cf
  %i.ch = fmul contract <2 x float> %i.cg, %i.ce
  %i.ci = load <2 x float>, ptr %i.cb, align 8, !tbaa !14
  %i.cj = fsub contract <2 x float> %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !14
  %i.cm = fadd contract float %1, %i.cl
  %i.cn = fmul contract float %i.cm, %i.bz
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cp = load float, ptr %i.co, align 8, !tbaa !14
  %i.cq = fsub contract float %i.cn, %i.cp
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.cj, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.cq, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr12applyGainLUTENS_5ColorES0_RNS_7GainLUTEPNS_25uhdr_gainmap_metadata_extE(<2 x float> %0, float %1, <2 x float> %2, float %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #21 {
bb.a:
  %.sroa.014.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.b = load float, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = fcmp contract une float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = fpext contract float %.sroa.014.0.vec.extract to double
  %i.e = fpext contract float %i.b to double
  %i.f = tail call contract double @pow(double noundef %i.d, double noundef %i.e) #35, !tbaa !9
  %i.g = fptrunc contract double %i.f to float
  br label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit

_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit:      ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.g, %bb.b ], [ %.sroa.014.0.vec.extract, %bb.a ]
  %i.h = fmul contract float %.0.i, 1.023000e+03
  %i.i = fpext contract float %i.h to double
  %i.j = fadd contract double %i.i, 5.000000e-01
  %i.k = fptosi double %i.j to i32
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 1023)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !14
  %.sroa.014.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.t = load float, ptr %i.s, align 4, !tbaa !14 ; 2 uses
  %i.u = fcmp contract une float %i.t, 1.000000e+00
  br i1 %i.u, label %bb.c, label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit23

bb.c:                                             ; preds = %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit
  %i.v = fpext contract float %.sroa.014.4.vec.extract to double
  %i.w = fpext contract float %i.t to double
  %i.x = tail call contract double @pow(double noundef %i.v, double noundef %i.w) #35, !tbaa !9
  %i.y = fptrunc contract double %i.x to float
  br label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit23

_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit23:    ; preds = %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit, %bb.c
  %.0.i22 = phi float [ %i.y, %bb.c ], [ %.sroa.014.4.vec.extract, %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit ]
  %i.z = fmul contract float %.0.i22, 1.023000e+03
  %i.aa = fpext contract float %i.z to double
  %i.ab = fadd contract double %i.aa, 5.000000e-01
  %i.ac = fptosi double %i.ab to i32
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 1023)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.al = load float, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = fcmp contract une float %i.al, 1.000000e+00
  br i1 %i.am, label %bb.d, label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit25

bb.d:                                             ; preds = %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit23
  %i.an = fpext contract float %3 to double
  %i.ao = fpext contract float %i.al to double
  %i.ap = tail call contract double @pow(double noundef %i.an, double noundef %i.ao) #35, !tbaa !9
  %i.aq = fptrunc contract double %i.ap to float
  br label %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit25

_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit25:    ; preds = %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit23, %bb.d
  %.0.i24 = phi float [ %i.aq, %bb.d ], [ %3, %_ZN8ultrahdr7GainLUT13getGainFactorEfi.exit23 ]
  %i.ar = fmul contract float %.0.i24, 1.023000e+03
  %i.as = fpext contract float %i.ar to double
  %i.at = fadd contract double %i.as, 5.000000e-01
  %i.au = fptosi double %i.at to i32
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.au, i32 0)
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.av, i32 1023)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !14
  %i.bf = fadd contract <2 x float> %0, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.aj, i64 1
  %i.bi = fmul contract <2 x float> %i.bh, %i.bf
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !14
  %i.bk = fsub contract <2 x float> %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !14
  %i.bn = fadd contract float %1, %i.bm
  %i.bo = fmul contract float %i.bb, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !14
  %i.br = fsub contract float %i.bo, %i.bq
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.bk, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.br, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define noundef float @_ZN8ultrahdr9sampleMapEP14uhdr_raw_imagefmm(ptr nofree noundef readonly captures(none) %0, float noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = uitofp i64 %2 to float
  %i.b = uitofp i64 %3 to float
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !9
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.a, i64 0
  %i.k = insertelement <2 x float> %i.j, float %i.b, i64 1
  %i.l = insertelement <2 x float> poison, float %1, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv contract <2 x float> %i.k, %i.m     ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.p = tail call contract float @llvm.floor.f32(float %i.o)
  %i.q = fptoui float %i.p to i64                 ; 2 uses
  %i.r = add i64 %i.q, 1
  %i.s = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.t = tail call contract float @llvm.floor.f32(float %i.s)
  %i.u = fptoui float %i.t to i64                 ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !36
  %i.w = add i32 %i.v, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.q) ; 2 uses
  %..i71 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.r) ; 2 uses
  %i.y = load i32, ptr %i.d, align 4, !tbaa !35
  %i.z = add i32 %i.y, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %..i72 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.u) ; 2 uses
  %i.ab = mul nuw i64 %..i72, %i.i                ; 2 uses
  %i.ac = getelementptr i8, ptr %i.f, i64 %..i    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fdiv contract float %i.af, 2.550000e+02 ; 2 uses
  %i.ah = uitofp nneg i64 %..i to float
  %i.ai = uitofp nneg i64 %..i72 to float
  %i.aj = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fsub contract <2 x float> %i.n, %i.ak
  %i.am = fpext <2 x float> %i.al to <2 x double> ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  %i.ao = tail call contract double @pow(double noundef %i.an, double noundef 2.000000e+00) #35, !tbaa !9
  %i.ap = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.aq = tail call contract double @pow(double noundef %i.ap, double noundef 2.000000e+00) #35, !tbaa !9
  %i.ar = fadd contract double %i.ao, %i.aq
  %i.as = tail call contract double @sqrt(double noundef %i.ar) #35, !tbaa !9
  %i.at = fptrunc contract double %i.as to float  ; 2 uses
  %i.au = fcmp contract oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = add i64 %i.u, 1
  %..i73 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.av) ; 2 uses
  %i.aw = mul nuw i64 %..i73, %i.i                ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ac, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !24
  %i.az = uitofp i8 %i.ay to float
  %i.ba = fdiv contract float %i.az, 2.550000e+02 ; 3 uses
  %i.bb = uitofp nneg i64 %..i73 to float
  %i.bc = fsub contract float %i.s, %i.bb
  %i.bd = tail call contract double @pow(double noundef %i.an, double noundef 2.000000e+00) #35, !tbaa !9
  %i.be = fpext contract float %i.bc to double    ; 2 uses
  %i.bf = tail call contract double @pow(double noundef %i.be, double noundef 2.000000e+00) #35, !tbaa !9
  %i.bg = fadd contract double %i.bd, %i.bf
  %i.bh = tail call contract double @sqrt(double noundef %i.bg) #35, !tbaa !9
  %i.bi = fptrunc contract double %i.bh to float  ; 2 uses
  %i.bj = fcmp contract oeq float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr i8, ptr %i.f, i64 %..i71  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.ab
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = fdiv contract float %i.bn, 2.550000e+02 ; 2 uses
  %i.bp = uitofp nneg i64 %..i71 to float
  %i.bq = fsub contract float %i.o, %i.bp
  %i.br = fpext contract float %i.bq to double    ; 2 uses
  %i.bs = tail call contract double @pow(double noundef %i.br, double noundef 2.000000e+00) #35, !tbaa !9
  %i.bt = tail call contract double @pow(double noundef %i.ap, double noundef 2.000000e+00) #35, !tbaa !9
  %i.bu = fadd contract double %i.bs, %i.bt
  %i.bv = tail call contract double @sqrt(double noundef %i.bu) #35, !tbaa !9
  %i.bw = fptrunc contract double %i.bv to float  ; 2 uses
  %i.bx = fcmp contract oeq float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr i8, ptr %i.bk, i64 %i.aw
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = tail call contract double @pow(double noundef %i.br, double noundef 2.000000e+00) #35, !tbaa !9
  %i.cb = tail call contract double @pow(double noundef %i.be, double noundef 2.000000e+00) #35, !tbaa !9
  %i.cc = fadd contract double %i.ca, %i.cb
  %i.cd = tail call contract double @sqrt(double noundef %i.cc) #35, !tbaa !9
  %i.ce = fptrunc contract double %i.cd to float  ; 2 uses
  %i.cf = fcmp contract oeq float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = uitofp i8 %i.bz to float
  %i.ch = fdiv nnan contract float %i.cg, 2.550000e+02
  %i.ci = insertelement <4 x float> poison, float %i.at, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.bi, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.bw, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.ce, i64 3
  %i.cm = fdiv contract <4 x float> splat (float 1.000000e+00), %i.cl ; 5 uses
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cp = fadd contract <4 x float> %i.cn, %i.co
  %i.cq = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cr = fadd contract <4 x float> %i.cp, %i.cq
  %i.cs = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ct = fadd contract <4 x float> %i.cr, %i.cs
  %i.cu = fdiv contract <4 x float> %i.cm, %i.ct
  %i.cv = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.ba, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %i.bo, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %i.ch, i64 3
  %i.cz = fmul contract <4 x float> %i.cy, %i.cu  ; 4 uses
  %shift111 = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop112 = fadd contract <4 x float> %i.cz, %shift111
  %shift114 = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop115 = fadd contract <4 x float> %shift114, %foldExtExtBinop112
  %shift117 = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop118 = fadd contract <4 x float> %shift117, %foldExtExtBinop115
  %i.da = extractelement <4 x float> %foldExtExtBinop118, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %bb.a
  %.3 = phi float [ %i.ag, %bb.a ], [ %i.ba, %bb.b ], [ %i.bo, %bb.c ], [ %i.da, %bb.e ], [ %i.ba, %bb.d ]
  ret float %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN8ultrahdr9sampleMapEP14uhdr_raw_imagemmmRNS_11ShepardsIDWE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4) local_unnamed_addr #14 {
bb.a:
  %i.a = udiv i64 %2, %1                          ; 2 uses
  %i.b = add i64 %i.a, 1
  %i.c = udiv i64 %3, %1                          ; 2 uses
  %i.d = add i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36
  %i.g = zext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, -1                     ; 2 uses
  %.sroa.speculated50 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.a) ; 2 uses
  %.sroa.speculated46 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.b) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = zext i32 %i.j to i64
  %i.l = add nsw i64 %i.k, -1                     ; 2 uses
  %.sroa.speculated42 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.c) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = mul i64 %.sroa.speculated42, %i.q        ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 %.sroa.speculated50 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = mul i64 %.sroa.speculated, %i.q          ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = getelementptr i8, ptr %i.n, i64 %.sroa.speculated46 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %i.r
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.v
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = icmp eq i64 %.sroa.speculated50, %.sroa.speculated46
  %i.ae = icmp eq i64 %.sroa.speculated42, %.sroa.speculated ; 2 uses
  %spec.select.v = select i1 %i.ae, i64 24, i64 8
  %. = select i1 %i.ae, i64 32, i64 16
  %spec.select.v.sink = select i1 %i.ad, i64 %., i64 %spec.select.v
  %spec.select = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.v.sink
  %.0 = load ptr, ptr %spec.select, align 8, !tbaa !37
  %i.af = urem i64 %3, %1
  %i.ag = urem i64 %2, %1
  %i.ah = mul i64 %i.af, %1
  %i.ai = add i64 %i.ah, %i.ag
  %.idx = shl i64 %i.ai, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx
  %i.ak = insertelement <4 x i8> poison, i8 %i.u, i64 0
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.x, i64 1
  %i.am = insertelement <4 x i8> %i.al, i8 %i.aa, i64 2
  %i.an = insertelement <4 x i8> %i.am, i8 %i.ac, i64 3
  %i.ao = uitofp <4 x i8> %i.an to <4 x float>
  %i.ap = fdiv nnan contract <4 x float> %i.ao, splat (float 2.550000e+02)
  %i.aq = load <4 x float>, ptr %i.aj, align 4, !tbaa !14
  %i.ar = fmul contract <4 x float> %i.ap, %i.aq  ; 4 uses
  %shift = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd contract <4 x float> %i.ar, %shift
  %shift78 = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop79 = fadd contract <4 x float> %foldExtExtBinop, %shift78
  %shift81 = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop82 = fadd contract <4 x float> %foldExtExtBinop79, %shift81
  %i.as = extractelement <4 x float> %foldExtExtBinop82, i64 0
  ret float %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr17sampleMap3ChannelEP14uhdr_raw_imagefmmb(ptr nofree noundef readonly captures(none) %0, float noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #21 {
bb.a:
  %i.a = uitofp i64 %2 to float
  %i.b = uitofp i64 %3 to float
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !9
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = select i1 %4, i64 4, i64 3               ; 4 uses
  %i.k = insertelement <2 x float> poison, float %i.a, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.b, i64 1
  %i.m = insertelement <2 x float> poison, float %1, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv contract <2 x float> %i.l, %i.n     ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.q = tail call contract float @llvm.floor.f32(float %i.p)
  %i.r = fptoui float %i.q to i64                 ; 2 uses
  %i.s = add i64 %i.r, 1
  %i.t = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.u = tail call contract float @llvm.floor.f32(float %i.t)
  %i.v = fptoui float %i.u to i64                 ; 2 uses
  %i.w = add i64 %i.v, 1
  %i.x = load i32, ptr %i.c, align 8, !tbaa !36
  %i.y = zext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %.sroa.speculated218 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.r) ; 3 uses
  %.sroa.speculated214 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.s) ; 3 uses
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !35
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, -1                   ; 2 uses
  %.sroa.speculated210 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.v) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.w) ; 2 uses
  %i.ad = mul i64 %.sroa.speculated210, %i.i      ; 2 uses
  %i.ae = add i64 %i.ad, %.sroa.speculated218
  %i.af = mul i64 %i.ae, %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.af ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24
  %i.ai = mul i64 %.sroa.speculated, %i.i         ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.speculated218
  %i.ak = mul i64 %i.aj, %i.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ak ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = add i64 %i.ad, %.sroa.speculated214
  %i.ao = mul i64 %i.an, %i.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = add i64 %i.ai, %.sroa.speculated214
  %i.as = mul i64 %i.ar, %i.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.as ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.am, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.aq, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 3
  %i.az = uitofp <4 x i8> %i.ay to <4 x float>
  %i.ba = fdiv contract <4 x float> %i.az, splat (float 2.550000e+02) ; 5 uses
  %i.bb = getelementptr i8, ptr %i.ag, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24
  %i.bd = getelementptr i8, ptr %i.al, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bf = getelementptr i8, ptr %i.ap, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !24
  %i.bh = getelementptr i8, ptr %i.at, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bj = insertelement <4 x i8> poison, i8 %i.bc, i64 0
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.be, i64 1
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bg, i64 2
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 3
  %i.bn = uitofp <4 x i8> %i.bm to <4 x float>
  %i.bo = fdiv contract <4 x float> %i.bn, splat (float 2.550000e+02) ; 5 uses
  %i.bp = getelementptr i8, ptr %i.ag, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !24
  %i.br = getelementptr i8, ptr %i.al, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !24
  %i.bt = getelementptr i8, ptr %i.ap, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24
  %i.bv = getelementptr i8, ptr %i.at, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !24
  %i.bx = insertelement <4 x i8> poison, i8 %i.bq, i64 0
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bs, i64 1
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bu, i64 2
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bw, i64 3
  %i.cb = uitofp <4 x i8> %i.ca to <4 x float>
  %i.cc = fdiv contract <4 x float> %i.cb, splat (float 2.550000e+02) ; 5 uses
  %i.cd = shufflevector <4 x float> %i.ba, <4 x float> %i.bo, <2 x i32> <i32 0, i32 4>
  %i.ce = shufflevector <4 x float> %i.ba, <4 x float> %i.bo, <2 x i32> <i32 2, i32 6>
  %i.cf = shufflevector <4 x float> %i.ba, <4 x float> %i.bo, <2 x i32> <i32 3, i32 7>
  %i.cg = uitofp i64 %.sroa.speculated218 to float
  %i.ch = uitofp i64 %.sroa.speculated210 to float
  %i.ci = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ch, i64 1
  %i.ck = fsub contract <2 x float> %i.o, %i.cj
  %i.cl = fpext <2 x float> %i.ck to <2 x double> ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cn = tail call contract double @pow(double noundef %i.cm, double noundef 2.000000e+00) #35, !tbaa !9
  %i.co = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %i.cp = tail call contract double @pow(double noundef %i.co, double noundef 2.000000e+00) #35, !tbaa !9
  %i.cq = fadd contract double %i.cn, %i.cp
  %i.cr = tail call contract double @sqrt(double noundef %i.cq) #35, !tbaa !9
  %i.cs = fptrunc contract double %i.cr to float  ; 2 uses
  %i.ct = fcmp contract oeq float %i.cs, 0.000000e+00
  %i.cu = extractelement <4 x float> %i.cc, i64 0
  br i1 %i.ct, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cv = shufflevector <4 x float> %i.ba, <4 x float> %i.bo, <2 x i32> <i32 1, i32 5>
  %i.cw = uitofp i64 %.sroa.speculated to float
  %i.cx = fsub contract float %i.t, %i.cw
  %i.cy = tail call contract double @pow(double noundef %i.cm, double noundef 2.000000e+00) #35, !tbaa !9
  %i.cz = fpext contract float %i.cx to double    ; 2 uses
  %i.da = tail call contract double @pow(double noundef %i.cz, double noundef 2.000000e+00) #35, !tbaa !9
  %i.db = fadd contract double %i.cy, %i.da
  %i.dc = tail call contract double @sqrt(double noundef %i.db) #35, !tbaa !9
  %i.dd = fptrunc contract double %i.dc to float  ; 2 uses
  %i.de = fcmp contract oeq float %i.dd, 0.000000e+00
  %i.df = extractelement <4 x float> %i.cc, i64 1
  br i1 %i.de, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dg = uitofp i64 %.sroa.speculated214 to float
  %i.dh = fsub contract float %i.p, %i.dg
  %i.di = fpext contract float %i.dh to double    ; 2 uses
  %i.dj = tail call contract double @pow(double noundef %i.di, double noundef 2.000000e+00) #35, !tbaa !9
  %i.dk = tail call contract double @pow(double noundef %i.co, double noundef 2.000000e+00) #35, !tbaa !9
  %i.dl = fadd contract double %i.dj, %i.dk
  %i.dm = tail call contract double @sqrt(double noundef %i.dl) #35, !tbaa !9
  %i.dn = fptrunc contract double %i.dm to float  ; 2 uses
  %i.do = fcmp contract oeq float %i.dn, 0.000000e+00
  %i.dp = extractelement <4 x float> %i.cc, i64 2
  br i1 %i.do, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dq = tail call contract double @pow(double noundef %i.di, double noundef 2.000000e+00) #35, !tbaa !9
  %i.dr = tail call contract double @pow(double noundef %i.cz, double noundef 2.000000e+00) #35, !tbaa !9
  %i.ds = fadd contract double %i.dq, %i.dr
  %i.dt = tail call contract double @sqrt(double noundef %i.ds) #35, !tbaa !9
  %i.du = fptrunc contract double %i.dt to float  ; 2 uses
  %i.dv = fcmp contract oeq float %i.du, 0.000000e+00
  %i.dw = extractelement <4 x float> %i.cc, i64 3
  br i1 %i.dv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dx = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.dd, i64 1
  %i.dz = insertelement <4 x float> %i.dy, float %i.dn, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.du, i64 3
  %i.eb = fdiv contract <4 x float> splat (float 1.000000e+00), %i.ea ; 5 uses
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ee = fadd contract <4 x float> %i.ec, %i.ed
  %i.ef = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eg = fadd contract <4 x float> %i.ee, %i.ef
  %i.eh = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ei = fadd contract <4 x float> %i.eg, %i.eh
  %i.ej = fdiv contract <4 x float> %i.eb, %i.ei  ; 3 uses
  %i.ek = fmul contract <4 x float> %i.bo, %i.ej  ; 4 uses
  %i.el = fmul contract <4 x float> %i.ba, %i.ej  ; 4 uses
  %i.em = fmul contract <4 x float> %i.cc, %i.ej  ; 4 uses
  %shift271 = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop272 = fadd contract <4 x float> %i.em, %shift271
  %shift274 = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop275 = fadd contract <4 x float> %shift274, %foldExtExtBinop272
  %i.en = shufflevector <4 x float> %i.ek, <4 x float> %i.el, <2 x i32> <i32 4, i32 0>
  %i.eo = shufflevector <4 x float> %i.ek, <4 x float> %i.el, <2 x i32> <i32 5, i32 1>
  %i.ep = fadd contract <2 x float> %i.en, %i.eo
  %i.eq = shufflevector <4 x float> %i.ek, <4 x float> %i.el, <2 x i32> <i32 6, i32 2>
  %i.er = fadd contract <2 x float> %i.eq, %i.ep
  %i.es = shufflevector <4 x float> %i.ek, <4 x float> %i.el, <2 x i32> <i32 7, i32 3>
  %i.et = fadd contract <2 x float> %i.es, %i.er
  %shift277 = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop278 = fadd contract <4 x float> %shift277, %foldExtExtBinop275
  %i.eu = extractelement <4 x float> %foldExtExtBinop278, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0114.3 = phi <2 x float> [ %i.et, %bb.e ], [ %i.cd, %bb.a ], [ %i.cv, %bb.b ], [ %i.ce, %bb.c ], [ %i.cf, %bb.d ]
  %.sroa.6.3 = phi float [ %i.eu, %bb.e ], [ %i.cu, %bb.a ], [ %i.df, %bb.b ], [ %i.dp, %bb.c ], [ %i.dw, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0114.3, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.6.3, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr17sampleMap3ChannelEP14uhdr_raw_imagemmmRNS_11ShepardsIDWEb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, i1 noundef zeroext %5) local_unnamed_addr #15 {
bb.a:
  %i.a = udiv i64 %2, %1                          ; 2 uses
  %i.b = add i64 %i.a, 1
  %i.c = udiv i64 %3, %1                          ; 2 uses
  %i.d = add i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36
  %i.g = zext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, -1                     ; 2 uses
  %.sroa.speculated190 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.a) ; 3 uses
  %.sroa.speculated186 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.b) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = zext i32 %i.j to i64
  %i.l = add nsw i64 %i.k, -1                     ; 2 uses
  %.sroa.speculated182 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.c) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = mul i64 %.sroa.speculated182, %i.q       ; 2 uses
  %i.s = add i64 %i.r, %.sroa.speculated190
  %i.t = select i1 %5, i64 4, i64 3               ; 4 uses
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = mul i64 %.sroa.speculated, %i.q          ; 2 uses
  %i.y = add i64 %i.x, %.sroa.speculated190
  %i.z = mul i64 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24
  %i.ac = add i64 %i.r, %.sroa.speculated186
  %i.ad = mul i64 %i.ac, %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !24
  %i.ag = add i64 %i.x, %.sroa.speculated186
  %i.ah = mul i64 %i.ag, %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ah ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = getelementptr i8, ptr %i.v, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = getelementptr i8, ptr %i.aa, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = getelementptr i8, ptr %i.ae, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !24
  %i.aq = getelementptr i8, ptr %i.ai, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = getelementptr i8, ptr %i.v, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = getelementptr i8, ptr %i.aa, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !24
  %i.aw = getelementptr i8, ptr %i.ae, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24
  %i.ay = getelementptr i8, ptr %i.ai, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  %i.ba = icmp eq i64 %.sroa.speculated190, %.sroa.speculated186
  %i.bb = icmp eq i64 %.sroa.speculated182, %.sroa.speculated ; 2 uses
  %spec.select.v = select i1 %i.bb, i64 24, i64 8
  %. = select i1 %i.bb, i64 32, i64 16
  %spec.select.v.sink = select i1 %i.ba, i64 %., i64 %spec.select.v
  %spec.select = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.v.sink
  %.0 = load ptr, ptr %spec.select, align 8, !tbaa !37
  %i.bc = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %i.bd = insertelement <4 x i8> %i.bc, i8 %i.af, i64 1
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.ab, i64 2
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.w, i64 3
  %i.bg = uitofp <4 x i8> %i.bf to <4 x float>
  %i.bh = fdiv nnan contract <4 x float> %i.bg, splat (float 2.550000e+02)
  %i.bi = urem i64 %3, %1
  %i.bj = urem i64 %2, %1
  %i.bk = mul i64 %i.bi, %1
  %i.bl = add i64 %i.bk, %i.bj
  %.idx = shl i64 %i.bl, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx
  %i.bn = insertelement <4 x i8> poison, i8 %i.at, i64 0
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.av, i64 1
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.ax, i64 2
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.az, i64 3
  %i.br = uitofp <4 x i8> %i.bq to <4 x float>
  %i.bs = fdiv nnan contract <4 x float> %i.br, splat (float 2.550000e+02)
  %i.bt = load <4 x float>, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.bu = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bv = fmul contract <4 x float> %i.bs, %i.bt  ; 4 uses
  %shift = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd contract <4 x float> %i.bv, %shift
  %shift234 = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop235 = fadd contract <4 x float> %foldExtExtBinop, %shift234
  %i.bw = fmul contract <4 x float> %i.bu, %i.bt  ; 4 uses
  %i.bx = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.an, i64 1
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.ap, i64 2
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.ar, i64 3
  %i.cb = uitofp <4 x i8> %i.ca to <4 x float>
  %i.cc = fdiv nnan contract <4 x float> %i.cb, splat (float 2.550000e+02)
  %i.cd = fmul contract <4 x float> %i.cc, %i.bt  ; 4 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.bw, <2 x i32> <i32 4, i32 0>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.bw, <2 x i32> <i32 5, i32 1>
  %i.cg = fadd contract <2 x float> %i.ce, %i.cf
  %i.ch = shufflevector <4 x float> %i.cd, <4 x float> %i.bw, <2 x i32> <i32 6, i32 2>
  %i.ci = fadd contract <2 x float> %i.cg, %i.ch
  %i.cj = shufflevector <4 x float> %i.cd, <4 x float> %i.bw, <2 x i32> <i32 7, i32 3>
  %i.ck = fadd contract <2 x float> %i.ci, %i.cj
  %shift237 = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop238 = fadd contract <4 x float> %foldExtExtBinop235, %shift237
  %i.cl = extractelement <4 x float> %foldExtExtBinop238, i64 0
  %.fca.0.insert.i.i157 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ck, 0
  %.fca.1.insert.i.i158 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i157, float %i.cl, 1
end_hunk_1
