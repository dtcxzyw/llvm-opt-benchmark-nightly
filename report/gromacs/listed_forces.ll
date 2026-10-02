Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/listed_forces?download=true
inline.NumInlined: 1046
inline.NumDeleted: 629
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt6vectorIiSaIiEEaSERKS1_:bb.a

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !75
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !110

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !111
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !111
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !110

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !74
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !104 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !74
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !104
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !111
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !111
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !110

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !111
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !111
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK12ListedForces14haveRestraintsERK8t_fcdata(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2880) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = icmp ne ptr %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp ne ptr %i.m, null
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !130
  %i.s = icmp sgt i32 %i.r, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.t = phi i1 [ %i.s, %bb.c ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK12ListedForces14haveCpuBondedsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2880) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i8, ptr %i.c, align 8, !tbaa !146, !range !147, !noundef !148
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK12ListedForces19haveCpuListedForcesERK8t_fcdata(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2880) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i8, ptr %i.c, align 8, !tbaa !146, !range !147, !noundef !148
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !60     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1336
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = icmp ne ptr %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp ne ptr %i.r, null
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i, label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130
  %i.x = icmp sgt i32 %i.w, 0
  br label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit

_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.y = phi i1 [ true, %bb.a ], [ %i.x, %bb.d ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZN12ListedForces9calculateEP13gmx_wallcyclePA3_KfN3gmx19ArrayRefWithPaddingIKNS5_11BasicVectorIfEEEENS5_8ArrayRefIS9_EEP8t_fcdataPK9history_tPNS5_12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSB_IS2_EESU_SU_NSB_IKbEENSB_IKtEEiPiRKNS5_12StepWorkloadE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2880) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.122") align 8 captures(none) %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.122") align 8 captures(none) %14, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.122") align 8 captures(none) %15, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.125") align 8 captures(none) %16, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %17, i32 noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(19) %20) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %21 = alloca %"class.gmx::StepWorkload", align 1 ; 5 uses
  %22 = alloca %"class.gmx::ArrayRef.122", align 16 ; 4 uses
  %23 = alloca %"class.gmx::ArrayRef.238", align 16 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %24 = alloca %"class.gmx::ArrayRef", align 8    ; 5 uses
  %25 = alloca %"class.gmx::ArrayRef.125", align 8 ; 5 uses
  %26 = alloca %"class.gmx::ArrayRef.122", align 8 ; 5 uses
  %27 = alloca %"class.gmx::ArrayRef.122", align 8 ; 5 uses
  %28 = alloca %"class.gmx::ArrayRef.238", align 8 ; 5 uses
  %29 = alloca %"class.gmx::ArrayRef.122", align 8 ; 5 uses
  %30 = alloca %"struct.gmx::EnumerationArray.67", align 16 ; 9 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %31 = alloca %"class.gmx::ArrayRef.238", align 8 ; 5 uses
  %32 = alloca %"class.gmx::ArrayRef.122", align 8 ; 5 uses
  %33 = alloca %"class.gmx::ArrayRef", align 8    ; 5 uses
  %34 = alloca %struct.t_pbc, align 4             ; 4 uses
  %35 = alloca %"class.gmx::BasicVector", align 8 ; 6 uses
  %36 = alloca %"struct.gmx::EnumerationArray.67", align 4 ; 7 uses
  %37 = alloca %"struct.gmx::EnumerationArray.67", align 16 ; 9 uses
  %38 = alloca %struct.t_pbc, align 4             ; 4 uses
  %39 = alloca %"class.gmx::ArrayRef.122", align 8 ; 3 uses
  %40 = alloca %"class.gmx::ArrayRef", align 8    ; 3 uses
  %41 = alloca %"class.gmx::ArrayRef.242", align 8 ; 3 uses
  %42 = alloca %"class.gmx::ArrayRef.242", align 8 ; 3 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::allocator.256", align 1 ; 3 uses
  %45 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %46 = alloca %"struct.gmx::EnumerationArray.67", align 16 ; 9 uses
  %47 = alloca %"struct.gmx::EnumerationArray.66", align 4 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.s = load i64, ptr %i.r, align 8, !tbaa !100  ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.u = load i8, ptr %i.t, align 1, !tbaa !319, !range !147, !noundef !148
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !60     ; 19 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !321    ; 6 uses
  %i.y = and i64 %i.s, 8
  %.not = icmp eq i64 %i.y, 0
  %i.z = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !60    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1312
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1320
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 1336
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 1344
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97
  %i.ak = icmp ne ptr %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp ne ptr %i.am, null
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i, label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit.thread, label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit

_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit: ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !126
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !130
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit.thread, label %bb.o

