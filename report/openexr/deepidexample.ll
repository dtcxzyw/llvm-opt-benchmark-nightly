inline.NumInlined: 970
inline.NumDeleted: 385
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !25, !alias.scope !144, !noalias !147
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !30, !alias.scope !147, !noalias !144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27, !alias.scope !147, !noalias !144 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !149
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !30, !alias.scope !144, !noalias !147
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !29, !alias.scope !147, !noalias !144
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !29, !alias.scope !144, !noalias !147
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !27, !alias.scope !147, !noalias !144
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !27, !alias.scope !144, !noalias !147
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !30, !alias.scope !147, !noalias !144
  store i64 0, ptr %i.bc, align 8, !tbaa !27, !alias.scope !147, !noalias !144
  store i8 0, ptr %i.au, align 8, !tbaa !29, !alias.scope !147, !noalias !144
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !143

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !31
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit
  %i.j = icmp eq i64 %i.as, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph23, !llvm.loop !150

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1222 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01321 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.av, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %storemerge1222, i64 -32
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_(ptr %0, ptr nonnull %i.f, ptr %i.m, ptr nonnull %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.ar, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1222, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.g ]
  %i.o = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 3 uses
  %i.p = load i16, ptr %i.g, align 2, !tbaa !121
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !29 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i ] ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.u = load i16, ptr %i.t, align 2, !tbaa !121
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !29 ; 2 uses
  %i.y = fcmp olt float %i.x, %i.s
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = fcmp ogt float %i.x, %i.s
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !151
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !151
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32
  br label %bb.d, !llvm.loop !153

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.backedge ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !121
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !29 ; 2 uses
  %i.ak = fcmp olt float %i.s, %i.aj
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.backedge, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i
  %i.al = fcmp ogt float %i.s, %i.aj
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.thread19.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.i.i: ; preds = %bb.f
  %i.am = load i32, ptr %i.h, align 4, !tbaa !151
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !151
  %i.ap = icmp ult i32 %i.am, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.thread19.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i.i, !llvm.loop !154

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.thread19.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.i.i, %bb.f
  %i.aq = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.aq, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.thread19.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.012.1.i.i, i64 32, i1 false), !tbaa.struct !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32
  br label %bb.c, !llvm.loop !156

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit9.thread19.i.i
  %i.as = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %.sroa.012.1.i.i, ptr %storemerge1222, i64 noundef %i.as)
  %i.at = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.au = sub i64 %i.at, %i.a
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 16
  br i1 %i.aw, label %bb.b, label %.loopexit, !llvm.loop !150

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %3 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %scevgep = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 32, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.h ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.h ] ; 4 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  %i.h = load i16, ptr %i.g, align 2, !tbaa !121  ; 2 uses
  %i.i = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 3 uses
  %i.j = zext i16 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !29 ; 3 uses
  %i.m = load i16, ptr %i.e, align 2, !tbaa !121
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !29 ; 2 uses
  %i.q = fcmp olt float %i.l, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp ogt float %i.l, %i.p
  %.sroa.57.0..sroa_idx.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 60
  %.sroa.57.0.copyload.i.i.pre = load i32, ptr %.sroa.57.0..sroa_idx.i.i.phi.trans.insert, align 4, !tbaa !62 ; 3 uses
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.s = load i32, ptr %i.f, align 4, !tbaa !151
  %i.t = icmp ult i32 %.sroa.57.0.copyload.i.i.pre, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.021.i.ptr, i64 32, i1 false), !tbaa.struct !155
  %i.u = icmp samesign ugt i64 %.sroa.0.021.i.idx, 32
  br i1 %i.u, label %bb.d, label %bb.e, !prof !157

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i
  %i.w = load i64, ptr %.sroa.0.021.i.ptr, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 42
  %.sroa.5.i.i.sroa.0.0.copyload = load <18 x i8>, ptr %.sroa.5.0..sroa_idx.i.i, align 2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i
  %i.x = phi float [ %i.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i ], [ %.pre22.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i ], [ %.pre.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i ]
  %.sroa.010.0.i.i = phi ptr [ %.sroa.0.021.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i ] ; 8 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -32 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -24
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !121
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !29 ; 2 uses
  %i.ae = fcmp olt float %i.x, %i.ad
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = fcmp ogt float %i.x, %i.ad
  br i1 %i.af, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !151
  %i.ai = icmp ult i32 %.sroa.57.0.copyload.i.i.pre, %i.ah
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.010.0.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.i.i, i64 32, i1 false), !tbaa.struct !155
  %.pre.i = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.j
  %.pre22.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !29
  br label %bb.f, !llvm.loop !158

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i, %bb.g
  store i64 %i.w, ptr %.sroa.010.0.i.i, align 4
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  store i16 %i.h, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !126
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 10
  store <18 x i8> %.sroa.5.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx6.i.i, align 2
  %.sroa.57.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 28
  store i32 %.sroa.57.0.copyload.i.i.pre, ptr %.sroa.57.0..sroa_idx8.i.i, align 4, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 32 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 512
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.b, !llvm.loop !159

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not4.i = icmp eq ptr %i.aj, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14
  %.sroa.0.05.i = phi ptr [ %i.az, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14 ], [ %i.aj, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit ] ; 6 uses
  %i.ak = load i64, ptr %.sroa.0.05.i, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  %.sroa.4.0.copyload.i.i = load i16, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !126 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 10
  %.sroa.5.i.i6.sroa.0.0.copyload = load <18 x i8>, ptr %.sroa.5.0..sroa_idx.i.i8, align 2
  %.sroa.57.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 28
  %.sroa.57.0.copyload.i.i10 = load i32, ptr %.sroa.57.0..sroa_idx.i.i9, align 4, !tbaa !62 ; 2 uses
  %i.al = zext i16 %.sroa.4.0.copyload.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i19, %.lr.ph.i7
  %.sroa.010.0.i.i11 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i7 ], [ %.sroa.0.0.i.i12, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i19 ] ; 8 uses
  %.sroa.0.0.i.i12 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i11, i64 -32 ; 2 uses
  %i.am = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al
  %i.ao = load float, ptr %i.an, align 4, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.010.0.i.i11, i64 -24
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !121
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !29 ; 2 uses
  %i.au = fcmp olt float %i.ao, %i.at
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = fcmp ogt float %i.ao, %i.at
  br i1 %i.av, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i13

