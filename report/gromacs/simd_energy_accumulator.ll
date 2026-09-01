Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/simd_energy_accumulator?download=true
inline.NumInlined: 276
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIPfSaIS0_EE17_M_default_appendEm:bb.a
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !84
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !72
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPfSaIS0_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIPfSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !84
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPfSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !84
  br label %_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPfSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPfSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPfSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorIPfSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPfSaIS0_EE13_M_deallocateEPS0_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPfSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #21
  br label %_ZNSt12_Vector_baseIPfSaIS0_EE13_M_deallocateEPS0_m.exit36

_ZNSt12_Vector_baseIPfSaIS0_EE13_M_deallocateEPS0_m.exit36: ; preds = %_ZNSt6vectorIPfSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPfmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPfSaIS0_EE13_M_deallocateEPS0_m.exit36, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx17EnergyAccumulatorILb1ELb1EE43clearEnergiesAndSetEnergyGroupsForJClustersERKNS_22EnergyGroupsPerClusterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(148) initializes((32, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = ptrtoaddr ptr %i.b to i64
  %i.g = add i64 %i.e, -4
  %i.h = sub i64 %i.g, %i.f
  %i.i = and i64 %i.h, -4
  %i.j = add i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.j, i1 false), !tbaa !47
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %.not6.i.i.i.i5 = icmp eq ptr %i.l, %i.n
  br i1 %.not6.i.i.i.i5, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit9, label %.lr.ph.i.i.i.i6.preheader

.lr.ph.i.i.i.i6.preheader:                        ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = add i64 %i.o, -4
  %i.r = sub i64 %i.q, %i.p
  %i.s = and i64 %i.r, -4
  %i.t = add i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.t, i1 false), !tbaa !47
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit9

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit9: ; preds = %.lr.ph.i.i.i.i6.preheader, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesENS_8ArrayRefIfEES3_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69
  switch i32 %i.b, label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit [
    i32 2, label %bb.b
    i32 4, label %bb.d
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoaddr ptr %1 to i64
  %.not5.i.i.i.i = icmp eq ptr %3, %4
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.b
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoaddr ptr %3 to i64
  %reass.sub = sub i64 %i.e, %i.f
  %i.g = and i64 %reass.sub, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.g, i1 false), !tbaa !47
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.preheader.i, %bb.b
  %.not5.i.i.i44.i = icmp eq ptr %1, %2
  br i1 %.not5.i.i.i44.i, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i, label %.lr.ph.i.i.i45.preheader.i

.lr.ph.i.i.i45.preheader.i:                       ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i
  %reass.sub23 = sub i64 %i.c, %i.d
  %i.h = and i64 %reass.sub23, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.h, i1 false), !tbaa !47
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i: ; preds = %.lr.ph.i.i.i45.preheader.i, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader52.preheader.i, label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit

.preheader52.preheader.i:                         ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i
  %i.q = zext nneg i32 %i.o to i64                ; 4 uses
  br label %.preheader52.i

.preheader52.i:                                   ; preds = %._crit_edge56.i, %.preheader52.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.preheader52.preheader.i ], [ %indvars.iv.next66.i, %._crit_edge56.i ] ; 2 uses
  %i.r = mul nuw nsw i64 %indvars.iv65.i, %i.q    ; 2 uses
  %5 = and i64 %i.r, 4294967295
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader52.i
  %indvars.iv60.i = phi i64 [ 0, %.preheader52.i ], [ %indvars.iv.next61.i, %._crit_edge.i ] ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv60.i, %5      ; 3 uses
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = shl i32 %i.t, %i.j
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.x = sext i32 %i.u to i64
  br label %bb.c