_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 1312 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 1320
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 1336
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 1344
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !97
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK12ListedForces14haveRestraintsERK8t_fcdata.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !322
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %34, i32 noundef %i.be, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !82
  %i.bf = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.bf, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %36, i8 0, i64 28, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2776 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !252 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !252
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bo
  %i.bq = load ptr, ptr %13, align 8, !tbaa !254  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !254
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %36, i64 28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %36, ptr %31, align 8
  %.sroa.2167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.bx, ptr %.sroa.2167.0..sroa_idx, align 8
  store ptr %i.bq, ptr %32, align 8
  %.sroa.2169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.bw, ptr %.sroa.2169.0..sroa_idx, align 8
  store ptr %i.bj, ptr %33, align 8
  %.sroa.2171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %i.bp, ptr %.sroa.2171.0..sroa_idx, align 8
  store ptr %i.bh, ptr %i.l, align 8, !tbaa !62
  store i8 1, ptr %i.m, align 1, !tbaa !255
  store ptr %i.x, ptr %i.n, align 8, !tbaa !98
  store ptr %9, ptr %i.o, align 8, !tbaa !257
  store ptr %35, ptr %i.p, align 8, !tbaa !99
  store ptr %11, ptr %i.q, align 8, !tbaa !259
  %i.by = load i32, ptr %i.bh, align 8, !tbaa !260
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.z, i32 %i.by)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZL27calcPositionRestraintForcesRK22InteractionDefinitionsP18bonded_threading_tbPA3_KfRK5t_pbcPK10t_forcerecN3gmx8ArrayRefIKtEEPNSD_11BasicVectorIfEEP14gmx_enerdata_tP6t_nrnbNSE_IS4_EENSE_IfEE.omp_outlined, ptr nonnull %i.l, ptr nonnull %i.m, ptr nonnull %i.q, ptr nonnull %i.p, ptr nonnull align 8 %31, ptr nonnull align 8 dereferenceable(2760) %i.w, ptr nonnull align 4 dereferenceable(384) %34, ptr nonnull %i.n, ptr nonnull align 8 %32, ptr nonnull %i.o, ptr nonnull align 8 %33)
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 624 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 1336
  %i.cb = load <2 x ptr>, ptr %i.at, align 8, !tbaa !97 ; 2 uses
  %i.cc = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !97 ; 2 uses
  %i.cd = shufflevector <2 x ptr> %i.cb, <2 x ptr> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.ce = ptrtoint <2 x ptr> %i.cd to <2 x i64>
  %i.cf = shufflevector <2 x ptr> %i.cb, <2 x ptr> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.cg = ptrtoint <2 x ptr> %i.cf to <2 x i64>
  %i.ch = sub <2 x i64> %i.ce, %i.cg
  %i.ci = lshr exact <2 x i64> %i.ch, splat (i64 2)
  %i.cj = trunc <2 x i64> %i.ci to <2 x i32>
  %i.ck = load <9 x i32>, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 1680), align 8, !tbaa !261
  %i.cl = shufflevector <9 x i32> %i.ck, <9 x i32> poison, <2 x i32> <i32 0, i32 8>
  %i.cm = add nsw <2 x i32> %i.cl, splat (i32 1)
  %i.cn = sdiv <2 x i32> %i.cj, %i.cm
  %i.co = sitofp <2 x i32> %i.cn to <2 x double>
  %i.cp = load <2 x double>, ptr %i.bz, align 8, !tbaa !263
  %i.cq = fadd <2 x double> %i.cp, %i.co
  store <2 x double> %i.cq, ptr %i.bz, align 8, !tbaa !263
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cr = getelementptr inbounds nuw i8, ptr %20, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !323, !range !147, !noundef !148
  %i.ct = trunc nuw i8 %i.cs to i1                ; 2 uses
  br i1 %i.ct, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !326, !range !147, !noundef !148
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.preheader.i, label %_ZN3gmx15ForceWithVirial21addVirialContributionENS_11BasicVectorIfEE.exit

.preheader.i:                                     ; preds = %bb.h
  %.sroa.215.0.copyload = load float, ptr %i.bf, align 8, !tbaa !108
  %.sroa.014.0.copyload = load <2 x float>, ptr %35, align 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.014.0.copyload, i64 0
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !82
  %i.da = fadd float %.sroa.0.0.vec.extract.i, %i.cz
  store float %i.da, ptr %i.cy, align 4, !tbaa !82
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.014.0.copyload, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 100 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !82
  %i.dd = fadd float %.sroa.0.4.vec.extract.i, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !82
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 116 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !82
  %i.dg = fadd float %.sroa.215.0.copyload, %i.df
  store float %i.dg, ptr %i.de, align 4, !tbaa !82
  br label %_ZN3gmx15ForceWithVirial21addVirialContributionENS_11BasicVectorIfEE.exit

