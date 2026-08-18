inline.NumInlined: 1810
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK2cv10OctreeNode16KNNSearchRecurseERKNS_7Point3_IfEEiRfRSt6vectorISt5tupleIJfS2_S2_EESaIS8_EE:bb.a
          cleanup
  br label %bb.bv

._crit_edge:                                      ; preds = %bb.aw, %.preheader
  %i.iw = load ptr, ptr %4, align 8, !tbaa !290   ; 14 uses
  %i.ix = load ptr, ptr %i.hc, align 8, !tbaa !290 ; 7 uses
  %.not.i.i60 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i60, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit", label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 2 uses
  %i.jb = sdiv exact i64 %i.ja, 28
  %i.jc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jb, i1 true)
  %i.jd = shl nuw nsw i64 %i.jc, 1
  %i.je = xor i64 %i.jd, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_SL_T0_T1_"(ptr %i.iw, ptr %i.ix, i64 noundef %i.je)
  %i.jf = icmp sgt i64 %i.ja, 448
  br i1 %i.jf, label %.lr.ph.i.i.i.i61, label %.preheader.i26.i.i.i

.lr.ph.i.i.i.i61:                                 ; preds = %bb.ai
  %i.jg = getelementptr i8, ptr %i.iw, i64 24     ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i61
  %indvar225.a = phi i64 [ %indvar.next226.a, %bb.al ], [ 0, %.lr.ph.i.i.i.i61 ] ; 3 uses
  %.sroa.09.021.i.idx.i.i.i = phi i64 [ %.sroa.09.021.i.add.i.i.i, %bb.al ], [ 28, %.lr.ph.i.i.i.i61 ] ; 3 uses
  %.pn20.i.i.i.i = phi ptr [ %.sroa.09.021.i.ptr.i.i.i, %bb.al ], [ %i.iw, %.lr.ph.i.i.i.i61 ] ; 7 uses
  %.sroa.09.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.sroa.09.021.i.idx.i.i.i ; 9 uses
  %i.ji = getelementptr i8, ptr %.pn20.i.i.i.i, i64 52
  %.val.i.i.i.i.i62 = load float, ptr %i.ji, align 4, !tbaa !38 ; 5 uses
  %.val1.i.i.i.i.i63 = load float, ptr %i.jg, align 4, !tbaa !38
  %i.jj = fcmp olt float %.val.i.i.i.i.i62, %.val1.i.i.i.i.i63
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 40 ; 2 uses
  br i1 %i.jj, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %bb.ak

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.09.021.i.ptr.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.12..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.jk, i64 12, i1 false), !tbaa.struct !37
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 56
  %i.jm = udiv exact i64 %.sroa.09.021.i.idx.i.i.i, 28 ; 2 uses
  %i.jn = and i64 %indvar225.a, 1
  %lcmp.mod228.not.not.a = icmp eq i64 %i.jn, 0
  br i1 %lcmp.mod228.not.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i69.prol, label %.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i69.prol:                  ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %i.jo = getelementptr inbounds i8, ptr %.sroa.09.021.i.ptr.i.i.i, i64 -28 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 28 ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.sroa.09.021.i.ptr.i.i.i, i64 -4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !38
  %i.js = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 52
  store float %i.jr, ptr %i.js, align 4, !tbaa !38
  %i.jt = getelementptr inbounds i8, ptr %.sroa.09.021.i.ptr.i.i.i, i64 -16
  %i.ju = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ju, ptr noundef nonnull align 4 dereferenceable(12) %i.jt, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jp, ptr noundef nonnull align 4 dereferenceable(28) %i.jo, i64 12, i1 false), !tbaa.struct !37
  %i.jv = add nsw i64 %i.jm, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i69.prol, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.jm, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.jv, %.lr.ph.i.i.i.i.i.i.i.i.i69.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.jl, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i.i69.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i.i69.prol ]
  %i.jw = icmp eq i64 %indvar225.a, 0
  br i1 %i.jw, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i69

