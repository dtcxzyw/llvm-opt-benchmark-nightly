inline.NumInlined: 3791
inline.NumDeleted: 2147
begin_hunk_0_@_ZN6hermes2vm7Runtime19insertVisitedObjectEPNS0_8JSObjectE:bb.a
._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.y, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !969
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !969
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !969
  %i.ag = icmp eq ptr %i.af, %1
  %spec.select.i.i.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i.i.i, ptr %i.d
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit23: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit25: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit: ; preds = %bb.b, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit23, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit25, %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.g ], [ %i.aj, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit25 ], [ %i.ai, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit23 ], [ %i.ah, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.b ]
  %.not = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.d
  br i1 %.not, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread, label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9608 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !535
  %.not.i = icmp eq ptr %i.d, %i.al
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread
  store ptr %1, ptr %i.d, align 8, !tbaa !969
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.am, ptr %i.c, align 8, !tbaa !971
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread
  %i.an = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.an, label %bb.l, label %_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ao = ashr exact i64 %i.g, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #31 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.av, align 8, !tbaa !969
  %i.aw = icmp sgt i64 %i.g, 0
  br i1 %i.aw, label %bb.m, label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.b, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.au, ptr %i.a, align 8, !tbaa !534
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !971
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !535
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit
  %i.az = phi i1 [ true, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit ], [ false, %bb.j ], [ false, %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  ret i1 %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm7Runtime19removeVisitedObjectEPNS0_8JSObjectE(ptr noundef nonnull align 8 captures(none) dereferenceable(9816) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9600 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !971
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !971
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator22emitLoadConstUndefinedEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !493  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !489    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 118, ptr %i.b, align 1, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !493
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 118, ptr %i.s, align 1, !tbaa !19
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !489
  store ptr %i.u, ptr %i.a, align 8, !tbaa !493
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !972, !range !123, !noundef !124
  %2 = zext i1 %i.x to i8
  %3 = or i8 %i.y, %2
  store i8 %3, ptr %i.g, align 8, !tbaa !972
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !19
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !493
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !489   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !19
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !489
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !493
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = trunc i64 %i.f to i32
  ret i32 %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !493  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !489    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 92, ptr %i.b, align 1, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !493
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 92, ptr %i.s, align 1, !tbaa !19
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !489
  store ptr %i.u, ptr %i.a, align 8, !tbaa !493
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !972, !range !123, !noundef !124
  %2 = zext i1 %i.x to i8
  %3 = or i8 %i.y, %2
  store i8 %3, ptr %i.g, align 8, !tbaa !972
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !19
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !493
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !489   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !19
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !489
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !493
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = trunc i64 %i.f to i32
  ret i32 %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitGetGlobalObjectEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !493  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !489    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 48, ptr %i.b, align 1, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !493
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 48, ptr %i.s, align 1, !tbaa !19
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !489
  store ptr %i.u, ptr %i.a, align 8, !tbaa !493
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !972, !range !123, !noundef !124
  %2 = zext i1 %i.x to i8
  %3 = or i8 %i.y, %2
  store i8 %3, ptr %i.g, align 8, !tbaa !972
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !19
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !493
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !489   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !19
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !489
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !493
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = trunc i64 %i.f to i32
  ret i32 %i.ar
}

declare void @_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.223") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15IdentifierTable7reserveEj(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !541
  %i.d = load ptr, ptr %0, align 8, !tbaa !540    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %i.a
  br i1 %i.i, label %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !611  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %i.a, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !974, !alias.scope !975
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !979

_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #30
  br label %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.o, ptr %0, align 8, !tbaa !540
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.r, ptr %i.j, align 8, !tbaa !611
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.a
  store ptr %i.s, ptr %i.b, align 8, !tbaa !541
  br label %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !612
  %i.v = lshr i32 %i.u, 1
  %i.w = icmp ult i32 %i.v, %1
  br i1 %i.w, label %bb.c, label %_ZN6hermes2vm6detail19IdentifierHashTable7reserveEj.exit

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE7reserveEm.exit
  %i.x = shl i32 %1, 1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 1
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = or i64 %i.ab, %i.aa                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 4
  %i.ae = or i64 %i.ad, %i.ac                     ; 2 uses
  %i.af = lshr i64 %i.ae, 8
  %i.ag = or i64 %i.af, %i.ae                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 16
  %i.ai = or i64 %i.ah, %i.ag
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = add i32 %i.aj, 1
  tail call void @_ZN6hermes2vm6detail19IdentifierHashTable13growAndRehashEj(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.ak) #29
  br label %_ZN6hermes2vm6detail19IdentifierHashTable7reserveEj.exit

_ZN6hermes2vm6detail19IdentifierHashTable7reserveEj.exit: ; preds = %_ZNSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE7reserveEm.exit, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !614 ; 2 uses
  %i.ao = shl i64 %i.an, 6
  %i.ap = icmp ult i64 %i.ao, %i.a
  br i1 %i.ap, label %bb.d, label %_ZN4llvh9BitVector7reserveEj.exit

bb.d:                                             ; preds = %_ZN6hermes2vm6detail19IdentifierHashTable7reserveEj.exit
  %i.aq = add i32 %1, 63
  %i.ar = lshr i32 %i.aq, 6
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.an, 1
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.as) ; 4 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !539
  %i.av = shl i64 %.sroa.speculated.i.i, 3
  %i.aw = tail call ptr @realloc(ptr noundef %i.au, i64 noundef %i.av) #35 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.e, label %_ZN4llvh12safe_reallocEPvm.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.177, i1 noundef zeroext true) #29
  br label %_ZN4llvh12safe_reallocEPvm.exit.i.i

_ZN4llvh12safe_reallocEPvm.exit.i.i:              ; preds = %bb.e, %bb.d
  store ptr %i.aw, ptr %i.al, align 8
  store i64 %.sroa.speculated.i.i, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !980 ; 2 uses
  %i.ba = add i32 %i.az, 63
  %i.bb = lshr i32 %i.ba, 6                       ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 3 uses
  %i.bd = icmp ugt i64 %.sroa.speculated.i.i, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN4llvh12safe_reallocEPvm.exit.i.i
  %i.be = sub nuw i64 %.sroa.speculated.i.i, %i.bc
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bc
  %i.bg = shl i64 %i.be, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bg, i1 false)
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i: ; preds = %bb.f, %_ZN4llvh12safe_reallocEPvm.exit.i.i
  %i.bh = and i32 %i.az, 63                       ; 2 uses
  %.not.i.i.i.i3 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i3, label %_ZN4llvh9BitVector7reserveEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i.i
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nsw i64 -1, %i.bi
  %i.bk = xor i64 %i.bj, -1
  %i.bl = add nsw i32 %i.bb, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18
  %i.bp = and i64 %i.bo, %i.bk
end_hunk_0
