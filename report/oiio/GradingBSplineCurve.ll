inline.NumInlined: 1486
inline.NumDeleted: 467
begin_hunk_0_@_ZNSt6vectorIfSaIfEEaSERKS1_:bb.a
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load float, ptr %i.c, align 4, !tbaa !58
  store float %i.z, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !82

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !54
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !60 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !54
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !60
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load float, ptr %i.c, align 4, !tbaa !58
  store float %i.ac, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

_ZSt4copyIPfS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !82

bb.r:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load float, ptr %i.af, align 4, !tbaa !58
  store float %i.ak, ptr %i.ad, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !60
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl13getSplineTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImpl13setSplineTypeENS_11BSplineTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((56, 60)) %0, i32 noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.a, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl19getNumControlPointsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImpl19setNumControlPointsEm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw i64 %1, %i.j
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, i64 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %1, %i.j
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_519GradingControlPointEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_519GradingControlPointEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #22
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ac = sub i64 %i.z, %i.e
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4, !alias.scope !88, !noalias !85
  %wide.load13 = load <2 x i64>, ptr %i.ah, align 4, !alias.scope !88, !noalias !85
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !85, !noalias !88
  store <2 x i64> %wide.load13, ptr %i.ai, align 4, !alias.scope !85, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !88, !noalias !85
  store i64 %i.ak, ptr %.012.i.i.i.i, align 4, !alias.scope !85, !noalias !88
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !91

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.an = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #24
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.aq = icmp ult i64 %1, %i.g
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ar
  br i1 %.not.i4, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN16OpenColorIO_v2_519GradingControlPointES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_519GradingControlPointES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_519GradingControlPointES1_EvT_S3_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_519GradingControlPointEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl13validateIndexEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEm.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %1)
          to label %_ZNSolsEm.exit16 unwind label %bb.e

_ZNSolsEm.exit16:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZNSolsEm.exit16
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.o = load ptr, ptr %3, align 8, !tbaa !92
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %i.o)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.j unwind label %bb.f

bb.e:                                             ; preds = %_ZNSolsEm.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !92     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.t, align 8, !tbaa !20
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn20, %bb.g ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitRGBSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_:bb.a
  br i1 %.not.i17.i.i164, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kw) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165: ; preds = %bb.bq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  store ptr %i.le, ptr %2, align 8, !tbaa !54
  store ptr %i.lh, ptr %i.h, align 8, !tbaa !60
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.li, ptr %i.j, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

_ZNSt6vectorIfSaIfEE9push_backERKf.exit166:       ; preds = %bb.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165
  %exitcond.not = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !124
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::GradingControlPoint", align 4 ; 5 uses
  %5 = alloca %"class.std::vector", align 8       ; 28 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 38 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 9
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
  br i1 %i.j, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = shl nsw i32 %2, 1                        ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 -1, ptr %i.o, align 4, !tbaa !3
  %i.p = or disjoint i32 %i.l, 1
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.m
  store i32 -1, ptr %i.u, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  store i32 0, ptr %i.v, align 4, !tbaa !3
  br label %bb.fz

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !116  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = shl nsw i32 %2, 1                       ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store i32 %i.x, ptr %i.ae, align 4, !tbaa !3
  %i.af = or disjoint i32 %i.ab, 1
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 2, ptr %i.ah, align 4, !tbaa !3
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !107 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  store i32 3, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.ap = sext i32 %i.x to i64
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.aq, align 4, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123
  %i.at = sext i32 %i.z to i64
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !61 ; 3 uses
  %i.ax = add i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 2
  %i.az = select i1 %i.ay, float 1.000000e+00, float 0.000000e+00
  %i.ba = getelementptr i8, ptr %i.au, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !58
  %i.bb = icmp eq i32 %i.aw, 3
  %i.bc = icmp eq i32 %i.aw, 5
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = select i1 %i.bd, float 1.000000e+00, float 0.000000e+00
  %i.bf = getelementptr i8, ptr %i.au, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !58
  %i.bg = load <2 x i32>, ptr %i.y, align 8, !tbaa !3
  %i.bh = add nsw <2 x i32> %i.bg, <i32 3, i32 2>
  store <2 x i32> %i.bh, ptr %i.y, align 8, !tbaa !3
  br label %bb.fz

