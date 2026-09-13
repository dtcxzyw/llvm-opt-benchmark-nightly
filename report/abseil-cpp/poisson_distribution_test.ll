Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/poisson_distribution_test?download=true
inline.NumInlined: 6098
inline.NumDeleted: 2285
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE8GetParamEv:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef 1707)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.23, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.24, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.25, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  br label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.h = load ptr, ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE10parameter_E, align 8, !tbaa !90
  ret ptr %i.h
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #40
  ret void
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @llvm.trap() #42
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED1Ev(ptr noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %i.a) #40
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZThn16_N7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED0Ev(ptr nofree readnone captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  tail call void @llvm.trap() #42
  unreachable
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #20

declare noundef double @_ZN4absl12lts_2026052615random_internal26RequiredSuccessProbabilityEdi(double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !42
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #38
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

declare void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8, ptr, i64) local_unnamed_addr #2

declare noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64, ptr, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE15destructor_implEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i: ; preds = %bb.a
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = and i64 %i.a, 65536
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !42
  %i.m = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %i.m)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE15destructor_implEv.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionIiE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !114
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !112
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !112
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !112
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !387
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !115
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #25

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !65
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #13 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #2

declare void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSB_PFvSB_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !42 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #43, !srcloc !119 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !388

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bh, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !65
  %i.ad = zext i32 %i.ac to i64
  %i.ae = xor i64 %i.ab, %i.ad
  %i.af = zext nneg i64 %i.ae to i128
  %i.ag = mul nuw nsw i128 %i.af, 8779197792823184629 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 6 uses
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8           ; 2 uses
  %i.am = sub i64 %i.x, %i.aj                     ; 2 uses
  %i.an = and i64 %i.i, %i.am
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !120

bb.d:                                             ; preds = %.lr.ph
  %i.ap = and i64 %i.am, 15
  %i.aq = add i64 %i.ap, %i.aj
  %i.ar = and i64 %i.aq, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.as = and i64 %i.d, %i.aj
  %.not.i = icmp ult i64 %i.as, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !120

bb.f:                                             ; preds = %bb.e
  %i.at = and i64 %i.aj, %i.c                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.at
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !42
  %i.aw = icmp slt <16 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #43, !srcloc !119 ; 2 uses
  %.not26.i = icmp eq i32 %i.az, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !69

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.az, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add nuw i64 %i.at, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.al, i64 noundef %i.x, i64 noundef %i.aj)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bc, %bb.g ], [ %i.ar, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.al, ptr %i.bd, align 1, !tbaa !390
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_151PoissonDistributionInterfaceTest_SerializeTest_TestIaE8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.ri = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i229 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i229, label %_ZN7testing7MessageD2Ev.exit231, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !54
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(128) %i.ri) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit231

_ZN7testing7MessageD2Ev.exit231:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.ey

bb.eo:                                            ; preds = %bb.eg
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit237

bb.ep:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.er:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i215
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.es:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i219
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.et:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i223
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.eu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit228
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.em
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #40
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn82 = phi { ptr, i32 } [ %i.rt, %bb.ev ], [ %i.rs, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  br label %bb.ex

bb.ex:                                            ; preds = %bb.eq, %bb.es, %bb.ew, %bb.et, %bb.er, %bb.ep
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rn, %bb.ep ], [ %i.ro, %bb.eq ], [ %i.rp, %bb.er ], [ %i.rq, %bb.es ], [ %.pn82, %bb.ew ], [ %i.rr, %bb.et ] ; 2 uses
  %i.ru = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.bt
  br i1 %i.rv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ex, %bb.ej
  %.sink = phi ptr [ %i.ov, %bb.ej ], [ %i.ru, %bb.ex ]
  %.pn82.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ou, %bb.ej ], [ %.pn82.pn.pn.pn.pn.pn, %bb.ex ]
  %i.rw = load i64, ptr %i.bt, align 8, !tbaa !42
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.rx) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ex, %bb.ej
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ou, %bb.ej ], [ %.pn82.pn.pn.pn.pn.pn, %bb.ex ], [ %.pn82.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.ry = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i235, label %_ZN7testing7MessageD2Ev.exit237, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236: ; preds = %.body
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !54
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(128) %i.ry) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit237