.lr.ph.i.i.i.i.i.i.i.i.i69:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i69
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i.i69 ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.i.i.i.i69 ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i.i.i.i.i69 ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -28
  %i.jy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -28
  %i.jz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !38
  %i.kb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -4
  store float %i.ka, ptr %i.kb, align 4, !tbaa !38
  %i.kc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -16
  %i.kd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kd, ptr noundef nonnull align 4 dereferenceable(12) %i.kc, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jy, ptr noundef nonnull align 4 dereferenceable(28) %i.jx, i64 12, i1 false), !tbaa.struct !37
  %i.ke = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56 ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !38
  %i.ki = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32
  store float %i.kh, ptr %i.ki, align 4, !tbaa !38
  %i.kj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -44
  %i.kk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kk, ptr noundef nonnull align 4 dereferenceable(12) %i.kj, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kf, ptr noundef nonnull align 4 dereferenceable(28) %i.ke, i64 12, i1 false), !tbaa.struct !37
  %i.kl = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -2
  %i.km = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.km, label %.lr.ph.i.i.i.i.i.i.i.i.i69, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i, !llvm.loop !292

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i.i.i.i.i69.prol.loopexit
  store float %.val.i.i.i.i.i62, ptr %i.jg, align 4, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jh, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.12..sroa_idx.i.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.iw, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.09.021.i.ptr.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.03.12..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.jk, i64 12, i1 false), !tbaa.struct !37
  %i.kn = getelementptr i8, ptr %.pn20.i.i.i.i, i64 24
  %.val2.i8.i.i.i.i.i64 = load float, ptr %i.kn, align 4, !tbaa !38 ; 2 uses
  %i.ko = fcmp olt float %.val.i.i.i.i.i62, %.val2.i8.i.i.i.i.i64
  br i1 %i.ko, label %.lr.ph.i.i.i.i.i66, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i66:                               ; preds = %bb.ak, %.lr.ph.i.i.i.i.i66
  %.val2.i10.i.i.i.i.i67 = phi float [ %.val2.i.i.i.i.i.i68, %.lr.ph.i.i.i.i.i66 ], [ %.val2.i8.i.i.i.i.i64, %bb.ak ]
  %.sroa.05.09.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i66 ], [ %.sroa.09.021.i.ptr.i.i.i, %bb.ak ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i.i.i, i64 -28 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i.i, i64 24
  store float %.val2.i10.i.i.i.i.i67, ptr %i.kp, align 4, !tbaa !38
  %i.kq = getelementptr inbounds i8, ptr %.sroa.05.09.i.i.i.i.i, i64 -16
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kr, ptr noundef nonnull align 4 dereferenceable(12) %i.kq, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.05.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !37
  %i.ks = getelementptr i8, ptr %.sroa.05.09.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i68 = load float, ptr %i.ks, align 4, !tbaa !38 ; 2 uses
  %i.kt = fcmp olt float %.val.i.i.i.i.i62, %.val2.i.i.i.i.i.i68
  br i1 %i.kt, label %.lr.ph.i.i.i.i.i66, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i.i.i.i", !llvm.loop !293

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i66, %bb.ak
  %.sroa.05.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.09.021.i.ptr.i.i.i, %bb.ak ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i66 ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i.i.i, i64 24
  store float %.val.i.i.i.i.i62, ptr %i.ku, align 4, !tbaa !38
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kv, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.03.12..sroa_idx.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i)
  br label %bb.al

bb.al:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i
  %.sroa.09.021.i.add.i.i.i = add nuw nsw i64 %.sroa.09.021.i.idx.i.i.i, 28 ; 2 uses
  %.not.i.i.i.i65 = icmp eq i64 %.sroa.09.021.i.add.i.i.i, 448
  %indvar.next226.a = add i64 %indvar225.a, 1
  br i1 %.not.i.i.i.i65, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_SL_T0_.exit.i.i.i", label %bb.aj, !llvm.loop !294

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_SL_T0_.exit.i.i.i": ; preds = %bb.al
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iw, i64 448 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.kw, %i.ix
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_SL_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i16.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.lj, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i16.i.i.i" ], [ %i.kw, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_SL_T0_.exit.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.07.i.i.i.i, i64 12, i1 false), !tbaa.struct !37
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.03.12..sroa_idx.i.i14.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.kx, i64 12, i1 false), !tbaa.struct !37
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !38 ; 3 uses
  %i.la = getelementptr i8, ptr %.sroa.0.07.i.i.i.i, i64 -4
  %.val2.i8.i.i15.i.i.i = load float, ptr %i.la, align 4, !tbaa !38 ; 2 uses
  %i.lb = fcmp olt float %i.kz, %.val2.i8.i.i15.i.i.i
  br i1 %i.lb, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i16.i.i.i"

