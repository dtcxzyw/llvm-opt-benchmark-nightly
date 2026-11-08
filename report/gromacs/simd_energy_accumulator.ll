Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/simd_energy_accumulator?download=true
inline.NumInlined: 276
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx17EnergyAccumulatorILb1ELb1EE43clearEnergiesAndSetEnergyGroupsForJClustersERKNS_22EnergyGroupsPerClusterE:bb.a

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not6.i.i.i.i5 = icmp eq ptr %i.l, %i.n
  br i1 %.not6.i.i.i.i5, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit9, label %.lr.ph.i.i.i.i6.preheader

.lr.ph.i.i.i.i6.preheader:                        ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = add i64 %i.o, -4
  %i.r = sub i64 %i.q, %i.p
  %i.s = and i64 %i.r, -4
  %i.t = add i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.t, i1 false), !tbaa !29
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit9

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit9: ; preds = %.lr.ph.i.i.i.i6.preheader, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS4_23AlignedAllocationPolicyEEEEEEfEvT_SA_RKT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesENS_8ArrayRefIfEES3_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  switch i32 %i.b, label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit [
    i32 2, label %bb.b
    i32 4, label %bb.c
    i32 8, label %bb.d
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.g, i1 false), !tbaa !29
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.preheader.i, %bb.b
  %.not5.i.i.i44.i = icmp eq ptr %1, %2
  br i1 %.not5.i.i.i44.i, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i, label %.lr.ph.i.i.i45.preheader.i

.lr.ph.i.i.i45.preheader.i:                       ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i
  %reass.sub23 = sub i64 %i.c, %i.d
  %i.h = and i64 %reass.sub23, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.h, i1 false), !tbaa !29
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i: ; preds = %.lr.ph.i.i.i45.preheader.i, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader52.preheader.i, label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit

.preheader52.preheader.i:                         ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i
  %i.q = zext nneg i32 %i.o to i64                ; 4 uses
  br label %.preheader52.i

.preheader52.i:                                   ; preds = %._crit_edge55.i, %.preheader52.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.preheader52.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge55.i ] ; 2 uses
  %i.r = mul nuw nsw i64 %indvars.iv64.i, %i.q    ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader52.i
  %indvars.iv59.i = phi i64 [ 0, %.preheader52.i ], [ %indvars.iv.next60.i, %._crit_edge.i ] ; 2 uses
  %i.t = add nuw nsw i64 %indvars.iv59.i, %i.s    ; 3 uses
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = shl i32 %i.u, %i.j
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.y = sext i32 %i.v to i64
  br label %.critedge.i

._crit_edge55.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %i.q
  br i1 %exitcond68.not.i, label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit, label %.preheader52.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.critedge.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %i.q
  br i1 %exitcond63.not.i, label %._crit_edge55.i, label %.preheader.i, !llvm.loop !86

.critedge.i:                                      ; preds = %.critedge.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.z = add nsw i64 %indvars.iv.i, %i.y
  %i.aa = shl nsw i64 %i.z, 1                     ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !29
  %i.ad = add nuw nsw i64 %indvars.iv.i, %i.r     ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ag = fadd float %i.ac, %i.af
  store float %i.ag, ptr %i.ae, align 4, !tbaa !29
  %i.ah = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !29
  %i.ak = load float, ptr %i.w, align 4, !tbaa !29
  %i.al = fadd float %i.aj, %i.ak
  store float %i.al, ptr %i.w, align 4, !tbaa !29
  %i.am = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aa
  %i.an = load float, ptr %i.am, align 4, !tbaa !29
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !29
  %i.aq = fadd float %i.an, %i.ap
  store float %i.aq, ptr %i.ao, align 4, !tbaa !29
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ah
  %i.as = load float, ptr %i.ar, align 4, !tbaa !29
  %i.at = load float, ptr %i.x, align 4, !tbaa !29
  %i.au = fadd float %i.as, %i.at
  store float %i.au, ptr %i.x, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.critedge.i, !llvm.loop !87

bb.c:                                             ; preds = %bb.a
  %i.av = ptrtoint ptr %2 to i64
  %i.aw = ptrtoint ptr %1 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = ptrtoint ptr %4 to i64
  %i.ba = ptrtoint ptr %3 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  tail call void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi4EEEvNS_8ArrayRefIfEES4_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %i.ay, ptr %3, ptr %i.bc)
  br label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit

bb.d:                                             ; preds = %bb.a
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %1 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = ptrtoint ptr %4 to i64
  %i.bi = ptrtoint ptr %3 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bj
  tail call void @_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi8EEEvNS_8ArrayRefIfEES4_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr %1, ptr %i.bg, ptr %3, ptr %i.bk)
  br label %_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit

_ZNK3gmx17EnergyAccumulatorILb1ELb1EE11getEnergiesILi2EEEvNS_8ArrayRefIfEES4_.exit: ; preds = %._crit_edge55.i, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48.i, %bb.a, %bb.d, %bb.c
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.h, i1 false), !tbaa !29
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit: ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %.not5.i.i.i44 = icmp eq ptr %1, %2
  br i1 %.not5.i.i.i44, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48, label %.lr.ph.i.i.i45.preheader

.lr.ph.i.i.i45.preheader:                         ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %i.i = add i64 %i.b, -4
  %i.j = sub i64 %i.i, %i.a
  %i.k = and i64 %i.j, -4
  %i.l = add i64 %i.k, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.l, i1 false), !tbaa !29
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48: ; preds = %.lr.ph.i.i.i45.preheader, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 4 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader52.preheader, label %._crit_edge59.split

.preheader52.preheader:                           ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  %i.u = zext nneg i32 %i.s to i64                ; 4 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %._crit_edge57
  %indvars.iv71 = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next72, %._crit_edge57 ] ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv71, %i.u      ; 2 uses
  br label %.preheader

._crit_edge59.split:                              ; preds = %._crit_edge57, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  ret void

.preheader:                                       ; preds = %.preheader52, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next67, %._crit_edge ] ; 2 uses
  %i.w = add nuw nsw i64 %indvars.iv66, %i.v      ; 3 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = shl i32 %i.x, %i.n
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w ; 4 uses
  %5 = shl i32 %i.y, 3
  br label %bb.b

._crit_edge57:                                    ; preds = %._crit_edge
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.u
  br i1 %exitcond75.not, label %._crit_edge59.split, label %.preheader52, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %i.u
  br i1 %exitcond70.not, label %._crit_edge57, label %.preheader, !llvm.loop !89

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv63 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next64, %bb.b ] ; 2 uses
  %indvars.iv = phi i32 [ %5, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %6 = sext i32 %indvars.iv to i64                ; 5 uses
  %i.ab = add nuw nsw i64 %indvars.iv63, %i.v     ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %6
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !29
  %i.ah = fadd float %i.af, %i.ag
  store float %i.ah, ptr %i.ac, align 4, !tbaa !29
  %i.ai = or disjoint i64 %6, 1                   ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29
  %i.al = load float, ptr %i.z, align 4, !tbaa !29
  %i.am = fadd float %i.ak, %i.al
  store float %i.am, ptr %i.z, align 4, !tbaa !29
  %i.an = getelementptr inbounds [4 x i8], ptr %i.r, i64 %6
  %i.ao = load float, ptr %i.an, align 4, !tbaa !29
  %i.ap = load float, ptr %i.ad, align 4, !tbaa !29
  %i.aq = fadd float %i.ao, %i.ap
  store float %i.aq, ptr %i.ad, align 4, !tbaa !29
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ai
  %i.as = load float, ptr %i.ar, align 4, !tbaa !29
  %i.at = load float, ptr %i.aa, align 4, !tbaa !29
  %i.au = fadd float %i.as, %i.at
  store float %i.au, ptr %i.aa, align 4, !tbaa !29
  %indvars.iv.next61.a = or disjoint i64 %6, 6    ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.a
  %i.aw = load float, ptr %i.av, align 4, !tbaa !29
  %i.ax = load float, ptr %i.ac, align 4, !tbaa !29
  %i.ay = fadd float %i.aw, %i.ax
  store float %i.ay, ptr %i.ac, align 4, !tbaa !29
  %i.az = or disjoint i64 %6, 7                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !29
  %i.bc = load float, ptr %i.z, align 4, !tbaa !29
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %i.z, align 4, !tbaa !29
  %i.be = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next61.a
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = load float, ptr %i.ad, align 4, !tbaa !29
  %i.bh = fadd float %i.bf, %i.bg
  store float %i.bh, ptr %i.ad, align 4, !tbaa !29
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.az
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !29
  %i.bk = load float, ptr %i.aa, align 4, !tbaa !29
  %i.bl = fadd float %i.bj, %i.bk
  store float %i.bl, ptr %i.aa, align 4, !tbaa !29
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 8
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !90
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.h, i1 false), !tbaa !29
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit: ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %.not5.i.i.i44 = icmp eq ptr %1, %2
  br i1 %.not5.i.i.i44, label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48, label %.lr.ph.i.i.i45.preheader