.lr.ph.i:                                         ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %.off = add i32 %i.bj, -2
  %switch = icmp ult i32 %.off, 3                 ; 5 uses
  %i.bk = add i32 %i.bj, -3
  %switch114 = icmp ult i32 %i.bk, -2             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 3                 ; 4 uses
  %.not.i = icmp ne ptr %i.bl, %i.bm
  tail call void @llvm.assume(i1 %.not.i)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i, %.lr.ph.i
  %i.bt = phi ptr [ null, %.lr.ph.i ], [ %i.ga, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ] ; 17 uses
  %i.bu = phi i64 [ 0, %.lr.ph.i ], [ %i.gc, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %.0166.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gb, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !58 ; 4 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 4 uses
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %or.cond.i = select i1 %switch, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cb = fadd float %i.bz, 1.000000e+00          ; 2 uses
  %i.cc = fadd float %i.by, 1.000000e+00
  %i.cd = select i1 %switch114, float %i.by, float %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !52
  %.not.i.i.i = icmp eq ptr %i.bt, %i.ce
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.cb, ptr %i.bt, align 4
  %.sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %i.cd, ptr %.sroa_idx154.i, align 4
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.br, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %5, align 8, !tbaa !49    ; 7 uses
  %i.ci = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.r, %bb.n, %bb.i, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.cont unwind label %.loopexit.split-lp323

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #23
          to label %.noexc116 unwind label %.loopexit322 ; 8 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store float %i.cb, ptr %i.ct, align 4
  %.sroa_idx156.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cd, ptr %.sroa_idx156.i, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc116
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %7 = add i64 %i.ci, -8
  %8 = sub i64 %7, %i.cj                          ; 2 uses
  %i.cv = lshr i64 %8, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.cx = sub i64 %i.cu, %i.cj
  %diff.check = icmp ult i64 %i.cx, 32
  %or.cond1246 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1246, label %.lr.ph.i.i.i.i.i.i.i.preheader1433, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cw, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.ch, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.db ; 2 uses
  %next.gep1177 = getelementptr i8, ptr %i.ch, i64 %i.db ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.dc = getelementptr i8, ptr %next.gep1177, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1177, align 4, !alias.scope !128, !noalias !125
  %wide.load1178 = load <2 x i64>, ptr %i.dc, align 4, !alias.scope !128, !noalias !125
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !125, !noalias !128
  store <2 x i64> %wide.load1178, ptr %i.dd, align 4, !alias.scope !125, !noalias !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1433

.lr.ph.i.i.i.i.i.i.i.preheader1433:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1433, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1433 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1433 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.df = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !128, !noalias !125
  store i64 %i.df, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !125, !noalias !128
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !131

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc116
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.noexc116 ], [ %i.cz, %middle.block ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ck) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.cs, ptr %5, align 8, !tbaa !49
  store ptr %i.di, ptr %i.br, align 8, !tbaa !53
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.dj, ptr %i.bs, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.k:                                             ; preds = %bb.f
  %i.dk = fcmp oge float %i.bz, 1.000000e+00
  %or.cond3.i = select i1 %switch, i1 %i.dk, i1 false
  br i1 %or.cond3.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.dl = fadd float %i.bz, -1.000000e+00         ; 2 uses
  %i.dm = fadd float %i.by, -1.000000e+00
  %i.dn = select i1 %switch114, float %i.by, float %i.dm ; 2 uses
  %i.do = load ptr, ptr %i.bs, align 8, !tbaa !52
  %.not.i.i104.i = icmp eq ptr %i.bt, %i.do
  br i1 %.not.i.i104.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store float %i.dl, ptr %i.bt, align 4
  %.sroa_idx147.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %i.dn, ptr %.sroa_idx147.i, align 4
  %i.dp = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.br, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.dr = load ptr, ptr %5, align 8, !tbaa !49    ; 7 uses
  %i.ds = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i: ; preds = %bb.n
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i106.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i106.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i.i107.i = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i107.i)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #23
          to label %.noexc118 unwind label %.loopexit322 ; 8 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 2 uses
  store float %i.dl, ptr %i.ed, align 4
  %.sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store float %i.dn, ptr %.sroa_idx149.i, align 4
  %.not10.i.i.i.i.i.i108.i = icmp eq ptr %i.dr, %i.bt
  br i1 %.not10.i.i.i.i.i.i108.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader

.lr.ph.i.i.i.i.i.i109.i.preheader:                ; preds = %.noexc118
  %i.ee = ptrtoaddr ptr %i.ec to i64
  %9 = add i64 %i.ds, -8
  %10 = sub i64 %9, %i.dt                         ; 2 uses
  %i.ef = lshr i64 %10, 3
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check1183 = icmp ult i64 %10, 24
  %i.eh = sub i64 %i.ee, %i.dt
  %diff.check1181 = icmp ult i64 %i.eh, 32
  %or.cond1247 = or i1 %min.iters.check1183, %diff.check1181
  br i1 %or.cond1247, label %.lr.ph.i.i.i.i.i.i109.i.preheader1434, label %vector.ph1184

vector.ph1184:                                    ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader
  %n.vec1186 = and i64 %i.eg, 4611686018427387900 ; 3 uses
  %i.ei = shl i64 %n.vec1186, 3                   ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ec, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dr, i64 %i.ei
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1184
  %index1188 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1193, %vector.body1187 ] ; 2 uses
  %i.el = shl i64 %index1188, 3                   ; 2 uses
  %next.gep1189 = getelementptr i8, ptr %i.ec, i64 %i.el ; 2 uses
  %next.gep1190 = getelementptr i8, ptr %i.dr, i64 %i.el ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.em = getelementptr i8, ptr %next.gep1190, i64 16
  %wide.load1191 = load <2 x i64>, ptr %next.gep1190, align 4, !alias.scope !135, !noalias !132
  %wide.load1192 = load <2 x i64>, ptr %i.em, align 4, !alias.scope !135, !noalias !132
  %i.en = getelementptr i8, ptr %next.gep1189, i64 16
  store <2 x i64> %wide.load1191, ptr %next.gep1189, align 4, !alias.scope !132, !noalias !135
  store <2 x i64> %wide.load1192, ptr %i.en, align 4, !alias.scope !132, !noalias !135
  %index.next1193 = add nuw i64 %index1188, 4     ; 2 uses
  %i.eo = icmp eq i64 %index.next1193, %n.vec1186
  br i1 %i.eo, label %middle.block1194, label %vector.body1187, !llvm.loop !137

middle.block1194:                                 ; preds = %vector.body1187
  %cmp.n1195 = icmp eq i64 %i.eg, %n.vec1186
  br i1 %cmp.n1195, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader1434

