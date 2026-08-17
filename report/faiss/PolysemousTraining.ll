inline.NumInlined: 769
inline.NumDeleted: 383
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK5faiss18PolysemousTraining16optimize_rankingERNS_16ProductQuantizerEmPKf.omp_outlined:bb.a
}

declare void @_ZN5faiss14pairwise_L2sqrEllPKflS1_Pflll(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare noundef double @_ZN5faiss12getmillisecsEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !119
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !180
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !119
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !119
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #31
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !180
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !175
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef double @_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE12compute_costEPKi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4             ; 3 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph9.us.preheader.i, label %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE7computeEPKi.exit

.lr.ph9.us.preheader.i:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.d = add nsw i32 %.val, -1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %wide.trip.count27.i = zext nneg i32 %.val to i64 ; 3 uses
  br label %.lr.ph9.us.i

.lr.ph9.us.i:                                     ; preds = %._crit_edge10.split.us.us.i, %.lr.ph9.us.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.lr.ph9.us.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge10.split.us.us.i ] ; 2 uses
  %.016.us.i = phi double [ 0.000000e+00, %.lr.ph9.us.preheader.i ], [ %.3.us.us.i, %._crit_edge10.split.us.us.i ]
  %.02115.us.i = phi ptr [ %.val2, %.lr.ph9.us.preheader.i ], [ %scevgep.i, %._crit_edge10.split.us.us.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv24.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph9.us.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %._crit_edge.us.us.i ], [ 0, %.lr.ph9.us.i ] ; 2 uses
  %.17.us.us.i = phi double [ %.3.us.us.i, %._crit_edge.us.us.i ], [ %.016.us.i, %.lr.ph9.us.i ]
  %.1226.us.us.i = phi ptr [ %scevgep.i, %._crit_edge.us.us.i ], [ %.02115.us.i, %.lr.ph9.us.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv19.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = xor i32 %i.j, %i.h
  %i.l = sext i32 %i.k to i64
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.l)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %.23.us.us.i = phi double [ %.3.us.us.i, %bb.d ], [ %.17.us.us.i, %.lr.ph.us.us.i ] ; 2 uses
  %.2231.us.us.i = phi ptr [ %i.w, %bb.d ], [ %.1226.us.us.i, %.lr.ph.us.us.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13
  %i.p = xor i32 %i.o, %i.h
  %i.q = sext i32 %i.p to i64
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.q)
  %i.s = icmp samesign ult i64 %i.m, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load float, ptr %.2231.us.us.i, align 4, !tbaa !119
  %i.u = fpext float %i.t to double
  %i.v = fadd double %.23.us.us.i, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.3.us.us.i = phi double [ %i.v, %bb.c ], [ %.23.us.us.i, %bb.b ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.2231.us.us.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count27.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !181

._crit_edge.us.us.i:                              ; preds = %bb.d
  %i.x = getelementptr i8, ptr %.1226.us.us.i, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.x, i64 4  ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count27.i
  br i1 %exitcond23.not.i, label %._crit_edge10.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !182

._crit_edge10.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE7computeEPKi.exit, label %.lr.ph9.us.i, !llvm.loop !183

_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE7computeEPKi.exit: ; preds = %._crit_edge10.split.us.us.i, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.3.us.us.i, %._crit_edge10.split.us.us.i ]
  %i.y = fneg double %.0.lcssa.i
  ret double %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef double @_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE11cost_updateEPKiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4             ; 4 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %2, i32 %3) ; 4 uses
  %spec.select13.i = tail call i32 @llvm.smax.i32(i32 %2, i32 %3) ; 4 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph.i, label %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14compute_updateEPKiii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.c, align 8
  %i.d = sext i32 %spec.select.i to i64           ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %4 = load i32, ptr %i.e, align 4, !tbaa !13     ; 2 uses
  %i.f = sext i32 %spec.select13.i to i64         ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f
  %5 = load i32, ptr %i.g, align 4, !tbaa !13     ; 2 uses
  %i.h = zext i32 %spec.select13.i to i64         ; 5 uses
  %i.i = zext i32 %spec.select.i to i64           ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.val to i64 ; 7 uses
  %i.j = mul nuw nsw i32 %.val, %.val
  %i.k = zext nneg i32 %i.j to i64
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 5 uses
  %.017.us.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.1.us.i, %bb.i ]
  %.02215.us.i = phi ptr [ %.val4, %.lr.ph.i ], [ %i.dl, %bb.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13   ; 4 uses
  %i.n = icmp eq i64 %indvars.iv.i, %i.i
  %i.o = icmp eq i64 %indvars.iv.i, %i.h
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = select i1 %i.o, i32 %spec.select.i, i32 %i.p
  %i.r = select i1 %i.n, i32 %spec.select13.i, i32 %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %1, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13   ; 4 uses
  %i.v = xor i32 %i.m, %4
  %i.w = xor i32 %i.u, %5
  %i.x = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %i.v, i64 1
  %i.z = sext <2 x i32> %i.y to <2 x i64>
  %i.aa = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.z) ; 2 uses
  %i.ab = xor i32 %i.m, %5
  %i.ac = xor i32 %i.u, %4
  %i.ad = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.ab, i64 1
  %i.af = sext <2 x i32> %i.ae to <2 x i64>
  %i.ag = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.af) ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.u, i64 1 ; 3 uses
  %i.aj = shufflevector <2 x i64> %i.aa, <2 x i64> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ak = shufflevector <2 x i64> %i.aa, <2 x i64> %i.ag, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.e ] ; 5 uses
  %.04.i.us.i = phi double [ 0.000000e+00, %.lr.ph.i.us.i ], [ %.1.i.us.i, %bb.e ]
  %.0462.i.us.i = phi ptr [ %.02215.us.i, %.lr.ph.i.us.i ], [ %i.cl, %bb.e ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.us.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.an = icmp eq i64 %indvars.iv.i.us.i, %i.i
  %i.ao = icmp eq i64 %indvars.iv.i.us.i, %i.h
  %i.ap = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  %i.aq = select i1 %i.ao, i32 %spec.select.i, i32 %i.ap
  %i.ar = select i1 %i.an, i32 %spec.select13.i, i32 %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.0462.i.us.i, i64 %i.d
  %i.aw = load float, ptr %i.av, align 4, !tbaa !119
  %i.ax = insertelement <2 x i32> poison, i32 %i.am, i64 0
  %i.ay = insertelement <2 x i32> %i.ax, i32 %i.au, i64 1
  %i.az = xor <2 x i32> %i.ay, %i.ai
  %i.ba = sext <2 x i32> %i.az to <2 x i64>
  %i.bb = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ba) ; 3 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %.0462.i.us.i, i64 %i.f
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !119
  %i.be = shufflevector <2 x i64> %i.bb, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = icmp samesign ult <2 x i64> %i.be, %i.aj
  %i.bg = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.bd, i64 1
  %i.bi = fpext <2 x float> %i.bh to <2 x double> ; 2 uses
  %i.bj = fadd <2 x double> %i.bi, zeroinitializer
  %i.bk = select <2 x i1> %i.bf, <2 x double> %i.bj, <2 x double> zeroinitializer ; 2 uses
  %i.bl = fsub <2 x double> %i.bk, %i.bi
  %i.bm = shufflevector <2 x i64> %i.bb, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bn = icmp samesign ult <2 x i64> %i.bm, %i.ak
  %i.bo = select <2 x i1> %i.bn, <2 x double> %i.bl, <2 x double> %i.bk ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = fadd double %.04.i.us.i, %i.bp
  %i.br = extractelement <2 x double> %i.bo, i64 1
  %i.bs = fadd double %i.br, %i.bq                ; 2 uses
  %.not.i.us.i = icmp eq i32 %i.au, %i.am
  br i1 %.not.i.us.i, label %bb.e, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.b, %bb.d
  %indvars.iv.i.i.us.i = phi i64 [ %indvars.iv.next.i.i.us.i, %bb.d ], [ 0, %bb.b ] ; 5 uses
  %.02.i.i.us.i = phi double [ %.3.i.i.us.i, %bb.d ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %i.bt = icmp eq i64 %indvars.iv.i.i.us.i, %i.i
  %i.bu = icmp eq i64 %indvars.iv.i.i.us.i, %i.h
  %or.cond.i.i.us.i = or i1 %i.bt, %i.bu
  br i1 %or.cond.i.i.us.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.us.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.us.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0462.i.us.i, i64 %indvars.iv.i.i.us.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !119
  %i.bz = fpext float %i.by to double             ; 2 uses
  %i.ca = fadd double %.02.i.i.us.i, %i.bz
  %i.cb = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.cc = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cd = xor <2 x i32> %i.cc, %i.ai
  %i.ce = sext <2 x i32> %i.cd to <2 x i64>
  %i.cf = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ce)
  %i.cg = icmp samesign ult <2 x i64> %i.bb, %i.cf ; 2 uses
  %i.ch = extractelement <2 x i1> %i.cg, i64 1
  %.1.i53.i.us.i = select i1 %i.ch, double %i.ca, double %.02.i.i.us.i ; 2 uses
  %i.ci = fsub double %.1.i53.i.us.i, %i.bz
  %i.cj = extractelement <2 x i1> %i.cg, i64 0
  %.2.i.i.us.i = select i1 %i.cj, double %i.ci, double %.1.i53.i.us.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.us.i
  %.3.i.i.us.i = phi double [ %.02.i.i.us.i, %.lr.ph.i.i.us.i ], [ %.2.i.i.us.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.us.i, label %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE13update_j_lineEPKiiiiiiiPKf.exit.i.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !184

_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE13update_j_lineEPKiiiiiiiPKf.exit.i.us.i: ; preds = %bb.d
  %i.ck = fadd double %i.bs, %.3.i.i.us.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE13update_j_lineEPKiiiiiiiPKf.exit.i.us.i, %bb.b
  %.1.i.us.i = phi double [ %i.ck, %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE13update_j_lineEPKiiiiiiiPKf.exit.i.us.i ], [ %i.bs, %bb.b ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.0462.i.us.i, i64 %wide.trip.count.i.i.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_crossEPKiiiiiPKf.exit.us.i, label %bb.b, !llvm.loop !185

_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_crossEPKiiiiiPKf.exit.us.i: ; preds = %bb.e
  %i.cm = fadd double %.017.us.i, %.1.i.us.i      ; 2 uses
  %.not.us.i = icmp eq i32 %i.u, %i.m
  br i1 %.not.us.i, label %bb.i, label %.lr.ph6.split.us.preheader.i.us.i

.lr.ph6.split.us.preheader.i.us.i:                ; preds = %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_crossEPKiiiiiPKf.exit.us.i
  %i.cn = sext <2 x i32> %i.ai to <2 x i64>       ; 2 uses
  br label %.lr.ph6.split.us.i.us.i

.lr.ph6.split.us.i.us.i:                          ; preds = %..loopexit_crit_edge.us.i.us.i, %.lr.ph6.split.us.preheader.i.us.i
  %indvars.iv10.i.us.i = phi i64 [ 0, %.lr.ph6.split.us.preheader.i.us.i ], [ %indvars.iv.next11.i.us.i, %..loopexit_crit_edge.us.i.us.i ] ; 4 uses
  %.05.us.i.us.i = phi double [ 0.000000e+00, %.lr.ph6.split.us.preheader.i.us.i ], [ %.5.us.i.us.i, %..loopexit_crit_edge.us.i.us.i ] ; 2 uses
  %.0334.us.i.us.i = phi ptr [ %.02215.us.i, %.lr.ph6.split.us.preheader.i.us.i ], [ %i.dk, %..loopexit_crit_edge.us.i.us.i ] ; 2 uses
  %.not.us.i.us.i = icmp eq i64 %indvars.iv10.i.us.i, %i.i
  %.not38.us.i.us.i = icmp eq i64 %indvars.iv10.i.us.i, %i.h
  %or.cond.us.i.us.i = or i1 %.not.us.i.us.i, %.not38.us.i.us.i
  br i1 %or.cond.us.i.us.i, label %..loopexit_crit_edge.us.i.us.i, label %.lr.ph.us.i.us.i

.lr.ph.us.i.us.i:                                 ; preds = %.lr.ph6.split.us.i.us.i
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv10.i.us.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13
  %i.cq = sext i32 %i.cp to i64
  %i.cr = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %i.cs = shufflevector <2 x i64> %i.cr, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ct = xor <2 x i64> %i.cs, %i.cn
  %i.cu = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ct)
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.us.i.us.i
  %indvars.iv.i29.us.i = phi i64 [ 0, %.lr.ph.us.i.us.i ], [ %indvars.iv.next.i30.us.i, %bb.h ] ; 5 uses
  %.12.us.i.us.i = phi double [ %.05.us.i.us.i, %.lr.ph.us.i.us.i ], [ %.4.us.i.us.i, %bb.h ] ; 3 uses
  %.not39.us.i.us.i = icmp eq i64 %indvars.iv.i29.us.i, %i.i
  %.not40.us.i.us.i = icmp eq i64 %indvars.iv.i29.us.i, %i.h
  %or.cond41.us.i.us.i = or i1 %.not39.us.i.us.i, %.not40.us.i.us.i
  br i1 %or.cond41.us.i.us.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i29.us.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.0334.us.i.us.i, i64 %indvars.iv.i29.us.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !119
  %i.cz = sext i32 %i.cw to i64
  %i.da = fpext float %i.cy to double             ; 2 uses
  %i.db = fadd double %.12.us.i.us.i, %i.da
  %i.dc = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.dd = shufflevector <2 x i64> %i.dc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.de = xor <2 x i64> %i.dd, %i.cn
  %i.df = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.de)
  %i.dg = icmp samesign ult <2 x i64> %i.cu, %i.df ; 2 uses
  %i.dh = extractelement <2 x i1> %i.dg, i64 1
  %.2.us.i.us.i = select i1 %i.dh, double %i.db, double %.12.us.i.us.i ; 2 uses
  %i.di = fsub double %.2.us.i.us.i, %i.da
  %i.dj = extractelement <2 x i1> %i.dg, i64 0
  %.3.us.i.us.i = select i1 %i.dj, double %i.di, double %.2.us.i.us.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4.us.i.us.i = phi double [ %.3.us.i.us.i, %bb.g ], [ %.12.us.i.us.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i30.us.i = add nuw nsw i64 %indvars.iv.i29.us.i, 1 ; 2 uses
  %exitcond.not.i31.us.i = icmp eq i64 %indvars.iv.next.i30.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i31.us.i, label %..loopexit_crit_edge.us.i.us.i, label %bb.f, !llvm.loop !186

..loopexit_crit_edge.us.i.us.i:                   ; preds = %bb.h, %.lr.ph6.split.us.i.us.i
  %.5.us.i.us.i = phi double [ %.05.us.i.us.i, %.lr.ph6.split.us.i.us.i ], [ %.4.us.i.us.i, %bb.h ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0334.us.i.us.i, i64 %wide.trip.count.i.i.i
  %indvars.iv.next11.i.us.i = add nuw nsw i64 %indvars.iv10.i.us.i, 1 ; 2 uses
  %exitcond14.not.i.us.i = icmp eq i64 %indvars.iv.next11.i.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond14.not.i.us.i, label %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_planeEPKiiiiiPKf.exit.loopexit.i, label %.lr.ph6.split.us.i.us.i, !llvm.loop !187

_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_planeEPKiiiiiPKf.exit.loopexit.i: ; preds = %..loopexit_crit_edge.us.i.us.i
  %6 = fadd double %i.cm, %.5.us.i.us.i
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_planeEPKiiiiiPKf.exit.loopexit.i, %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_crossEPKiiiiiPKf.exit.us.i
  %.1.us.i = phi double [ %6, %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_planeEPKiiiiiPKf.exit.loopexit.i ], [ %i.cm, %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14update_i_crossEPKiiiiiPKf.exit.us.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.02215.us.i, i64 %i.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i, label %_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14compute_updateEPKiii.exit, label %.lr.ph.i.us.i, !llvm.loop !188

_ZNK5faiss12_GLOBAL__N_114Score3ComputerIfdE14compute_updateEPKiii.exit: ; preds = %bb.i, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.1.us.i, %bb.i ]
  %i.dm = fneg double %.0.lcssa.i
  ret double %i.dm
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Score3ComputerIfdEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_113RankingScore2D0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Score3ComputerIfdEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31, !inline_history !176
  br label %_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev.exit

_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Score3ComputerIfdEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31, !inline_history !176
  br label %_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev.exit

_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #31
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEET_S8_S8_T0_.exit
  %i.g = icmp eq i64 %i.ec, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph51, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa47 = phi i64 [ %i.c, %.lr.ph ], [ %i.fm, %bb.b ] ; 2 uses
  %.024.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = lshr i64 %.lcssa47, 2                    ; 2 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 4 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = and i64 %.lcssa47, 4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %i.aw, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.us.i.i.i ], [ %i.j, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us.i.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13   ; 2 uses
  %i.t = icmp slt i64 %.014.us.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.014.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.034.i.us.i.i.i, 1              ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val29.i.us.i.i.i = load i32, ptr %i.w, align 4, !tbaa !13
  %.val30.i.us.i.i.i = load i32, ptr %i.y, align 4, !tbaa !13
  %i.z = sext i32 %.val29.i.us.i.i.i to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %3, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !119
  %i.ac = sext i32 %.val30.i.us.i.i.i to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !119
  %i.af = fcmp olt float %i.ab, %i.ae
  %i.ag = or disjoint i64 %i.u, 1
  %spec.select.i.us.i.i.i = select i1 %i.af, i64 %i.ag, i64 %i.v ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.us.i.i.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !13
  %i.ak = icmp slt i64 %spec.select.i.us.i.i.i, %i.l
  br i1 %i.ak, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !190

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.al = sext i32 %i.s to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %3, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !119
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.0134.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.05.in.i.i.us.i.i.i = add nsw i64 %.0134.i.i.us.i.i.i, -1
  %.059.i.i.us.i.i.i = lshr i64 %.05.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.us.i.i.i
  %.val14.i.i.us.i.i.i = load i32, ptr %i.ao, align 4, !tbaa !13 ; 2 uses
  %i.ap = sext i32 %.val14.i.i.us.i.i.i to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !119
  %i.as = fcmp olt float %i.ar, %i.an
  br i1 %i.as, label %bb.d, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.us.i.i.i
  store i32 %.val14.i.i.us.i.i.i, ptr %i.at, align 4, !tbaa !13
  %i.au = icmp samesign ugt i64 %.059.i.i.us.i.i.i, %.014.us.i.i.i
  br i1 %i.au, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.us.i.i.i, !llvm.loop !191

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.013.lcssa.i.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.split.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.d ], [ %.0134.i.i.us.i.i.i, %bb.c ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us.i.i.i
  store i32 %i.s, ptr %i.av, align 4, !tbaa !13
  %.not.us.i.i.i = icmp eq i64 %.014.us.i.i.i, 0
  %i.aw = add nsw i64 %.014.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.us.i.i.i, !llvm.loop !192

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.014.i.i.i = phi i64 [ %i.cf, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_T0_S9_T1_T2_.exit.i.i.i ], [ %i.j, %.split.preheader.i.i.i ] ; 8 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !13 ; 2 uses
  %i.az = icmp slt i64 %.014.i.i.i, %i.l
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ba = shl i64 %.034.i.i.i.i, 1                ; 3 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.val29.i.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !13
  %.val30.i.i.i.i = load i32, ptr %i.be, align 4, !tbaa !13
  %i.bf = sext i32 %.val29.i.i.i.i to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !119
  %i.bi = sext i32 %.val30.i.i.i.i to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !119
  %i.bl = fcmp olt float %i.bh, %i.bk
  %i.bm = or disjoint i64 %i.ba, 1
  %spec.select.i.i.i.i = select i1 %i.bl, i64 %i.bm, i64 %i.bb ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
end_hunk_0
