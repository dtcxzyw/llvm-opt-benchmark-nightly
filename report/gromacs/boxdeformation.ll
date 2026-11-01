Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/boxdeformation?download=true
inline.NumInlined: 192
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.d = load ptr, ptr %3, align 8, !tbaa !34     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #18, !inline_history !0
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.i = load ptr, ptr %3, align 8, !tbaa !34     ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #18, !inline_history !0
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !38
  store ptr null, ptr %i.o, align 8, !tbaa !41
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !38
  store ptr null, ptr %i.n, align 8, !tbaa !44
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !175
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !176
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !173
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !173
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !177

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

declare void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !178
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !178
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx14BoxDeformationC2EdlRKNS_14BasicMatrix3x3IfEES4_(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 52)) %0, double noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %4) unnamed_addr #14 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 36, i1 false), !tbaa.struct !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 36, i1 false), !tbaa.struct !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.d, ptr %i.e, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx14BoxDeformation5applyEPNS_14BasicMatrix3x3IfEEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
.preheader75:
  %.sroa.0 = alloca [3 x float], align 8          ; 14 uses
  %.sroa.14 = alloca [3 x float], align 8         ; 16 uses
  %.sroa.26 = alloca [3 x float], align 8         ; 21 uses
  %i.a = add nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54
  %i.d = sub i64 %i.a, %i.c
  %i.e = sitofp i64 %i.d to double
  %i.f = load double, ptr %0, align 8, !tbaa !53
  %i.g = fmul double %i.f, %i.e
  %i.h = fptrunc double %i.g to float             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !29
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.0..sroa_idx, i64 12, i1 false), !tbaa.struct !181
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.26.0..sroa_idx, i64 12, i1 false), !tbaa.struct !182
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !30 ; 2 uses
  %i.m = fcmp une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader75
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.o = load float, ptr %i.n, align 4, !tbaa !30
  %i.p = tail call float @llvm.fmuladd.f32(float %i.h, float %i.l, float %i.o)
  store float %i.p, ptr %.sroa.0, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %.preheader75, %bb.a
  %i.q = getelementptr i8, ptr %i.j, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !30 ; 2 uses
  %i.s = fcmp une float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !30
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %i.r, float %i.v)
  %.sroa.0.4..sroa_idx259 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store float %i.w, ptr %.sroa.0.4..sroa_idx259, align 4, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr i8, ptr %i.j, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !30 ; 2 uses
  %i.z = fcmp une float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.e, label %.preheader75.1

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !30
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.h, float %i.y, float %i.ac)
  %.sroa.0.8..sroa_idx261 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store float %i.ad, ptr %.sroa.0.8..sroa_idx261, align 8, !tbaa !30
  br label %.preheader75.1

.preheader75.1:                                   ; preds = %bb.e, %bb.d
  %i.ae = getelementptr i8, ptr %i.j, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !30 ; 2 uses
  %i.ag = fcmp une float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader75.1
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.ai = getelementptr i8, ptr %i.ah, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !30
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.h, float %i.af, float %i.aj)
  store float %i.ak, ptr %.sroa.14, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader75.1
  %i.al = getelementptr i8, ptr %i.j, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  %i.an = fcmp une float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !30
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.h, float %i.am, float %i.aq)
  %.sroa.14.4..sroa_idx254 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 4
  store float %i.ar, ptr %.sroa.14.4..sroa_idx254, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = getelementptr i8, ptr %i.j, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !30 ; 2 uses
  %i.au = fcmp une float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.j, label %.preheader75.2

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.aw = getelementptr i8, ptr %i.av, i64 20
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !30
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.h, float %i.at, float %i.ax)
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  store float %i.ay, ptr %.sroa.14.8..sroa_idx, align 8, !tbaa !30
  br label %.preheader75.2