_ZN7testing7MessageD2Ev.exit237:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236, %.body, %bb.eo
  %.pn82.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rm, %bb.eo ], [ %.pn82.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn82.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #40
  br label %bb.fa

bb.ey:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit209, %_ZN7testing7MessageD2Ev.exit231
  %i.sc = load ptr, ptr %i.bz, align 8, !tbaa !122 ; 4 uses
  %.not.i.i238 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i238, label %_ZN7testing15AssertionResultD2Ev.exit242, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !41 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %i.sf = icmp eq ptr %i.sd, %i.se
  br i1 %i.sf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239: ; preds = %bb.ez
  %i.sg = load i64, ptr %i.se, align 8, !tbaa !42
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sh) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239
  call void @_ZdlPvm(ptr noundef nonnull %i.sc, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit242

_ZN7testing15AssertionResultD2Ev.exit242:         ; preds = %bb.ey, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  store ptr %i.ca, ptr %22, align 8, !tbaa !54
  %i.si = load i64, ptr %i.cc, align 8
  %i.sj = getelementptr inbounds i8, ptr %22, i64 %i.si
  store ptr %i.cb, ptr %i.sj, align 8, !tbaa !54
  store ptr %i.cd, ptr %i.bo, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !54
  %i.sk = load ptr, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.cf
  br i1 %i.sl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242
  %i.sm = load i64, ptr %i.cf, align 8, !tbaa !42
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.sn) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ce, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #40
  store ptr %i.ch, ptr %22, align 8, !tbaa !54
  %i.so = load i64, ptr %i.cj, align 8
  %i.sp = getelementptr inbounds i8, ptr %22, i64 %i.so
  store ptr %i.ci, ptr %i.sp, align 8, !tbaa !54
  store i64 0, ptr %i.ck, align 8, !tbaa !129
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cl) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.056.add = add nuw nsw i64 %.056.idx321, 8     ; 2 uses
  %.not = icmp eq i64 %.056.add, 176
  br i1 %.not, label %bb.b, label %bb.c

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit237, %bb.ef
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit237 ], [ %i.ol, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ee, %bb.do, %bb.cz, %bb.ck
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fa ], [ %i.lj, %bb.ck ], [ %.pn76.pn.pn, %bb.ee ], [ %.pn72.pn.pn, %bb.do ], [ %.pn68.pn.pn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.cj
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fb ], [ %i.li, %bb.cj ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.fd

bb.fd:                                            ; preds = %bb.cb, %bb.ci, %bb.fc, %bb.ar, %_ZN7testing7MessageD2Ev.exit107
  %.pn97.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit107 ], [ %.pn62.pn.pn, %bb.ar ], [ %.pn97.pn.pn, %bb.cb ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fc ], [ %i.lh, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  resume { ptr, i32 } %.pn97.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionIaE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !241
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !242
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !242
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !242
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !773
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !243
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIcSt11char_traitsIcEaEERSt13basic_ostreamIT_T0_ES8_RKNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::random_internal::ostream_state_saver", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2026052615random_internal24make_ostream_state_saverIcSt11char_traitsIcEEENS1_19ostream_state_saverISt13basic_ostreamIT_T0_EEERS9_St13_Ios_Fmtflags(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::random_internal::ostream_state_saver") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 290)
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !181
  %i.f = load double, ptr %1, align 8, !tbaa !241
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233    ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !181
  %i.p = load i64, ptr %i.j, align 8
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 225 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !236, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160
  %.not.i1.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i unwind label %bb.e, !inline_history !17 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i: ; preds = %.noexc1.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !233 ; 2 uses
  %.pre3.pre.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre3.i = phi ptr [ %.pre3.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.t, align 1, !tbaa !236
  br label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit

bb.e:                                             ; preds = %.noexc1.i, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #42
  unreachable

_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ag = phi ptr [ %i.i, %_ZNSolsEd.exit ], [ %.pre3.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ah = phi ptr [ %i.h, %_ZNSolsEd.exit ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 %i.s, ptr %i.ai, align 8, !tbaa !237
  %i.aj = getelementptr i8, ptr %i.ag, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_20260526rsIcSt11char_traitsIcEaEERSt13basic_istreamIT_T0_ES8_RNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution<signed char>::param_type", align 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54, !noalias !776
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !noalias !776
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !239, !noalias !776 ; 2 uses
  store i32 4354, ptr %i.f, align 8, !tbaa !239, !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = and i32 %i.n, 5
  %.not.i = icmp eq i32 %i.o, 0
  %.pre6.i = load double, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = call double @llvm.fabs.f64(double %.pre6.i)
  %i.q = fcmp oeq double %i.p, f0x0010000000000000
  br i1 %i.q, label %_ZSt10fpclassifyd.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = call i1 @llvm.is.fpclass.f64(double %.pre6.i, /* (nan inf zero norm) */ i32 879)
  br i1 %or.cond4.i, label %bb.d, label %_ZSt10fpclassifyd.exit.i

_ZSt10fpclassifyd.exit.i:                         ; preds = %bb.c, %bb.b
  %i.r = and i32 %i.n, -5
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.r)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZSt10fpclassifyd.exit.i
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %bb.c, %.noexc
  %i.s = phi ptr [ %i.i, %bb.c ], [ %.pre, %.noexc7 ], [ %i.i, %.noexc ]
  %i.t = phi double [ %.pre6.i, %bb.c ], [ %.pre.i, %.noexc7 ], [ %.pre6.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.u = getelementptr i8, ptr %i.s, i64 -24
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_151PoissonDistributionInterfaceTest_SerializeTest_TestIsE8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.ri = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i229 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i229, label %_ZN7testing7MessageD2Ev.exit231, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !54
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(128) %i.ri) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit231

_ZN7testing7MessageD2Ev.exit231:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.ey

bb.eo:                                            ; preds = %bb.eg
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit237

bb.ep:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.er:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i215
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.es:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i219
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.et:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i223
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.eu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit228
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.em
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #40
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn82 = phi { ptr, i32 } [ %i.rt, %bb.ev ], [ %i.rs, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  br label %bb.ex

bb.ex:                                            ; preds = %bb.eq, %bb.es, %bb.ew, %bb.et, %bb.er, %bb.ep
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rn, %bb.ep ], [ %i.ro, %bb.eq ], [ %i.rp, %bb.er ], [ %i.rq, %bb.es ], [ %.pn82, %bb.ew ], [ %i.rr, %bb.et ] ; 2 uses
  %i.ru = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.bt
  br i1 %i.rv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ex, %bb.ej
  %.sink = phi ptr [ %i.ov, %bb.ej ], [ %i.ru, %bb.ex ]
  %.pn82.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ou, %bb.ej ], [ %.pn82.pn.pn.pn.pn.pn, %bb.ex ]
  %i.rw = load i64, ptr %i.bt, align 8, !tbaa !42
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.rx) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ex, %bb.ej
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ou, %bb.ej ], [ %.pn82.pn.pn.pn.pn.pn, %bb.ex ], [ %.pn82.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.ry = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i235, label %_ZN7testing7MessageD2Ev.exit237, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236: ; preds = %.body
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !54
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(128) %i.ry) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit237