_ZN3gmx15ForceWithVirial21addVirialContributionENS_11BasicVectorIfEE.exit: ; preds = %bb.h, %.preheader.i
  %i.dh = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 384
  call void @_ZN3gmx19ThreadedForceBufferIA4_fE6reduceEPNS_15ForceWithVirialEPNS_16EnumerationArrayI19InteractionFunctionfLS6_95EEEP17gmx_grppairener_tNS_8ArrayRefIfEERKNS_12StepWorkloadEi(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull %i.cu, ptr noundef %11, ptr noundef nonnull %i.dj, ptr nonnull %36, ptr nonnull %i.bx, ptr noundef nonnull align 1 dereferenceable(19) %20, i32 noundef 1)
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 9
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !327, !range !147, !noundef !148
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN3gmx15ForceWithVirial21addVirialContributionENS_11BasicVectorIfEE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.do = load float, ptr %i.dn, align 4, !tbaa !82
  %i.dp = fpext float %i.do to double
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 608 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !263
  %i.ds = fadd double %i.dr, %i.dp
  store double %i.ds, ptr %i.dq, align 8, !tbaa !263
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZN12ListedForces9calculateEP13gmx_wallcyclePA3_KfN3gmx19ArrayRefWithPaddingIKNS5_11BasicVectorIfEEEENS5_8ArrayRefIS9_EEP8t_fcdataPK9history_tPNS5_12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSB_IS2_EESU_SU_NSB_IKbEENSB_IKtEEiPiRKNS5_12StepWorkloadE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.ga, ptr %24, align 8
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.gf, ptr %.sroa.222.0..sroa_idx.i, align 8
  store ptr %i.gg, ptr %25, align 8
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.gl, ptr %.sroa.224.0..sroa_idx.i, align 8
  store ptr %i.gm, ptr %26, align 8
  %.sroa.226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.gr, ptr %.sroa.226.0..sroa_idx.i, align 8
  store ptr %i.gs, ptr %27, align 8
  %.sroa.228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.gx, ptr %.sroa.228.0..sroa_idx.i, align 8
  store ptr %30, ptr %28, align 8
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.hk, ptr %.sroa.230.0..sroa_idx.i, align 8
  store ptr %i.gy, ptr %29, align 8
  %.sroa.232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.hd, ptr %.sroa.232.0..sroa_idx.i, align 8
  store ptr %i.fp, ptr %i.a, align 8, !tbaa !62
  %i.hl = zext i1 %.2 to i8
  store i8 %i.hl, ptr %i.b, align 1, !tbaa !255
  store ptr %i.x, ptr %i.c, align 8, !tbaa !98
  store ptr %9, ptr %i.d, align 8, !tbaa !257
  store ptr %i.hh, ptr %i.e, align 8, !tbaa !273
  store ptr %i.hj, ptr %i.f, align 8, !tbaa !98
  store ptr %11, ptr %i.g, align 8, !tbaa !259
  store ptr %12, ptr %i.h, align 8, !tbaa !275
  store i32 %i.fz, ptr %i.i, align 4, !tbaa !111
  store ptr %6, ptr %i.j, align 8, !tbaa !276
  store ptr %19, ptr %i.k, align 8, !tbaa !97
  %i.hm = load i32, ptr %i.fp, align 8, !tbaa !260
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.z, i32 %i.hm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 19, ptr nonnull @_ZL16calcBondedForcesRK22InteractionDefinitionsP18bonded_threading_tbPA3_KfPK10t_forcerecPK5t_pbcPA3_fP14gmx_enerdata_tP6t_nrnbN3gmx8ArrayRefIS4_EENSK_IfEESL_SL_NSK_IKbEENSK_IKtEEiP8t_fcdataRKNSJ_12StepWorkloadEPi.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull align 8 %28, ptr nonnull align 8 dereferenceable(2760) %i.w, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.h, ptr nonnull align 8 %29, ptr nonnull align 8 %27, ptr nonnull align 8 %26, ptr nonnull align 8 %25, ptr nonnull align 8 %24, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull align 1 dereferenceable(19) %20, ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 384
  call void @_ZN3gmx19ThreadedForceBufferIA4_fE6reduceEPNS_20ForceWithShiftForcesEPNS_16EnumerationArrayI19InteractionFunctionfLS6_95EEEP17gmx_grppairener_tNS_8ArrayRefIfEERKNS_12StepWorkloadEi(ptr noundef nonnull align 8 dereferenceable(80) %i.hn, ptr noundef nonnull %8, ptr noundef %11, ptr noundef nonnull %i.ho, ptr nonnull %30, ptr nonnull %i.hk, ptr noundef nonnull align 1 dereferenceable(19) %20, i32 noundef 1)
  %i.hp = getelementptr inbounds nuw i8, ptr %20, i64 9
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !327, !range !147, !noundef !148
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %.preheader.i129, label %.loopexit.i