.lr.ph.i.i19.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i19.i.i.i
  %.val2.i10.i.i20.i.i.i = phi float [ %.val2.i.i.i23.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.val2.i8.i.i15.i.i.i, %.lr.ph.i13.i.i.i ]
  %.sroa.05.09.i.i21.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i22.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.09.i.i21.i.i.i, i64 -28 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i21.i.i.i, i64 24
  store float %.val2.i10.i.i20.i.i.i, ptr %i.lc, align 4, !tbaa !38
  %i.ld = getelementptr inbounds i8, ptr %.sroa.05.09.i.i21.i.i.i, i64 -16
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i21.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.le, ptr noundef nonnull align 4 dereferenceable(12) %i.ld, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.05.09.i.i21.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.0.i.i22.i.i.i, i64 12, i1 false), !tbaa.struct !37
  %i.lf = getelementptr i8, ptr %.sroa.05.09.i.i21.i.i.i, i64 -32
  %.val2.i.i.i23.i.i.i = load float, ptr %i.lf, align 4, !tbaa !38 ; 2 uses
  %i.lg = fcmp olt float %i.kz, %.val2.i.i.i23.i.i.i
  br i1 %i.lg, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i16.i.i.i", !llvm.loop !293

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i16.i.i.i": ; preds = %.lr.ph.i.i19.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.05.0.lcssa.i.i17.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.0.i.i22.i.i.i, %.lr.ph.i.i19.i.i.i ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i17.i.i.i, i64 24
  store float %i.kz, ptr %i.lh, align 4, !tbaa !38
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i17.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.li, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.03.12..sroa_idx.i.i14.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.0.lcssa.i.i17.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i)
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 28 ; 2 uses
  %.not.i18.i.i.i = icmp eq ptr %i.lj, %i.ix
  br i1 %.not.i18.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !295

.preheader.i26.i.i.i:                             ; preds = %bb.ai
  %.sroa.09.018.i27.i.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 28 ; 2 uses
  %.not19.i28.i.i.i = icmp eq ptr %.sroa.09.018.i27.i.i.i, %i.ix
  br i1 %.not19.i28.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit", label %.lr.ph.i29.i.i.i

.lr.ph.i29.i.i.i:                                 ; preds = %.preheader.i26.i.i.i
  %i.lk = getelementptr i8, ptr %i.iw, i64 24     ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph.i29.i.i.i
  %indvar225 = phi i64 [ %indvar.next226, %bb.ap ], [ 0, %.lr.ph.i29.i.i.i ] ; 3 uses
  %.sroa.09.021.i32.i.i.i = phi ptr [ %.sroa.09.0.i39.i.i.i, %bb.ap ], [ %.sroa.09.018.i27.i.i.i, %.lr.ph.i29.i.i.i ] ; 11 uses
  %.pn20.i33.i.i.i = phi ptr [ %.sroa.09.021.i32.i.i.i, %bb.ap ], [ %i.iw, %.lr.ph.i29.i.i.i ] ; 7 uses
  %i.lm = getelementptr i8, ptr %.pn20.i33.i.i.i, i64 52 ; 2 uses
  %.val.i.i34.i.i.i = load float, ptr %i.lm, align 4, !tbaa !38 ; 4 uses
  %.val1.i.i35.i.i.i = load float, ptr %i.lk, align 4, !tbaa !38
  %i.ln = fcmp olt float %.val.i.i34.i.i.i, %.val1.i.i35.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i, i64 40 ; 2 uses
  br i1 %i.ln, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i25.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.09.021.i32.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.12..sroa_idx.i31.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.lo, i64 12, i1 false), !tbaa.struct !37
  %i.lp = load float, ptr %i.lm, align 4, !tbaa !38
  %i.lq = ptrtoint ptr %.sroa.09.021.i32.i.i.i to i64
  %i.lr = sub i64 %i.lq, %i.iz                    ; 2 uses
  %i.ls = icmp sgt i64 %i.lr, 0
  br i1 %i.ls, label %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i46.i.i.i