_ZN7testing7MessageD2Ev.exit237:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236, %.body, %bb.eo
  %.pn82.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rm, %bb.eo ], [ %.pn82.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn82.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #40
  br label %bb.fa

bb.ey:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit209, %_ZN7testing7MessageD2Ev.exit231
  %i.sc = load ptr, ptr %i.bz, align 8, !tbaa !122 ; 4 uses
  %.not.i.i238 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i238, label %_ZN7testing15AssertionResultD2Ev.exit242, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !41 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %i.sf = icmp eq ptr %i.sd, %i.se
  br i1 %i.sf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239: ; preds = %bb.ez
  %i.sg = load i64, ptr %i.se, align 8, !tbaa !42
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sh) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239
  call void @_ZdlPvm(ptr noundef nonnull %i.sc, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit242

_ZN7testing15AssertionResultD2Ev.exit242:         ; preds = %bb.ey, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  store ptr %i.ca, ptr %22, align 8, !tbaa !54
  %i.si = load i64, ptr %i.cc, align 8
  %i.sj = getelementptr inbounds i8, ptr %22, i64 %i.si
  store ptr %i.cb, ptr %i.sj, align 8, !tbaa !54
  store ptr %i.cd, ptr %i.bo, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !54
  %i.sk = load ptr, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.cf
  br i1 %i.sl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242
  %i.sm = load i64, ptr %i.cf, align 8, !tbaa !42
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.sn) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ce, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #40
  store ptr %i.ch, ptr %22, align 8, !tbaa !54
  %i.so = load i64, ptr %i.cj, align 8
  %i.sp = getelementptr inbounds i8, ptr %22, i64 %i.so
  store ptr %i.ci, ptr %i.sp, align 8, !tbaa !54
  store i64 0, ptr %i.ck, align 8, !tbaa !129
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cl) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.056.add = add nuw nsw i64 %.056.idx321, 8     ; 2 uses
  %.not = icmp eq i64 %.056.add, 176
  br i1 %.not, label %bb.b, label %bb.c

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit237, %bb.ef
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit237 ], [ %i.ol, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ee, %bb.do, %bb.cz, %bb.ck
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fa ], [ %i.lj, %bb.ck ], [ %.pn76.pn.pn, %bb.ee ], [ %.pn72.pn.pn, %bb.do ], [ %.pn68.pn.pn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.cj
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fb ], [ %i.li, %bb.cj ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.fd

bb.fd:                                            ; preds = %bb.cb, %bb.ci, %bb.fc, %bb.ar, %_ZN7testing7MessageD2Ev.exit107
  %.pn97.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit107 ], [ %.pn62.pn.pn, %bb.ar ], [ %.pn97.pn.pn, %bb.cb ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fc ], [ %i.lh, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  resume { ptr, i32 } %.pn97.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionIsE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !245
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !246
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !246
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !246
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !826
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !249
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIcSt11char_traitsIcEsEERSt13basic_ostreamIT_T0_ES8_RKNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::random_internal::ostream_state_saver", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2026052615random_internal24make_ostream_state_saverIcSt11char_traitsIcEEENS1_19ostream_state_saverISt13basic_ostreamIT_T0_EEERS9_St13_Ios_Fmtflags(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::random_internal::ostream_state_saver") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 290)
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !181
  %i.f = load double, ptr %1, align 8, !tbaa !245
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233    ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !181
  %i.p = load i64, ptr %i.j, align 8
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 225 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !236, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160
  %.not.i1.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i unwind label %bb.e, !inline_history !17 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i: ; preds = %.noexc1.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !233 ; 2 uses
  %.pre3.pre.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre3.i = phi ptr [ %.pre3.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.t, align 1, !tbaa !236
  br label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit

bb.e:                                             ; preds = %.noexc1.i, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #42
  unreachable

_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ag = phi ptr [ %i.i, %_ZNSolsEd.exit ], [ %.pre3.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ah = phi ptr [ %i.h, %_ZNSolsEd.exit ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 %i.s, ptr %i.ai, align 8, !tbaa !237
  %i.aj = getelementptr i8, ptr %i.ag, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_20260526rsIcSt11char_traitsIcEsEERSt13basic_istreamIT_T0_ES8_RNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution<short>::param_type", align 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54, !noalias !829
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !noalias !829
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !239, !noalias !829 ; 2 uses
  store i32 4354, ptr %i.f, align 8, !tbaa !239, !noalias !829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = and i32 %i.n, 5
  %.not.i = icmp eq i32 %i.o, 0
  %.pre6.i = load double, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = call double @llvm.fabs.f64(double %.pre6.i)
  %i.q = fcmp oeq double %i.p, f0x0010000000000000
  br i1 %i.q, label %_ZSt10fpclassifyd.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = call i1 @llvm.is.fpclass.f64(double %.pre6.i, /* (nan inf zero norm) */ i32 879)
  br i1 %or.cond4.i, label %bb.d, label %_ZSt10fpclassifyd.exit.i

_ZSt10fpclassifyd.exit.i:                         ; preds = %bb.c, %bb.b
  %i.r = and i32 %i.n, -5
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.r)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZSt10fpclassifyd.exit.i
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %bb.c, %.noexc
  %i.s = phi ptr [ %i.i, %bb.c ], [ %.pre, %.noexc7 ], [ %i.i, %.noexc ]
  %i.t = phi double [ %.pre6.i, %bb.c ], [ %.pre.i, %.noexc7 ], [ %.pre6.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.u = getelementptr i8, ptr %i.s, i64 -24
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_151PoissonDistributionInterfaceTest_SerializeTest_TestIlE8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rk = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i231, label %_ZN7testing7MessageD2Ev.exit233, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !54
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(128) %i.rk) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit233

_ZN7testing7MessageD2Ev.exit233:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.ey

bb.eo:                                            ; preds = %bb.eg
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit239

bb.ep:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.er:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i217
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.es:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i221
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.et:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i225
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.eu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit230
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.em
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #40
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn84 = phi { ptr, i32 } [ %i.rv, %bb.ev ], [ %i.ru, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  br label %bb.ex

bb.ex:                                            ; preds = %bb.eq, %bb.es, %bb.ew, %bb.et, %bb.er, %bb.ep
  %.pn84.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rp, %bb.ep ], [ %i.rq, %bb.eq ], [ %i.rr, %bb.er ], [ %i.rs, %bb.es ], [ %.pn84, %bb.ew ], [ %i.rt, %bb.et ] ; 2 uses
  %i.rw = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.bt
  br i1 %i.rx, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ex, %bb.ej
  %.sink = phi ptr [ %i.ox, %bb.ej ], [ %i.rw, %bb.ex ]
  %.pn84.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ow, %bb.ej ], [ %.pn84.pn.pn.pn.pn.pn, %bb.ex ]
  %i.ry = load i64, ptr %i.bt, align 8, !tbaa !42
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.rz) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ex, %bb.ej
  %.pn84.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ow, %bb.ej ], [ %.pn84.pn.pn.pn.pn.pn, %bb.ex ], [ %.pn84.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.sa = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i237 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %.body
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !54
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(128) %i.sa) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, %.body, %bb.eo
  %.pn84.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ro, %bb.eo ], [ %.pn84.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn84.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #40
  br label %bb.fa

bb.ey:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit211, %_ZN7testing7MessageD2Ev.exit233
  %i.se = load ptr, ptr %i.bz, align 8, !tbaa !122 ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.se, null
  br i1 %.not.i.i240, label %_ZN7testing15AssertionResultD2Ev.exit244, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !41 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241: ; preds = %bb.ez
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !42
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit244

_ZN7testing15AssertionResultD2Ev.exit244:         ; preds = %bb.ey, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  store ptr %i.ca, ptr %22, align 8, !tbaa !54
  %i.sk = load i64, ptr %i.cc, align 8
  %i.sl = getelementptr inbounds i8, ptr %22, i64 %i.sk
  store ptr %i.cb, ptr %i.sl, align 8, !tbaa !54
  store ptr %i.cd, ptr %i.bo, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !54
  %i.sm = load ptr, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.cf
  br i1 %i.sn, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %_ZN7testing15AssertionResultD2Ev.exit244
  %i.so = load i64, ptr %i.cf, align 8, !tbaa !42
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ce, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #40
  store ptr %i.ch, ptr %22, align 8, !tbaa !54
  %i.sq = load i64, ptr %i.cj, align 8
  %i.sr = getelementptr inbounds i8, ptr %22, i64 %i.sq
  store ptr %i.ci, ptr %i.sr, align 8, !tbaa !54
  store i64 0, ptr %i.ck, align 8, !tbaa !129
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cl) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.056.add = add nuw nsw i64 %.056.idx323, 8     ; 2 uses
  %.not = icmp eq i64 %.056.add, 176
  br i1 %.not, label %bb.b, label %bb.c

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit239, %bb.ef
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit239 ], [ %i.on, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ee, %bb.do, %bb.cz, %bb.ck
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fa ], [ %i.ll, %bb.ck ], [ %.pn78.pn.pn, %bb.ee ], [ %.pn74.pn.pn, %bb.do ], [ %.pn70.pn.pn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.cj
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fb ], [ %i.lk, %bb.cj ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.fd

bb.fd:                                            ; preds = %bb.cb, %bb.ci, %bb.fc, %bb.ar, %_ZN7testing7MessageD2Ev.exit109
  %.pn99.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit109 ], [ %.pn64.pn.pn, %bb.ar ], [ %.pn99.pn.pn, %bb.cb ], [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fc ], [ %i.lj, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  resume { ptr, i32 } %.pn99.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionIlE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !251
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !252
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !252
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !252
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !954
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !253
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIcSt11char_traitsIcElEERSt13basic_ostreamIT_T0_ES8_RKNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::random_internal::ostream_state_saver", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2026052615random_internal24make_ostream_state_saverIcSt11char_traitsIcEEENS1_19ostream_state_saverISt13basic_ostreamIT_T0_EEERS9_St13_Ios_Fmtflags(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::random_internal::ostream_state_saver") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 290)
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !181
  %i.f = load double, ptr %1, align 8, !tbaa !251
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233    ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !181
  %i.p = load i64, ptr %i.j, align 8
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 225 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !236, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160
  %.not.i1.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i unwind label %bb.e, !inline_history !17 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i: ; preds = %.noexc1.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !233 ; 2 uses
  %.pre3.pre.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre3.i = phi ptr [ %.pre3.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.t, align 1, !tbaa !236
  br label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit

bb.e:                                             ; preds = %.noexc1.i, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #42
  unreachable

_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ag = phi ptr [ %i.i, %_ZNSolsEd.exit ], [ %.pre3.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ah = phi ptr [ %i.h, %_ZNSolsEd.exit ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 %i.s, ptr %i.ai, align 8, !tbaa !237
  %i.aj = getelementptr i8, ptr %i.ag, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_20260526rsIcSt11char_traitsIcElEERSt13basic_istreamIT_T0_ES8_RNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution<long>::param_type", align 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54, !noalias !957
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !noalias !957
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !239, !noalias !957 ; 2 uses
  store i32 4354, ptr %i.f, align 8, !tbaa !239, !noalias !957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = and i32 %i.n, 5
  %.not.i = icmp eq i32 %i.o, 0
  %.pre6.i = load double, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = call double @llvm.fabs.f64(double %.pre6.i)
  %i.q = fcmp oeq double %i.p, f0x0010000000000000
  br i1 %i.q, label %_ZSt10fpclassifyd.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = call i1 @llvm.is.fpclass.f64(double %.pre6.i, /* (nan inf zero norm) */ i32 879)
  br i1 %or.cond4.i, label %bb.d, label %_ZSt10fpclassifyd.exit.i

_ZSt10fpclassifyd.exit.i:                         ; preds = %bb.c, %bb.b
  %i.r = and i32 %i.n, -5
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.r)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZSt10fpclassifyd.exit.i
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %bb.c, %.noexc
  %i.s = phi ptr [ %i.i, %bb.c ], [ %.pre, %.noexc7 ], [ %i.i, %.noexc ]
  %i.t = phi double [ %.pre6.i, %bb.c ], [ %.pre.i, %.noexc7 ], [ %.pre6.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.u = getelementptr i8, ptr %i.s, i64 -24
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_151PoissonDistributionInterfaceTest_SerializeTest_TestIhE8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rf = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i229 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i229, label %_ZN7testing7MessageD2Ev.exit231, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !54
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(128) %i.rf) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit231

_ZN7testing7MessageD2Ev.exit231:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.ev

bb.el:                                            ; preds = %bb.ed
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit237

bb.em:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.en:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i215
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ep:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i219
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i223
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit228
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.es:                                            ; preds = %bb.ej
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #40
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.pn82 = phi { ptr, i32 } [ %i.rq, %bb.es ], [ %i.rp, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  br label %bb.eu

bb.eu:                                            ; preds = %bb.en, %bb.ep, %bb.et, %bb.eq, %bb.eo, %bb.em
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rk, %bb.em ], [ %i.rl, %bb.en ], [ %i.rm, %bb.eo ], [ %i.rn, %bb.ep ], [ %.pn82, %bb.et ], [ %i.ro, %bb.eq ] ; 2 uses
  %i.rr = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.br
  br i1 %i.rs, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.eu, %bb.eg
  %.sink = phi ptr [ %i.os, %bb.eg ], [ %i.rr, %bb.eu ]
  %.pn82.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.or, %bb.eg ], [ %.pn82.pn.pn.pn.pn.pn, %bb.eu ]
  %i.rt = load i64, ptr %i.br, align 8, !tbaa !42
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ru) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.eu, %bb.eg
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.or, %bb.eg ], [ %.pn82.pn.pn.pn.pn.pn, %bb.eu ], [ %.pn82.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rv = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i235, label %_ZN7testing7MessageD2Ev.exit237, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236: ; preds = %.body
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !54
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(128) %i.rv) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit237

