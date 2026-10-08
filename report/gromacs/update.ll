Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/update?download=true
inline.NumInlined: 2061
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_Z14init_ekinstateP11ekinstate_tPK10t_inputrec:bb.a
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !276
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre24, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !276 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !277 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.pre-phi
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.al = sub nuw nsw i64 %.pre-phi, %i.aj
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.al)
  %.pre23 = load i32, ptr %i.c, align 4, !tbaa !275
  %.pre25 = sext i32 %.pre23 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.am = icmp ugt i64 %i.aj, %.pre-phi
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.pre-phi ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ae, %i.an
  br i1 %.not.i.i17, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18:      ; preds = %bb.g
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !276
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19

_ZNSt6vectorIdSaIdEE6resizeEm.exit19:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18
  %.pre-phi26 = phi i64 [ %.pre25, %bb.e ], [ %.pre-phi, %bb.f ], [ %.pre-phi, %bb.g ], [ %.pre-phi, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !277 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 3 uses
  %i.aw = icmp ult i64 %i.av, %.pre-phi26
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit19
  %i.ax = sub nuw nsw i64 %.pre-phi26, %i.av
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.ax)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit19
  %i.ay = icmp ugt i64 %i.av, %.pre-phi26
  br i1 %i.ay, label %bb.j, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.pre-phi26 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i20, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i21:      ; preds = %bb.j
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !276
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22

_ZNSt6vectorIdSaIdEE6resizeEm.exit22:             ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i21
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ba, i8 0, i64 9, i1 false)
  ret void
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !277    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !436
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
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !252
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !252
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !276
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !252
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !252
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !436
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !277
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !276
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !436
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16update_ekinstateP11ekinstate_tPK14gmx_ekindata_tbRKN3gmx7MpiCommEPK12gmx_domdec_t(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp ne ptr %4, null
  %or.cond.not = and i1 %2, %.not.i
  br i1 %or.cond.not, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread

_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !532
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread

bb.b:                                             ; preds = %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255
  %i.f = load ptr, ptr %1, align 8, !tbaa !19
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = mul i64 %i.j, 77309411328                ; 3 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #32
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.n = lshr exact i64 %i.l, 29                  ; 2 uses
  %i.o = or disjoint i64 %i.n, 8                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 34 uses
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !252
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = getelementptr i8, ptr %i.p, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.n, i1 false), !tbaa !252
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %.preheader124.lr.ph, label %._crit_edge

.preheader124.lr.ph:                              ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290  ; 3 uses
  %i.v = and i64 %i.i, 8589934588
  %i.w = icmp eq i64 %i.v, 4
  br i1 %i.w, label %.preheader124.epil.preheader, label %.preheader124.lr.ph.new

.preheader124.lr.ph.new:                          ; preds = %.preheader124.lr.ph
  %unroll_iter = and i64 %i.j, 2147483646
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124, %.preheader124.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %indvars.iv.next.1, %.preheader124 ] ; 3 uses
  %.098133 = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %indvars.iv.next165.2.2.1, %.preheader124 ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %niter.next.1, %.preheader124 ]
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.aa = load <4 x float>, ptr %i.y, align 4, !tbaa !179
  %i.ab = fpext <4 x float> %i.aa to <4 x double>
  store <4 x double> %i.ab, ptr %i.z, align 8, !tbaa !252
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load <4 x float>, ptr %i.ac, align 4, !tbaa !179
  %i.ag = fpext <4 x float> %i.af to <4 x double>
  store <4 x double> %i.ag, ptr %i.ae, align 8, !tbaa !252
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !179
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.am = load float, ptr %i.al, align 4, !tbaa !179
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %i.ao = load <2 x float>, ptr %i.an, align 4, !tbaa !179
  %i.ap = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.at = fpext <4 x float> %i.as to <4 x double>
  store <4 x double> %i.at, ptr %i.ak, align 8, !tbaa !252
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load <4 x float>, ptr %i.au, align 4, !tbaa !179
  %i.ay = fpext <4 x float> %i.ax to <4 x double>
  store <4 x double> %i.ay, ptr %i.aw, align 8, !tbaa !252
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %indvars.iv.next165.2.2 = add nuw nsw i64 %.098133, 18 ; 5 uses
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !179
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  store <2 x double> %i.bd, ptr %i.bb, align 8, !tbaa !252
  %i.be = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bh = load <4 x float>, ptr %i.bf, align 4, !tbaa !179
  %i.bi = fpext <4 x float> %i.bh to <4 x double>
  store <4 x double> %i.bi, ptr %i.bg, align 8, !tbaa !252
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load <4 x float>, ptr %i.bj, align 4, !tbaa !179
  %i.bn = fpext <4 x float> %i.bm to <4 x double>
  store <4 x double> %i.bn, ptr %i.bl, align 8, !tbaa !252
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 184
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !179
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !179
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 228
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !179
  %i.bw = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bx, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ca = fpext <4 x float> %i.bz to <4 x double>
  store <4 x double> %i.ca, ptr %i.br, align 8, !tbaa !252
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 236
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load <4 x float>, ptr %i.cb, align 4, !tbaa !179
  %i.cf = fpext <4 x float> %i.ce to <4 x double>
  store <4 x double> %i.cf, ptr %i.cd, align 8, !tbaa !252
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 252
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %indvars.iv.next165.2.2.1 = add nuw nsw i64 %.098133, 36 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.cg, align 4, !tbaa !179
  %i.ck = fpext <2 x float> %i.cj to <2 x double>
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !252
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader124, !llvm.loop !437

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader124
  %i.cl = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.cl, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.preheader124.epil.preheader