.lr.ph.preheader.i.i.i.i.i.i47.i.i.i:             ; preds = %bb.an
  %11 = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i, i64 56
  %12 = udiv exact i64 %i.lr, 28                  ; 2 uses
  %13 = and i64 %indvar225, 1
  %lcmp.mod228.not.not = icmp eq i64 %13, 0
  br i1 %lcmp.mod228.not.not, label %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i.a, label %.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit

.lr.ph.preheader.i.i.i.i.i.i47.i.i.i.a:           ; preds = %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i
  %14 = getelementptr inbounds i8, ptr %.sroa.09.021.i32.i.i.i, i64 -28 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i, i64 28 ; 2 uses
  %16 = getelementptr inbounds i8, ptr %.sroa.09.021.i32.i.i.i, i64 -4
  %17 = load float, ptr %16, align 4, !tbaa !38
  %18 = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i, i64 52
  store float %17, ptr %18, align 4, !tbaa !38
  %19 = getelementptr inbounds i8, ptr %.sroa.09.021.i32.i.i.i, i64 -16
  %i.lt = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lt, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %15, ptr noundef nonnull align 4 dereferenceable(28) %14, i64 12, i1 false), !tbaa.struct !37
  %20 = add nsw i64 %12, -1
  br label %.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit:         ; preds = %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i.a, %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i
  %.010.i.i.i.i.i.i49.i.i.i.unr = phi i64 [ %12, %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i ], [ %20, %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i.a ]
  %.069.i.i.i.i.i.i50.i.i.i.unr = phi ptr [ %11, %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i ], [ %15, %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i.a ]
  %.078.i.i.i.i.i.i51.i.i.i.unr = phi ptr [ %.sroa.09.021.i32.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i ], [ %14, %.lr.ph.preheader.i.i.i.i.i.i47.i.i.i.a ]
  %21 = icmp eq i64 %indvar225, 0
  br i1 %21, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i46.i.i.i, label %.lr.ph.i.i.i.i.i.i48.i.i.i

.lr.ph.i.i.i.i.i.i48.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i48.i.i.i
  %.010.i.i.i.i.i.i49.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i.i.i.i.i48.i.i.i ], [ %.010.i.i.i.i.i.i49.i.i.i.unr, %.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i50.i.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i48.i.i.i ], [ %.069.i.i.i.i.i.i50.i.i.i.unr, %.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i51.i.i.i = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i48.i.i.i ], [ %.078.i.i.i.i.i.i51.i.i.i.unr, %.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit ] ; 6 uses
  %22 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51.i.i.i, i64 -28
  %23 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50.i.i.i, i64 -28
  %24 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51.i.i.i, i64 -4
  %25 = load float, ptr %24, align 4, !tbaa !38
  %26 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50.i.i.i, i64 -4
  store float %25, ptr %26, align 4, !tbaa !38
  %27 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51.i.i.i, i64 -16
  %28 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %28, ptr noundef nonnull align 4 dereferenceable(12) %27, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %23, ptr noundef nonnull align 4 dereferenceable(28) %22, i64 12, i1 false), !tbaa.struct !37
  %i.lu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51.i.i.i, i64 -56 ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50.i.i.i, i64 -56 ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51.i.i.i, i64 -32
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !38
  %i.ly = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50.i.i.i, i64 -32
  store float %i.lx, ptr %i.ly, align 4, !tbaa !38
  %i.lz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51.i.i.i, i64 -44
  %i.ma = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50.i.i.i, i64 -44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ma, ptr noundef nonnull align 4 dereferenceable(12) %i.lz, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lv, ptr noundef nonnull align 4 dereferenceable(28) %i.lu, i64 12, i1 false), !tbaa.struct !37
  %i.mb = add nsw i64 %.010.i.i.i.i.i.i49.i.i.i, -2
  %29 = icmp sgt i64 %.010.i.i.i.i.i.i49.i.i.i, 2
  br i1 %29, label %.lr.ph.i.i.i.i.i.i48.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i46.i.i.i, !llvm.loop !292

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i46.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i48.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i48.i.i.i, %bb.an
  store float %i.lp, ptr %i.lk, align 4, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ll, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.12..sroa_idx.i31.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.iw, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i25.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i25.i.i.i)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i24.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i24.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.09.021.i32.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.03.12..sroa_idx.i.i30.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.lo, i64 12, i1 false), !tbaa.struct !37
  %i.mc = getelementptr i8, ptr %.pn20.i33.i.i.i, i64 24
  %.val2.i8.i.i36.i.i.i = load float, ptr %i.mc, align 4, !tbaa !38 ; 2 uses
  %i.md = fcmp olt float %.val.i.i34.i.i.i, %.val2.i8.i.i36.i.i.i
  br i1 %i.md, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i37.i.i.i"