.lr.ph.i.i.i45.preheader:                         ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %i.i = add i64 %i.b, -4
  %i.j = sub i64 %i.i, %i.a
  %i.k = and i64 %i.j, -4
  %i.l = add i64 %i.k, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.l, i1 false), !tbaa !29
  br label %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48

_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48: ; preds = %.lr.ph.i.i.i45.preheader, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 8 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader52.preheader, label %._crit_edge59.split

.preheader52.preheader:                           ; preds = %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  %i.u = zext nneg i32 %i.s to i64                ; 4 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %._crit_edge57
  %indvars.iv71 = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next72, %._crit_edge57 ] ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv71, %i.u      ; 2 uses
  br label %.preheader

._crit_edge59.split:                              ; preds = %._crit_edge57, %_ZSt4fillIN3gmx12ArrayRefIterIfEEfEvT_S3_RKT0_.exit48
  ret void

.preheader:                                       ; preds = %.preheader52, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next67, %._crit_edge ] ; 2 uses
  %i.w = add nuw nsw i64 %indvars.iv66, %i.v      ; 3 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = shl i32 %i.x, %i.n
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w ; 8 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w ; 8 uses
  %5 = shl i32 %i.y, 5
  br label %bb.b

._crit_edge57:                                    ; preds = %._crit_edge
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.u
  br i1 %exitcond75.not, label %._crit_edge59.split, label %.preheader52, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %i.u
  br i1 %exitcond70.not, label %._crit_edge57, label %.preheader, !llvm.loop !92

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv63 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next64, %bb.b ] ; 2 uses
  %indvars.iv = phi i32 [ %5, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %6 = sext i32 %indvars.iv to i64                ; 9 uses
  %i.ab = add nuw nsw i64 %indvars.iv63, %i.v     ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ab ; 8 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab ; 8 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %6
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !29
  %i.ah = fadd float %i.af, %i.ag
  store float %i.ah, ptr %i.ac, align 4, !tbaa !29
  %i.ai = or disjoint i64 %6, 1                   ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29
  %i.al = load float, ptr %i.z, align 4, !tbaa !29
  %i.am = fadd float %i.ak, %i.al
  store float %i.am, ptr %i.z, align 4, !tbaa !29
  %i.an = getelementptr inbounds [4 x i8], ptr %i.r, i64 %6
  %i.ao = load float, ptr %i.an, align 4, !tbaa !29
  %i.ap = load float, ptr %i.ad, align 4, !tbaa !29
  %i.aq = fadd float %i.ao, %i.ap
  store float %i.aq, ptr %i.ad, align 4, !tbaa !29
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ai
  %i.as = load float, ptr %i.ar, align 4, !tbaa !29
  %i.at = load float, ptr %i.aa, align 4, !tbaa !29
  %i.au = fadd float %i.as, %i.at
  store float %i.au, ptr %i.aa, align 4, !tbaa !29
  %indvars.iv.next61.a = or disjoint i64 %6, 10   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.a
  %i.aw = load float, ptr %i.av, align 4, !tbaa !29
  %i.ax = load float, ptr %i.ac, align 4, !tbaa !29
  %i.ay = fadd float %i.aw, %i.ax
  store float %i.ay, ptr %i.ac, align 4, !tbaa !29
  %i.az = or disjoint i64 %6, 11                  ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !29
  %i.bc = load float, ptr %i.z, align 4, !tbaa !29
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %i.z, align 4, !tbaa !29
  %i.be = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next61.a
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = load float, ptr %i.ad, align 4, !tbaa !29
  %i.bh = fadd float %i.bf, %i.bg
  store float %i.bh, ptr %i.ad, align 4, !tbaa !29
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.az
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !29
  %i.bk = load float, ptr %i.aa, align 4, !tbaa !29
  %i.bl = fadd float %i.bj, %i.bk
  store float %i.bl, ptr %i.aa, align 4, !tbaa !29
  %indvars.iv.next61.1 = or disjoint i64 %6, 20   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.1
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !29
  %i.bo = load float, ptr %i.ac, align 4, !tbaa !29
  %i.bp = fadd float %i.bn, %i.bo
  store float %i.bp, ptr %i.ac, align 4, !tbaa !29
  %i.bq = or disjoint i64 %6, 21                  ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !29
  %i.bt = load float, ptr %i.z, align 4, !tbaa !29
  %i.bu = fadd float %i.bs, %i.bt
  store float %i.bu, ptr %i.z, align 4, !tbaa !29
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next61.1
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !29
  %i.bx = load float, ptr %i.ad, align 4, !tbaa !29
  %i.by = fadd float %i.bw, %i.bx
  store float %i.by, ptr %i.ad, align 4, !tbaa !29
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bq
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !29
  %i.cb = load float, ptr %i.aa, align 4, !tbaa !29
  %i.cc = fadd float %i.ca, %i.cb
  store float %i.cc, ptr %i.aa, align 4, !tbaa !29
  %indvars.iv.next61.2 = or disjoint i64 %6, 30   ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next61.2
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !29
  %i.cf = load float, ptr %i.ac, align 4, !tbaa !29
  %i.cg = fadd float %i.ce, %i.cf
  store float %i.cg, ptr %i.ac, align 4, !tbaa !29
  %i.ch = or disjoint i64 %6, 31                  ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !29
  %i.ck = load float, ptr %i.z, align 4, !tbaa !29
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %i.z, align 4, !tbaa !29
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next61.2
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !29
  %i.co = load float, ptr %i.ad, align 4, !tbaa !29
  %i.cp = fadd float %i.cn, %i.co
  store float %i.cp, ptr %i.ad, align 4, !tbaa !29
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ch
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !29
  %i.cs = load float, ptr %i.aa, align 4, !tbaa !29
  %i.ct = fadd float %i.cr, %i.cs
  store float %i.ct, ptr %i.aa, align 4, !tbaa !29
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 32
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !93
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

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !10}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !15, i64 0}
!17 = !{!"_ZTSN3gmx22EnergyGroupsPerClusterE", !7, i64 0, !16, i64 8, !7, i64 32, !7, i64 36}
!18 = !{!17, !7, i64 0}
!19 = !{!17, !7, i64 36}
!20 = !{!13, !12, i64 8}
!21 = !{!13, !12, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = !{!"vtable pointer", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"float", !6, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 float", !11, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !33, i64 0}
!35 = !{!"any p2 pointer", !11, i64 0}
!36 = !{!"p2 float", !35, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !39, i64 0}
!41 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !34, i64 40, !34, i64 64, !7, i64 88, !40, i64 96, !40, i64 120, !7, i64 144}
!42 = !{!41, !7, i64 0}
!43 = !{!41, !7, i64 4}
!44 = !{!41, !7, i64 144}
!45 = !{!31, !30, i64 8}
!46 = !{!31, !30, i64 0}
!47 = !{!37, !36, i64 8}
!48 = !{!37, !36, i64 0}
!49 = !{!37, !36, i64 16}
!50 = !{!30, !30, i64 0}
!51 = !{!17, !7, i64 32}
!52 = distinct !{!52, !10, !23, !24}
!53 = distinct !{!53, !10, !23, !24}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10, !24, !23}
!56 = distinct !{!56, i1 true, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!57 = distinct !{!57, !56, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !56, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!59 = distinct !{!59, !10, !23, !24}
!60 = distinct !{!60, !10, !23, !24}
!61 = distinct !{!61, !10, !23}
!62 = !{!13, !12, i64 16}
!63 = !{!57}
!64 = !{!58}
!65 = !{!"_ZTSN3gmx9SimdFloatE", !6, i64 0}
!66 = !{!"_ZTSN3gmx17EnergyAccumulatorILb0ELb1EEE", !65, i64 0, !65, i64 64, !28, i64 128, !28, i64 132}
!67 = !{!66, !28, i64 128}
!68 = !{!66, !28, i64 132}
!69 = !{!41, !7, i64 8}
!70 = !{!41, !7, i64 12}
!71 = !{!41, !7, i64 16}
!72 = !{!41, !7, i64 20}
!73 = !{!41, !7, i64 24}
!74 = !{!41, !7, i64 28}
!75 = distinct !{!75, i1 true, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!76 = distinct !{!76, !75, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !75, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!78 = distinct !{!78, !10, !23, !24}
!79 = distinct !{!79, !10, !23, !24}
!80 = distinct !{!80, !10, !23}
!81 = !{!31, !30, i64 16}
!82 = !{!76}
!83 = !{!77}
!84 = !{!41, !12, i64 32}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !10}
end_hunk_0