_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i13: ; preds = %bb.j
  %i.aw = getelementptr inbounds i8, ptr %.sroa.010.0.i.i11, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !151
  %i.ay = icmp ult i32 %.sroa.57.0.copyload.i.i10, %i.ax
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14

_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i19: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i13, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.010.0.i.i11, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.i.i12, i64 32, i1 false), !tbaa.struct !155
  br label %bb.i, !llvm.loop !158

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i13, %bb.j
  store i64 %i.ak, ptr %.sroa.010.0.i.i11, align 4
  %.sroa.4.0..sroa_idx4.i.i15 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i11, i64 8
  store i16 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i15, align 4, !tbaa !126
  %.sroa.5.0..sroa_idx6.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i11, i64 10
  store <18 x i8> %.sroa.5.i.i6.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx6.i.i16, align 2
  %.sroa.57.0..sroa_idx8.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i11, i64 28
  store i32 %.sroa.57.0.copyload.i.i10, ptr %.sroa.57.0..sroa_idx8.i.i17, align 4, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 32 ; 2 uses
  %.not.i18 = icmp eq ptr %i.az, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i7, !llvm.loop !160

bb.k:                                             ; preds = %bb.a
  %i.ba = icmp eq ptr %0, %1
  br i1 %i.ba, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.preheader.i21