_ZN7testing7MessageD2Ev.exit237:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236, %.body, %bb.el
  %.pn82.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.el ], [ %.pn82.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn82.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #40
  br label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit209, %_ZN7testing7MessageD2Ev.exit231
  %i.rz = load ptr, ptr %i.bx, align 8, !tbaa !122 ; 4 uses
  %.not.i.i238 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i238, label %_ZN7testing15AssertionResultD2Ev.exit242, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !41 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239: ; preds = %bb.ew
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !42
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239
  call void @_ZdlPvm(ptr noundef nonnull %i.rz, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit242

_ZN7testing15AssertionResultD2Ev.exit242:         ; preds = %bb.ev, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  store ptr %i.by, ptr %22, align 8, !tbaa !54
  %i.sf = load i64, ptr %i.ca, align 8
  %i.sg = getelementptr inbounds i8, ptr %22, i64 %i.sf
  store ptr %i.bz, ptr %i.sg, align 8, !tbaa !54
  store ptr %i.cb, ptr %i.bm, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  %i.sh = load ptr, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.cd
  br i1 %i.si, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242
  %i.sj = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #40
  store ptr %i.cf, ptr %22, align 8, !tbaa !54
  %i.sl = load i64, ptr %i.ch, align 8
  %i.sm = getelementptr inbounds i8, ptr %22, i64 %i.sl
  store ptr %i.cg, ptr %i.sm, align 8, !tbaa !54
  store i64 0, ptr %i.ci, align 8, !tbaa !129
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cj) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.056.add = add nuw nsw i64 %.056.idx313, 8     ; 2 uses
  %.not = icmp eq i64 %.056.add, 176
  br i1 %.not, label %bb.b, label %bb.c

bb.ex:                                            ; preds = %_ZN7testing7MessageD2Ev.exit237, %bb.ec
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit237 ], [ %i.oi, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eb, %bb.dl, %bb.cw, %bb.ch
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ex ], [ %i.lg, %bb.ch ], [ %.pn76.pn.pn, %bb.eb ], [ %.pn72.pn.pn, %bb.dl ], [ %.pn68.pn.pn, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.cg
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %i.lf, %bb.cg ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.fa

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %_ZN7testing7MessageD2Ev.exit156, %bb.cf, %bb.ez, %bb.ar, %_ZN7testing7MessageD2Ev.exit107
  %.pn97.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit107 ], [ %.pn62.pn.pn, %bb.ar ], [ %i.le, %bb.cf ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ez ], [ %.pn97.pn, %_ZN7testing7MessageD2Ev.exit156 ], [ %.pn94.pn, %_ZN7testing7MessageD2Ev.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  resume { ptr, i32 } %.pn97.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionIhE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !255
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !256
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !256
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !256
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !1007
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !257
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIcSt11char_traitsIcEhEERSt13basic_ostreamIT_T0_ES8_RKNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::random_internal::ostream_state_saver", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2026052615random_internal24make_ostream_state_saverIcSt11char_traitsIcEEENS1_19ostream_state_saverISt13basic_ostreamIT_T0_EEERS9_St13_Ios_Fmtflags(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::random_internal::ostream_state_saver") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 290)
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !181
  %i.f = load double, ptr %1, align 8, !tbaa !255
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233    ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !181
  %i.p = load i64, ptr %i.j, align 8
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 225 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !236, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160
  %.not.i1.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i unwind label %bb.e, !inline_history !17 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i: ; preds = %.noexc1.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !233 ; 2 uses
  %.pre3.pre.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre3.i = phi ptr [ %.pre3.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.t, align 1, !tbaa !236
  br label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit

bb.e:                                             ; preds = %.noexc1.i, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #42
  unreachable

_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ag = phi ptr [ %i.i, %_ZNSolsEd.exit ], [ %.pre3.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ah = phi ptr [ %i.h, %_ZNSolsEd.exit ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 %i.s, ptr %i.ai, align 8, !tbaa !237
  %i.aj = getelementptr i8, ptr %i.ag, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_20260526rsIcSt11char_traitsIcEhEERSt13basic_istreamIT_T0_ES8_RNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution<unsigned char>::param_type", align 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54, !noalias !1010
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !noalias !1010
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !239, !noalias !1010 ; 2 uses
  store i32 4354, ptr %i.f, align 8, !tbaa !239, !noalias !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = and i32 %i.n, 5
  %.not.i = icmp eq i32 %i.o, 0
  %.pre6.i = load double, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = call double @llvm.fabs.f64(double %.pre6.i)
  %i.q = fcmp oeq double %i.p, f0x0010000000000000
  br i1 %i.q, label %_ZSt10fpclassifyd.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = call i1 @llvm.is.fpclass.f64(double %.pre6.i, /* (nan inf zero norm) */ i32 879)
  br i1 %or.cond4.i, label %bb.d, label %_ZSt10fpclassifyd.exit.i

_ZSt10fpclassifyd.exit.i:                         ; preds = %bb.c, %bb.b
  %i.r = and i32 %i.n, -5
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.r)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZSt10fpclassifyd.exit.i
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %bb.c, %.noexc
  %i.s = phi ptr [ %i.i, %bb.c ], [ %.pre, %.noexc7 ], [ %i.i, %.noexc ]
  %i.t = phi double [ %.pre6.i, %bb.c ], [ %.pre.i, %.noexc7 ], [ %.pre6.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.u = getelementptr i8, ptr %i.s, i64 -24
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_151PoissonDistributionInterfaceTest_SerializeTest_TestItE8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rf = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i229 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i229, label %_ZN7testing7MessageD2Ev.exit231, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !54
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(128) %i.rf) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit231

_ZN7testing7MessageD2Ev.exit231:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.ev

bb.el:                                            ; preds = %bb.ed
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit237

bb.em:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.en:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i215
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ep:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i219
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i223
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit228
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.es:                                            ; preds = %bb.ej
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #40
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.pn82 = phi { ptr, i32 } [ %i.rq, %bb.es ], [ %i.rp, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  br label %bb.eu

bb.eu:                                            ; preds = %bb.en, %bb.ep, %bb.et, %bb.eq, %bb.eo, %bb.em
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rk, %bb.em ], [ %i.rl, %bb.en ], [ %i.rm, %bb.eo ], [ %i.rn, %bb.ep ], [ %.pn82, %bb.et ], [ %i.ro, %bb.eq ] ; 2 uses
  %i.rr = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.br
  br i1 %i.rs, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.eu, %bb.eg
  %.sink = phi ptr [ %i.os, %bb.eg ], [ %i.rr, %bb.eu ]
  %.pn82.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.or, %bb.eg ], [ %.pn82.pn.pn.pn.pn.pn, %bb.eu ]
  %i.rt = load i64, ptr %i.br, align 8, !tbaa !42
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ru) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.eu, %bb.eg
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.or, %bb.eg ], [ %.pn82.pn.pn.pn.pn.pn, %bb.eu ], [ %.pn82.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rv = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i235, label %_ZN7testing7MessageD2Ev.exit237, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236: ; preds = %.body
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !54
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(128) %i.rv) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit237