.preheader.i129:                                  ; preds = %bb.p
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 568 ; 2 uses
  %i.ht = load <4 x float>, ptr %30, align 16, !tbaa !82
  %i.hu = fpext <4 x float> %i.ht to <4 x double>
  %i.hv = load <4 x double>, ptr %i.hs, align 8, !tbaa !263
  %i.hw = fadd <4 x double> %i.hv, %i.hu
  store <4 x double> %i.hw, ptr %i.hs, align 8, !tbaa !263
  %i.hx = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 600 ; 2 uses
  %i.hz = load <2 x float>, ptr %i.hx, align 16, !tbaa !82
  %i.ia = fpext <2 x float> %i.hz to <2 x double>
  %i.ib = load <2 x double>, ptr %i.hy, align 8, !tbaa !263
  %i.ic = fadd <2 x double> %i.ib, %i.ia
  store <2 x double> %i.ic, ptr %i.hy, align 8, !tbaa !263
  %i.id = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.ie = load float, ptr %i.id, align 8, !tbaa !82
  %i.if = fpext float %i.ie to double
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 616 ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !263
  %i.ii = fadd double %i.ih, %i.if
  store double %i.ii, ptr %i.ig, align 8, !tbaa !263
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i129, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i, %bb.o
  %.not.i128 = icmp eq ptr %6, null
  br i1 %.not.i128, label %_ZN12_GLOBAL__N_111calc_listedEP13gmx_wallcycleRK22InteractionDefinitionsP18bonded_threading_tbPA3_KfPN3gmx12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSA_8ArrayRefIS7_EESO_SO_NSN_IKbEENSN_IKtEEiP8t_fcdataPiRKNSA_12StepWorkloadE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !126
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.im = load float, ptr %i.il, align 8, !tbaa !329
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 220
  store float %i.im, ptr %i.in, align 4, !tbaa !82
  br label %_ZN12_GLOBAL__N_111calc_listedEP13gmx_wallcycleRK22InteractionDefinitionsP18bonded_threading_tbPA3_KfPN3gmx12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSA_8ArrayRefIS7_EESO_SO_NSN_IKbEENSN_IKtEEiP8t_fcdataPiRKNSA_12StepWorkloadE.exit