.lr.ph.i.i.i.i.i.i109.i.preheader1434:            ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader, %middle.block1194
  %.012.i.i.i.i.i.i110.i.ph = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.ej, %middle.block1194 ]
  %.0911.i.i.i.i.i.i111.i.ph = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.ek, %middle.block1194 ]
  br label %.lr.ph.i.i.i.i.i.i109.i

.lr.ph.i.i.i.i.i.i109.i:                          ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader1434, %.lr.ph.i.i.i.i.i.i109.i
  %.012.i.i.i.i.i.i110.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i109.i ], [ %.012.i.i.i.i.i.i110.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1434 ] ; 2 uses
  %.0911.i.i.i.i.i.i111.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i109.i ], [ %.0911.i.i.i.i.i.i111.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1434 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ep = load i64, ptr %.0911.i.i.i.i.i.i111.i, align 4, !alias.scope !135, !noalias !132
  store i64 %i.ep, ptr %.012.i.i.i.i.i.i110.i, align 4, !alias.scope !132, !noalias !135
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i111.i, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i110.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i112.i = icmp eq ptr %i.eq, %i.bt
  br i1 %.not.i.i.i.i.i.i112.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i, !llvm.loop !138

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i: ; preds = %.lr.ph.i.i.i.i.i.i109.i, %middle.block1194, %.noexc118
  %.0.lcssa.i.i.i.i.i.i114.i = phi ptr [ %i.ec, %.noexc118 ], [ %i.ej, %middle.block1194 ], [ %i.er, %.lr.ph.i.i.i.i.i.i109.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %.not.i23.i.i.i115.i = icmp eq ptr %i.dr, null
  br i1 %.not.i23.i.i.i115.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i: ; preds = %bb.o, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  store ptr %i.ec, ptr %5, align 8, !tbaa !49
  store ptr %i.es, ptr %i.br, align 8, !tbaa !53
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.et, ptr %i.bs, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.p:                                             ; preds = %bb.k
  %i.eu = load ptr, ptr %i.bs, align 8, !tbaa !52
  %.not.i.i118.i = icmp eq ptr %i.bt, %i.eu
  br i1 %.not.i.i118.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store <2 x float> %i.bx, ptr %i.bt, align 4
  %i.ev = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.br, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ex = load ptr, ptr %5, align 8, !tbaa !49    ; 7 uses
  %i.ey = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 3 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i: ; preds = %bb.r
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i120.i = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i.i120.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = tail call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i.i121.i = icmp ne i64 %i.fg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i121.i)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #23
          to label %.noexc120 unwind label %.loopexit322 ; 8 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  store <2 x float> %i.bx, ptr %i.fj, align 4
  %.not10.i.i.i.i.i.i122.i = icmp eq ptr %i.ex, %i.bt
  br i1 %.not10.i.i.i.i.i.i122.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader

.lr.ph.i.i.i.i.i.i123.i.preheader:                ; preds = %.noexc120
  %i.fk = ptrtoaddr ptr %i.fi to i64
  %11 = add i64 %i.ey, -8
  %12 = sub i64 %11, %i.ez                        ; 2 uses
  %i.fl = lshr i64 %12, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check1201 = icmp ult i64 %12, 24
  %i.fn = sub i64 %i.fk, %i.ez
  %diff.check1199 = icmp ult i64 %i.fn, 32
  %or.cond1248 = or i1 %min.iters.check1201, %diff.check1199
  br i1 %or.cond1248, label %.lr.ph.i.i.i.i.i.i123.i.preheader1435, label %vector.ph1202

vector.ph1202:                                    ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader
  %n.vec1204 = and i64 %i.fm, 4611686018427387900 ; 3 uses
  %i.fo = shl i64 %n.vec1204, 3                   ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fi, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ex, i64 %i.fo
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1202
  %index1206 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1211, %vector.body1205 ] ; 2 uses
  %i.fr = shl i64 %index1206, 3                   ; 2 uses
  %next.gep1207 = getelementptr i8, ptr %i.fi, i64 %i.fr ; 2 uses
  %next.gep1208 = getelementptr i8, ptr %i.ex, i64 %i.fr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.fs = getelementptr i8, ptr %next.gep1208, i64 16
  %wide.load1209 = load <2 x i64>, ptr %next.gep1208, align 4, !alias.scope !142, !noalias !139
  %wide.load1210 = load <2 x i64>, ptr %i.fs, align 4, !alias.scope !142, !noalias !139
  %i.ft = getelementptr i8, ptr %next.gep1207, i64 16
  store <2 x i64> %wide.load1209, ptr %next.gep1207, align 4, !alias.scope !139, !noalias !142
  store <2 x i64> %wide.load1210, ptr %i.ft, align 4, !alias.scope !139, !noalias !142
  %index.next1211 = add nuw i64 %index1206, 4     ; 2 uses
  %i.fu = icmp eq i64 %index.next1211, %n.vec1204
  br i1 %i.fu, label %middle.block1212, label %vector.body1205, !llvm.loop !144

middle.block1212:                                 ; preds = %vector.body1205
  %cmp.n1213 = icmp eq i64 %i.fm, %n.vec1204
  br i1 %cmp.n1213, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader1435