_ZN7testing7MessageD2Ev.exit237:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236, %.body, %bb.el
  %.pn82.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.el ], [ %.pn82.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn82.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #40
  br label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit209, %_ZN7testing7MessageD2Ev.exit231
  %i.rz = load ptr, ptr %i.bx, align 8, !tbaa !122 ; 4 uses
  %.not.i.i238 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i238, label %_ZN7testing15AssertionResultD2Ev.exit242, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !41 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239: ; preds = %bb.ew
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !42
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239
  call void @_ZdlPvm(ptr noundef nonnull %i.rz, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit242

_ZN7testing15AssertionResultD2Ev.exit242:         ; preds = %bb.ev, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  store ptr %i.by, ptr %22, align 8, !tbaa !54
  %i.sf = load i64, ptr %i.ca, align 8
  %i.sg = getelementptr inbounds i8, ptr %22, i64 %i.sf
  store ptr %i.bz, ptr %i.sg, align 8, !tbaa !54
  store ptr %i.cb, ptr %i.bm, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  %i.sh = load ptr, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.cd
  br i1 %i.si, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242
  %i.sj = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #40
  store ptr %i.cf, ptr %22, align 8, !tbaa !54
  %i.sl = load i64, ptr %i.ch, align 8
  %i.sm = getelementptr inbounds i8, ptr %22, i64 %i.sl
  store ptr %i.cg, ptr %i.sm, align 8, !tbaa !54
  store i64 0, ptr %i.ci, align 8, !tbaa !129
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cj) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.056.add = add nuw nsw i64 %.056.idx313, 8     ; 2 uses
  %.not = icmp eq i64 %.056.add, 176
  br i1 %.not, label %bb.b, label %bb.c

bb.ex:                                            ; preds = %_ZN7testing7MessageD2Ev.exit237, %bb.ec
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit237 ], [ %i.oi, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eb, %bb.dl, %bb.cw, %bb.ch
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ex ], [ %i.lg, %bb.ch ], [ %.pn76.pn.pn, %bb.eb ], [ %.pn72.pn.pn, %bb.dl ], [ %.pn68.pn.pn, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.cg
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %i.lf, %bb.cg ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.fa

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %_ZN7testing7MessageD2Ev.exit156, %bb.cf, %bb.ez, %bb.ar, %_ZN7testing7MessageD2Ev.exit107
  %.pn97.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit107 ], [ %.pn62.pn.pn, %bb.ar ], [ %i.le, %bb.cf ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ez ], [ %.pn97.pn, %_ZN7testing7MessageD2Ev.exit156 ], [ %.pn94.pn, %_ZN7testing7MessageD2Ev.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  resume { ptr, i32 } %.pn97.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionItE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !259
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !260
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !260
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !260
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !1053
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !261
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIcSt11char_traitsIcEtEERSt13basic_ostreamIT_T0_ES8_RKNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::random_internal::ostream_state_saver", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2026052615random_internal24make_ostream_state_saverIcSt11char_traitsIcEEENS1_19ostream_state_saverISt13basic_ostreamIT_T0_EEERS9_St13_Ios_Fmtflags(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::random_internal::ostream_state_saver") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 290)
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !181
  %i.f = load double, ptr %1, align 8, !tbaa !259
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233    ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !181
  %i.p = load i64, ptr %i.j, align 8
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 225 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !236, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160
  %.not.i1.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i unwind label %bb.e, !inline_history !17 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i: ; preds = %.noexc1.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !233 ; 2 uses
  %.pre3.pre.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre3.i = phi ptr [ %.pre3.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.t, align 1, !tbaa !236
  br label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit

bb.e:                                             ; preds = %.noexc1.i, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #42
  unreachable

_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ag = phi ptr [ %i.i, %_ZNSolsEd.exit ], [ %.pre3.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ah = phi ptr [ %i.h, %_ZNSolsEd.exit ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 %i.s, ptr %i.ai, align 8, !tbaa !237
  %i.aj = getelementptr i8, ptr %i.ag, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_20260526rsIcSt11char_traitsIcEtEERSt13basic_istreamIT_T0_ES8_RNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution<unsigned short>::param_type", align 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54, !noalias !1056
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !noalias !1056
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !239, !noalias !1056 ; 2 uses
  store i32 4354, ptr %i.f, align 8, !tbaa !239, !noalias !1056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = and i32 %i.n, 5
  %.not.i = icmp eq i32 %i.o, 0
  %.pre6.i = load double, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = call double @llvm.fabs.f64(double %.pre6.i)
  %i.q = fcmp oeq double %i.p, f0x0010000000000000
  br i1 %i.q, label %_ZSt10fpclassifyd.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = call i1 @llvm.is.fpclass.f64(double %.pre6.i, /* (nan inf zero norm) */ i32 879)
  br i1 %or.cond4.i, label %bb.d, label %_ZSt10fpclassifyd.exit.i

_ZSt10fpclassifyd.exit.i:                         ; preds = %bb.c, %bb.b
  %i.r = and i32 %i.n, -5
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.r)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZSt10fpclassifyd.exit.i
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %bb.c, %.noexc
  %i.s = phi ptr [ %i.i, %bb.c ], [ %.pre, %.noexc7 ], [ %i.i, %.noexc ]
  %i.t = phi double [ %.pre6.i, %bb.c ], [ %.pre.i, %.noexc7 ], [ %.pre6.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.u = getelementptr i8, ptr %i.s, i64 -24
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_151PoissonDistributionInterfaceTest_SerializeTest_TestIjE8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rf = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i231, label %_ZN7testing7MessageD2Ev.exit233, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !54
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(128) %i.rf) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit233

_ZN7testing7MessageD2Ev.exit233:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.ev

bb.el:                                            ; preds = %bb.ed
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit239

bb.em:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.en:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i217
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ep:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i221
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i225
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit230
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.es:                                            ; preds = %bb.ej
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #40
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.pn84 = phi { ptr, i32 } [ %i.rq, %bb.es ], [ %i.rp, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  br label %bb.eu

bb.eu:                                            ; preds = %bb.en, %bb.ep, %bb.et, %bb.eq, %bb.eo, %bb.em
  %.pn84.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rk, %bb.em ], [ %i.rl, %bb.en ], [ %i.rm, %bb.eo ], [ %i.rn, %bb.ep ], [ %.pn84, %bb.et ], [ %i.ro, %bb.eq ] ; 2 uses
  %i.rr = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.br
  br i1 %i.rs, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.eu, %bb.eg
  %.sink = phi ptr [ %i.os, %bb.eg ], [ %i.rr, %bb.eu ]
  %.pn84.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.or, %bb.eg ], [ %.pn84.pn.pn.pn.pn.pn, %bb.eu ]
  %i.rt = load i64, ptr %i.br, align 8, !tbaa !42
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ru) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.eu, %bb.eg
  %.pn84.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.or, %bb.eg ], [ %.pn84.pn.pn.pn.pn.pn, %bb.eu ], [ %.pn84.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rv = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i237 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %.body
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !54
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(128) %i.rv) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, %.body, %bb.el
  %.pn84.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.el ], [ %.pn84.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn84.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #40
  br label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit211, %_ZN7testing7MessageD2Ev.exit233
  %i.rz = load ptr, ptr %i.bx, align 8, !tbaa !122 ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i240, label %_ZN7testing15AssertionResultD2Ev.exit244, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !41 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241: ; preds = %bb.ew
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !42
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %i.rz, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit244

_ZN7testing15AssertionResultD2Ev.exit244:         ; preds = %bb.ev, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  store ptr %i.by, ptr %22, align 8, !tbaa !54
  %i.sf = load i64, ptr %i.ca, align 8
  %i.sg = getelementptr inbounds i8, ptr %22, i64 %i.sf
  store ptr %i.bz, ptr %i.sg, align 8, !tbaa !54
  store ptr %i.cb, ptr %i.bm, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  %i.sh = load ptr, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.cd
  br i1 %i.si, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %_ZN7testing15AssertionResultD2Ev.exit244
  %i.sj = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #40
  store ptr %i.cf, ptr %22, align 8, !tbaa !54
  %i.sl = load i64, ptr %i.ch, align 8
  %i.sm = getelementptr inbounds i8, ptr %22, i64 %i.sl
  store ptr %i.cg, ptr %i.sm, align 8, !tbaa !54
  store i64 0, ptr %i.ci, align 8, !tbaa !129
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cj) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.056.add = add nuw nsw i64 %.056.idx315, 8     ; 2 uses
  %.not = icmp eq i64 %.056.add, 176
  br i1 %.not, label %bb.b, label %bb.c

