Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/environment?download=true
inline.NumInlined: 290
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11Environment16getDayNightRatioEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = fneg nsz float %i.j
  %i.m = fptosi float %i.l to i32
  %i.n = udiv i32 %i.m, 24000
  %i.o = uitofp nsz nneg i32 %i.n to float
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.o, float 2.400000e+04, float %i.j)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.039.i = phi nsz float [ %i.p, %bb.e ], [ %i.j, %bb.d ] ; 4 uses
  %i.q = fcmp nsz ult float %.039.i, 2.400000e+04
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = fptosi float %.039.i to i32
  %i.s = udiv i32 %i.r, 24000
  %i.t = uitofp nsz nneg i32 %i.s to float
  %i.u = fneg nsz float %i.t
  %i.v = tail call nsz float @llvm.fmuladd.f32(float %i.u, float 2.400000e+04, float %.039.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.140.i = phi nsz float [ %i.v, %bb.g ], [ %.039.i, %bb.f ] ; 3 uses
  %i.w = fcmp nsz ogt float %.140.i, 1.200000e+04
  %i.x = fsub nsz float 2.400000e+04, %.140.i
  %.241.i = select nsz i1 %i.w, float %i.x, float %.140.i ; 10 uses
  %i.y = fcmp nsz ugt float %.241.i, 4.625000e+03
  br i1 %i.y, label %bb.i, label %_Z22time_to_daynight_ratiofb.exit

bb.i:                                             ; preds = %bb.h
  %i.z = fcmp nsz ult float %.241.i, 6.125000e+03
  br i1 %i.z, label %.preheader.preheader.i, label %_Z22time_to_daynight_ratiofb.exit

.preheader.preheader.i:                           ; preds = %bb.i
  %i.aa = fcmp nsz ult float %.241.i, 4.375000e+03
  br i1 %i.aa, label %bb.j, label %.preheader.1.i

bb.j:                                             ; preds = %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.04263.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ], [ 4, %.preheader.4.i ], [ 5, %.preheader.5.i ], [ 6, %.preheader.6.i ], [ 7, %.preheader.7.i ] ; 2 uses
  %.lcssa.i = phi float [ 4.375000e+03, %.preheader.preheader.i ], [ 4.625000e+03, %.preheader.1.i ], [ 4.875000e+03, %.preheader.2.i ], [ 5.125000e+03, %.preheader.3.i ], [ 5.375000e+03, %.preheader.4.i ], [ 5.625000e+03, %.preheader.5.i ], [ 5.875000e+03, %.preheader.6.i ], [ 6.125000e+03, %.preheader.7.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @__const._Z22time_to_daynight_ratiofb.values, i64 %.04263.lcssa.wide.i
  %i.ac = add nuw nsw i64 %.04263.lcssa.wide.i, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @__const._Z22time_to_daynight_ratiofb.values, i64 %i.ad ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ag = fsub nsz float %.lcssa.i, %i.af
  %i.ah = fsub nsz float %.241.i, %i.af
  %i.ai = fdiv nsz float %i.ah, %i.ag             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !35
  %i.al = fsub nsz float 1.000000e+00, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !35
  %i.ao = fmul nsz float %i.an, %i.al
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %i.ai, float %i.ak, float %i.ao)
  %i.aq = fptoui float %i.ap to i32
  br label %_Z22time_to_daynight_ratiofb.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.ar = fcmp nsz ult float %.241.i, 4.625000e+03
  br i1 %i.ar, label %bb.j, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.as = fcmp nsz ult float %.241.i, 4.875000e+03
  br i1 %i.as, label %bb.j, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.at = fcmp nsz ult float %.241.i, 5.125000e+03
  br i1 %i.at, label %bb.j, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.au = fcmp nsz ult float %.241.i, 5.375000e+03
  br i1 %i.au, label %bb.j, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.av = fcmp nsz ult float %.241.i, 5.625000e+03
  br i1 %i.av, label %bb.j, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.aw = fcmp nsz ult float %.241.i, 5.875000e+03
  br i1 %i.aw, label %bb.j, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  br label %bb.j

_Z22time_to_daynight_ratiofb.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.aq, %bb.j ], [ 175, %bb.h ], [ 1000, %bb.i ]
  %i.ax = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_ZN11Environment17setTimeOfDaySpeedEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store atomic float %1, ptr %i.a seq_cst, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11Environment24setDayNightRatioOverrideEbj(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.c, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.e, align 8, !tbaa !25
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11Environment12setTimeOfDayEj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %i.e = icmp ugt i32 %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i32 %1, ptr %i.c, align 8, !tbaa !31
  %i.h = uitofp nsz i32 %1 to float
  %i.i = fdiv nsz float %i.h, 2.400000e+04
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.i, ptr %i.j, align 4, !tbaa !32
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11Environment12getTimeOfDayEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %i.e = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN11Environment13getTimeOfDayFEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !32
  %i.e = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret float %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11Environment13line_of_sightEN4core8vector3dIfEES2_PNS1_IsEE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %"struct.voxalgo::VoxelLineIterator", align 4 ; 7 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %foldExtExtBinop = fsub nsz <2 x float> %3, %1
  %9 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = insertelement <4 x float> %10, float %2, i64 2
  %12 = shufflevector <4 x float> %11, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %13 = fdiv nsz <4 x float> %12, splat (float 1.000000e+01) ; 3 uses
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %14, ptr %7, align 8
  %15 = extractelement <4 x float> %13, i64 2
  store float %15, ptr %.sroa.211.0..sroa_idx, align 8
  %i.a = fsub nsz float %4, %2
  %foldExtExtBinop49 = fsub nsz <2 x float> %3, %1
  %16 = shufflevector <2 x float> %foldExtExtBinop49, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.b = insertelement <2 x float> %16, float %i.a, i64 1
  %i.c = fdiv nsz <2 x float> %i.b, splat (float 1.000000e+01) ; 2 uses
  %17 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %18 = shufflevector <2 x float> %17, <2 x float> %i.c, <2 x i32> <i32 0, i32 2>
  store <2 x float> %18, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = extractelement <2 x float> %i.c, i64 1
  store float %i.d, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN7voxalgo17VoxelLineIteratorC1ERKN4core8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(70) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 68
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(144) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %.sroa.0.0.copyload = load i48, ptr %i.e, align 2, !tbaa !37
  %i.l = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.k, i48 %.sroa.0.0.copyload, ptr noundef null)
  %i.m = and i32 %i.l, 65535
  %.not = icmp eq i32 %i.m, 126                   ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21 = icmp eq ptr %5, null
  br i1 %.not21, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %5, ptr noundef nonnull align 2 dereferenceable(6) %i.e, i64 6, i1 false), !tbaa.struct !38
  br label %.thread