.lr.ph.i.i.i.i.i.i123.i.preheader1435:            ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader, %middle.block1212
  %.012.i.i.i.i.i.i124.i.ph = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fp, %middle.block1212 ]
  %.0911.i.i.i.i.i.i125.i.ph = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fq, %middle.block1212 ]
  br label %.lr.ph.i.i.i.i.i.i123.i

.lr.ph.i.i.i.i.i.i123.i:                          ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader1435, %.lr.ph.i.i.i.i.i.i123.i
  %.012.i.i.i.i.i.i124.i = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i123.i ], [ %.012.i.i.i.i.i.i124.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1435 ] ; 2 uses
  %.0911.i.i.i.i.i.i125.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i123.i ], [ %.0911.i.i.i.i.i.i125.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1435 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.fv = load i64, ptr %.0911.i.i.i.i.i.i125.i, align 4, !alias.scope !142, !noalias !139
  store i64 %i.fv, ptr %.012.i.i.i.i.i.i124.i, align 4, !alias.scope !139, !noalias !142
  %i.fw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i125.i, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i124.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i126.i = icmp eq ptr %i.fw, %i.bt
  br i1 %.not.i.i.i.i.i.i126.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i, !llvm.loop !145

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i: ; preds = %.lr.ph.i.i.i.i.i.i123.i, %middle.block1212, %.noexc120
  %.0.lcssa.i.i.i.i.i.i128.i = phi ptr [ %i.fi, %.noexc120 ], [ %i.fp, %middle.block1212 ], [ %i.fx, %.lr.ph.i.i.i.i.i.i123.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i128.i, i64 8 ; 2 uses
  %.not.i23.i.i.i129.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i.i129.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i: ; preds = %bb.s, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  store ptr %i.fi, ptr %5, align 8, !tbaa !49
  store ptr %i.fy, ptr %i.br, align 8, !tbaa !53
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fz, ptr %i.bs, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, %bb.q, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, %bb.m, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.h
  %i.ga = phi ptr [ %i.fy, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i ], [ %i.ew, %bb.q ], [ %i.es, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i ], [ %i.dq, %bb.m ], [ %i.di, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.cg, %bb.h ]
  %i.gb = add i32 %.0166.i, 1                     ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = icmp ugt i64 %i.bq, %i.gc
  br i1 %i.gd, label %bb.f, label %.lr.ph172.i.preheader, !llvm.loop !146

.lr.ph172.i.preheader:                            ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i
  %i.ge = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.gf = icmp samesign ugt i64 %i.bq, 1
  br i1 %i.gf, label %.lr.ph170.preheader.i, label %._crit_edge.thread.i

.lr.ph176.i:                                      ; preds = %._crit_edge.thread.i
  %i.gg = fmul float %i.gq, 2.000000e-03
  br label %bb.t

._crit_edge.thread.i.loopexit:                    ; preds = %._crit_edge.i
  %i.gh = zext i32 %i.gx to i64
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.loopexit, %.lr.ph172.i.preheader
  %.090171.i.lcssa = phi i64 [ 0, %.lr.ph172.i.preheader ], [ %i.gh, %._crit_edge.thread.i.loopexit ]
  %.lcssa495 = phi ptr [ %i.ge, %.lr.ph172.i.preheader ], [ %i.hf, %._crit_edge.thread.i.loopexit ]
  %.lcssa494 = phi ptr [ %i.ge, %.lr.ph172.i.preheader ], [ %i.hg, %._crit_edge.thread.i.loopexit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.lcssa495, i64 %.090171.i.lcssa ; 2 uses
  %i.gj = load i64, ptr %.lcssa494, align 4
  %i.gk = load i64, ptr %i.gi, align 4
  store i64 %i.gk, ptr %.lcssa494, align 4
  store i64 %i.gj, ptr %i.gi, align 4
  %.pre = load ptr, ptr %5, align 8, !tbaa !49    ; 9 uses
  %.pre688 = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.gl = ptrtoint ptr %.pre688 to i64
  %i.gm = getelementptr i8, ptr %.pre, i64 %i.bp  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -8     ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !97
  %i.gp = load float, ptr %.pre, align 4, !tbaa !97
  %i.gq = fsub float %i.go, %i.gp                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.gs = ptrtoint ptr %.pre to i64
  %i.gt = sub i64 %i.gl, %i.gs
  %i.gu = ashr exact i64 %i.gt, 3                 ; 3 uses
  %i.gv = icmp ugt i64 %i.gu, 1
  br i1 %i.gv, label %.lr.ph176.i, label %.loopexit.i

.lr.ph170.preheader.i:                            ; preds = %.lr.ph172.i.preheader, %._crit_edge.i
  %i.gw = phi i64 [ %i.hi, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ] ; 2 uses
  %i.gx = phi i32 [ %i.hh, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ] ; 4 uses
  %i.gy = phi ptr [ %i.hg, %._crit_edge.i ], [ %i.ge, %.lr.ph172.i.preheader ] ; 3 uses
  %i.gz = phi ptr [ %i.hf, %._crit_edge.i ], [ %i.ge, %.lr.ph172.i.preheader ] ; 2 uses
  %.090171.i499 = phi i32 [ %i.gx, %._crit_edge.i ], [ 0, %.lr.ph172.i.preheader ]
  %i.ha = load float, ptr %i.gy, align 4, !tbaa !97
  br label %.lr.ph170.i

._crit_edge.i:                                    ; preds = %.lr.ph170.i
  %i.hb = zext i32 %.1.i to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hb ; 2 uses
  %i.hd = load i64, ptr %i.gy, align 4
  %i.he = load i64, ptr %i.hc, align 4
  store i64 %i.he, ptr %i.gy, align 4
  store i64 %i.hd, ptr %i.hc, align 4
  %i.hf = load ptr, ptr %5, align 8, !tbaa !49    ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.gw ; 2 uses
  %i.hh = add i32 %i.gx, 1                        ; 2 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = icmp samesign ugt i64 %i.bq, %i.hi
  br i1 %i.hj, label %.lr.ph170.preheader.i, label %._crit_edge.thread.i.loopexit

.lr.ph170.i:                                      ; preds = %.lr.ph170.i, %.lr.ph170.preheader.i
  %i.hk = phi i64 [ %i.hp, %.lr.ph170.i ], [ %i.gw, %.lr.ph170.preheader.i ]
  %.092169.i = phi i32 [ %.1.i, %.lr.ph170.i ], [ %.090171.i499, %.lr.ph170.preheader.i ]
  %.093168.i = phi i32 [ %i.ho, %.lr.ph170.i ], [ %i.gx, %.lr.ph170.preheader.i ] ; 2 uses
  %.094167.i = phi float [ %.195.i, %.lr.ph170.i ], [ %i.ha, %.lr.ph170.preheader.i ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !97 ; 2 uses
  %i.hn = fcmp olt float %i.hm, %.094167.i        ; 2 uses
  %.195.i = select i1 %i.hn, float %i.hm, float %.094167.i
  %.1.i = select i1 %i.hn, i32 %.093168.i, i32 %.092169.i ; 2 uses
  %i.ho = add i32 %.093168.i, 1                   ; 2 uses
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = icmp ugt i64 %i.bq, %i.hp
  br i1 %i.hq, label %.lr.ph170.i, label %._crit_edge.i, !llvm.loop !147

._crit_edge177.i:                                 ; preds = %bb.v
  br i1 %switch114, label %.loopexit.i, label %bb.w

bb.t:                                             ; preds = %bb.v, %.lr.ph176.i
  %i.hr = phi i64 [ 1, %.lr.ph176.i ], [ %i.ic, %bb.v ]
  %.091174.i = phi i32 [ 1, %.lr.ph176.i ], [ %i.ib, %bb.v ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.hr ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !97
  %i.hu = add i32 %.091174.i, -1
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !97 ; 2 uses
  %i.hy = fsub float %i.ht, %i.hx
  %i.hz = fcmp olt float %i.hy, %i.gg
  br i1 %i.hz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.gq, float 2.000000e-03, float %i.hx)
  store float %i.ia, ptr %i.hs, align 4, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ib = add i32 %.091174.i, 1                   ; 2 uses
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = icmp ugt i64 %i.gu, %i.ic
  br i1 %i.id, label %bb.t, label %._crit_edge177.i, !llvm.loop !148

bb.w:                                             ; preds = %._crit_edge177.i
  %i.ie = getelementptr i8, ptr %i.gm, i64 -4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !100
  %i.ig = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !100
  %i.ii = fsub float %i.if, %i.ih                 ; 2 uses
  %i.ij = fmul float %i.ii, 2.000000e-03
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.ik = phi i64 [ 1, %bb.w ], [ %i.ix, %bb.z ]
  %.089179.i = phi i32 [ 1, %bb.w ], [ %i.iw, %bb.z ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !100
  %i.io = add i32 %.089179.i, -1
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !100 ; 2 uses
  %i.it = fsub float %i.in, %i.is
  %i.iu = fcmp olt float %i.it, %i.ij
  br i1 %i.iu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.ii, float 2.000000e-03, float %i.is)
  store float %i.iv, ptr %i.im, align 4, !tbaa !100
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.iw = add i32 %.089179.i, 1                   ; 2 uses
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = icmp ugt i64 %i.gu, %i.ix
  br i1 %i.iy, label %bb.x, label %.loopexit.i, !llvm.loop !149

.loopexit.i:                                      ; preds = %bb.z, %._crit_edge177.i, %._crit_edge.thread.i
  br i1 %switch, label %bb.aa, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

bb.aa:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.iz = load i64, ptr %i.gn, align 4            ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = bitcast i32 %i.ja to float
  %i.jc = fadd float %i.jb, -1.000000e+00
  store float %i.jc, ptr %4, align 4, !tbaa !97
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.je = lshr i64 %i.iz, 32
  %i.jf = trunc nuw i64 %i.je to i32
  %i.jg = bitcast i32 %i.jf to float              ; 2 uses
  %i.jh = fadd float %i.jg, -1.000000e+00
  %i.ji = select i1 %switch114, float %i.jg, float %i.jh
  store float %i.ji, ptr %i.jd, align 4, !tbaa !100
  %i.jj = invoke ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %.pre, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc121 unwind label %.loopexit.split-lp323 ; 0 uses

.noexc121:                                        ; preds = %bb.aa
  %i.jk = load ptr, ptr %5, align 8, !tbaa !49    ; 8 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load float, ptr %i.jl, align 4
  %.sroa_idx135.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  %i.jn = load float, ptr %.sroa_idx135.i, align 4 ; 2 uses
  %i.jo = fadd float %i.jm, 1.000000e+00          ; 2 uses
  %i.jp = fadd float %i.jn, 1.000000e+00
  %i.jq = select i1 %switch114, float %i.jn, float %i.jp ; 2 uses
  %i.jr = load ptr, ptr %i.gr, align 8, !tbaa !53 ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.jr, %i.jt
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc121
  store float %i.jo, ptr %i.jr, align 4
  %.sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  store float %i.jq, ptr %.sroa_idx132.i, align 4
  %i.ju = load ptr, ptr %i.gr, align 8, !tbaa !53
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store ptr %i.jv, ptr %i.gr, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

bb.ac:                                            ; preds = %.noexc121
  %i.jw = ptrtoint ptr %i.jr to i64               ; 2 uses
  %i.jx = ptrtoint ptr %i.jk to i64               ; 3 uses
  %i.jy = sub i64 %i.jw, %i.jx                    ; 4 uses
  %i.jz = icmp eq i64 %i.jy, 9223372036854775800
  br i1 %i.jz, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.ka = ashr exact i64 %i.jy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ka, i64 1)
  %i.kb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ka ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.ka
  %i.kd = call i64 @llvm.umin.i64(i64 %i.kb, i64 1152921504606846975)
  %i.ke = select i1 %i.kc, i64 1152921504606846975, i64 %i.kd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ke, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.kf = shl nuw nsw i64 %i.ke, 3
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #23
          to label %.noexc123 unwind label %.loopexit.split-lp323 ; 8 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.jy ; 2 uses
  store float %i.jo, ptr %i.kh, align 4
  %.sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store float %i.jq, ptr %.sroa_idx134.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.jk, %i.jr
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc123
  %i.ki = ptrtoaddr ptr %i.kg to i64
  %13 = add i64 %i.jw, -8
  %14 = sub i64 %13, %i.jx                        ; 2 uses
  %i.kj = lshr i64 %14, 3
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %min.iters.check1219 = icmp ult i64 %14, 56
  %i.kl = sub i64 %i.ki, %i.jx
  %diff.check1217 = icmp ult i64 %i.kl, 32
  %or.cond1249 = or i1 %min.iters.check1219, %diff.check1217
  br i1 %or.cond1249, label %.lr.ph.i.i.i.i.i.i.preheader1428, label %vector.ph1220

vector.ph1220:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec1222 = and i64 %i.kk, 4611686018427387900 ; 3 uses
  %i.km = shl i64 %n.vec1222, 3                   ; 2 uses
  %i.kn = getelementptr i8, ptr %i.kg, i64 %i.km  ; 2 uses
  %i.ko = getelementptr i8, ptr %i.jk, i64 %i.km
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1220
  %index1224 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1229, %vector.body1223 ] ; 2 uses
  %i.kp = shl i64 %index1224, 3                   ; 2 uses
  %next.gep1225 = getelementptr i8, ptr %i.kg, i64 %i.kp ; 2 uses
  %next.gep1226 = getelementptr i8, ptr %i.jk, i64 %i.kp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.kq = getelementptr i8, ptr %next.gep1226, i64 16
  %wide.load1227 = load <2 x i64>, ptr %next.gep1226, align 4, !alias.scope !153, !noalias !150
  %wide.load1228 = load <2 x i64>, ptr %i.kq, align 4, !alias.scope !153, !noalias !150
  %i.kr = getelementptr i8, ptr %next.gep1225, i64 16
  store <2 x i64> %wide.load1227, ptr %next.gep1225, align 4, !alias.scope !150, !noalias !153
  store <2 x i64> %wide.load1228, ptr %i.kr, align 4, !alias.scope !150, !noalias !153
  %index.next1229 = add nuw i64 %index1224, 4     ; 2 uses
  %i.ks = icmp eq i64 %index.next1229, %n.vec1222
  br i1 %i.ks, label %middle.block1230, label %vector.body1223, !llvm.loop !155

middle.block1230:                                 ; preds = %vector.body1223
  %cmp.n1231 = icmp eq i64 %i.kk, %n.vec1222
  br i1 %cmp.n1231, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1428

.lr.ph.i.i.i.i.i.i.preheader1428:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block1230
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kn, %middle.block1230 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ko, %middle.block1230 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1428, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1428 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1428 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.kt = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !153, !noalias !150
  store i64 %i.kt, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !150, !noalias !153
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ku, %i.jr
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !156

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1230, %.noexc123
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kg, %.noexc123 ], [ %i.kn, %middle.block1230 ], [ %i.kv, %.lr.ph.i.i.i.i.i.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jy) #24
  store ptr %i.kg, ptr %5, align 8, !tbaa !49
  store ptr %i.kw, ptr %i.gr, align 8, !tbaa !53
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.ke
  store ptr %i.kx, ptr %i.js, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i, %.loopexit.i
  %i.ky = load i32, ptr %i.bi, align 8, !tbaa !61
  %i.kz = icmp eq i32 %i.ky, 2
  %narrow = or i1 %i.kz, %switch114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.la = load ptr, ptr %0, align 8, !tbaa !24
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = invoke noundef zeroext i1 %i.lc(ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %bb.ad unwind label %bb.an

.loopexit322:                                     ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %lpad.loopexit324 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.loopexit.split-lp323:                            ; preds = %.invoke, %bb.aa, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp325 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit
  br i1 %i.ld, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !60
  %i.lh = load ptr, ptr %i.le, align 8, !tbaa !54
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = ashr exact i64 %i.lk, 2
  %i.lm = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ln = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 3
  %i.ls = icmp eq i64 %i.ll, %i.lr
  br i1 %i.ls, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.lt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.le)
          to label %bb.ag unwind label %bb.an     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %switch, label %bb.ah, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i153

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !123
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -4
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !58
  store float %i.lx, ptr %i.a, align 4, !tbaa !58
  %i.ly = load ptr, ptr %6, align 8, !tbaa !123
  %i.lz = invoke ptr @_ZNSt6vectorIfSaIfEE6insertEN9__gnu_cxx17__normal_iteratorIPKfS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ly, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ai unwind label %bb.ao     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ma = load ptr, ptr %6, align 8, !tbaa !123   ; 4 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !58 ; 2 uses
  %i.mc = load ptr, ptr %i.lu, align 8, !tbaa !60 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !57
  %.not.i124 = icmp eq ptr %i.mc, %i.me
  br i1 %.not.i124, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store float %i.mb, ptr %i.mc, align 4, !tbaa !58
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store ptr %i.mf, ptr %i.lu, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.ak:                                            ; preds = %bb.ai
  %i.mg = ptrtoint ptr %i.mc to i64
  %i.mh = ptrtoint ptr %i.ma to i64
  %i.mi = sub i64 %i.mg, %i.mh                    ; 6 uses
  %i.mj = icmp eq i64 %i.mi, 9223372036854775804
  br i1 %i.mj, label %bb.al, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.noexc126 unwind label %bb.ap

.noexc126:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ak
  %i.mk = ashr exact i64 %i.mi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mk, i64 1)
  %i.ml = add nsw i64 %.sroa.speculated.i.i.i, %i.mk ; 2 uses
  %i.mm = icmp ult i64 %i.ml, %i.mk
  %i.mn = call i64 @llvm.umin.i64(i64 %i.ml, i64 2305843009213693951)
  %i.mo = select i1 %i.mm, i64 2305843009213693951, i64 %i.mn ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.mo, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.mp = shl nuw nsw i64 %i.mo, 2
  %i.mq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mp) #23
          to label %.noexc127 unwind label %bb.ap ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.mi ; 2 uses
  store float %i.mb, ptr %i.mr, align 4, !tbaa !58
  %i.ms = icmp sgt i64 %i.mi, 0
  br i1 %i.ms, label %bb.am, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