.preheader75.2:                                   ; preds = %bb.j, %bb.i
  %i.az = getelementptr i8, ptr %i.j, i64 24
  %i.ba = load float, ptr %i.az, align 4, !tbaa !30 ; 2 uses
  %i.bb = fcmp une float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader75.2
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !30
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.h, float %i.ba, float %i.be)
  store float %i.bf, ptr %.sroa.26, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader75.2
  %i.bg = getelementptr i8, ptr %i.j, i64 28
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !30 ; 2 uses
  %i.bi = fcmp une float %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.bk = getelementptr i8, ptr %i.bj, i64 28
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !30
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.h, float %i.bh, float %i.bl)
  %.sroa.26.4..sroa_idx247 = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 4
  store float %i.bm, ptr %.sroa.26.4..sroa_idx247, align 4, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = getelementptr i8, ptr %i.j, i64 32
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !30 ; 2 uses
  %i.bp = fcmp une float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.o, label %.preheader74

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = load float, ptr %i.br, align 4, !tbaa !30
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.h, float %i.bo, float %i.bs)
  %.sroa.26.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 8
  store float %i.bt, ptr %.sroa.26.8..sroa_idx, align 8, !tbaa !30
  br label %.preheader74

.preheader74:                                     ; preds = %bb.o, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 12     ; 3 uses
  %3 = load float, ptr %i.bw, align 4, !tbaa !30
  %i.bx = load float, ptr %.sroa.0, align 8, !tbaa !30 ; 5 uses
  %i.by = fmul float %i.bx, 5.000000e-01          ; 4 uses
  %.sroa.14.0..sroa.14.12. = load <2 x float>, ptr %.sroa.14, align 8, !tbaa !30 ; 3 uses
  %i.bz = extractelement <2 x float> %.sroa.14.0..sroa.14.12., i64 0 ; 2 uses
  %i.ca = fsub float %i.bz, %3                    ; 2 uses
  %i.cb = fcmp ogt float %i.ca, %i.by
  %i.cc = extractelement <2 x float> %.sroa.14.0..sroa.14.12., i64 1
  br i1 %i.cb, label %.lr.ph, label %.preheader

.loopexit.loopexit:                               ; preds = %bb.u
  store float %i.fe, ptr %.sroa.14, align 8, !tbaa !30
  %.sroa.14.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 4
  store <2 x float> %i.ff, ptr %.sroa.14.4..sroa_idx, align 4, !tbaa !30
  %i.cd = extractelement <2 x float> %i.ff, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader
  %i.ce = phi float [ %i.ep, %.preheader ], [ %i.fe, %.loopexit.loopexit ] ; 2 uses
  %i.cf = phi float [ %.pre113, %.preheader ], [ %i.cd, %.loopexit.loopexit ] ; 4 uses
  %i.cg = getelementptr i8, ptr %i.bv, i64 24     ; 3 uses
  %i.ch = getelementptr i8, ptr %i.bv, i64 28     ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !30
  %i.cj = fmul float %i.cf, 5.000000e-01          ; 2 uses
  %.sroa.26.4..sroa_idx248 = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 4
  %.sroa.26.4..sroa.26.28..a = load float, ptr %.sroa.26.4..sroa_idx248, align 4, !tbaa !30 ; 2 uses
  %i.ck = fsub float %.sroa.26.4..sroa.26.28..a, %i.ci ; 2 uses
  %i.cl = fcmp ogt float %i.ck, %i.cj
  %.sroa.26.0..sroa.26.24..pre120.pre = load float, ptr %.sroa.26, align 8, !tbaa !30 ; 2 uses
  br i1 %i.cl, label %.lr.ph.1, label %.preheader.1

.lr.ph:                                           ; preds = %.preheader74
  %.sroa.0.0..sroa.0.0. = load <2 x float>, ptr %.sroa.0, align 8, !tbaa !30
  %.sroa.14.8..sroa_idx255.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.14.8..sroa.14.20..pre108.a = load float, ptr %.sroa.14.8..sroa_idx255.a, align 8, !tbaa !30
  %.sroa.14.8..sroa_idx252 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.20..pre108 = load float, ptr %.sroa.14.8..sroa_idx252, align 8, !tbaa !30
  %4 = load float, ptr %i.bw, align 4, !tbaa !30
  br label %bb.t