_ZN12_GLOBAL__N_111calc_listedEP13gmx_wallcycleRK22InteractionDefinitionsP18bonded_threading_tbPA3_KfPN3gmx12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSA_8ArrayRefIS7_EESO_SO_NSN_IKbEENSN_IKtEEiP8t_fcdataPiRKNSA_12StepWorkloadE.exit: ; preds = %bb.q, %bb.r
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 624 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !342
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_111calc_listedEP13gmx_wallcycleRK22InteractionDefinitionsP18bonded_threading_tbPA3_KfPN3gmx12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSA_8ArrayRefIS7_EESO_SO_NSN_IKbEENSN_IKtEEiP8t_fcdataPiRKNSA_12StepWorkloadE.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %20, i64 9
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !327, !range !147, !noundef !148
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %37, i8 0, i64 28, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.w, i64 1312
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !97
  %i.ix = getelementptr inbounds nuw i8, ptr %i.w, i64 1320
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !97
  %i.iz = icmp eq ptr %i.iw, %i.iy
  br i1 %i.iz, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !322
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %38, i32 noundef %i.jb, ptr noundef %2)
  %i.jc = load ptr, ptr %13, align 8, !tbaa !254  ; 3 uses
  store ptr %i.jc, ptr %39, align 8, !tbaa !254
  %i.jd = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.je = load ptr, ptr %i.fq, align 8, !tbaa !254
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jh
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !254
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !252 ; 3 uses
  store ptr %i.jk, ptr %40, align 8, !tbaa !252
  %i.jl = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !252
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jk to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jq
  store ptr %i.jr, ptr %i.jl, align 8, !tbaa !252
  %i.js = load ptr, ptr %i.fo, align 8, !tbaa !62
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 160
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !85 ; 4 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !66 ; 3 uses
  store ptr %i.jv, ptr %41, align 8, !tbaa !271
  %i.jw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !107
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.kb
  store ptr %i.kc, ptr %i.jw, align 8, !tbaa !271
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !66 ; 3 uses
  store ptr %i.ke, ptr %42, align 8, !tbaa !271
  %i.kf = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !107
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.ke to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kk
  store ptr %i.kl, ptr %i.kf, align 8, !tbaa !271
  call void @_Z21posres_wrapper_lambdaP13gmx_wallcycleRK22InteractionDefinitionsRK5t_pbcPA3_KfP14gmx_enerdata_tN3gmx8ArrayRefIS7_EEPK10t_forcerecNSD_IKtEENSD_INSC_11BasicVectorIfEEEESM_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(2760) %i.w, ptr noundef nonnull align 4 dereferenceable(384) %38, ptr noundef %i.x, ptr noundef nonnull %11, ptr noundef nonnull byval(%"class.gmx::ArrayRef.122") align 8 %39, ptr noundef %9, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %40, ptr noundef nonnull byval(%"class.gmx::ArrayRef.242") align 8 %41, ptr noundef nonnull byval(%"class.gmx::ArrayRef.242") align 8 %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.km = getelementptr inbounds nuw i8, ptr %i.w, i64 2724
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !105
  switch i32 %i.kn, label %bb.w [
    i32 1, label %.loopexit
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.v
  %i.ko = load i32, ptr %i.io, align 8, !tbaa !342
  %.not100181 = icmp slt i32 %i.ko, 0
  br i1 %.not100181, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 2840 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 632
  %i.kr = load i64, ptr %13, align 8
  %i.ks = inttoptr i64 %i.kr to ptr               ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %48 = getelementptr inbounds nuw i8, ptr %37, <2 x i64> <i64 0, i64 28>
  %49 = getelementptr inbounds nuw i8, ptr %46, <2 x i64> <i64 0, i64 28>
  %i.kx = load ptr, ptr %14, align 8              ; 3 uses
  %i.ky = load ptr, ptr %i.fr, align 8
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.lb
  %i.ld = load ptr, ptr %15, align 8              ; 3 uses
  %i.le = load ptr, ptr %i.fs, align 8
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lh
  %i.lj = load ptr, ptr %16, align 8              ; 3 uses
  %i.lk = load ptr, ptr %i.ft, align 8
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.lj to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ln
  %i.lp = load ptr, ptr %17, align 8              ; 3 uses
  %i.lq = load ptr, ptr %i.fu, align 8
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.lw = getelementptr inbounds nuw i8, ptr %i.w, i64 2344
  %i.lx = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.ly = getelementptr inbounds nuw i8, ptr %47, i64 316
  %i.lz = getelementptr inbounds nuw i8, ptr %11, i64 640
  %i.ma = getelementptr inbounds nuw i8, ptr %11, i64 664
  %i.mb = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.md = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %46, i64 24
  br label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA76_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 1 dereferenceable(76) @.str.5, i8 noundef zeroext 2)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef 924) #25
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %45) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.mk, %bb.aa ], [ %i.mj, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #15
  %i.ml = load ptr, ptr %43, align 8, !tbaa !279  ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !108
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  resume { ptr, i32 } %.pn

bb.ac:                                            ; preds = %.lr.ph, %_ZN12_GLOBAL__N_118calc_listed_lambdaERK22InteractionDefinitionsP18bonded_threading_tPA3_KfPK10t_forcerecPK5t_pbcN3gmx8ArrayRefIfEENSF_INSE_11BasicVectorIfEEEEP17gmx_grppairener_tRNSE_16EnumerationArrayI19InteractionFunctionfLSN_95EEESG_P6t_nrnbNSF_IS5_EESS_SS_NSF_IKbEENSF_IKtEEiP8t_fcdataPi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_118calc_listed_lambdaERK22InteractionDefinitionsP18bonded_threading_tPA3_KfPK10t_forcerecPK5t_pbcN3gmx8ArrayRefIfEENSF_INSE_11BasicVectorIfEEEEP17gmx_grppairener_tRNSE_16EnumerationArrayI19InteractionFunctionfLSN_95EEESG_P6t_nrnbNSF_IS5_EESS_SS_NSF_IKbEENSF_IKtEEiP8t_fcdataPi.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  %i.mq = load ptr, ptr %i.kp, align 8, !tbaa !63
  call void @_ZN17gmx_grppairener_t5clearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.mq)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(380) %47, i8 0, i64 380, i1 false)
  %i.mr = icmp eq i64 %indvars.iv, 0
  br i1 %i.mr, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.ac
  %i.ms = load <4 x float>, ptr %i.ks, align 4, !tbaa !82
  store <4 x float> %i.ms, ptr %46, align 16, !tbaa !82
  %i.mt = load <2 x float>, ptr %i.mf, align 4, !tbaa !82
  store <2 x float> %i.mt, ptr %i.mg, align 16, !tbaa !82
  %i.mu = load float, ptr %i.mh, align 4, !tbaa !82
  store float %i.mu, ptr %i.mi, align 8, !tbaa !82
  br label %.split180.us

.split:                                           ; preds = %bb.ac
  %i.mv = load ptr, ptr %i.kq, align 8, !tbaa !343 ; 7 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !344
  %i.mx = getelementptr [8 x i8], ptr %i.mw, i64 %indvars.iv
  %i.my = getelementptr i8, ptr %i.mx, i64 -8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !263
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !344
  %i.nc = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv
  %i.nd = getelementptr i8, ptr %i.nc, i64 -8
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !263
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 48
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !344
  %i.nh = getelementptr [8 x i8], ptr %i.ng, i64 %indvars.iv
  %i.ni = getelementptr i8, ptr %i.nh, i64 -8
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !263
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mv, i64 72
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !344
  %i.nm = getelementptr [8 x i8], ptr %i.nl, i64 %indvars.iv
  %i.nn = getelementptr i8, ptr %i.nm, i64 -8
  %i.no = load double, ptr %i.nn, align 8, !tbaa !263
  %i.np = insertelement <4 x double> poison, double %i.mz, i64 0
  %i.nq = insertelement <4 x double> %i.np, double %i.ne, i64 1
  %i.nr = insertelement <4 x double> %i.nq, double %i.nj, i64 2
  %i.ns = insertelement <4 x double> %i.nr, double %i.no, i64 3
  %i.nt = fptrunc <4 x double> %i.ns to <4 x float>
  store <4 x float> %i.nt, ptr %46, align 16, !tbaa !82
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mv, i64 96
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !344
  %i.nw = getelementptr [8 x i8], ptr %i.nv, i64 %indvars.iv
  %i.nx = getelementptr i8, ptr %i.nw, i64 -8
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !263
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mv, i64 120
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !344
  %i.ob = getelementptr [8 x i8], ptr %i.oa, i64 %indvars.iv
  %i.oc = getelementptr i8, ptr %i.ob, i64 -8
  %i.od = load double, ptr %i.oc, align 8, !tbaa !263
  %i.oe = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.of = insertelement <2 x double> %i.oe, double %i.od, i64 1
  %i.og = fptrunc <2 x double> %i.of to <2 x float>
  store <2 x float> %i.og, ptr %i.md, align 16, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mv, i64 144
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !344
  %i.oj = getelementptr [8 x i8], ptr %i.oi, i64 %indvars.iv
  %i.ok = getelementptr i8, ptr %i.oj, i64 -8
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !263
  %i.om = fptrunc double %i.ol to float
  store float %i.om, ptr %i.me, align 8, !tbaa !82
  br label %.split180.us