bb.am:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mq, ptr nonnull align 4 %i.ma, i64 %i.mi, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.am, %.noexc127
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mi) #24
  store ptr %i.mq, ptr %6, align 8, !tbaa !54
  store ptr %i.mt, ptr %i.lu, align 8, !tbaa !60
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mo
  store ptr %i.mu, ptr %i.md, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i153

bb.an:                                            ; preds = %bb.af, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.ah
  %i.mw = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !172
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24, !inline_history !172
  br label %_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev.exit

_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !173
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 4
  store i64 %i.j, ptr %i.f, align 4
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.e, align 8, !tbaa !53
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.n = load i64, ptr %2, align 4
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.p = load i64, ptr %i.o, align 4
  store i64 %i.p, ptr %i.f, align 4
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !53   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.e, align 8, !tbaa !53
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.b                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.f, !prof !82

bb.e:                                             ; preds = %bb.d
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.m, i64 %i.u, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.u, 8
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.m, align 4
  store i64 %i.aa, ptr %i.s, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i64 %i.n, ptr %i.m, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.ac = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ad = sub i64 %i.ac, %i.c                     ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.j, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #23 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.d
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ao = ptrtoaddr ptr %i.al to i64
  %3 = add i64 %i.b, -8
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.ap = lshr i64 %4, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  %i.ar = sub i64 %i.ao, %i.c
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.a, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.a, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.aw = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 4, !alias.scope !177, !noalias !174
  %wide.load30 = load <2 x i64>, ptr %i.aw, align 4, !alias.scope !177, !noalias !174
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !174, !noalias !177
  store <2 x i64> %wide.load30, ptr %i.ax, align 4, !alias.scope !174, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader52