.preheader.i21:                                   ; preds = %bb.k
  %.sroa.0.018.i22 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not19.i23 = icmp eq ptr %.sroa.0.018.i22, %1
  br i1 %.not19.i23, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.preheader.i21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i24
  %.sroa.0.021.i25 = phi ptr [ %.sroa.0.018.i22, %.lr.ph.i24 ], [ %.sroa.0.0.i39, %bb.s ] ; 6 uses
  %.pn20.i26 = phi ptr [ %0, %.lr.ph.i24 ], [ %.sroa.0.021.i25, %bb.s ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 40
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !121 ; 2 uses
  %i.bf = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 3 uses
  %i.bg = zext i16 %i.be to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !29 ; 3 uses
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !121
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !29 ; 2 uses
  %i.bn = fcmp olt float %i.bi, %i.bm
  br i1 %i.bn, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i45, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = fcmp ogt float %i.bi, %i.bm
  br i1 %i.bo, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i28, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i27: ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 60
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !151
  %i.br = load i32, ptr %i.bc, align 4, !tbaa !151
  %i.bs = icmp ult i32 %i.bq, %i.br
  br i1 %i.bs, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i45, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i45: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i27, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.021.i25, i64 32, i1 false), !tbaa.struct !155
  %i.bt = ptrtoint ptr %.sroa.0.021.i25 to i64
  %i.bu = sub i64 %i.bt, %i.b                     ; 3 uses
  %i.bv = ashr exact i64 %i.bu, 5                 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 1
  br i1 %i.bw, label %bb.n, label %bb.o, !prof !157