.lr.ph.i.i41.i.i.i:                               ; preds = %bb.ao, %.lr.ph.i.i41.i.i.i
  %.val2.i10.i.i42.i.i.i = phi float [ %.val2.i.i.i45.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.val2.i8.i.i36.i.i.i, %bb.ao ]
  %.sroa.05.09.i.i43.i.i.i = phi ptr [ %.sroa.0.0.i.i44.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.sroa.09.021.i32.i.i.i, %bb.ao ] ; 6 uses
  %.sroa.0.0.i.i44.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.09.i.i43.i.i.i, i64 -28 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i43.i.i.i, i64 24
  store float %.val2.i10.i.i42.i.i.i, ptr %i.me, align 4, !tbaa !38
  %i.mf = getelementptr inbounds i8, ptr %.sroa.05.09.i.i43.i.i.i, i64 -16
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i43.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mg, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.05.09.i.i43.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.0.i.i44.i.i.i, i64 12, i1 false), !tbaa.struct !37
  %i.mh = getelementptr i8, ptr %.sroa.05.09.i.i43.i.i.i, i64 -32
  %.val2.i.i.i45.i.i.i = load float, ptr %i.mh, align 4, !tbaa !38 ; 2 uses
  %i.mi = fcmp olt float %.val.i.i34.i.i.i, %.val2.i.i.i45.i.i.i
  br i1 %i.mi, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i37.i.i.i", !llvm.loop !293

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i37.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i, %bb.ao
  %.sroa.05.0.lcssa.i.i38.i.i.i = phi ptr [ %.sroa.09.021.i32.i.i.i, %bb.ao ], [ %.sroa.0.0.i.i44.i.i.i, %.lr.ph.i.i41.i.i.i ] ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i38.i.i.i, i64 24
  store float %.val.i.i34.i.i.i, ptr %i.mj, align 4, !tbaa !38
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i38.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mk, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.03.12..sroa_idx.i.i30.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.0.lcssa.i.i38.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i24.i.i.i, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i24.i.i.i)
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i37.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i46.i.i.i
  %.sroa.09.0.i39.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i32.i.i.i, i64 28 ; 2 uses
  %.not.i40.i.i.i = icmp eq ptr %.sroa.09.0.i39.i.i.i, %i.ix
  %indvar.next226 = add i64 %indvar225, 1
  br i1 %.not.i40.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit", label %bb.am, !llvm.loop !294

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aw
  %i.ml = phi ptr [ %i.nq, %bb.aw ], [ %i.is, %.lr.ph.preheader ] ; 2 uses
  %i.mm = phi ptr [ %i.nr, %bb.aw ], [ %i.ir, %.lr.ph.preheader ]
  %.036122 = phi i64 [ %i.ns, %bb.aw ], [ 0, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.ml, i64 %.036122 ; 4 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !165
  %i.mp = load float, ptr %1, align 4, !tbaa !165
  %i.mq = fsub float %i.mo, %i.mp                 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !166
  %i.mt = load float, ptr %i.c, align 4, !tbaa !166
  %i.mu = fsub float %i.ms, %i.mt                 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !44
  %i.mx = load float, ptr %i.d, align 4, !tbaa !44
  %i.my = fsub float %i.mw, %i.mx                 ; 2 uses
  %i.mz = fmul float %i.mu, %i.mu
  %i.na = call float @llvm.fmuladd.f32(float %i.mq, float %i.mq, float %i.mz)
  %i.nb = call noundef float @llvm.fmuladd.f32(float %i.my, float %i.my, float %i.na) ; 4 uses
  store float %i.nb, ptr %i.a, align 4, !tbaa !38
  %i.nc = call float @llvm.fmuladd.f32(float %i.nb, float f0x34000000, float %i.nb)
  %i.nd = load float, ptr %3, align 4, !tbaa !38
  %i.ne = fcmp ugt float %i.nc, %i.nd
  br i1 %i.ne, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.mn, i64 12, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !38
  store float 0.000000e+00, ptr %i.hb, align 8, !tbaa !44
  %i.nf = load ptr, ptr %i.it, align 8, !tbaa !43 ; 2 uses
  %i.ng = load ptr, ptr %i.iu, align 8, !tbaa !43
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %i.nf, i64 %.036122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.ni, i64 12, i1 false), !tbaa.struct !37
  br label %bb.at