.lr.ph.i.i.i.i.preheader52:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader52, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader52 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !177, !noalias !174
  store i64 %i.az, ptr %.012.i.i.i.i, align 4, !alias.scope !174, !noalias !177
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !180

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %5 = add i64 %i.ac, -8
  %6 = sub i64 %5, %i.b                           ; 2 uses
  %i.bd = lshr i64 %6, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check36 = icmp ult i64 %6, 72
  br i1 %min.iters.check36, label %.lr.ph.i.i.i17.i.preheader51, label %vector.memcheck32

vector.memcheck32:                                ; preds = %.lr.ph.i.i.i17.i.preheader
  %i.bf = add i64 %.0.lcssa.i.i.i.i33, 8
  %i.bg = sub i64 %i.bf, %i.b
  %diff.check34 = icmp ult i64 %i.bg, 32
  br i1 %diff.check34, label %.lr.ph.i.i.i17.i.preheader51, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck32
  %n.vec39 = and i64 %i.be, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec39, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ab, i64 %i.bh
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph37
  %index41 = phi i64 [ 0, %vector.ph37 ], [ %index.next46, %vector.body40 ] ; 2 uses
  %i.bk = shl i64 %index41, 3                     ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.bc, i64 %i.bk ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.ab, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.bl = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load44 = load <2 x i64>, ptr %next.gep43, align 4, !alias.scope !184, !noalias !181
  %wide.load45 = load <2 x i64>, ptr %i.bl, align 4, !alias.scope !184, !noalias !181
  %i.bm = getelementptr i8, ptr %next.gep42, i64 16
  store <2 x i64> %wide.load44, ptr %next.gep42, align 4, !alias.scope !181, !noalias !184
  store <2 x i64> %wide.load45, ptr %i.bm, align 4, !alias.scope !181, !noalias !184
  %index.next46 = add nuw i64 %index41, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.bn, label %middle.block47, label %vector.body40, !llvm.loop !186