bb.n:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i45
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 64
  %i.by = sub nsw i64 0, %i.bv
  %i.bz = getelementptr inbounds [32 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bz, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bu, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i46

bb.o:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i45
  %i.ca = icmp eq i64 %i.bu, 32
  br i1 %i.ca, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i46

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cb, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i46

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i46: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i28: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i27, %bb.m
  %i.cc = load i64, ptr %.sroa.0.021.i25, align 4
  %.sroa.5.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 42
  %.sroa.5.i.i20.sroa.0.0.copyload = load <18 x i8>, ptr %.sroa.5.0..sroa_idx.i.i29, align 2
  %.sroa.57.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 60
  %.sroa.57.0.copyload.i.i31 = load i32, ptr %.sroa.57.0..sroa_idx.i.i30, align 4, !tbaa !62 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i41, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i28
  %i.cd = phi float [ %i.bi, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i28 ], [ %.pre22.i44, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i41 ] ; 2 uses
  %i.ce = phi ptr [ %i.bf, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i28 ], [ %.pre.i42, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i41 ]
  %.sroa.010.0.i.i32 = phi ptr [ %.sroa.0.021.i25, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread16.i28 ], [ %.sroa.0.0.i.i33, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i41 ] ; 8 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i32, i64 -32 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.010.0.i.i32, i64 -24
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !121
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !29 ; 2 uses
  %i.ck = fcmp olt float %i.cd, %i.cj
  br i1 %i.ck, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = fcmp ogt float %i.cd, %i.cj
  br i1 %i.cl, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i35, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i34

_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i34: ; preds = %bb.r
  %i.cm = getelementptr inbounds i8, ptr %.sroa.010.0.i.i32, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !151
  %i.co = icmp ult i32 %.sroa.57.0.copyload.i.i31, %i.cn
  br i1 %i.co, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i35

_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.thread.i.i41: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i34, %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.010.0.i.i32, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.i.i33, i64 32, i1 false), !tbaa.struct !155
  %.pre.i42 = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 2 uses
  %.phi.trans.insert.i43 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i42, i64 %i.bg
  %.pre22.i44 = load float, ptr %.phi.trans.insert.i43, align 4, !tbaa !29
  br label %bb.q, !llvm.loop !158

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i35: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclI5RgbazNS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_.exit.i.i34, %bb.r
  store i64 %i.cc, ptr %.sroa.010.0.i.i32, align 4
  %.sroa.4.0..sroa_idx4.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i32, i64 8
  store i16 %i.be, ptr %.sroa.4.0..sroa_idx4.i.i36, align 4, !tbaa !126
  %.sroa.5.0..sroa_idx6.i.i37 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i32, i64 10
  store <18 x i8> %.sroa.5.i.i20.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx6.i.i37, align 2
  %.sroa.57.0..sroa_idx8.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i32, i64 28
  store i32 %.sroa.57.0.copyload.i.i31, ptr %.sroa.57.0..sroa_idx8.i.i38, align 4, !tbaa !62
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i35, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i46
  %.sroa.0.0.i39 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i25, i64 32 ; 2 uses
  %.not.i40 = icmp eq ptr %.sroa.0.0.i39, %1
  br i1 %.not.i40, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.l, !llvm.loop !159

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14, %.preheader.i21, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit ], [ %1, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.sroa.08.0.copyload.i = load i64, ptr %i.e, align 4
  %.sroa.49.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24
  %.sroa.49.0.copyload.i = load i16, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i, align 4, !tbaa !126 ; 2 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -22
  %.sroa.5.i.sroa.0.0.copyload = load <18 x i8>, ptr %.sroa.510.0..sroa.0.0..sroa_idx.i, align 2
  %.sroa.611.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  %.sroa.611.0.copyload.i = load i32, ptr %.sroa.611.0..sroa.0.0..sroa_idx.i, align 4, !tbaa !62 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 5                   ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.h, 2
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i
  %.048.i.i = phi i64 [ %i.ai, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.048.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 3 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !121
  %i.s = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 2 uses
  %i.t = zext i16 %i.r to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load i16, ptr %i.w, align 2, !tbaa !121
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29 ; 2 uses
  %i.ab = fcmp olt float %i.v, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ac = fcmp ogt float %i.v, %i.aa
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !151
  %i.ah = icmp ult i32 %i.ae, %i.ag
  %cond.fr.i.i = freeze i1 %i.ah
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i, %bb.b
  %i.ai = phi i64 [ %i.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i.i ], [ %i.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i.i ], [ %i.m, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds [32 x i8], ptr %0, i64 %.048.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ak, ptr noundef nonnull align 4 dereferenceable(32) %i.aj, i64 32, i1 false), !tbaa.struct !155
  %i.al = icmp slt i64 %i.ai, %i.j
  br i1 %i.al, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !161

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.ai, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i.i ] ; 5 uses
  %i.am = and i64 %i.g, 32
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ao = add nsw i64 %i.h, -2
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = icmp eq i64 %.0.lcssa.i.i, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = shl nsw i64 %.0.lcssa.i.i, 1
  %i.as = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.at = getelementptr inbounds [32 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.au, ptr noundef nonnull align 4 dereferenceable(32) %i.at, i64 32, i1 false), !tbaa.struct !155
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.as, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.av = icmp sgt i64 %.1.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.aw = zext i16 %.sroa.49.0.copyload.i to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.021.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.0922.i.i1213.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i.i ] ; 4 uses
  %.0922.in.i.i.i = add nsw i64 %.021.i.i.i, -1
  %.0922.i.i1213.i = lshr i64 %.0922.in.i.i.i, 1  ; 3 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0922.i.i1213.i ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !121
  %i.ba = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 2 uses
  %i.bb = zext i16 %i.az to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !29 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.aw
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29 ; 2 uses
  %i.bg = fcmp olt float %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = fcmp ogt float %i.bd, %i.bf
  br i1 %i.bh, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i.i: ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !151
  %i.bk = icmp ult i32 %i.bj, %.sroa.611.0.copyload.i
  br i1 %i.bk, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i.i, %bb.f
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.021.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bl, ptr noundef nonnull align 4 dereferenceable(32) %i.ax, i64 32, i1 false), !tbaa.struct !155
  %.not.i = icmp eq i64 %.0922.i.i1213.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit, label %bb.f, !llvm.loop !162

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.021.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i.i ], [ %.021.i.i.i, %bb.g ]
  %i.bm = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 4 uses
  store i64 %.sroa.08.0.copyload.i, ptr %i.bm, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i16 %.sroa.49.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !126
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  store <18 x i8> %.sroa.5.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 2
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  store i32 %.sroa.611.0.copyload.i, ptr %.sroa.538.0..sroa_idx.i.i, align 4, !tbaa !62
  %i.bn = icmp sgt i64 %i.g, 32
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 32
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit, %bb.b
  %.07 = phi i64 [ %i.g, %bb.b ], [ %i.bm, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %.07 ; 4 uses
  %.sroa.016.0.copyload = load i64, ptr %i.p, align 4
  %.sroa.417.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.417.0.copyload = load i16, ptr %.sroa.417.0..sroa.0.0..sroa_idx, align 4, !tbaa !126 ; 2 uses
  %.sroa.518.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %.sroa.5.sroa.0.0.copyload28 = load <18 x i8>, ptr %.sroa.518.0..sroa.0.0..sroa_idx, align 2
  %.sroa.619.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %.sroa.619.0.copyload = load i32, ptr %.sroa.619.0..sroa.0.0..sroa_idx, align 4, !tbaa !62 ; 2 uses
  %i.q = icmp slt i64 %.07, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i
  %.048.i = phi i64 [ %i.ao, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i ], [ %.07, %bb.c ] ; 2 uses
  %i.r = shl i64 %.048.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [32 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i16, ptr %i.w, align 2, !tbaa !121
  %i.y = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 2 uses
  %i.z = zext i16 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !121
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !29 ; 2 uses
  %i.ah = fcmp olt float %i.ab, %i.ag
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = fcmp ogt float %i.ab, %i.ag
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !151
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !151
  %i.an = icmp ult i32 %i.ak, %i.am
  %cond.fr.i = freeze i1 %i.an
  br i1 %cond.fr.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i, %bb.d
  %i.ao = phi i64 [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread.i ], [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.i ], [ %i.s, %bb.d ] ; 4 uses
  %i.ap = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds [32 x i8], ptr %0, i64 %.048.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(32) %i.ap, i64 32, i1 false), !tbaa.struct !155
  %i.ar = icmp slt i64 %i.ao, %i.i
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !161

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.07, %bb.c ], [ %i.ao, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread45.i ] ; 2 uses
  %i.as = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !155
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.at = icmp sgt i64 %.1.i, %.07
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.au = zext i16 %.sroa.417.0.copyload to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i, %.lr.ph.i.i
  %.021.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0922.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i ] ; 4 uses
  %.0922.in.i.i = add nsw i64 %.021.i.i, -1
  %.0922.i.i = sdiv i64 %.0922.in.i.i, 2          ; 4 uses
  %i.av = getelementptr inbounds [32 x i8], ptr %0, i64 %.0922.i.i ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !121
  %i.ay = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 2 uses
  %i.az = zext i16 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !29 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.au
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !29 ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bd
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = fcmp ogt float %i.bb, %i.bd
  br i1 %i.bf, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i: ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !151
  %i.bi = icmp ult i32 %i.bh, %.sroa.619.0.copyload
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i, %bb.g
  %i.bj = getelementptr inbounds [32 x i8], ptr %0, i64 %.021.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bj, ptr noundef nonnull align 4 dereferenceable(32) %i.av, i64 32, i1 false), !tbaa.struct !155
  %i.bk = icmp sgt i64 %.0922.i.i, %.07
  br i1 %i.bk, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit, !llvm.loop !162

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit: ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.021.i.i, %bb.h ], [ %.0922.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i ], [ %.021.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i ]
  %i.bl = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i ; 4 uses
  store i64 %.sroa.016.0.copyload, ptr %i.bl, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i16 %.sroa.417.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !126
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  store <18 x i8> %.sroa.5.sroa.0.0.copyload28, ptr %.sroa.5.0..sroa_idx.i, align 2
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  store i32 %.sroa.619.0.copyload, ptr %.sroa.538.0..sroa_idx.i, align 4, !tbaa !62
  %.not = icmp eq i64 %.07, 0
  %i.bm = add nsw i64 %.07, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !164

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %5 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %6 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %7 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %8 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %9 = alloca %struct.Rgbaz, align 4              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 2, !tbaa !121
  %i.c = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !124 ; 4 uses
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i16, ptr %i.g, align 2, !tbaa !121
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !29 ; 6 uses
  %i.l = fcmp olt float %i.f, %i.k
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fcmp ogt float %i.f, %i.k
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !151
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i16, ptr %i.s, align 2, !tbaa !121
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !29 ; 4 uses
  %i.x = fcmp olt float %i.k, %i.w
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread
  %i.y = fcmp ogt float %i.k, %i.w
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread38, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !151
  %i.ad = icmp ult i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread38

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread38: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27
  %i.ae = fcmp olt float %i.f, %i.w
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread38
  %i.af = fcmp ogt float %i.f, %i.w
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread41, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !151
  %i.ak = icmp ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread38, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread41: ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i16, ptr %i.al, align 2, !tbaa !121
  %i.an = zext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !29 ; 4 uses
  %i.aq = fcmp olt float %i.f, %i.ap
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35
  %i.ar = fcmp ogt float %i.f, %i.ap
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !151
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !151
  %i.aw = icmp ult i32 %i.at, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44: ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31
  %i.ax = fcmp olt float %i.k, %i.ap
  br i1 %i.ax, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44
  %i.ay = fcmp ogt float %i.k, %i.ap
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !151
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread41, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<>::param_type", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !63     ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 5 uses
  %i.g = icmp ult i64 %i.f, 2147483645
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %.rhs.trunc = trunc nuw nsw i64 %i.h to i32
  %i.i = udiv i32 2147483645, %.rhs.trunc         ; 2 uses
  %.zext = zext nneg i32 %i.i to i64
  %i.j = mul nuw nsw i64 %i.h, %.zext
  %.promoted = load i64, ptr %1, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.m, %bb.c ], [ %.promoted, %bb.b ]
  %i.l = mul i64 %i.k, 16807
  %i.m = urem i64 %i.l, 2147483647                ; 3 uses
  %i.n = add nsw i64 %i.m, -1                     ; 2 uses
  %.not27 = icmp ult i64 %i.n, %i.j
  br i1 %.not27, label %bb.d, label %bb.c, !llvm.loop !165