bb.as:                                            ; preds = %bb.av
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.bv

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.nk = load ptr, ptr %i.hc, align 8, !tbaa !296 ; 5 uses
  %i.nl = load ptr, ptr %i.hd, align 8, !tbaa !298
  %.not.i70 = icmp eq ptr %i.nk, %i.nl
  br i1 %.not.i70, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.nk, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !37
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nm, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !37
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  store float %i.nb, ptr %i.nn, align 4, !tbaa !226
  %i.no = load ptr, ptr %i.hc, align 8, !tbaa !296
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 28
  store ptr %i.np, ptr %i.hc, align 8, !tbaa !296
  br label %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE12emplace_backIJRfRS3_S9_EEERS4_DpOT_.exit

bb.av:                                            ; preds = %bb.at
  invoke void @_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE17_M_realloc_insertIJRfRS3_S9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.nk, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10)
          to label %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE12emplace_backIJRfRS3_S9_EEERS4_DpOT_.exit unwind label %bb.as

_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE12emplace_backIJRfRS3_S9_EEERS4_DpOT_.exit: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pre136 = load ptr, ptr %i.iq, align 8, !tbaa !148
  %.pre137 = load ptr, ptr %i.ip, align 8, !tbaa !150
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE12emplace_backIJRfRS3_S9_EEERS4_DpOT_.exit, %.lr.ph
  %i.nq = phi ptr [ %.pre137, %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE12emplace_backIJRfRS3_S9_EEERS4_DpOT_.exit ], [ %i.ml, %.lr.ph ] ; 2 uses
  %i.nr = phi ptr [ %.pre136, %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE12emplace_backIJRfRS3_S9_EEERS4_DpOT_.exit ], [ %i.mm, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ns = add nuw i64 %.036122, 1                 ; 2 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.nq to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = sdiv exact i64 %i.nv, 12
  %i.nx = icmp ult i64 %i.ns, %i.nw
  br i1 %i.nx, label %.lr.ph, label %._crit_edge, !llvm.loop !299

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit": ; preds = %bb.ap, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_T0_.exit.i16.i.i.i", %.preheader.i26.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EEEvT_SL_T0_.exit.i.i.i", %._crit_edge
  %i.ny = load ptr, ptr %i.hc, align 8, !tbaa !296 ; 5 uses
  %i.nz = load ptr, ptr %4, align 8, !tbaa !300   ; 2 uses
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = ptrtoint ptr %i.nz to i64               ; 5 uses
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = sdiv exact i64 %i.oc, 28                ; 4 uses
  %i.oe = trunc i64 %i.od to i32
  %i.of = icmp slt i32 %2, %i.oe
  br i1 %i.of, label %bb.ax, label %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit

bb.ax:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit"
  %i.og = icmp ult i64 %i.od, %i.he
  br i1 %i.og, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.oh = sub nuw nsw i64 %i.he, %i.od
  invoke void @_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.oh)
          to label %._ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit_crit_edge unwind label %bb.ah

._ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit_crit_edge: ; preds = %bb.ay
  %.pre138 = load ptr, ptr %i.hc, align 8, !tbaa !296
  %.pre139 = load ptr, ptr %4, align 8, !tbaa !300
  %.pre140 = ptrtoint ptr %.pre139 to i64
  br label %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit

bb.az:                                            ; preds = %bb.ax
  %i.oi = icmp ugt i64 %i.od, %i.he
  br i1 %i.oi, label %bb.ba, label %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit

bb.ba:                                            ; preds = %bb.az
  %i.oj = getelementptr inbounds nuw [28 x i8], ptr %i.nz, i64 %i.he ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.ny, %i.oj
  br i1 %.not.i.i72, label %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt5tupleIJfN2cv7Point3_IfEES3_EES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt5tupleIJfN2cv7Point3_IfEES3_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.ba
  store ptr %i.oj, ptr %i.hc, align 8, !tbaa !296
  br label %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit

_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit: ; preds = %._ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPSt5tupleIJfN2cv7Point3_IfEES3_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.ba, %bb.az, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit"
  %.pre-phi = phi i64 [ %.pre140, %._ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit_crit_edge ], [ %i.ob, %_ZSt8_DestroyIPSt5tupleIJfN2cv7Point3_IfEES3_EES4_EvT_S6_RSaIT0_E.exit.i.i ], [ %i.ob, %bb.ba ], [ %i.ob, %bb.az ], [ %i.ob, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit" ]
  %i.ok = phi ptr [ %.pre138, %._ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit_crit_edge ], [ %i.oj, %_ZSt8_DestroyIPSt5tupleIJfN2cv7Point3_IfEES3_EES4_EvT_S6_RSaIT0_E.exit.i.i ], [ %i.ny, %bb.ba ], [ %i.ny, %bb.az ], [ %i.ny, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJfN2cv7Point3_IfEES5_EESt6vectorIS6_SaIS6_EEEEZNKS3_10OctreeNode16KNNSearchRecurseERKS5_iRfRSA_E3$_1EvT_SI_T0_.exit" ] ; 2 uses
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = sub i64 %i.ol, %.pre-phi
  %i.on = sdiv exact i64 %i.om, 28
  %i.oo = trunc i64 %i.on to i32
  %i.op = icmp eq i32 %2, %i.oo
  br i1 %i.op, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit
  %i.oq = getelementptr inbounds i8, ptr %i.ok, i64 -4
  %i.or = load float, ptr %i.oq, align 4, !tbaa !38
  store float %i.or, ptr %3, align 4, !tbaa !38
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt5tupleIJfN2cv7Point3_IfEES3_EESaIS4_EE6resizeEm.exit, %bb.bb, %bb.ag
  %i.os = getelementptr inbounds i8, ptr %.sroa.11.2124, i64 -8 ; 2 uses
  %i.ot = icmp eq ptr %.sroa.089.1, %i.os
  br i1 %i.ot, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ou = getelementptr inbounds i8, ptr %.sroa.11.2124, i64 -12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !34
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ow ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !41
  store ptr %i.oy, ptr %8, align 16, !tbaa !41
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !24 ; 4 uses
  %i.pb = load ptr, ptr %i.gs, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.pa, %i.pb
  br i1 %.not.i.i.i.i74, label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit.backedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not7.i.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 3 uses
  %i.pd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i75 = icmp eq i8 %i.pd, 0
  br i1 %.not.i.i.i.i.i75, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pe = load i32, ptr %i.pc, align 4, !tbaa !34
  %i.pf = add nsw i32 %i.pe, 1
  store i32 %i.pf, ptr %i.pc, align 4, !tbaa !34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.pg = atomicrmw volatile add ptr %i.pc, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.gs, align 8, !tbaa !24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.be
  %i.ph = phi ptr [ %i.pb, %bb.be ], [ %i.pb, %bb.bg ], [ %.pr.pre.i.i.i.i, %bb.bh ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ph, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 4 uses
  %i.pj = load atomic i64, ptr %i.pi acquire, align 8 ; 2 uses
  %i.pk = icmp eq i64 %i.pj, 4294967297
  %i.pl = trunc i64 %i.pj to i32                  ; 2 uses
  br i1 %i.pk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.pi, align 8, !tbaa !27
end_hunk_0