bb.ex:                                            ; preds = %_ZN7testing7MessageD2Ev.exit239, %bb.ec
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit239 ], [ %i.oi, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eb, %bb.dl, %bb.cw, %bb.ch
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ex ], [ %i.lg, %bb.ch ], [ %.pn78.pn.pn, %bb.eb ], [ %.pn74.pn.pn, %bb.dl ], [ %.pn70.pn.pn, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.cg
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %i.lf, %bb.cg ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.fa

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit144, %_ZN7testing7MessageD2Ev.exit158, %bb.cf, %bb.ez, %bb.ar, %_ZN7testing7MessageD2Ev.exit109
  %.pn99.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit109 ], [ %.pn64.pn.pn, %bb.ar ], [ %i.le, %bb.cf ], [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ez ], [ %.pn99.pn, %_ZN7testing7MessageD2Ev.exit158 ], [ %.pn96.pn, %_ZN7testing7MessageD2Ev.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  resume { ptr, i32 } %.pn99.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionIjE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !263
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !264
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !264
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !264
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !1099
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !265
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIcSt11char_traitsIcEjEERSt13basic_ostreamIT_T0_ES8_RKNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::random_internal::ostream_state_saver", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2026052615random_internal24make_ostream_state_saverIcSt11char_traitsIcEEENS1_19ostream_state_saverISt13basic_ostreamIT_T0_EEERS9_St13_Ios_Fmtflags(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::random_internal::ostream_state_saver") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 290)
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !181
  %i.f = load double, ptr %1, align 8, !tbaa !263
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233    ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !181
  %i.p = load i64, ptr %i.j, align 8
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 225 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !236, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160
  %.not.i1.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i unwind label %bb.e, !inline_history !17 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i: ; preds = %.noexc1.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !233 ; 2 uses
  %.pre3.pre.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre3.i = phi ptr [ %.pre3.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.t, align 1, !tbaa !236
  br label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit

bb.e:                                             ; preds = %.noexc1.i, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #42
  unreachable

_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ag = phi ptr [ %i.i, %_ZNSolsEd.exit ], [ %.pre3.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ah = phi ptr [ %i.h, %_ZNSolsEd.exit ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 %i.s, ptr %i.ai, align 8, !tbaa !237
  %i.aj = getelementptr i8, ptr %i.ag, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_20260526rsIcSt11char_traitsIcEjEERSt13basic_istreamIT_T0_ES8_RNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution<unsigned int>::param_type", align 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54, !noalias !1102
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !noalias !1102
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !239, !noalias !1102 ; 2 uses
  store i32 4354, ptr %i.f, align 8, !tbaa !239, !noalias !1102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = and i32 %i.n, 5
  %.not.i = icmp eq i32 %i.o, 0
  %.pre6.i = load double, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = call double @llvm.fabs.f64(double %.pre6.i)
  %i.q = fcmp oeq double %i.p, f0x0010000000000000
  br i1 %i.q, label %_ZSt10fpclassifyd.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = call i1 @llvm.is.fpclass.f64(double %.pre6.i, /* (nan inf zero norm) */ i32 879)
  br i1 %or.cond4.i, label %bb.d, label %_ZSt10fpclassifyd.exit.i

_ZSt10fpclassifyd.exit.i:                         ; preds = %bb.c, %bb.b
  %i.r = and i32 %i.n, -5
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.r)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZSt10fpclassifyd.exit.i
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %bb.c, %.noexc
  %i.s = phi ptr [ %i.i, %bb.c ], [ %.pre, %.noexc7 ], [ %i.i, %.noexc ]
  %i.t = phi double [ %.pre6.i, %bb.c ], [ %.pre.i, %.noexc7 ], [ %.pre6.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.u = getelementptr i8, ptr %i.s, i64 -24
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_151PoissonDistributionInterfaceTest_SerializeTest_TestImE8TestBodyEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rh = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i231, label %_ZN7testing7MessageD2Ev.exit233, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !54
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(128) %i.rh) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit233

_ZN7testing7MessageD2Ev.exit233:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.ev

bb.el:                                            ; preds = %bb.ed
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit239

bb.em:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.en:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i217
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ep:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i221
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i225
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit230
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.es:                                            ; preds = %bb.ej
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #40
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.pn84 = phi { ptr, i32 } [ %i.rs, %bb.es ], [ %i.rr, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  br label %bb.eu

bb.eu:                                            ; preds = %bb.en, %bb.ep, %bb.et, %bb.eq, %bb.eo, %bb.em
  %.pn84.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rm, %bb.em ], [ %i.rn, %bb.en ], [ %i.ro, %bb.eo ], [ %i.rp, %bb.ep ], [ %.pn84, %bb.et ], [ %i.rq, %bb.eq ] ; 2 uses
  %i.rt = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.br
  br i1 %i.ru, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.eu, %bb.eg
  %.sink = phi ptr [ %i.ou, %bb.eg ], [ %i.rt, %bb.eu ]
  %.pn84.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ot, %bb.eg ], [ %.pn84.pn.pn.pn.pn.pn, %bb.eu ]
  %i.rv = load i64, ptr %i.br, align 8, !tbaa !42
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.rw) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.eu, %bb.eg
  %.pn84.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ot, %bb.eg ], [ %.pn84.pn.pn.pn.pn.pn, %bb.eu ], [ %.pn84.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %i.rx = load ptr, ptr %36, align 8, !tbaa !124  ; 3 uses
  %.not.i.i237 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %.body
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !54
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(128) %i.rx) #40, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, %.body, %bb.el
  %.pn84.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rl, %bb.el ], [ %.pn84.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn84.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #40
  br label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit211, %_ZN7testing7MessageD2Ev.exit233
  %i.sb = load ptr, ptr %i.bx, align 8, !tbaa !122 ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i240, label %_ZN7testing15AssertionResultD2Ev.exit244, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !41 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 16 ; 2 uses
  %i.se = icmp eq ptr %i.sc, %i.sd
  br i1 %i.se, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241: ; preds = %bb.ew
  %i.sf = load i64, ptr %i.sd, align 8, !tbaa !42
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %i.sb, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit244

_ZN7testing15AssertionResultD2Ev.exit244:         ; preds = %bb.ev, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  store ptr %i.by, ptr %22, align 8, !tbaa !54
  %i.sh = load i64, ptr %i.ca, align 8
  %i.si = getelementptr inbounds i8, ptr %22, i64 %i.sh
  store ptr %i.bz, ptr %i.si, align 8, !tbaa !54
  store ptr %i.cb, ptr %i.bm, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  %i.sj = load ptr, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.cd
  br i1 %i.sk, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %_ZN7testing15AssertionResultD2Ev.exit244
  %i.sl = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #40
  store ptr %i.cf, ptr %22, align 8, !tbaa !54
  %i.sn = load i64, ptr %i.ch, align 8
  %i.so = getelementptr inbounds i8, ptr %22, i64 %i.sn
  store ptr %i.cg, ptr %i.so, align 8, !tbaa !54
  store i64 0, ptr %i.ci, align 8, !tbaa !129
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cj) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %.056.add = add nuw nsw i64 %.056.idx315, 8     ; 2 uses
  %.not = icmp eq i64 %.056.add, 176
  br i1 %.not, label %bb.b, label %bb.c