bb.e:                                             ; preds = %bb.b
  call void @_ZN7voxalgo17VoxelLineIterator4nextEv(ptr noundef nonnull align 4 dereferenceable(70) %6)
  %i.n = load i16, ptr %i.f, align 4, !tbaa !64
  %i.o = load i16, ptr %i.g, align 4, !tbaa !65
  %.not22 = icmp sgt i16 %i.n, %i.o
  br i1 %.not22, label %.thread, label %bb.b, !llvm.loop !63

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN7voxalgo17VoxelLineIteratorC1ERKN4core8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(70), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #1

declare void @_ZN7voxalgo17VoxelLineIterator4nextEv(ptr noundef nonnull align 4 dereferenceable(70)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11Environment15continueRaycastEP12RaycastStateP12PointedThing(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.PointedThing, align 8       ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1 ; 3 uses
  %5 = alloca %"class.std::vector", align 8       ; 11 uses
  %6 = alloca %"class.std::vector.121", align 8   ; 12 uses
  %7 = alloca %struct.MapNode, align 4            ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 10 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 388 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !106, !range !33, !noundef !34
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = load i8, ptr %i.k, align 8, !tbaa !107, !range !33, !noundef !34
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load ptr, ptr %0, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(232) %i.n)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %5, align 8, !tbaa !45     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 2 uses
  %.not416458 = icmp eq ptr %i.r, %i.t
  br i1 %.not416458, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load ptr, ptr %5, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.v = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.r, %bb.d ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #15
  br label %_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit

_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit:     ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0408.0459 = phi ptr [ %i.r, %.lr.ph ], [ %i.ac, %bb.h ] ; 2 uses
  invoke void @_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.u, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.0408.0459)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0408.0459, i64 64 ; 2 uses
  %.not416 = icmp eq ptr %i.ac, %i.t
  br i1 %.not416, label %._crit_edge.loopexit, label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn218 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ab, %bb.f ]
  %i.ae = load ptr, ptr %5, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i223 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i223, label %_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit224, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #15
  br label %_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit224

_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit224:  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.bc

bb.l:                                             ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  %.sroa.01.0.copyload.i = load i64, ptr %i.ak, align 4, !tbaa !37 ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !37 ; 2 uses
  %.sroa.0405.6.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 48
  %.sroa.0405.6.extract.trunc = trunc nuw i64 %.sroa.0405.6.extract.shift to i16
  %i.al = sub i16 0, %.sroa.0405.6.extract.trunc
  %.sroa.7406.8.extract.trunc = trunc i32 %.sroa.22.0.copyload.i to i16
  %i.am = sub i16 0, %.sroa.7406.8.extract.trunc
  %.sroa.7406.10.extract.shift = lshr i32 %.sroa.22.0.copyload.i, 16
  %.sroa.7406.10.extract.trunc = trunc nuw i32 %.sroa.7406.10.extract.shift to i16
  %i.an = sub i16 0, %.sroa.7406.10.extract.trunc
  %.sroa.3.0.insert.ext.i = zext i16 %i.an to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.am to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.al to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8, !tbaa !37
  %.sroa.0405.0.extract.trunc = trunc i64 %.sroa.01.0.copyload.i to i16
  %i.ap = sub i16 0, %.sroa.0405.0.extract.trunc
  %.sroa.0405.2.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 16
  %.sroa.0405.2.extract.trunc = trunc i64 %.sroa.0405.2.extract.shift to i16
  %i.aq = sub i16 0, %.sroa.0405.2.extract.trunc
  %.sroa.0405.4.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.0405.4.extract.trunc = trunc i64 %.sroa.0405.4.extract.shift to i16
  %i.ar = sub i16 0, %.sroa.0405.4.extract.trunc
  %.sroa.3.0.insert.ext.i225 = zext i16 %i.ar to i48
  %.sroa.3.0.insert.shift.i226 = shl nuw i48 %.sroa.3.0.insert.ext.i225, 32
  %.sroa.2.0.insert.ext.i227 = zext i16 %i.aq to i48
  %.sroa.2.0.insert.shift.i228 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i227, 16
  %.sroa.2.0.insert.insert.i229 = or disjoint i48 %.sroa.3.0.insert.shift.i226, %.sroa.2.0.insert.shift.i228
  %.sroa.0.0.insert.ext.i230 = zext i16 %i.ap to i48
  %.sroa.0.0.insert.insert.i231 = or disjoint i48 %.sroa.2.0.insert.insert.i229, %.sroa.0.0.insert.ext.i230
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 382
  store i48 %.sroa.0.0.insert.insert.i231, ptr %i.as, align 2, !tbaa !37
end_hunk_0