.lr.ph.1:                                         ; preds = %.loopexit
  %.sroa.14.8..sroa_idx257 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.20..pre115 = load float, ptr %.sroa.14.8..sroa_idx257, align 8, !tbaa !30
  %.sroa.26.8..sroa_idx249.a = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 4
  %.sroa.26.4..sroa.26.28. = load <2 x float>, ptr %.sroa.26.8..sroa_idx249.a, align 4, !tbaa !30
  %i.cm = load float, ptr %i.ch, align 4, !tbaa !30
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %.sroa.14.8..sroa.14.20..pre115, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.1
  %i.cp = phi float [ %i.cr, %bb.p ], [ %.sroa.26.0..sroa.26.24..pre120.pre, %.lr.ph.1 ]
  %i.cq = phi <2 x float> [ %i.cs, %bb.p ], [ %.sroa.26.4..sroa.26.28., %.lr.ph.1 ]
  %i.cr = fsub float %i.cp, %i.ce                 ; 3 uses
  %i.cs = fsub <2 x float> %i.cq, %i.co           ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.cu = fsub float %i.ct, %i.cm                 ; 2 uses
  %i.cv = fcmp ogt float %i.cu, %i.cj
  br i1 %i.cv, label %bb.p, label %.preheader.1.loopexit, !llvm.loop !179

.preheader.1.loopexit:                            ; preds = %bb.p
  store float %i.cr, ptr %.sroa.26, align 8, !tbaa !30
  %.sroa.26.4..sroa_idx246 = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 4
  store <2 x float> %i.cs, ptr %.sroa.26.4..sroa_idx246, align 4, !tbaa !30
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.loopexit, %.loopexit
  %.pre-phi129 = phi float [ %i.ck, %.loopexit ], [ %i.cu, %.preheader.1.loopexit ]
  %.pre120 = phi float [ %.sroa.26.0..sroa.26.24..pre120.pre, %.loopexit ], [ %i.cr, %.preheader.1.loopexit ] ; 2 uses
  %i.cw = phi float [ %.sroa.26.4..sroa.26.28..a, %.loopexit ], [ %i.ct, %.preheader.1.loopexit ] ; 2 uses
  %i.cx = fmul float %i.cf, -5.000000e-01         ; 2 uses
  %i.cy = fcmp olt float %.pre-phi129, %i.cx
  br i1 %i.cy, label %.lr.ph94.1, label %.loopexit.1

.lr.ph94.1:                                       ; preds = %.preheader.1
  %.sroa.14.8..sroa_idx258 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.20..pre118 = load float, ptr %.sroa.14.8..sroa_idx258, align 8, !tbaa !30
  %.sroa.26.8..sroa_idx250.a = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 8
  %.sroa.26.8..sroa.26.32..pre119 = load float, ptr %.sroa.26.8..sroa_idx250.a, align 8, !tbaa !30
  %i.cz = load float, ptr %i.ch, align 4, !tbaa !30
  %i.da = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.db = insertelement <2 x float> %i.da, float %.sroa.26.8..sroa.26.32..pre119, i64 1
  %i.dc = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %.sroa.14.8..sroa.14.20..pre118, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph94.1
  %i.de = phi float [ %i.dg, %bb.q ], [ %.pre120, %.lr.ph94.1 ]
  %i.df = phi <2 x float> [ %i.dh, %bb.q ], [ %i.db, %.lr.ph94.1 ]
  %i.dg = fadd float %i.ce, %i.de                 ; 3 uses
  %i.dh = fadd <2 x float> %i.dd, %i.df           ; 3 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = fsub float %i.di, %i.cz
  %i.dk = fcmp olt float %i.dj, %i.cx
  br i1 %i.dk, label %bb.q, label %.loopexit.1.loopexit, !llvm.loop !180