bb.d:                                             ; preds = %bb.c
  store i64 %i.m, ptr %1, align 8, !tbaa !60
  %.lhs.trunc = trunc nuw nsw i64 %i.n to i32
  %i.o = udiv i32 %.lhs.trunc, %i.i
  %.zext29 = zext nneg i32 %i.o to i64
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 2147483645
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.p = udiv i64 %i.f, 2147483646
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !63
  store i32 %i.q, ptr %i.r, align 4, !tbaa !65
  %i.s = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 2147483646             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.v = load i64, ptr %1, align 8, !tbaa !60
  %i.w = mul i64 %i.v, 16807
  %i.x = urem i64 %i.w, 2147483647                ; 2 uses
  store i64 %i.x, ptr %1, align 8, !tbaa !60
  %i.y = add nsw i64 %i.u, -1
  %i.z = add nsw i64 %i.y, %i.x                   ; 3 uses
  %i.aa = icmp ugt i64 %i.z, %i.f
  %i.ab = icmp ult i64 %i.z, %i.u
  %i.ac = or i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %.loopexit.loopexit, !llvm.loop !166

bb.g:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %1, align 8, !tbaa !60
  %i.ae = mul i64 %i.ad, 16807
  %i.af = urem i64 %i.ae, 2147483647              ; 2 uses
  store i64 %i.af, ptr %1, align 8, !tbaa !60
  %i.ag = add nsw i64 %i.af, -1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f
  %.pre = load i32, ptr %2, align 4, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g, %bb.d
  %i.ah = phi i32 [ %i.d, %bb.d ], [ %i.d, %bb.g ], [ %.pre, %.loopexit.loopexit ]
  %.0 = phi i64 [ %.zext29, %bb.d ], [ %i.ag, %bb.g ], [ %i.z, %.loopexit.loopexit ]
  %i.ai = trunc i64 %.0 to i32
  %i.aj = add i32 %i.ah, %i.ai
  ret i32 %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{null}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !18, i64 0}