.preheader124.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader124.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader124.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.098133.epil.init = phi i64 [ 0, %.preheader124.lr.ph ], [ %indvars.iv.next165.2.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod270 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.cm = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv.epil.init ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cp = load <4 x float>, ptr %i.cn, align 4, !tbaa !179
  %i.cq = fpext <4 x float> %i.cp to <4 x double>
  store <4 x double> %i.cq, ptr %i.co, align 8, !tbaa !252
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load <4 x float>, ptr %i.cr, align 4, !tbaa !179
  %i.cv = fpext <4 x float> %i.cu to <4 x double>
  store <4 x double> %i.cv, ptr %i.ct, align 8, !tbaa !252
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !179
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.db = load float, ptr %i.da, align 4, !tbaa !179
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 84
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !179
  %i.de = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 1
  %i.dg = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.di = fpext <4 x float> %i.dh to <4 x double>
  store <4 x double> %i.di, ptr %i.cz, align 8, !tbaa !252
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 92
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.dm = load <4 x float>, ptr %i.dj, align 4, !tbaa !179
  %i.dn = fpext <4 x float> %i.dm to <4 x double>
  store <4 x double> %i.dn, ptr %i.dl, align 8, !tbaa !252
  %i.do = getelementptr inbounds nuw i8, ptr %i.cm, i64 108
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %indvars.iv.next165.2.2.epil = add nuw nsw i64 %.098133.epil.init, 18
  %i.dr = load <2 x float>, ptr %i.do, align 4, !tbaa !179
  %i.ds = fpext <2 x float> %i.dr to <2 x double>
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !252
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader124.epil.preheader
  %indvars.iv.next165.2.2.lcssa = phi i64 [ %indvars.iv.next165.2.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %indvars.iv.next165.2.2.epil, %.preheader124.epil.preheader ]
  %i.dt = trunc nsw i64 %indvars.iv.next165.2.2.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.098.lcssa = phi i32 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ], [ %i.dt, %._crit_edge.loopexit ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dv = load float, ptr %i.du, align 8, !tbaa !308
  %i.dw = fpext float %i.dv to double
  %i.dx = add nsw i32 %.098.lcssa, 1
  %i.dy = sext i32 %.098.lcssa to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dy
  store double %i.dw, ptr %i.dz, align 8, !tbaa !252
  %i.ea = sext i32 %i.dx to i64
  invoke void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ea, ptr noundef nonnull %i.p)
          to label %bb.c unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !309
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.preheader120, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread

.preheader120:                                    ; preds = %bb.c
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !275 ; 4 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.preheader119.lr.ph, label %._crit_edge145

.preheader119.lr.ph:                              ; preds = %.preheader120
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !310 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !311 ; 3 uses
  %wide.trip.count204 = zext nneg i32 %i.ef to i64 ; 2 uses
  %xtraiter271 = and i64 %wide.trip.count204, 1
  %i.el = icmp eq i32 %i.ef, 1
  br i1 %i.el, label %.preheader119.epil.preheader, label %.preheader119.lr.ph.new

.preheader119.lr.ph.new:                          ; preds = %.preheader119.lr.ph
  %unroll_iter275 = and i64 %wide.trip.count204, 2147483646
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader119, %.preheader119.lr.ph.new
end_hunk_0