.loopexit.1.loopexit:                             ; preds = %bb.q
  store float %i.dg, ptr %.sroa.26, align 8, !tbaa !30
  %.sroa.26.4..sroa_idx245 = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 4
  store <2 x float> %i.dh, ptr %.sroa.26.4..sroa_idx245, align 4, !tbaa !30
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.loopexit, %.preheader.1
  %i.dl = phi float [ %i.cw, %.preheader.1 ], [ %i.di, %.loopexit.1.loopexit ] ; 2 uses
  %i.dm = phi float [ %.pre120, %.preheader.1 ], [ %i.dg, %.loopexit.1.loopexit ] ; 3 uses
  %i.dn = load float, ptr %i.cg, align 4, !tbaa !30
  %i.do = fsub float %i.dm, %i.dn                 ; 2 uses
  %i.dp = fcmp ogt float %i.do, %i.by
  br i1 %i.dp, label %.lr.ph.1.1, label %.preheader.1.1

.lr.ph.1.1:                                       ; preds = %.loopexit.1
  %.sroa.0.4..sroa_idx258 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4.219 = load <2 x float>, ptr %.sroa.0.4..sroa_idx258, align 4, !tbaa !30
  %.sroa.26.8..sroa_idx251 = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 8
  %.sroa.26.8..sroa.26.32..pre123 = load float, ptr %.sroa.26.8..sroa_idx251, align 8, !tbaa !30
  %i.dq = load float, ptr %i.cg, align 4, !tbaa !30
  %i.dr = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %.sroa.26.8..sroa.26.32..pre123, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.1.1
  %i.dt = phi float [ %i.dv, %bb.r ], [ %i.dm, %.lr.ph.1.1 ]
  %i.du = phi <2 x float> [ %i.dw, %bb.r ], [ %i.ds, %.lr.ph.1.1 ]
  %i.dv = fsub float %i.dt, %i.bx                 ; 4 uses
  %i.dw = fsub <2 x float> %i.du, %.sroa.0.4..sroa.0.4.219 ; 3 uses
  %i.dx = fsub float %i.dv, %i.dq                 ; 2 uses
  %i.dy = fcmp ogt float %i.dx, %i.by
  br i1 %i.dy, label %bb.r, label %.preheader.1.1.loopexit, !llvm.loop !179

.preheader.1.1.loopexit:                          ; preds = %bb.r
  store float %i.dv, ptr %.sroa.26, align 8, !tbaa !30
  %.sroa.26.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 4
  store <2 x float> %i.dw, ptr %.sroa.26.4..sroa_idx, align 4, !tbaa !30
  %i.dz = extractelement <2 x float> %i.dw, i64 0
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1.1.loopexit, %.loopexit.1
  %.pre-phi130 = phi float [ %i.do, %.loopexit.1 ], [ %i.dx, %.preheader.1.1.loopexit ]
  %i.ea = phi float [ %i.dl, %.loopexit.1 ], [ %i.dz, %.preheader.1.1.loopexit ]
  %i.eb = phi float [ %i.dm, %.loopexit.1 ], [ %i.dv, %.preheader.1.1.loopexit ]
  %i.ec = fcmp olt float %.pre-phi130, %i.eq
  br i1 %i.ec, label %.lr.ph94.1.1, label %.loopexit.1.1