.split180.us:                                     ; preds = %.split, %.split.us.preheader
  %i.on = load ptr, ptr %i.fo, align 8, !tbaa !62 ; 2 uses
  %i.oo = load ptr, ptr %i.kt, align 8, !tbaa !68 ; 4 uses
  %i.op = load ptr, ptr %i.ku, align 8, !tbaa !80 ; 2 uses
  %i.oq = load ptr, ptr %i.kv, align 8, !tbaa !66 ; 4 uses
  %i.or = load ptr, ptr %i.kw, align 8, !tbaa !107 ; 2 uses
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = load ptr, ptr %i.kp, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %.0.val148.i = ptrtoaddr ptr %i.oq to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 128 ; 3 uses
  %i.ov = load i8, ptr %i.lv, align 4, !tbaa !328, !range !147, !noundef !148
  %i.ow = trunc nuw i8 %i.ov to i1
  %..i = select i1 %i.ow, ptr %10, ptr null
  %.not5.i.i.i.i = icmp eq ptr %i.oo, %i.op
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.split180.us
  %i.ox = ptrtoint ptr %i.op to i64
  %.0.val46.i = ptrtoaddr ptr %i.oo to i64
  %reass.sub = sub i64 %i.ox, %.0.val46.i
  %i.oy = and i64 %reass.sub, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.oo, i8 0, i64 %i.oy, i1 false), !tbaa !82
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.preheader.i, %.split180.us
  %.not4.i.i.i.i = icmp eq ptr %i.oq, %i.or
  br i1 %.not4.i.i.i.i, label %_ZSt4fillIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES3_EvT_S5_RKT0_.exit.i, label %.lr.ph.i.i.i51.preheader.i

.lr.ph.i.i.i51.preheader.i:                       ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i
  %reass.sub183 = sub i64 %i.os, %.0.val148.i
  %reass.sub183.fr = freeze i64 %reass.sub183     ; 2 uses
  %i.oz = add i64 %reass.sub183.fr, -12
  %i.pa = urem i64 %i.oz, 12
  %i.pb = sub i64 %reass.sub183.fr, %i.pa
  call void @llvm.memset.p0.i64(ptr align 4 %i.oq, i8 0, i64 %i.pb, i1 false)
  br label %_ZSt4fillIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES3_EvT_S5_RKT0_.exit.i

_ZSt4fillIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES3_EvT_S5_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i51.preheader.i, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.on, i64 136 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i, %_ZSt4fillIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES3_EvT_S5_RKT0_.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZSt4fillIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES3_EvT_S5_RKT0_.exit.i ], [ %indvars.iv.next.i, %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i ] ; 6 uses
  %i.pd = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 28
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !103
  %i.pg = and i32 %i.pf, 1
  %.not.i.i = icmp eq i32 %i.pg, 0
  br i1 %.not.i.i, label %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ph = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  switch i32 %i.ph, label %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.i [
    i32 52, label %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i
    i32 4, label %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i
    i32 53, label %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i
  ]