._crit_edge56.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %i.q
  br i1 %exitcond69.not.i, label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit, label %.preheader52.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %bb.c
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %i.q
  br i1 %exitcond64.not.i, label %._crit_edge56.i, label %.preheader.i, !llvm.loop !87

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.y = add nsw i64 %indvars.iv.i, %i.x
  %i.z = shl nsw i64 %i.y, 1                      ; 3 uses
  %i.aa = add nuw nsw i64 %indvars.iv.i, %i.r     ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.z
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !47
  %i.af = load float, ptr %i.ab, align 4, !tbaa !47
  %i.ag = fadd float %i.ae, %i.af
  store float %i.ag, ptr %i.ab, align 4, !tbaa !47
  %i.ah = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !47
  %i.ak = load float, ptr %i.v, align 4, !tbaa !47
  %i.al = fadd float %i.aj, %i.ak
  store float %i.al, ptr %i.v, align 4, !tbaa !47
  %i.am = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.z
  %i.an = load float, ptr %i.am, align 4, !tbaa !47
  %i.ao = load float, ptr %i.ac, align 4, !tbaa !47
  %i.ap = fadd float %i.an, %i.ao
  store float %i.ap, ptr %i.ac, align 4, !tbaa !47
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ah
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !47
  %i.as = load float, ptr %i.w, align 4, !tbaa !47
  %i.at = fadd float %i.ar, %i.as
  store float %i.at, ptr %i.w, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !88

bb.d:                                             ; preds = %bb.a
  %i.au = ptrtoint ptr %2 to i64
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = ptrtoint ptr %4 to i64
  %i.az = ptrtoint ptr %3 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba
  tail call void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi4EEEvNS_8ArrayRefIfEES4_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %i.ax, ptr %3, ptr %i.bb)
  br label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit

bb.e:                                             ; preds = %bb.a
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = ptrtoint ptr %1 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = ptrtoint ptr %4 to i64
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bi
  tail call void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi8EEEvNS_8ArrayRefIfEES4_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %i.bf, ptr %3, ptr %i.bj)
  br label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit

_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit: ; preds = %._crit_edge56.i, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i, %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi4EEEvNS_8ArrayRefIfEES4_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %.not5.i.i.i = icmp eq ptr %3, %4
  br i1 %.not5.i.i.i, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.c = ptrtoaddr ptr %4 to i64
  %i.d = ptrtoaddr ptr %3 to i64
  %i.e = add i64 %i.c, -4
  %i.f = sub i64 %i.e, %i.d
  %i.g = and i64 %i.f, -4
  %i.h = add i64 %i.g, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.h, i1 false), !tbaa !47
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit: ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %.not5.i.i.i44 = icmp eq ptr %1, %2
  br i1 %.not5.i.i.i44, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48, label %.lr.ph.i.i.i45.preheader

.lr.ph.i.i.i45.preheader:                         ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %i.i = add i64 %i.b, -4
  %i.j = sub i64 %i.i, %i.a
  %i.k = and i64 %i.j, -4
  %i.l = add i64 %i.k, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.l, i1 false), !tbaa !47
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48: ; preds = %.lr.ph.i.i.i45.preheader, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 4 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.preheader52.preheader, label %._crit_edge59.split

.preheader52.preheader:                           ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  %i.s = zext nneg i32 %i.q to i64                ; 4 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %._crit_edge57
  %indvars.iv71 = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next72, %._crit_edge57 ] ; 2 uses
  %i.t = mul nuw nsw i64 %indvars.iv71, %i.s      ; 2 uses
  br label %.preheader

._crit_edge59.split:                              ; preds = %._crit_edge57, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  ret void

.preheader:                                       ; preds = %.preheader52, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next67, %._crit_edge ] ; 2 uses
  %7 = add nuw nsw i64 %indvars.iv66, %i.t        ; 3 uses
  %8 = trunc nuw i64 %7 to i32
  %9 = shl i32 %8, %6
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7 ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7 ; 4 uses
  %10 = shl i32 %9, 3
  br label %bb.b