.lr.ph94.1.1:                                     ; preds = %.preheader.1.1
  %.sroa.0.4..sroa_idx260 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4..pre124 = load float, ptr %.sroa.0.4..sroa_idx260, align 4, !tbaa !30
  %.sroa.0.8..sroa_idx263 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..pre125 = load float, ptr %.sroa.0.8..sroa_idx263, align 8, !tbaa !30
  %.sroa.26.8..sroa_idx252 = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 8
  %.sroa.26.8..sroa.26.32..pre126 = load float, ptr %.sroa.26.8..sroa_idx252, align 8, !tbaa !30
  %i.ed = load float, ptr %i.cg, align 4, !tbaa !30
  %i.ee = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.ea, i64 1
  %i.eg = insertelement <2 x float> poison, float %i.bx, i64 0
  %5 = insertelement <2 x float> %i.eg, float %.sroa.0.4..sroa.0.4..pre124, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph94.1.1
  %i.eh = phi float [ %i.ek, %bb.s ], [ %.sroa.26.8..sroa.26.32..pre126, %.lr.ph94.1.1 ]
  %i.ei = phi <2 x float> [ %i.ej, %bb.s ], [ %i.ef, %.lr.ph94.1.1 ]
  %i.ej = fadd <2 x float> %5, %i.ei              ; 3 uses
  %i.ek = fadd float %.sroa.0.8..sroa.0.8..pre125, %i.eh ; 2 uses
  %i.el = extractelement <2 x float> %i.ej, i64 0
  %i.em = fsub float %i.el, %i.ed
  %i.en = fcmp olt float %i.em, %i.eq
  br i1 %i.en, label %bb.s, label %.loopexit.1.1.loopexit, !llvm.loop !180

.loopexit.1.1.loopexit:                           ; preds = %bb.s
  store <2 x float> %i.ej, ptr %.sroa.26, align 8, !tbaa !30
  %.sroa.26.8..sroa_idx253 = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 8
  store float %i.ek, ptr %.sroa.26.8..sroa_idx253, align 8, !tbaa !30
  br label %.loopexit.1.1

.loopexit.1.1:                                    ; preds = %.loopexit.1.1.loopexit, %.preheader.1.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false), !tbaa.struct !29
  %.sroa.14.0..sroa_idx228 = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.0..sroa_idx228, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14, i64 12, i1 false), !tbaa.struct !181
  %.sroa.26.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.26.0..sroa_idx235, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.26, i64 12, i1 false), !tbaa.struct !182
  store ptr %1, ptr %i.bu, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  ret void

.preheader.loopexit:                              ; preds = %bb.t
  store <2 x float> %i.ex, ptr %.sroa.14, align 8, !tbaa !30
  %.sroa.14.8..sroa_idx259 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  store float %i.ey, ptr %.sroa.14.8..sroa_idx259, align 8, !tbaa !30
  %i.eo = extractelement <2 x float> %i.ex, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader74
  %.pre-phi = phi float [ %i.ca, %.preheader74 ], [ %i.fa, %.preheader.loopexit ]
  %.pre113 = phi float [ %i.cc, %.preheader74 ], [ %i.eo, %.preheader.loopexit ] ; 2 uses
  %i.ep = phi float [ %i.bz, %.preheader74 ], [ %i.ez, %.preheader.loopexit ] ; 2 uses
  %i.eq = fmul float %i.bx, -5.000000e-01         ; 4 uses
  %i.er = fcmp olt float %.pre-phi, %i.eq
  br i1 %i.er, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %.preheader
  %.sroa.0.4..sroa_idx257 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4. = load <2 x float>, ptr %.sroa.0.4..sroa_idx257, align 4, !tbaa !30
  %.sroa.14.8..sroa_idx256 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.8..sroa.14.20..pre112 = load float, ptr %.sroa.14.8..sroa_idx256, align 8, !tbaa !30
  %i.es = load float, ptr %i.bw, align 4, !tbaa !30
  %i.et = insertelement <2 x float> poison, float %.pre113, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %.sroa.14.8..sroa.14.20..pre112, i64 1
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %i.ev = phi float [ %.sroa.14.8..sroa.14.20..pre108, %.lr.ph ], [ %i.ey, %bb.t ]
  %i.ew = phi <2 x float> [ %.sroa.14.0..sroa.14.12., %.lr.ph ], [ %i.ex, %bb.t ]
  %i.ex = fsub <2 x float> %i.ew, %.sroa.0.0..sroa.0.0. ; 4 uses
  %i.ey = fsub float %i.ev, %.sroa.14.8..sroa.14.20..pre108.a ; 2 uses
  %i.ez = extractelement <2 x float> %i.ex, i64 0 ; 2 uses
  %i.fa = fsub float %i.ez, %4                    ; 2 uses
  %i.fb = fcmp ogt float %i.fa, %i.by
  br i1 %i.fb, label %bb.t, label %.preheader.loopexit, !llvm.loop !179