middle.block47:                                   ; preds = %vector.body40
  %cmp.n48 = icmp eq i64 %i.be, %n.vec39
  br i1 %cmp.n48, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader51

.lr.ph.i.i.i17.i.preheader51:                     ; preds = %vector.memcheck32, %.lr.ph.i.i.i17.i.preheader, %middle.block47
  %.012.i.i.i18.i.ph = phi ptr [ %i.bc, %vector.memcheck32 ], [ %i.bc, %.lr.ph.i.i.i17.i.preheader ], [ %i.bi, %middle.block47 ]
  %.0911.i.i.i19.i.ph = phi ptr [ %i.ab, %vector.memcheck32 ], [ %i.ab, %.lr.ph.i.i.i17.i.preheader ], [ %i.bj, %middle.block47 ]
  br label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.preheader51, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.bq, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader51 ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.bp, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader51 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.bo = load i64, ptr %.0911.i.i.i19.i, align 4, !alias.scope !184, !noalias !181
  store i64 %i.bo, ptr %.012.i.i.i18.i, align 4, !alias.scope !181, !noalias !184
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.bp, %i.f
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !187

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %middle.block47, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.bc, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ], [ %i.bi, %middle.block47 ], [ %i.bq, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.bt) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, %bb.k
  store ptr %i.al, ptr %0, align 8, !tbaa !49
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.e, align 8, !tbaa !53
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bu, ptr %i.g, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.h, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit
  %i.bv = load ptr, ptr %0, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.d
  ret ptr %i.bw
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvEJRmEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !7      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.g = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #22
          to label %.noexc unwind label %bb.a

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i: ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 4 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
          to label %.noexc9 unwind label %bb.a    ; 5 uses