._crit_edge57:                                    ; preds = %._crit_edge
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.s
  br i1 %exitcond75.not, label %._crit_edge59.split, label %.preheader52, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %i.s
  br i1 %exitcond70.not, label %._crit_edge57, label %.preheader, !llvm.loop !90

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv63 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next64, %bb.b ] ; 2 uses
  %indvars.iv.a = phi i32 [ %10, %.preheader ], [ %indvars.iv.next.a, %bb.b ] ; 2 uses
  %i.w = sext i32 %indvars.iv.a to i64            ; 5 uses
  %i.x = add nuw nsw i64 %indvars.iv63, %i.t      ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.w
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !47
  %i.ac = load float, ptr %i.y, align 4, !tbaa !47
  %i.ad = fadd float %i.ab, %i.ac
  store float %i.ad, ptr %i.y, align 4, !tbaa !47
  %i.ae = or disjoint i64 %i.w, 1                 ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !47
  %i.ah = load float, ptr %i.u, align 4, !tbaa !47
  %i.ai = fadd float %i.ag, %i.ah
  store float %i.ai, ptr %i.u, align 4, !tbaa !47
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.w
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !47
  %i.al = load float, ptr %i.z, align 4, !tbaa !47
  %i.am = fadd float %i.ak, %i.al
  store float %i.am, ptr %i.z, align 4, !tbaa !47
  %i.an = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ae
  %i.ao = load float, ptr %i.an, align 4, !tbaa !47
  %i.ap = load float, ptr %i.v, align 4, !tbaa !47
  %i.aq = fadd float %i.ao, %i.ap
  store float %i.aq, ptr %i.v, align 4, !tbaa !47
  %indvars.iv.next61.a = or disjoint i64 %i.w, 6  ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next61.a
  %i.as = load float, ptr %i.ar, align 4, !tbaa !47
  %i.at = load float, ptr %i.y, align 4, !tbaa !47
  %i.au = fadd float %i.as, %i.at
  store float %i.au, ptr %i.y, align 4, !tbaa !47
  %i.av = or disjoint i64 %i.w, 7                 ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !47
  %i.ay = load float, ptr %i.u, align 4, !tbaa !47
  %i.az = fadd float %i.ax, %i.ay
  store float %i.az, ptr %i.u, align 4, !tbaa !47
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.a
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !47
  %i.bc = load float, ptr %i.z, align 4, !tbaa !47
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %i.z, align 4, !tbaa !47
  %i.be = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.av
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = load float, ptr %i.v, align 4, !tbaa !47
  %i.bh = fadd float %i.bf, %i.bg
  store float %i.bh, ptr %i.v, align 4, !tbaa !47
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %indvars.iv.next.a = add i32 %indvars.iv.a, 8
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !91
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi8EEEvNS_8ArrayRefIfEES4_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %.not5.i.i.i = icmp eq ptr %3, %4
  br i1 %.not5.i.i.i, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.c = ptrtoaddr ptr %4 to i64
  %i.d = ptrtoaddr ptr %3 to i64
  %i.e = add i64 %i.c, -4
  %i.f = sub i64 %i.e, %i.d
  %i.g = and i64 %i.f, -4
  %i.h = add i64 %i.g, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.h, i1 false), !tbaa !47
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit: ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %.not5.i.i.i44 = icmp eq ptr %1, %2
  br i1 %.not5.i.i.i44, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48, label %.lr.ph.i.i.i45.preheader

.lr.ph.i.i.i45.preheader:                         ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %i.i = add i64 %i.b, -4
  %i.j = sub i64 %i.i, %i.a
  %i.k = and i64 %i.j, -4
  %i.l = add i64 %i.k, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.l, i1 false), !tbaa !47
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48: ; preds = %.lr.ph.i.i.i45.preheader, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 8 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.preheader52.preheader, label %._crit_edge59.split

.preheader52.preheader:                           ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  %i.s = zext nneg i32 %i.q to i64                ; 4 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %._crit_edge57
  %indvars.iv71 = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next72, %._crit_edge57 ] ; 2 uses
  %i.t = mul nuw nsw i64 %indvars.iv71, %i.s      ; 2 uses
  br label %.preheader