_ZL25ftype_is_bonded_potential19InteractionFunction.exit.i: ; preds = %bb.ae
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %i.iu, i64 %indvars.iv.i ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !111 ; 2 uses
  %i.pl = load ptr, ptr %i.pi, align 8, !tbaa !74 ; 3 uses
  %i.pm = sext i32 %i.pk to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pl, i64 %i.pm ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !104
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.pl to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = lshr exact i64 %i.ps, 2
  %i.pu = trunc i64 %i.pt to i32
  %i.pv = sub nsw i32 %i.pu, %i.pk
  %i.pw = sext i32 %i.pv to i64
  %.not.i53.i = icmp eq ptr %i.pl, null
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pw
  %spec.select.i.i = select i1 %.not.i53.i, ptr null, ptr %i.px ; 2 uses
  %i.py = icmp eq ptr %i.pn, %spec.select.i.i
  br i1 %i.py, label %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.i
  %i.pz = load i32, ptr %i.ou, align 8, !tbaa !280
  %i.qa = mul nsw i32 %i.pz, %i.ph
  %i.qb = sext i32 %i.qa to i64
  %i.qc = load ptr, ptr %i.pc, align 8, !tbaa !74 ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qb
  store i32 0, ptr %i.qd, align 4, !tbaa !111
  %i.qe = ptrtoint ptr %spec.select.i.i to i64
  %i.qf = ptrtoint ptr %i.pn to i64
  %i.qg = sub i64 %i.qe, %i.qf                    ; 2 uses
  %i.qh = lshr exact i64 %i.qg, 2
  %i.qi = trunc i64 %i.qh to i32
  %i.qj = load i32, ptr %i.ou, align 8, !tbaa !280
  %i.qk = mul nsw i32 %i.qj, %i.ph
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr [4 x i8], ptr %i.qc, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 4
  store i32 %i.qi, ptr %i.qn, align 4, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %21, i8 0, i64 19, i1 false)
  store i8 1, ptr %i.lx, align 1, !tbaa !281
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.qg
  store <2 x ptr> %49, ptr %22, align 16, !tbaa !254
  store <2 x ptr> %48, ptr %23, align 16, !tbaa !283
  %.val.i = load i32, ptr %i.ou, align 8
  %.val39.i = load ptr, ptr %i.pc, align 8
  %i.qp = call fastcc noundef float @_ZN12_GLOBAL__N_113calc_one_bondEi19InteractionFunctionRK22InteractionDefinitionsN3gmx8ArrayRefIKiEEbRK12WorkDivisionPA3_KfPA4_fPA3_fPK10t_forcerecPK5t_pbcP17gmx_grppairener_tP6t_nrnbNS5_ISB_EENS5_IfEESS_SS_NS5_IKbEENS5_IKtEEiP8t_fcdataRKNS4_12StepWorkloadEPi(i32 noundef 0, i32 noundef %i.ph, ptr noundef nonnull align 8 dereferenceable(2760) %i.w, ptr %i.pn, ptr nonnull %i.qo, i1 noundef zeroext true, i32 %.val.i, ptr %.val39.i, ptr noundef %i.x, ptr noundef %i.oo, ptr noundef %i.oq, ptr noundef %9, ptr noundef %..i, ptr noundef %i.ot, ptr noundef %12, ptr noundef nonnull byval(%"class.gmx::ArrayRef.122") align 8 %22, ptr noundef nonnull byval(%"class.gmx::ArrayRef.238") align 8 %23, ptr %i.kx, ptr %i.lc, ptr %i.ld, ptr %i.li, ptr %i.lj, ptr %i.lo, ptr %i.lp, ptr %i.lu, i32 noundef %18, ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(19) %21, ptr noundef %19)
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %indvars.iv.i ; 2 uses
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !82
  %i.qs = fadd float %i.qp, %i.qr
  store float %i.qs, ptr %i.qq, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i

_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i: ; preds = %bb.af, %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.i, %bb.ae, %bb.ae, %bb.ae, %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i130 = icmp eq i64 %indvars.iv.next.i, 95
  br i1 %.not.i130, label %_ZN12_GLOBAL__N_118calc_listed_lambdaERK22InteractionDefinitionsP18bonded_threading_tPA3_KfPK10t_forcerecPK5t_pbcN3gmx8ArrayRefIfEENSF_INSE_11BasicVectorIfEEEEP17gmx_grppairener_tRNSE_16EnumerationArrayI19InteractionFunctionfLSN_95EEESG_P6t_nrnbNSF_IS5_EESS_SS_NSF_IKbEENSF_IKtEEiP8t_fcdataPi.exit, label %bb.ad