bb.u:                                             ; preds = %.lr.ph94, %bb.u
  %i.fc = phi float [ %i.ep, %.lr.ph94 ], [ %i.fe, %bb.u ]
  %i.fd = phi <2 x float> [ %i.eu, %.lr.ph94 ], [ %i.ff, %bb.u ]
  %i.fe = fadd float %i.bx, %i.fc                 ; 4 uses
  %i.ff = fadd <2 x float> %.sroa.0.4..sroa.0.4., %i.fd ; 3 uses
  %i.fg = fsub float %i.fe, %i.es
  %i.fh = fcmp olt float %i.fg, %i.eq
  br i1 %i.fh, label %bb.u, label %.loopexit.loopexit, !llvm.loop !180
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx27setBoxDeformationFlowMatrixEPA3_KfS2_PA3_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %2) local_unnamed_addr #14 {
.preheader:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 36
  %i.e = add i64 %i.b, 36
  %i.f = add i64 %i.a, 36                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound017 = icmp ugt i64 %i.e, %i.a
  %rt.bound118 = icmp ugt i64 %i.f, %i.b
  %rt.conflict19 = and i1 %rt.bound017, %rt.bound118
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict19
  br i1 %rt.conflict.all, label %.preheader.rtscalar, label %.preheader.rtvec, !prof !184