._crit_edge59.split:                              ; preds = %._crit_edge57, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  ret void

.preheader:                                       ; preds = %.preheader52, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next67, %._crit_edge ] ; 2 uses
  %7 = add nuw nsw i64 %indvars.iv66, %i.t        ; 3 uses
  %8 = trunc nuw i64 %7 to i32
  %9 = shl i32 %8, %6
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7 ; 8 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7 ; 8 uses
  %10 = shl i32 %9, 5
  br label %bb.b

._crit_edge57:                                    ; preds = %._crit_edge
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.s
  br i1 %exitcond75.not, label %._crit_edge59.split, label %.preheader52, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %i.s
  br i1 %exitcond70.not, label %._crit_edge57, label %.preheader, !llvm.loop !93

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv63 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next64, %bb.b ] ; 2 uses
  %indvars.iv.a = phi i32 [ %10, %.preheader ], [ %indvars.iv.next.a, %bb.b ] ; 2 uses
  %i.w = sext i32 %indvars.iv.a to i64            ; 9 uses
  %i.x = add nuw nsw i64 %indvars.iv63, %i.t      ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x ; 8 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x ; 8 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.w
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !47
  %i.ac = load float, ptr %i.y, align 4, !tbaa !47
  %i.ad = fadd float %i.ab, %i.ac
  store float %i.ad, ptr %i.y, align 4, !tbaa !47
  %i.ae = or disjoint i64 %i.w, 1                 ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !47
  %i.ah = load float, ptr %i.u, align 4, !tbaa !47
  %i.ai = fadd float %i.ag, %i.ah
  store float %i.ai, ptr %i.u, align 4, !tbaa !47
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.w
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !47
  %i.al = load float, ptr %i.z, align 4, !tbaa !47
  %i.am = fadd float %i.ak, %i.al
  store float %i.am, ptr %i.z, align 4, !tbaa !47
  %i.an = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ae
  %i.ao = load float, ptr %i.an, align 4, !tbaa !47
  %i.ap = load float, ptr %i.v, align 4, !tbaa !47
  %i.aq = fadd float %i.ao, %i.ap
  store float %i.aq, ptr %i.v, align 4, !tbaa !47
  %indvars.iv.next61.a = or disjoint i64 %i.w, 10 ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next61.a
  %i.as = load float, ptr %i.ar, align 4, !tbaa !47
  %i.at = load float, ptr %i.y, align 4, !tbaa !47
  %i.au = fadd float %i.as, %i.at
  store float %i.au, ptr %i.y, align 4, !tbaa !47
  %i.av = or disjoint i64 %i.w, 11                ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !47
  %i.ay = load float, ptr %i.u, align 4, !tbaa !47
  %i.az = fadd float %i.ax, %i.ay
  store float %i.az, ptr %i.u, align 4, !tbaa !47
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.a
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !47
  %i.bc = load float, ptr %i.z, align 4, !tbaa !47
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %i.z, align 4, !tbaa !47
  %i.be = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.av
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = load float, ptr %i.v, align 4, !tbaa !47
  %i.bh = fadd float %i.bf, %i.bg
  store float %i.bh, ptr %i.v, align 4, !tbaa !47
  %indvars.iv.next61.1 = or disjoint i64 %i.w, 20 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next61.1
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !47
  %i.bk = load float, ptr %i.y, align 4, !tbaa !47
  %i.bl = fadd float %i.bj, %i.bk
  store float %i.bl, ptr %i.y, align 4, !tbaa !47
  %i.bm = or disjoint i64 %i.w, 21                ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !47
  %i.bp = load float, ptr %i.u, align 4, !tbaa !47
  %i.bq = fadd float %i.bo, %i.bp
  store float %i.bq, ptr %i.u, align 4, !tbaa !47
  %i.br = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.1
  %i.bs = load float, ptr %i.br, align 4, !tbaa !47
  %i.bt = load float, ptr %i.z, align 4, !tbaa !47
  %i.bu = fadd float %i.bs, %i.bt
  store float %i.bu, ptr %i.z, align 4, !tbaa !47
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !47
  %i.bx = load float, ptr %i.v, align 4, !tbaa !47
  %i.by = fadd float %i.bw, %i.bx
  store float %i.by, ptr %i.v, align 4, !tbaa !47
  %indvars.iv.next61.2 = or disjoint i64 %i.w, 30 ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next61.2
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !47
  %i.cb = load float, ptr %i.y, align 4, !tbaa !47
  %i.cc = fadd float %i.ca, %i.cb
  store float %i.cc, ptr %i.y, align 4, !tbaa !47
  %i.cd = or disjoint i64 %i.w, 31                ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !47
  %i.cg = load float, ptr %i.u, align 4, !tbaa !47
  %i.ch = fadd float %i.cf, %i.cg
  store float %i.ch, ptr %i.u, align 4, !tbaa !47
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.2
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !47
  %i.ck = load float, ptr %i.z, align 4, !tbaa !47
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %i.z, align 4, !tbaa !47
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cd
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !47
  %i.co = load float, ptr %i.v, align 4, !tbaa !47
  %i.cp = fadd float %i.cn, %i.co
  store float %i.cp, ptr %i.v, align 4, !tbaa !47
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %indvars.iv.next.a = add i32 %indvars.iv.a, 32
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !94
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !6, i64 0}
!12 = !{!"_ZTSN3gmx22EnergyGroupsPerClusterE", !6, i64 0, !13, i64 8, !6, i64 32, !6, i64 36}
!13 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 int", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!12, !6, i64 32}
!20 = !{!12, !6, i64 36}
!21 = !{!16, !17, i64 8}
!22 = !{!16, !17, i64 0}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !10, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 28}
!28 = distinct !{!28, !10, !25, !26}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10, !26, !25}
!31 = !{!16, !17, i64 16}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!39 = distinct !{!39, !10, !25, !26}
!40 = !{!"branch_weights", i32 8, i32 24}
!41 = distinct !{!41, !10, !25, !26}
!42 = distinct !{!42, !10, !25}
!43 = !{!44, !46, i64 128}
!44 = !{!"_ZTSN3gmx17EnergyAccumulatorILb0ELb1EEE", !45, i64 0, !45, i64 64, !46, i64 128, !46, i64 132}
!45 = !{!"_ZTSN3gmx9SimdFloatE", !7, i64 0}
!46 = !{!"float", !7, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!44, !46, i64 132}
!49 = !{!50, !6, i64 0}
!50 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !17, i64 32, !51, i64 40, !51, i64 64, !6, i64 88, !56, i64 96, !56, i64 120, !6, i64 144}
!51 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 float", !18, i64 0}
!56 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !57, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!60 = !{!"p2 float", !61, i64 0}
!61 = !{!"any p2 pointer", !18, i64 0}
!62 = !{!50, !6, i64 4}
!63 = !{!50, !6, i64 8}
!64 = !{!50, !6, i64 12}
!65 = !{!50, !6, i64 16}
!66 = !{!50, !6, i64 20}
!67 = !{!50, !6, i64 24}
!68 = !{!50, !6, i64 28}
!69 = !{!50, !6, i64 144}
!70 = !{!54, !55, i64 8}
!71 = !{!54, !55, i64 0}
!72 = !{!59, !60, i64 8}
!73 = !{!59, !60, i64 0}
!74 = !{!59, !60, i64 16}
!75 = !{!54, !55, i64 16}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!78 = distinct !{!78, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!81 = distinct !{!81, !10, !25, !26}
!82 = distinct !{!82, !10, !25, !26}
!83 = distinct !{!83, !10, !25}
!84 = !{!55, !55, i64 0}
!85 = !{!50, !17, i64 32}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !10}
!94 = distinct !{!94, !10}
end_hunk_0
