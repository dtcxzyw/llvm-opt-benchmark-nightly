Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 196
begin_hunk_0_@_ZN2cv12cpu_baseline8Filter2DIdNS0_4CastIddEENS0_11FilterNoVecEEclEPPKhPhiiii:bb.a
  %niter = phi i64 [ %niter.next.1, %.preheader47.new ], [ 0, %.preheader47 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !15
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %.04157, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !59
  %i.ed = load i32, ptr %i.dx, align 4, !tbaa !14
  %i.ee = mul nsw i32 %i.ed, %6
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !1645
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !15
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %.04157, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !59
  %i.eo = load i32, ptr %i.ei, align 4, !tbaa !14
  %i.ep = mul nsw i32 %i.eo, %6
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  store ptr %i.er, ptr %i.es, align 8, !tbaa !1645
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader46_crit_edge.unr-lcssa, label %.preheader47.new, !llvm.loop !1633

._crit_edge:                                      ; preds = %..preheader46_crit_edge, %._crit_edge53.split.us61, %._crit_edge53.split.us.us.us.us, %.preheader47.lr.ph.split, %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit
  %.not.i.i45 = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i45, label %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.u) #27
  br label %_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit

_ZN2cv10AutoBufferIPKdLm136EED2Ev.exit:           ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv12cpu_baseline8Filter2DIdNS0_4CastIddEENS0_11FilterNoVecEE11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(82) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !228
  %i.j = ptrtoint ptr %i.i to i64
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
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !230
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !12
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !12
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !228
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !230
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !228
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(304) %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !238    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !337
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IiEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv6Point_IiEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !12
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !237
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #26
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !12
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %i.x = load i64, ptr %.0911.i.i.i, align 4, !tbaa !12, !alias.scope !1651
  store i64 %i.x, ptr %.012.i.i.i, align 4, !tbaa !12, !alias.scope !1650
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1649

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !337
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #27
  br label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !238
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !237
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !337
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IiEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !133
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !12
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !229

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %i.a) #25, !inline_history !1652
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !25
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv16BaseColumnFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv10BaseFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"_ZTSN2cv6Point_IiEE", !9, i64 0, !9, i64 4}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !9, i64 4}
!16 = !{!"_ZTSN2cv5Size_IiEE", !9, i64 0, !9, i64 4}
!17 = !{!16, !9, i64 0}
!18 = !{!16, !9, i64 4}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !22, i64 8, !8, i64 16}
!24 = !{!23, !20, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!"_ZTSN2cv5Rect_IiEE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!27 = !{!"p1 int", !19, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIhSaIhEE", !34, i64 0}
!36 = !{!"any p2 pointer", !19, i64 0}
!37 = !{!"p2 omnipotent char", !36, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIPhSaIS0_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIPhSaIS0_EE", !40, i64 0}
!42 = !{!"p1 _ZTSN2cv10BaseFilterE", !19, i64 0}
!43 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!44 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN2cv10BaseFilterELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !44, i64 8}
!46 = !{!"_ZTSSt10shared_ptrIN2cv10BaseFilterEE", !45, i64 0}
!47 = !{!"_ZTSN2cv3PtrINS_10BaseFilterEEE", !46, i64 0}
!48 = !{!"p1 _ZTSN2cv13BaseRowFilterE", !19, i64 0}
!49 = !{!"_ZTSSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !44, i64 8}
!50 = !{!"_ZTSSt10shared_ptrIN2cv13BaseRowFilterEE", !49, i64 0}
!51 = !{!"_ZTSN2cv3PtrINS_13BaseRowFilterEEE", !50, i64 0}
!52 = !{!"p1 _ZTSN2cv16BaseColumnFilterE", !19, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIN2cv16BaseColumnFilterELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !44, i64 8}
!54 = !{!"_ZTSSt10shared_ptrIN2cv16BaseColumnFilterEE", !53, i64 0}
!55 = !{!"_ZTSN2cv3PtrINS_16BaseColumnFilterEEE", !54, i64 0}
!56 = !{!"_ZTSN2cv12FilterEngineE", !9, i64 8, !9, i64 12, !9, i64 16, !16, i64 20, !13, i64 28, !9, i64 36, !16, i64 40, !26, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !31, i64 80, !9, i64 104, !35, i64 112, !35, i64 136, !35, i64 160, !35, i64 184, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !41, i64 232, !47, i64 256, !51, i64 272, !55, i64 288}
!57 = !{!56, !9, i64 8}
!58 = !{!56, !9, i64 16}
!59 = !{!20, !20, i64 0}
!60 = !{!56, !9, i64 24}
!61 = !{!56, !9, i64 32}
!62 = !{!56, !9, i64 36}
!63 = !{!38, !37, i64 8}
!64 = !{!38, !37, i64 0}
!65 = !{!56, !9, i64 20}
!66 = !{!32, !20, i64 8}
!67 = !{!32, !20, i64 0}
!68 = !{!56, !9, i64 76}
!69 = !{!45, !42, i64 0}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!49, !48, i64 0}
end_hunk_0
begin_hunk_1_@llvm.smin.v4i32
!1449 = !{!317, !9, i64 28}
!1450 = distinct !{!1450, !70, !71, !72}
!1451 = distinct !{!1451, !70, !72, !71}
!1452 = distinct !{!1452, !70}
!1453 = distinct !{!1453, !70, !71, !72}
!1454 = distinct !{!1454, !70, !71, !72}
!1455 = distinct !{!1455, !70, !72, !71}
!1456 = distinct !{!1456, !70}
!1457 = distinct !{!1457, !70}
!1458 = distinct !{!1458, !70}
!1459 = distinct !{!1459, !70}
!1460 = distinct !{!1460, !70}
!1461 = distinct !{!1461, !70}
!1462 = distinct !{!1462, !73}
!1463 = distinct !{!1463, !70}
!1464 = distinct !{!1464, !70}
!1465 = distinct !{!1465, !70, !71, !72}
!1466 = distinct !{!1466, !70, !72, !71}
!1467 = distinct !{null}
!1468 = distinct !{!1468, !70}
!1469 = distinct !{!1469, !70}
!1470 = distinct !{!1470, !70, !71, !72}
!1471 = distinct !{!1471, !70, !71, !72}
!1472 = distinct !{!1472, !70, !72, !71}
!1473 = distinct !{!1473, !70}
!1474 = distinct !{!1474, !70}
!1475 = distinct !{!1475, !70}
!1476 = distinct !{!1476, !70}
!1477 = distinct !{null}
!1478 = distinct !{!1478, !70}
!1479 = distinct !{!1479, !70}
!1480 = distinct !{!1480, !70, !71, !72}
!1481 = distinct !{!1481, !70, !71, !72}
!1482 = distinct !{!1482, !70, !72, !71}
!1483 = distinct !{!1483, !70}
!1484 = distinct !{!1484, !70}
!1485 = distinct !{!1485, !70}
!1486 = distinct !{!1486, !70}
!1487 = distinct !{null}
!1488 = distinct !{!1488, i1 false, !"LVerDomain"}
!1489 = distinct !{!1489, !1488}
!1490 = distinct !{!1490, !1488}
!1491 = distinct !{!1491, !1488}
!1492 = distinct !{!1492, !70, !71, !72}
!1493 = distinct !{!1493, !70, !71}
!1494 = distinct !{!1494, !70}
!1495 = distinct !{!1495, !70, !71, !72}
!1496 = distinct !{!1496, !70, !72, !71}
!1497 = distinct !{!1497, !70}
!1498 = distinct !{!1498, !70}
!1499 = distinct !{!1499, !70}
!1500 = distinct !{!1500, !70}
!1501 = distinct !{!1501, !70}
!1502 = !{!1489}
!1503 = !{!1490}
!1504 = !{!1491}
!1505 = !{!1489, !1490}
!1506 = distinct !{null}
!1507 = distinct !{!1507, i1 false, !"LVerDomain"}
!1508 = distinct !{!1508, !1507}
!1509 = distinct !{!1509, !1507}
!1510 = distinct !{!1510, !1507}
!1511 = distinct !{!1511, !70, !71, !72}
!1512 = distinct !{!1512, !70, !71}
!1513 = distinct !{!1513, !70}
!1514 = distinct !{!1514, !70, !71, !72}
!1515 = distinct !{!1515, !70, !72, !71}
!1516 = distinct !{!1516, !70}
!1517 = distinct !{!1517, !70}
!1518 = distinct !{!1518, !70}
!1519 = distinct !{!1519, !70}
!1520 = distinct !{!1520, !70}
!1521 = !{!1508}
!1522 = !{!1509}
!1523 = !{!1510}
!1524 = !{!1508, !1509}
!1525 = distinct !{null}
!1526 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIhNS0_4CastIfhEENS0_11FilterNoVecEED2Ev}
!1527 = distinct !{!1527, !70}
!1528 = distinct !{!1528, !70}
!1529 = distinct !{!1529, !70}
!1530 = distinct !{!1530, !70}
!1531 = distinct !{!1531, !73}
!1532 = distinct !{null}
!1533 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIhNS0_4CastIftEENS0_11FilterNoVecEED2Ev}
!1534 = distinct !{!1534, !70}
!1535 = distinct !{!1535, !70}
!1536 = distinct !{!1536, !70}
!1537 = distinct !{!1537, !70}
!1538 = distinct !{!1538, !70, !71, !72}
!1539 = distinct !{!1539, !70, !71, !72}
!1540 = distinct !{!1540, !70, !72, !71}
!1541 = distinct !{null}
!1542 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIhNS0_4CastIfsEENS0_11FilterNoVecEED2Ev}
!1543 = distinct !{!1543, !70}
!1544 = distinct !{!1544, !70}
!1545 = distinct !{!1545, !70}
!1546 = distinct !{!1546, !70}
!1547 = distinct !{!1547, !70, !71, !72}
!1548 = distinct !{!1548, !70, !71, !72}
!1549 = distinct !{!1549, !70, !72, !71}
!1550 = distinct !{null}
!1551 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIhNS0_4CastIffEENS0_11FilterNoVecEED2Ev}
!1552 = distinct !{!1552, !70}
!1553 = distinct !{!1553, !70}
!1554 = distinct !{!1554, !70}
!1555 = distinct !{!1555, !70}
!1556 = distinct !{!1556, !70, !71, !72}
!1557 = distinct !{!1557, !70, !72, !71}
!1558 = distinct !{null}
!1559 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIhNS0_4CastIddEENS0_11FilterNoVecEED2Ev}
!1560 = distinct !{!1560, !70}
!1561 = distinct !{!1561, !70}
!1562 = distinct !{!1562, !70}
!1563 = distinct !{!1563, !70}
!1564 = distinct !{!1564, !70, !71, !72}
!1565 = distinct !{!1565, !70, !72, !71}
!1566 = distinct !{null}
!1567 = !{ptr @_ZN2cv12cpu_baseline8Filter2DItNS0_4CastIftEENS0_11FilterNoVecEED2Ev}
!1568 = distinct !{!1568, !70}
!1569 = distinct !{!1569, !70}
!1570 = distinct !{!1570, !70}
!1571 = distinct !{!1571, !70}
!1572 = distinct !{!1572, !70, !71, !72}
!1573 = distinct !{!1573, !70, !71, !72}
!1574 = distinct !{!1574, !70, !72, !71}
!1575 = distinct !{null}
!1576 = !{ptr @_ZN2cv12cpu_baseline8Filter2DItNS0_4CastIffEENS0_11FilterNoVecEED2Ev}
!1577 = distinct !{!1577, !70}
!1578 = distinct !{!1578, !70}
!1579 = distinct !{!1579, !70}
!1580 = distinct !{!1580, !70}
!1581 = distinct !{!1581, !70, !71, !72}
!1582 = distinct !{!1582, !70, !72, !71}
!1583 = distinct !{null}
!1584 = !{ptr @_ZN2cv12cpu_baseline8Filter2DItNS0_4CastIddEENS0_11FilterNoVecEED2Ev}
!1585 = distinct !{!1585, !70}
!1586 = distinct !{!1586, !70}
!1587 = distinct !{!1587, !70}
!1588 = distinct !{!1588, !70}
!1589 = distinct !{!1589, !70, !71, !72}
!1590 = distinct !{!1590, !70, !72, !71}
!1591 = distinct !{null}
!1592 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIsNS0_4CastIfsEENS0_11FilterNoVecEED2Ev}
!1593 = distinct !{!1593, !70}
!1594 = distinct !{!1594, !70}
!1595 = distinct !{!1595, !70}
!1596 = distinct !{!1596, !70}
!1597 = distinct !{!1597, !70, !71, !72}
!1598 = distinct !{!1598, !70, !71, !72}
!1599 = distinct !{!1599, !70, !72, !71}
!1600 = distinct !{null}
!1601 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIsNS0_4CastIffEENS0_11FilterNoVecEED2Ev}
!1602 = distinct !{!1602, !70}
!1603 = distinct !{!1603, !70}
!1604 = distinct !{!1604, !70}
!1605 = distinct !{!1605, !70}
!1606 = distinct !{!1606, !70, !71, !72}
!1607 = distinct !{!1607, !70, !72, !71}
!1608 = distinct !{null}
!1609 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIsNS0_4CastIddEENS0_11FilterNoVecEED2Ev}
!1610 = distinct !{!1610, !70}
!1611 = distinct !{!1611, !70}
!1612 = distinct !{!1612, !70}
!1613 = distinct !{!1613, !70}
!1614 = distinct !{!1614, !70, !71, !72}
!1615 = distinct !{!1615, !70, !72, !71}
!1616 = distinct !{null}
!1617 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIfNS0_4CastIffEENS0_11FilterNoVecEED2Ev}
!1618 = distinct !{!1618, !70}
!1619 = distinct !{!1619, !70}
!1620 = distinct !{!1620, !73}
!1621 = distinct !{!1621, !70}
!1622 = distinct !{!1622, !70}
!1623 = distinct !{!1623, !70, !71, !72}
!1624 = distinct !{!1624, !70, !72, !71}
!1625 = !{!"p2 float", !36, i64 0}
!1626 = !{!"_ZTSN2cv10AutoBufferIPKfLm136EEE", !1625, i64 0, !22, i64 8, !8, i64 16}
!1627 = !{!1626, !1625, i64 0}
!1628 = !{!1626, !22, i64 8}
!1629 = !{!"p1 float", !19, i64 0}
!1630 = !{!1629, !1629, i64 0}
!1631 = distinct !{null}
!1632 = !{ptr @_ZN2cv12cpu_baseline8Filter2DIdNS0_4CastIddEENS0_11FilterNoVecEED2Ev}
!1633 = distinct !{!1633, !70}
!1634 = distinct !{!1634, !70}
!1635 = distinct !{!1635, !73}
!1636 = distinct !{!1636, !70}
!1637 = distinct !{!1637, !70}
!1638 = distinct !{!1638, !70, !71, !72}
!1639 = distinct !{!1639, !70, !72, !71}
!1640 = !{!"p2 double", !36, i64 0}
!1641 = !{!"_ZTSN2cv10AutoBufferIPKdLm136EEE", !1640, i64 0, !22, i64 8, !8, i64 16}
!1642 = !{!1641, !1640, i64 0}
!1643 = !{!1641, !22, i64 8}
!1644 = !{!"p1 double", !19, i64 0}
!1645 = !{!1644, !1644, i64 0}
!1646 = distinct !{!1646, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!1647 = distinct !{!1647, !1646, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1648 = distinct !{!1648, !1646, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1649 = distinct !{!1649, !70}
!1650 = !{!1647}
!1651 = !{!1648}
!1652 = distinct !{null}
end_hunk_1
