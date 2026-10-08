Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/environment?download=true
inline.NumInlined: 290
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortE4pushEOS0_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #15
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !46
  store ptr %i.v, ptr %i.a, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !47
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.b, %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.aa = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.ac, i64 64, i1 false)
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 6                 ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.ai = icmp sgt i64 %i.ag, 1
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEE11RaycastSortEvT_S9_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit, %bb.f
  %.018.i.i = phi i64 [ %.0919.i45.i, %bb.f ], [ %i.ah, %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i45.i = lshr i64 %.0919.in.i.i, 1        ; 3 uses
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.0919.i45.i ; 2 uses
  %i.ak = call noundef zeroext i1 @_ZNK11RaycastSortclERK12PointedThingS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br i1 %i.ak, label %bb.f, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEE11RaycastSortEvT_S9_T0_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds [64 x i8], ptr %i.ab, i64 %.018.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.al, ptr noundef nonnull align 4 dereferenceable(64) %i.aj, i64 64, i1 false), !tbaa.struct !53
  %.not.i = icmp eq i64 %.0919.i45.i, 0
  br i1 %.not.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEE11RaycastSortEvT_S9_T0_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEE11RaycastSortEvT_S9_T0_.exit: ; preds = %.lr.ph.i.i, %bb.f, %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ah, %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit ], [ 0, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.am = getelementptr inbounds [64 x i8], ptr %i.ab, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare noundef signext i16 @_ZN7voxalgo17VoxelLineIterator8getIndexEN4core8vector3dIsEE(ptr noundef nonnull align 4 dereferenceable(70), i48) local_unnamed_addr #1

declare void @_ZNK7MapNode17getSelectionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4), i48, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_(ptr noundef nonnull align 4 dereferenceable(24), <2 x float>, float, <2 x float>, float, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.PointedThing, align 8       ; 7 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1 ; 4 uses
  %4 = alloca %struct.PointedThing, align 8       ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 64
  br i1 %i.g, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEE11RaycastSortEvT_S9_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.h, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.a, i64 64, i1 false), !tbaa.struct !53
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 6                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.033.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.033.i.i.i, 1                   ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [64 x i8], ptr %i.a, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [64 x i8], ptr %i.a, i64 %i.r
  %i.t = call noundef zeroext i1 @_ZNK11RaycastSortclERK12PointedThingS2_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 4 dereferenceable(64) %i.s)
  %spec.select.i.i.i = select i1 %i.t, i64 %i.r, i64 %i.p ; 4 uses
  %i.u = getelementptr inbounds [64 x i8], ptr %i.a, i64 %spec.select.i.i.i
  %i.v = getelementptr inbounds [64 x i8], ptr %i.a, i64 %.033.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %i.u, i64 64, i1 false), !tbaa.struct !53
  %i.w = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.w, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !170

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.x = and i64 %i.j, 64
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.z = add nsw i64 %i.k, -2
  %i.aa = ashr exact i64 %i.z, 1
  %i.ab = icmp eq i64 %.0.lcssa.i.i.i, %i.aa
  br i1 %i.ab, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %i.ac = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.ad = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.ad
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.af, ptr noundef nonnull align 4 dereferenceable(64) %i.ae, i64 64, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  br label %.lr.ph.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterI11RaycastSortEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d, %.thread.i.i
  %.018.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.d ], [ %i.ad, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %.018.i.i.i.i = phi i64 [ %.0919.i.i67.i.i, %bb.e ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i67.i.i = lshr i64 %.0919.in.i.i.i.i, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.0919.i.i67.i.i ; 2 uses
  %i.ah = call noundef zeroext i1 @_ZNK11RaycastSortclERK12PointedThingS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.ah, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterI11RaycastSortEEEvT_SC_SC_RT0_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.a, i64 %.018.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ai, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, i64 64, i1 false), !tbaa.struct !53
  %.not8.i.i = icmp eq i64 %.0919.i.i67.i.i, 0
  br i1 %.not8.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterI11RaycastSortEEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterI11RaycastSortEEEvT_SC_SC_RT0_.exit.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aj = getelementptr inbounds [64 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEE11RaycastSortEvT_S9_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEE11RaycastSortEvT_S9_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterI11RaycastSortEEEvT_SC_SC_RT0_.exit.i
  %i.ak = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP12PointedThingSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterI11RaycastSortEEEvT_SC_SC_RT0_.exit.i ]
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -64
  store ptr %i.al, ptr %i.b, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11Environment13stepTimeOfDayEf(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load atomic float, ptr %i.c seq_cst, align 4 ; 2 uses
  %i.e = fpext nsz float %i.d to double
  %i.f = fmul nsz double %i.e, 2.400000e+04
  %i.g = fdiv nsz double %i.f, 8.640000e+04       ; 2 uses
  %i.h = fptrunc nsz double %i.g to float         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !23
  %i.k = fadd nsz float %1, %i.j                  ; 2 uses
  store float %i.k, ptr %i.i, align 8, !tbaa !23
  %i.l = fmul nsz float %i.k, %i.h
  %i.m = fptoui float %i.l to i32                 ; 4 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %i.p = add i32 %i.o, %i.m                       ; 2 uses
  %i.q = icmp ugt i32 %i.p, 23999
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = atomicrmw add ptr %i.r, i32 1 seq_cst, align 4 ; 0 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !31
  %i.u = add i32 %i.t, %i.m
  %i.v = urem i32 %i.u, 24000                     ; 2 uses
  store i32 %i.v, ptr %i.n, align 8, !tbaa !31
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fdiv nsz float %i.w, 2.400000e+04
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.x, ptr %i.y, align 4, !tbaa !32
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  store i32 %i.p, ptr %i.n, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.1 = phi i1 [ true, %bb.d ], [ false, %.critedge ], [ false, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.z = fcmp nsz ogt double %i.g, f0x3690000000000000
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = uitofp nsz i32 %i.m to float
  %i.ab = fdiv nsz float %i.aa, %i.h
  %i.ac = load float, ptr %i.i, align 8, !tbaa !23
  %i.ad = fsub nsz float %i.ac, %i.ab
  store float %i.ad, ptr %i.i, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.1, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = fdiv nsz float %i.d, 2.400000e+01
  %i.af = fdiv nsz float %i.ae, 3.600000e+03
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !32
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %1, float %i.ah) ; 3 uses
  %i.aj = fcmp nsz ogt float %i.ai, 1.000000e+00
  %i.ak = fadd nsz float %i.ai, -1.000000e+00
  %storemerge = select i1 %i.aj, float %i.ak, float %i.ai ; 3 uses
  store float %storemerge, ptr %i.ag, align 4, !tbaa !32
  %i.al = fcmp nsz olt float %storemerge, 0.000000e+00
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = fadd nsz float %storemerge, 1.000000e+00
  store float %i.am, ptr %i.ag, align 4, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.an = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local noundef i32 @_ZN11Environment11getDayCountEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11EnvironmentD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11EnvironmentD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i16 @_ZNK14Pointabilities9matchNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZNK11RaycastSortclERK12PointedThingS2_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!"_ZTSSt6atomicIfE", !13, i64 0}
!15 = !{!"bool", !7, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!17 = !{!"_ZTSSt6atomicIjE", !16, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 _ZTS8IGameDef", !18, i64 0}
!20 = !{!"_ZTSSt12__mutex_base", !7, i64 0}
!21 = !{!"_ZTSSt5mutex", !20, i64 0}
!22 = !{!"_ZTS11Environment", !8, i64 8, !14, i64 12, !8, i64 16, !13, i64 20, !13, i64 24, !15, i64 28, !8, i64 32, !17, i64 36, !19, i64 40, !21, i64 48}
!23 = !{!22, !13, i64 24}
!24 = !{!22, !15, i64 28}
!25 = !{!22, !8, i64 32}
!26 = !{!"p1 omnipotent char", !18, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !7, i64 16}
!30 = !{!29, !28, i64 8}
!31 = !{!22, !8, i64 16}
!32 = !{!22, !13, i64 20}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!13, !13, i64 0}
!36 = !{!"short", !7, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{i64 0, i64 2, !37, i64 2, i64 2, !37, i64 4, i64 2, !37}
!39 = !{!"_ZTSN4core8vector3dIfEE", !13, i64 0, !13, i64 4, !13, i64 8}
!40 = !{!"_ZTSN4core8vector3dIsEE", !36, i64 0, !36, i64 2, !36, i64 4}
!41 = !{!"_ZTSN7voxalgo17VoxelLineIteratorE", !39, i64 0, !39, i64 12, !39, i64 24, !39, i64 36, !40, i64 48, !40, i64 54, !36, i64 60, !40, i64 62, !36, i64 68}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"p1 _ZTS12PointedThing", !18, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseI12PointedThingSaIS0_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!43, !43, i64 0}
!46 = !{!44, !43, i64 0}
!47 = !{!44, !43, i64 16}
!48 = !{!"_ZTS16PointabilityType", !7, i64 0}
!49 = !{!44, !43, i64 8}
!50 = !{!"_ZTS16PointedThingType", !7, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!48, !48, i64 0}
!53 = !{i64 0, i64 1, !51, i64 1, i64 1, !52, i64 2, i64 2, !37, i64 4, i64 2, !37, i64 6, i64 2, !37, i64 8, i64 2, !37, i64 10, i64 2, !37, i64 12, i64 2, !37, i64 14, i64 2, !37, i64 16, i64 2, !37, i64 18, i64 2, !37, i64 20, i64 2, !37, i64 22, i64 2, !37, i64 24, i64 4, !35, i64 28, i64 4, !35, i64 32, i64 4, !35, i64 36, i64 4, !35, i64 40, i64 4, !35, i64 44, i64 4, !35, i64 48, i64 4, !35, i64 52, i64 4, !35, i64 56, i64 4, !35, i64 60, i64 4, !35}
!54 = !{!14, !13, i64 0}
!55 = !{!16, !8, i64 0}
!56 = !{!22, !19, i64 40}
!57 = !{!"p1 _ZTS8Settings", !18, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!27, !26, i64 0}
!60 = !{!28, !28, i64 0}
!61 = !{!29, !26, i64 0}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !42}
!64 = !{!41, !36, i64 60}
!65 = !{!41, !36, i64 68}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
end_hunk_0