_ZN12_GLOBAL__N_118calc_listed_lambdaERK22InteractionDefinitionsP18bonded_threading_tPA3_KfPK10t_forcerecPK5t_pbcN3gmx8ArrayRefIfEENSF_INSE_11BasicVectorIfEEEEP17gmx_grppairener_tRNSE_16EnumerationArrayI19InteractionFunctionfLSN_95EEESG_P6t_nrnbNSF_IS5_EESS_SS_NSF_IKbEENSF_IKtEEiP8t_fcdataPi.exit: ; preds = %_ZL25ftype_is_bonded_potential19InteractionFunction.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.qt = load ptr, ptr %i.kp, align 8, !tbaa !63
  call void @_Z8sum_epotRK17gmx_grppairener_tRN3gmx16EnumerationArrayI19InteractionFunctionfLS4_95EEE(ptr noundef nonnull align 8 dereferenceable(128) %i.qt, ptr noundef nonnull align 4 dereferenceable(380) %47)
  %i.qu = load float, ptr %i.ly, align 4, !tbaa !82
  %i.qv = fpext float %i.qu to double
  %i.qw = load ptr, ptr %i.lz, align 8, !tbaa !344
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv ; 2 uses
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !263
  %i.qz = fadd double %i.qy, %i.qv
  store double %i.qz, ptr %i.qx, align 8, !tbaa !263
  %i.ra = load ptr, ptr %i.ma, align 8, !tbaa !345
  %i.rb = getelementptr inbounds nuw [56 x i8], ptr %i.ra, i64 %indvars.iv ; 4 uses
  %i.rc = load <4 x float>, ptr %37, align 16, !tbaa !82
  %i.rd = fpext <4 x float> %i.rc to <4 x double>
  %i.re = load <4 x double>, ptr %i.rb, align 8, !tbaa !263
  %i.rf = fadd <4 x double> %i.re, %i.rd
  store <4 x double> %i.rf, ptr %i.rb, align 8, !tbaa !263
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 32 ; 2 uses
  %i.rh = load <2 x float>, ptr %i.mb, align 16, !tbaa !82
  %i.ri = fpext <2 x float> %i.rh to <2 x double>
  %i.rj = load <2 x double>, ptr %i.rg, align 8, !tbaa !263
  %i.rk = fadd <2 x double> %i.rj, %i.ri
  store <2 x double> %i.rk, ptr %i.rg, align 8, !tbaa !263
  %i.rl = load float, ptr %i.mc, align 8, !tbaa !82
  %i.rm = fpext float %i.rl to double
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rb, i64 48 ; 2 uses
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !263
  %i.rp = fadd double %i.ro, %i.rm
  store double %i.rp, ptr %i.rn, align 8, !tbaa !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %37, i8 0, i64 28, i1 false), !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.rq = load i32, ptr %i.io, align 8, !tbaa !342
  %i.rr = sext i32 %i.rq to i64
  %.not100.not = icmp slt i64 %indvars.iv, %i.rr
  br i1 %.not100.not, label %bb.ac, label %.loopexit, !llvm.loop !318

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_118calc_listed_lambdaERK22InteractionDefinitionsP18bonded_threading_tPA3_KfPK10t_forcerecPK5t_pbcN3gmx8ArrayRefIfEENSF_INSE_11BasicVectorIfEEEEP17gmx_grppairener_tRNSE_16EnumerationArrayI19InteractionFunctionfLSN_95EEESG_P6t_nrnbNSF_IS5_EESS_SS_NSF_IKbEENSF_IKtEEiP8t_fcdataPi.exit, %.preheader, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_111calc_listedEP13gmx_wallcycleRK22InteractionDefinitionsP18bonded_threading_tbPA3_KfPN3gmx12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSA_8ArrayRefIS7_EESO_SO_NSN_IKbEENSN_IKtEEiP8t_fcdataPiRKNSA_12StepWorkloadE.exit, %bb.s, %.loopexit, %bb.a, %bb.b
  ret void
}

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @_ZN3gmx19ThreadedForceBufferIA4_fE6reduceEPNS_15ForceWithVirialEPNS_16EnumerationArrayI19InteractionFunctionfLS6_95EEEP17gmx_grppairener_tNS_8ArrayRefIfEERKNS_12StepWorkloadEi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, ptr, ptr, ptr noundef nonnull align 1 dereferenceable(19), i32 noundef) local_unnamed_addr #1

declare noundef float @_Z15calc_orires_devPK14gmx_multisim_tiPKiPK9t_iparamsN3gmx8ArrayRefIKNS7_11BasicVectorIfEEEEPA3_KfPK5t_pbcP12t_oriresdata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr, ptr, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z15calc_disres_R_6PK12gmx_domdec_tPK14gmx_multisim_tiPKiPA3_KfPK5t_pbcP12t_disresdataPK9history_t(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z21posres_wrapper_lambdaP13gmx_wallcycleRK22InteractionDefinitionsRK5t_pbcPA3_KfP14gmx_enerdata_tN3gmx8ArrayRefIS7_EEPK10t_forcerecNSD_IKtEENSD_INSC_11BasicVectorIfEEEESM_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(2760), ptr noundef nonnull align 4 dereferenceable(384), ptr noundef, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef.122") align 8, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef") align 8, ptr noundef byval(%"class.gmx::ArrayRef.242") align 8, ptr noundef byval(%"class.gmx::ArrayRef.242") align 8) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !284
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !285
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !279
  %i.g = load i64, ptr %i.a, align 8, !tbaa !285
  store i64 %i.g, ptr %i.b, align 8, !tbaa !108
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !108
  store i8 %i.i, ptr %i.h, align 1, !tbaa !108
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !285  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !286
  %i.l = load ptr, ptr %0, align 8, !tbaa !279
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA76_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(76) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(76) %1) #15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.b, ptr %i.a, align 8, !tbaa !285
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !279
  %i.f = load i64, ptr %i.a, align 8, !tbaa !285
  store i64 %i.f, ptr %i.c, align 8, !tbaa !108
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !108
  store i8 %i.h, ptr %i.g, align 1, !tbaa !108
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !285  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !286
  %i.k = load ptr, ptr %0, align 8, !tbaa !279
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !288  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_1