!16 = !{!"_ZTSSt15_Rb_tree_header", !17, i64 0, !20, i64 32}
!17 = !{!"_ZTSSt18_Rb_tree_node_base", !18, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!18 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!19 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!16, !19, i64 8}
!22 = !{!16, !19, i64 16}
!23 = !{!16, !19, i64 24}
!24 = !{!16, !20, i64 32}
!25 = !{!26, !10, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!27 = !{!28, !20, i64 8}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !20, i64 8, !7, i64 16}
!29 = !{!7, !7, i64 0}
!30 = !{!28, !10, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!34 = !{!32, !33, i64 16}
!35 = !{!32, !33, i64 8}
!36 = distinct !{!36, !14}
!37 = !{!38, !47, i64 72}
!38 = !{!"_ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !39, i64 0, !44, i64 48, !47, i64 72, !28, i64 80, !28, i64 112, !48, i64 144, !53, i64 192, !54, i64 200}
!39 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !40, i64 0}
!40 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !41, i64 0}
!41 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !42, i64 0, !16, i64 8}
!42 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !43, i64 0}
!43 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!44 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !32, i64 0}
!47 = !{!"_ZTSN7Imf_3_410IDManifest10IdLifetimeE", !7, i64 0}
!48 = !{!"_ZTSSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE", !49, i64 0}
!49 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE", !50, i64 0}
!50 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE13_Rb_tree_implISF_Lb1EEE", !51, i64 0, !16, i64 8}
!51 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !52, i64 0}
!52 = !{!"_ZTSSt4lessImE"}
!53 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE", !19, i64 0}
!54 = !{!"bool", !7, i64 0}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt6vectorI5RgbazSaIS1_EESaIS3_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSSt6vectorI5RgbazSaIS0_EE", !11, i64 0}
!58 = !{!56, !57, i64 16}
!59 = !{!56, !57, i64 8}
!60 = !{!61, !20, i64 0}
!61 = !{!"_ZTSSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE", !20, i64 0}
!62 = !{!6, !6, i64 0}
!63 = !{!64, !6, i64 0}
!64 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !6, i64 0, !6, i64 4}
!65 = !{!64, !6, i64 4}
!66 = !{!20, !20, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!69 = distinct !{!69, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!72 = distinct !{!72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!76 = distinct !{!76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!77 = !{!78, !75}
!78 = distinct !{!78, !79, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!79 = distinct !{!79, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!82 = distinct !{!82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!85 = distinct !{!85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!88 = distinct !{!88, !"_ZNSt7__cxx119to_stringEj"}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!93 = distinct !{!93, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!96 = distinct !{!96, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!99 = distinct !{!99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!100 = distinct !{!100, !14}
!101 = !{!102, !102, i64 0}
!102 = !{!"float", !7, i64 0}
!103 = !{!104, !105, i64 8}
!104 = !{!"_ZTSNSt12_Vector_baseI5RgbazSaIS0_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!105 = !{!"p1 _ZTS5Rgbaz", !11, i64 0}
!106 = !{!104, !105, i64 0}
!107 = distinct !{!107, !14}
!108 = !{!109, !109, i64 0}
!109 = !{!"_ZTSN7Imf_3_411CompressionE", !7, i64 0}
!110 = !{!111, !112, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!112 = !{!"p1 _ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !11, i64 0}
!113 = !{!111, !112, i64 8}
!114 = distinct !{!114, !14}
!115 = !{!111, !112, i64 16}
!116 = !{!117, !117, i64 0}
!117 = !{!"_ZTSN7Imf_3_414DeepImageStateE", !7, i64 0}
!118 = !{!104, !105, i64 16}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = !{!122, !123, i64 0}
!122 = !{!"_ZTSN9Imath_3_24halfE", !123, i64 0}
!123 = !{!"short", !7, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"p1 _ZTS14imath_half_uif", !11, i64 0}
!126 = !{!123, !123, i64 0}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = !{!17, !19, i64 24}
!131 = !{!17, !19, i64 16}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14}
!135 = !{!19, !19, i64 0}
!136 = distinct !{!136, !14}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!139 = distinct !{!139, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!142 = !{!138, !141}
!143 = distinct !{!143, !14}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!146 = distinct !{!146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!149 = !{!145, !148}
!150 = distinct !{!150, !14}
!151 = !{!152, !6, i64 28}
!152 = !{!"_ZTS5Rgbaz", !122, i64 0, !122, i64 2, !122, i64 4, !122, i64 6, !122, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!153 = distinct !{!153, !14}
!154 = distinct !{!154, !14}
!155 = !{i64 0, i64 2, !126, i64 2, i64 2, !126, i64 4, i64 2, !126, i64 6, i64 2, !126, i64 8, i64 2, !126, i64 12, i64 4, !62, i64 16, i64 4, !62, i64 20, i64 4, !62, i64 24, i64 4, !62, i64 28, i64 4, !62}
!156 = distinct !{!156, !14}
!157 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!158 = distinct !{!158, !14}
!159 = distinct !{!159, !14}
!160 = distinct !{!160, !14}
!161 = distinct !{!161, !14}
!162 = distinct !{!162, !14}
!163 = distinct !{!163, !14}
!164 = distinct !{!164, !14}
!165 = distinct !{!165, !14}
!166 = distinct !{!166, !14}
end_hunk_0
