Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MultiResGrid?download=true
inline.NumInlined: 34755
inline.NumDeleted: 11612
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 494
begin_hunk_0_@_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE5gridsEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !56
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !56
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !56
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9transformEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9transformEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14constTransformEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE3xyzERKNS0_4math5CoordEmm(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = sitofp i32 %i.b to double
  %i.d = trunc i64 %2 to i32
  %4 = trunc i64 %3 to i32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <2 x i32>, ptr %1, align 4, !tbaa !8
  %6 = sitofp <2 x i32> %5 to <2 x double>
  %i.e = shl nuw i32 1, %4
  %7 = shl nuw i32 1, %i.d
  %8 = insertelement <2 x i32> poison, i32 %7, i64 0
  %9 = insertelement <2 x i32> %8, i32 %i.e, i64 1
  %i.f = sitofp <2 x i32> %9 to <2 x double>      ; 4 uses
  %10 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fmul nnan <2 x double> %10, %6
  %12 = extractelement <2 x double> %i.f, i64 0
  %13 = fmul nnan double %12, %i.c
  %14 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.g = fdiv <2 x double> %11, %14
  store <2 x double> %i.g, ptr %0, align 8, !tbaa !249, !alias.scope !251
  %15 = extractelement <2 x double> %i.f, i64 1
  %i.h = fdiv double %13, %15
  store double %i.h, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !249, !alias.scope !251
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE3xyzERKNS0_4math4Vec3IdEEmm(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8
  %4 = trunc i64 %3 to i32
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <2 x double>, ptr %1, align 8
  %i.b = shl nuw i32 1, %4
  %6 = shl nuw i32 1, %i.a
  %7 = insertelement <2 x i32> poison, i32 %6, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.b, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x double>        ; 4 uses
  %i.c = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x double> %5, %i.c
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fmul double %.sroa.8.0.copyload, %10
  %12 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.e = fdiv <2 x double> %i.d, %12
  store <2 x double> %i.e, ptr %0, align 8, !tbaa !249, !alias.scope !254
  %13 = extractelement <2 x double> %9, i64 1
  %i.f = fdiv double %11, %13
  store double %i.f, ptr %.sroa.8.0..sroa_idx5, align 8, !tbaa !249, !alias.scope !254
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE3xyzERKNS0_4math4Vec3IdEEdd(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, double noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = fsub double %2, %3
  %exp2 = tail call double @exp2(double %i.a)     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !249, !alias.scope !257
  %i.d = fmul double %exp2, %i.c
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !249, !alias.scope !257
  %i.f = insertelement <2 x double> poison, double %exp2, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x double> %i.g, %i.e
  store <2 x double> %i.h, ptr %0, align 8, !tbaa !249, !alias.scope !257
  store double %i.d, ptr %i.b, align 8, !tbaa !249, !alias.scope !257
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef float @_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE15prolongateVoxelERKNS0_4math5CoordEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr [16 x i8], ptr %i.b, i64 %2
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !260
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %3, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 9223372034707292159, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !35
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !35
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !35
  store ptr null, ptr %i.g, align 8, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.i, align 8, !tbaa !264
  %i.l = call noundef float @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE12ProlongateOp3runERKNS0_4math5CoordERKNS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret float %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef float @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE12ProlongateOp3runERKNS0_4math5CoordERKNS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %11 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %12 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %13 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %15 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %16 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %17 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %18 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %19 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %20 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !8      ; 8 uses
  %i.b = and i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 14 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 8 uses
  %i.e = shl i32 %i.d, 1
  %i.f = and i32 %i.e, 2
  %i.g = or disjoint i32 %i.f, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8    ; 8 uses
  %i.j = shl i32 %i.i, 2
  %i.k = and i32 %i.j, 4
  %i.l = or disjoint i32 %i.g, %i.k
  switch i32 %i.l, label %default.unreachable627 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %.preheader591
  ]

.preheader591:                                    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  br label %.preheader590

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = ashr i32 %i.a, 1
  %i.ab = ashr i32 %i.d, 1
  %i.ac = ashr i32 %i.i, 1
  %.sroa.2.0.insert.ext.i = zext i32 %i.ab to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aa to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %2, align 8
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ac, ptr %.sroa.2161.0..sroa_idx, align 8
  %i.ad = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.af = add nsw i32 %i.a, -1
  %i.ag = ashr i32 %i.af, 1
  %i.ah = ashr i32 %i.d, 1
  %i.ai = ashr i32 %i.i, 1
  %.sroa.2.0.insert.ext.i216 = zext i32 %i.ah to i64
  %.sroa.2.0.insert.shift.i217 = shl nuw i64 %.sroa.2.0.insert.ext.i216, 32
  %.sroa.0.0.insert.ext.i218 = zext i32 %i.ag to i64
  %.sroa.0.0.insert.insert.i219 = or disjoint i64 %.sroa.2.0.insert.shift.i217, %.sroa.0.0.insert.ext.i218
  store i64 %.sroa.0.0.insert.insert.i219, ptr %3, align 8
  %.sroa.2153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ai, ptr %.sroa.2153.0..sroa_idx, align 8
  %i.aj = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.al = load i32, ptr %0, align 4, !tbaa !8
  %i.am = add nsw i32 %i.al, 1
  %i.an = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !8
  %i.ap = ashr i32 %i.am, 1
  %i.aq = ashr i32 %i.an, 1
  %i.ar = ashr i32 %i.ao, 1
  %.sroa.2.0.insert.ext.i228 = zext i32 %i.aq to i64
  %.sroa.2.0.insert.shift.i229 = shl nuw i64 %.sroa.2.0.insert.ext.i228, 32
  %.sroa.0.0.insert.ext.i230 = zext i32 %i.ap to i64
  %.sroa.0.0.insert.insert.i231 = or disjoint i64 %.sroa.2.0.insert.shift.i229, %.sroa.0.0.insert.ext.i230
  store i64 %.sroa.0.0.insert.insert.i231, ptr %4, align 8
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ar, ptr %.sroa.2145.0..sroa_idx, align 8
  %i.as = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.at = load float, ptr %i.as, align 4, !tbaa !37
  %i.au = fadd float %i.ak, %i.at
  %i.av = fmul float %i.au, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ba

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aw = add nsw i32 %i.d, -1
  %i.ax = ashr i32 %i.a, 1
  %i.ay = ashr i32 %i.aw, 1
  %i.az = ashr i32 %i.i, 1
  %.sroa.2.0.insert.ext.i240 = zext i32 %i.ay to i64
  %.sroa.2.0.insert.shift.i241 = shl nuw i64 %.sroa.2.0.insert.ext.i240, 32
  %.sroa.0.0.insert.ext.i242 = zext i32 %i.ax to i64
  %.sroa.0.0.insert.insert.i243 = or disjoint i64 %.sroa.2.0.insert.shift.i241, %.sroa.0.0.insert.ext.i242
  store i64 %.sroa.0.0.insert.insert.i243, ptr %5, align 8
  %.sroa.2137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.az, ptr %.sroa.2137.0..sroa_idx, align 8
  %i.ba = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bc = load i32, ptr %0, align 4, !tbaa !8
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !8
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = load i32, ptr %i.h, align 4, !tbaa !8
  %i.bg = ashr i32 %i.bc, 1
  %i.bh = ashr i32 %i.be, 1
  %i.bi = ashr i32 %i.bf, 1
  %.sroa.2.0.insert.ext.i252 = zext i32 %i.bh to i64
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE5gridsEv:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !246
  br label %_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22
  br label %_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS5_EE9push_backEOS5_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !61  ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.aj, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !56
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #22, !inline_history !579
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #22, !inline_history !579
  br label %_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i11 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i11, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

bb.p:                                             ; preds = %bb.n
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i13 = phi i32 [ %i.am, %bb.o ], [ %i.aw, %bb.p ]
  %i.ax = icmp eq i32 %.0.i.i.i.i13, 1
  br i1 %i.ax, label %bb.q, label %_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #22
  br label %_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ay = add nuw i64 %.0714, 1                   ; 2 uses
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !472
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 4
  %i.bf = icmp ult i64 %i.ay, %i.be
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !580

bb.r:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %i.bg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !56
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9transformEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9transformEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14constTransformEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE3xyzERKNS0_4math5CoordEmm(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = sitofp i32 %i.b to double
  %i.d = trunc i64 %2 to i32
  %4 = trunc i64 %3 to i32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <2 x i32>, ptr %1, align 4, !tbaa !8
  %6 = sitofp <2 x i32> %5 to <2 x double>
  %i.e = shl nuw i32 1, %4
  %7 = shl nuw i32 1, %i.d
  %8 = insertelement <2 x i32> poison, i32 %7, i64 0
  %9 = insertelement <2 x i32> %8, i32 %i.e, i64 1
  %i.f = sitofp <2 x i32> %9 to <2 x double>      ; 4 uses
  %10 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fmul nnan <2 x double> %10, %6
  %12 = extractelement <2 x double> %i.f, i64 0
  %13 = fmul nnan double %12, %i.c
  %14 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.g = fdiv <2 x double> %11, %14
  store <2 x double> %i.g, ptr %0, align 8, !tbaa !249, !alias.scope !581
  %15 = extractelement <2 x double> %i.f, i64 1
  %i.h = fdiv double %13, %15
  store double %i.h, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !249, !alias.scope !581
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE3xyzERKNS0_4math4Vec3IdEEmm(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8
  %4 = trunc i64 %3 to i32
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <2 x double>, ptr %1, align 8
  %i.b = shl nuw i32 1, %4
  %6 = shl nuw i32 1, %i.a
  %7 = insertelement <2 x i32> poison, i32 %6, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.b, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x double>        ; 4 uses
  %i.c = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x double> %5, %i.c
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fmul double %.sroa.8.0.copyload, %10
  %12 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.e = fdiv <2 x double> %i.d, %12
  store <2 x double> %i.e, ptr %0, align 8, !tbaa !249, !alias.scope !584
  %13 = extractelement <2 x double> %9, i64 1
  %i.f = fdiv double %11, %13
  store double %i.f, ptr %.sroa.8.0..sroa_idx5, align 8, !tbaa !249, !alias.scope !584
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE3xyzERKNS0_4math4Vec3IdEEdd(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, double noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = fsub double %2, %3
  %exp2 = tail call double @exp2(double %i.a)     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !249, !alias.scope !587
  %i.d = fmul double %exp2, %i.c
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !249, !alias.scope !587
  %i.f = insertelement <2 x double> poison, double %exp2, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x double> %i.g, %i.e
  store <2 x double> %i.h, ptr %0, align 8, !tbaa !249, !alias.scope !587
  store double %i.d, ptr %i.b, align 8, !tbaa !249, !alias.scope !587
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZNK7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE15prolongateVoxelERKNS0_4math5CoordEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.182", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !468
  %i.c = getelementptr [16 x i8], ptr %i.b, i64 %2
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !487  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !590
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %3, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 9223372034707292159, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !35
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !35
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !35
  store ptr null, ptr %i.g, align 8, !tbaa !592
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.i, align 8, !tbaa !594
  %i.l = call noundef double @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE12ProlongateOp3runERKNS0_4math5CoordERKNS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret double %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE12ProlongateOp3runERKNS0_4math5CoordERKNS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %11 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %12 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %13 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %15 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %16 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %17 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %18 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %19 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %20 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !8      ; 8 uses
  %i.b = and i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 14 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 8 uses
  %i.e = shl i32 %i.d, 1
  %i.f = and i32 %i.e, 2
  %i.g = or disjoint i32 %i.f, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8    ; 8 uses
  %i.j = shl i32 %i.i, 2
  %i.k = and i32 %i.j, 4
  %i.l = or disjoint i32 %i.g, %i.k
  switch i32 %i.l, label %default.unreachable627 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %.preheader591
  ]

.preheader591:                                    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  br label %.preheader590

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = ashr i32 %i.a, 1
  %i.ab = ashr i32 %i.d, 1
  %i.ac = ashr i32 %i.i, 1
  %.sroa.2.0.insert.ext.i = zext i32 %i.ab to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aa to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %2, align 8
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ac, ptr %.sroa.2161.0..sroa_idx, align 8
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !249
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.af = add nsw i32 %i.a, -1
  %i.ag = ashr i32 %i.af, 1
  %i.ah = ashr i32 %i.d, 1
  %i.ai = ashr i32 %i.i, 1
  %.sroa.2.0.insert.ext.i216 = zext i32 %i.ah to i64
  %.sroa.2.0.insert.shift.i217 = shl nuw i64 %.sroa.2.0.insert.ext.i216, 32
  %.sroa.0.0.insert.ext.i218 = zext i32 %i.ag to i64
  %.sroa.0.0.insert.insert.i219 = or disjoint i64 %.sroa.2.0.insert.shift.i217, %.sroa.0.0.insert.ext.i218
  store i64 %.sroa.0.0.insert.insert.i219, ptr %3, align 8
  %.sroa.2153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ai, ptr %.sroa.2153.0..sroa_idx, align 8
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.al = load i32, ptr %0, align 4, !tbaa !8
  %i.am = add nsw i32 %i.al, 1
  %i.an = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !8
  %i.ap = ashr i32 %i.am, 1
  %i.aq = ashr i32 %i.an, 1
  %i.ar = ashr i32 %i.ao, 1
  %.sroa.2.0.insert.ext.i228 = zext i32 %i.aq to i64
  %.sroa.2.0.insert.shift.i229 = shl nuw i64 %.sroa.2.0.insert.ext.i228, 32
  %.sroa.0.0.insert.ext.i230 = zext i32 %i.ap to i64
  %.sroa.0.0.insert.insert.i231 = or disjoint i64 %.sroa.2.0.insert.shift.i229, %.sroa.0.0.insert.ext.i230
  store i64 %.sroa.0.0.insert.insert.i231, ptr %4, align 8
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ar, ptr %.sroa.2145.0..sroa_idx, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.at = load double, ptr %i.as, align 8, !tbaa !249
  %i.au = fadd double %i.ak, %i.at
  %i.av = fmul double %i.au, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ba

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aw = add nsw i32 %i.d, -1
  %i.ax = ashr i32 %i.a, 1
  %i.ay = ashr i32 %i.aw, 1
  %i.az = ashr i32 %i.i, 1
  %.sroa.2.0.insert.ext.i240 = zext i32 %i.ay to i64
  %.sroa.2.0.insert.shift.i241 = shl nuw i64 %.sroa.2.0.insert.ext.i240, 32
  %.sroa.0.0.insert.ext.i242 = zext i32 %i.ax to i64
  %.sroa.0.0.insert.insert.i243 = or disjoint i64 %.sroa.2.0.insert.shift.i241, %.sroa.0.0.insert.ext.i242
  store i64 %.sroa.0.0.insert.insert.i243, ptr %5, align 8
  %.sroa.2137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.az, ptr %.sroa.2137.0..sroa_idx, align 8
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bc = load i32, ptr %0, align 4, !tbaa !8
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !8
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = load i32, ptr %i.h, align 4, !tbaa !8
  %i.bg = ashr i32 %i.bc, 1
  %i.bh = ashr i32 %i.be, 1
  %i.bi = ashr i32 %i.bf, 1
  %.sroa.2.0.insert.ext.i252 = zext i32 %i.bh to i64
end_hunk_1