.noexc9:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.i, ptr %i.f, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.h, i1 false)
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.j, ptr %i.l, align 8, !tbaa !52
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = shl nuw nsw i64 %i.e, 2                  ; 3 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23
          to label %.noexc9.i.i.i unwind label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, !inline_history !188 ; 4 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.noexc9.i.i.i:                                    ; preds = %.noexc9
  store ptr %i.o, ptr %i.m, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.p, ptr %i.q, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.n, i1 false), !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i: ; preds = %.noexc9
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #24, !inline_history !188
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, %.noexc9.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i ], [ %i.r, %.noexc9.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.u, align 8, !tbaa !61
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  store ptr %i.d, ptr %1, align 8, !tbaa !189
  ret void

bb.a:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.a ], [ %i.s, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(60) %i.a) #21, !inline_history !190
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
end_hunk_2
begin_hunk_3_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvEJiEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #22
          to label %.noexc unwind label %bb.a, !inline_history !193

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i: ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  %i.i = shl nuw nsw i64 %i.f, 3                  ; 4 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23
          to label %.noexc9 unwind label %bb.a, !inline_history !193 ; 5 uses

.noexc9:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.j, ptr %i.g, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false)
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.k, ptr %i.m, align 8, !tbaa !52
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = shl nuw nsw i64 %i.f, 2                  ; 3 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23
          to label %.noexc9.i.i.i unwind label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, !inline_history !194 ; 4 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.noexc9.i.i.i:                                    ; preds = %.noexc9
  store ptr %i.p, ptr %i.n, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.q, ptr %i.r, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i: ; preds = %.noexc9
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.i) #24, !inline_history !194
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, %.noexc9.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i ], [ %i.s, %.noexc9.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.v, align 8, !tbaa !61
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  store ptr %i.d, ptr %1, align 8, !tbaa !189
  ret void

bb.a:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.a ], [ %i.t, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !58   ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !82

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !58
  store float %i.s, ptr %i.d, align 4, !tbaa !58
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !60
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !82

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !58
  store float %i.ac, ptr %i.ab, align 4, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x float> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !58
  store <4 x float> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !58
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !195

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !196

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = add i64 %i.aq, -4
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !58
  store <4 x float> %broadcast.splat, ptr %i.aw, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !198

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !60
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !82

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load float, ptr %1, align 4, !tbaa !58
  store float %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !58
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !60
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69
  %6 = add i64 %i.f, -4
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec116, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x float> %broadcast.splatinsert117, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bi = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x float> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !58
  store <4 x float> %broadcast.splat118, ptr %i.bj, align 4, !tbaa !58
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bk, label %middle.block123, label %vector.body119, !llvm.loop !199

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i72, align 4, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !200

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !54    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load float, ptr %3, align 4, !tbaa !58  ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec144, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert145 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat146 = shufflevector <4 x float> %broadcast.splatinsert145, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cj = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x float> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !58
  store <4 x float> %broadcast.splat146, ptr %i.ck, align 4, !tbaa !58
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cl, label %middle.block151, label %vector.body147, !llvm.loop !201

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cg, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.cd, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !202

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !82

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load float, ptr %i.bm, align 4, !tbaa !58
  store float %i.cp, ptr %i.ca, align 4, !tbaa !58
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !82

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load float, ptr %1, align 4, !tbaa !58
  store float %i.cu, ptr %i.cq, align 4, !tbaa !58
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !54
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !57
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
end_hunk_3