.preheader.rtvec:                                 ; preds = %.preheader
  %i.g = load float, ptr %1, align 4, !tbaa !30   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !30 ; 2 uses
  %i.l = load <8 x float>, ptr %0, align 4, !tbaa !30
  %i.m = insertelement <8 x float> poison, float %i.g, i64 0
  %i.n = insertelement <8 x float> %i.m, float %i.g, i64 1
  %i.o = insertelement <8 x float> %i.n, float %i.g, i64 2
  %i.p = insertelement <8 x float> %i.o, float %i.i, i64 3
  %i.q = insertelement <8 x float> %i.p, float %i.i, i64 4
  %i.r = insertelement <8 x float> %i.q, float %i.i, i64 5
  %i.s = insertelement <8 x float> %i.r, float %i.k, i64 6
  %i.t = insertelement <8 x float> %i.s, float %i.k, i64 7
  %i.u = fdiv <8 x float> %i.l, %i.t
  %i.v = shufflevector <8 x float> %i.u, <8 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 1, i32 4, i32 7, i32 2, i32 5>
  store <8 x float> %i.v, ptr %2, align 4, !tbaa !30
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load float, ptr %gep.2.2, align 4, !tbaa !30
  %i.x = load float, ptr %i.j, align 4, !tbaa !30
  %i.y = fdiv float %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.y, ptr %i.z, align 4, !tbaa !30
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %i.aa = load float, ptr %0, align 4, !tbaa !30
  %i.ab = load float, ptr %1, align 4, !tbaa !30
  %i.ac = fdiv float %i.aa, %i.ab
  store float %i.ac, ptr %2, align 4, !tbaa !30
  %gep.1.scalar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load float, ptr %gep.1.scalar, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !30
  %i.ag = fdiv float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ag, ptr %i.ah, align 4, !tbaa !30
  %gep.2.scalar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load float, ptr %gep.2.scalar, align 4, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !30
  %i.al = fdiv float %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.al, ptr %i.am, align 4, !tbaa !30
  %invariant.gep.1.scalar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load float, ptr %invariant.gep.1.scalar, align 4, !tbaa !30
  %i.ap = load float, ptr %1, align 4, !tbaa !30
  %i.aq = fdiv float %i.ao, %i.ap
  store float %i.aq, ptr %i.an, align 4, !tbaa !30
  %gep.1.1.scalar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load float, ptr %gep.1.1.scalar, align 4, !tbaa !30
  %i.as = load float, ptr %i.ae, align 4, !tbaa !30
  %i.at = fdiv float %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.at, ptr %i.au, align 4, !tbaa !30
  %gep.2.1.scalar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.av = load float, ptr %gep.2.1.scalar, align 4, !tbaa !30
  %i.aw = load float, ptr %i.aj, align 4, !tbaa !30
  %i.ax = fdiv float %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ax, ptr %i.ay, align 4, !tbaa !30
  %invariant.gep.2.scalar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load float, ptr %invariant.gep.2.scalar, align 4, !tbaa !30
  %i.bb = load float, ptr %1, align 4, !tbaa !30
  %i.bc = fdiv float %i.ba, %i.bb
  store float %i.bc, ptr %i.az, align 4, !tbaa !30
  %gep.1.2.scalar = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = load float, ptr %gep.1.2.scalar, align 4, !tbaa !30
  %i.be = load float, ptr %i.ae, align 4, !tbaa !30
  %i.bf = fdiv float %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.bf, ptr %i.bg, align 4, !tbaa !30
  %gep.2.2.scalar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load float, ptr %gep.2.2.scalar, align 4, !tbaa !30
  %i.bi = load float, ptr %i.aj, align 4, !tbaa !30
  %i.bj = fdiv float %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.bj, ptr %i.bk, align 4, !tbaa !30
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null, null, null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{!"p1 float", !10, i64 0}
!15 = !{!"vtable pointer", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!"_ZTSN3gmx14accessor_basicIfEE"}
!21 = !{!"_ZTSN3gmx6detail15extents_analyseILi0EJEEE"}
!22 = !{!"_ZTSN3gmx6detail15extents_analyseILi1EJLl3EEEE", !21, i64 0}
!23 = !{!"_ZTSN3gmx6detail15extents_analyseILi2EJLl3ELl3EEEE", !22, i64 0}
!24 = !{!"_ZTSN3gmx7extentsIJLl3ELl3EEEE", !23, i64 0}
!25 = !{!"_ZTSN3gmx12layout_right7mappingINS_7extentsIJLl3ELl3EEEEEE", !24, i64 0}
!26 = !{!"_ZTSN3gmx12basic_mdspanIfNS_7extentsIJLl3ELl3EEEENS_12layout_rightENS_14accessor_basicIfEEEE", !20, i64 0, !25, i64 1, !14, i64 8}
!27 = !{!26, !14, i64 8}
!28 = !{!6, !6, i64 0}
!29 = !{i64 0, i64 36, !28}
!30 = !{!13, !13, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{i64 0, i64 8, !18, i64 8, i64 8, !18, i64 16, i64 4, !19}
!33 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !10, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!36 = !{!"_ZTSSt10type_index", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!40 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !10, i64 0}
!43 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !40, i64 8}
!44 = !{!43, !42, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !11, i64 8, !6, i64 16}
!47 = !{!46, !17, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"_ZTSSt5arrayIfLm9EE", !6, i64 0}
!50 = !{!"_ZTSN3gmx13MultiDimArrayISt5arrayIfLm9EENS_7extentsIJLl3ELl3EEEENS_12layout_rightEEE", !49, i64 0, !26, i64 40}
!51 = !{!"_ZTSN3gmx14BasicMatrix3x3IfEE", !50, i64 0}
!52 = !{!"_ZTSN3gmx14BoxDeformationE", !12, i64 0, !11, i64 8, !51, i64 16, !51, i64 72}
!53 = !{!52, !12, i64 0}
!54 = !{!52, !11, i64 8}
!55 = distinct !{!55, i1 true, !"_ZN3gmxL31createMatrix3x3FromLegacyMatrixEPA3_Kf"}
!56 = distinct !{!56, !55, !"_ZN3gmxL31createMatrix3x3FromLegacyMatrixEPA3_Kf: argument 0"}
end_hunk_0