bb.ex:                                            ; preds = %_ZN7testing7MessageD2Ev.exit239, %bb.ec
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit239 ], [ %i.ok, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eb, %bb.dl, %bb.cw, %bb.ch
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ex ], [ %i.li, %bb.ch ], [ %.pn78.pn.pn, %bb.eb ], [ %.pn74.pn.pn, %bb.dl ], [ %.pn70.pn.pn, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.cg
  %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %i.lh, %bb.cg ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.fa

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit144, %_ZN7testing7MessageD2Ev.exit158, %bb.cf, %bb.ez, %bb.ar, %_ZN7testing7MessageD2Ev.exit109
  %.pn99.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit109 ], [ %.pn64.pn.pn, %bb.ar ], [ %i.lg, %bb.cf ], [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ez ], [ %.pn99.pn, %_ZN7testing7MessageD2Ev.exit158 ], [ %.pn96.pn, %_ZN7testing7MessageD2Ev.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  resume { ptr, i32 } %.pn99.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionImE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !267
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !268
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !268
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !268
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !1145
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !269
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsIcSt11char_traitsIcEmEERSt13basic_ostreamIT_T0_ES8_RKNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::random_internal::ostream_state_saver", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2026052615random_internal24make_ostream_state_saverIcSt11char_traitsIcEEENS1_19ostream_state_saverISt13basic_ostreamIT_T0_EEERS9_St13_Ios_Fmtflags(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::random_internal::ostream_state_saver") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 290)
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !181
  %i.f = load double, ptr %1, align 8, !tbaa !267
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233    ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !181
  %i.p = load i64, ptr %i.j, align 8
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 225 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !236, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #39
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160
  %.not.i1.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i unwind label %bb.e, !inline_history !17 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i: ; preds = %.noexc1.i
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !233 ; 2 uses
  %.pre3.pre.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre3.i = phi ptr [ %.pre3.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge.i ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.t, align 1, !tbaa !236
  br label %_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit

bb.e:                                             ; preds = %.noexc1.i, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #42
  unreachable

_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.ag = phi ptr [ %i.i, %_ZNSolsEd.exit ], [ %.pre3.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ah = phi ptr [ %i.h, %_ZNSolsEd.exit ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 %i.s, ptr %i.ai, align 8, !tbaa !237
  %i.aj = getelementptr i8, ptr %i.ag, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615random_internal19ostream_state_saverISoED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_20260526rsIcSt11char_traitsIcEmEERSt13basic_istreamIT_T0_ES8_RNS0_20poisson_distributionIT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution<unsigned long>::param_type", align 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54, !noalias !1148
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !noalias !1148
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !239, !noalias !1148 ; 2 uses
  store i32 4354, ptr %i.f, align 8, !tbaa !239, !noalias !1148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = and i32 %i.n, 5
  %.not.i = icmp eq i32 %i.o, 0
  %.pre6.i = load double, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = call double @llvm.fabs.f64(double %.pre6.i)
  %i.q = fcmp oeq double %i.p, f0x0010000000000000
  br i1 %i.q, label %_ZSt10fpclassifyd.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = call i1 @llvm.is.fpclass.f64(double %.pre6.i, /* (nan inf zero norm) */ i32 879)
  br i1 %or.cond4.i, label %bb.d, label %_ZSt10fpclassifyd.exit.i

_ZSt10fpclassifyd.exit.i:                         ; preds = %bb.c, %bb.b
  %i.r = and i32 %i.n, -5
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.r)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZSt10fpclassifyd.exit.i
  %.pre.i = load double, ptr %i.a, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %bb.c, %.noexc
  %i.s = phi ptr [ %i.i, %bb.c ], [ %.pre, %.noexc7 ], [ %i.i, %.noexc ]
  %i.t = phi double [ %.pre6.i, %bb.c ], [ %.pre.i, %.noexc7 ], [ %.pre6.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.u = getelementptr i8, ptr %i.s, i64 -24
end_hunk_7
