Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/region_growing_3d?download=true
inline.NumInlined: 732
inline.NumDeleted: 363
begin_hunk_0_@_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb:bb.a
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !57
  store ptr %i.be, ptr %i.av, align 8, !tbaa !57
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !62
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !61
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #21
  store ptr %i.aq, ptr %0, align 8, !tbaa !62
  store i64 %i.am, ptr %i.k, align 8, !tbaa !61
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !56
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !57   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !57 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJN2cv3MatEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !72     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #20
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !alias.scope !167
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !167
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.s, align 8, !noalias !167
  store i32 -2113732604, ptr %3, align 8, !tbaa !42, !noalias !167
  store ptr %i.q, ptr %i.r, align 8, !tbaa !43, !noalias !167
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !167
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !69, !alias.scope !167 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70, !alias.scope !167
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !167
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !57, !alias.scope !169, !noalias !168
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !57, !alias.scope !168, !noalias !169
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70, !alias.scope !169, !noalias !168
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !70, !alias.scope !168, !noalias !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !169, !noalias !168
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.am, %.lr.ph.i.i.i27 ], [ %i.ag, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i29 = phi ptr [ %i.al, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.ah = load <2 x ptr>, ptr %.0911.i.i.i29, align 8, !tbaa !57, !alias.scope !171, !noalias !170
  store <2 x ptr> %i.ah, ptr %.012.i.i.i28, align 8, !tbaa !57, !alias.scope !170, !noalias !171
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70, !alias.scope !171, !noalias !170
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !70, !alias.scope !170, !noalias !171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !171, !noalias !170
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !4

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.ag, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.am, %.lr.ph.i.i.i27 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #21
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !72
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !67
  ret void

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  %i.at = extractvalue { ptr, i32 } %i.t, 0
  %i.au = call ptr @__cxa_begin_catch(ptr %i.at) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #21
  invoke void @__cxa_rethrow() #20
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.as

bb.i:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #22
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.4", align 16    ; 6 uses
  %4 = alloca %"class.std::vector.4", align 16    ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph57

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEET_SL_SL_T0_.exit"
  %i.k = icmp eq i64 %i.aq, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph57, !llvm.loop !172

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa53 = phi i64 [ %i.c, %.lr.ph ], [ %i.cz, %bb.b ]
  %storemerge28.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.l = udiv exact i64 %.lcssa53, 24             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.m = add nsw i64 %i.l, -2
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.y, %_ZNSt6vectorIiSaIiEED2Ev.exit12.i.i.i ] ; 4 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.s, ptr %4, align 16, !tbaa !57
  store ptr %i.r, ptr %i.o, align 16, !tbaa !70
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_T0_SM_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.l, ptr noundef align 8 %4)
  %i.t = load ptr, ptr %4, align 16, !tbaa !69    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 16, !tbaa !70
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit12.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit12.i.i.i:            ; preds = %bb.d, %bb.c
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.y = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !173

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_RT0_.exit.i.i": ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_RT0_.exit.i11.i", %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %storemerge28.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_RT0_.exit.i.i" ], [ %i.aa, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_RT0_.exit.i11.i" ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ad, %i.a                     ; 2 uses
  %i.af = sdiv exact i64 %i.ae, 24
  %i.ag = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ah = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  store <2 x ptr> %i.ah, ptr %i.aa, align 8, !tbaa !57
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !70
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.ag, ptr %3, align 16, !tbaa !57
  store ptr %i.ac, ptr %i.z, align 16, !tbaa !70
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_T0_SM_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.af, ptr noundef align 8 %3)
  %i.aj = load ptr, ptr %3, align 16, !tbaa !69   ; 3 uses
  %.not.i.i.i.i.i10.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i10.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_RT0_.exit.i11.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.z, align 16, !tbaa !70
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #21
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_RT0_.exit.i11.i"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_RT0_.exit.i11.i": ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ao = icmp sgt i64 %i.ae, 24
  br i1 %i.ao, label %bb.e, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !174

.lr.ph57:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2856 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 6 uses
  %.02955 = phi i64 [ %i.aq, %bb.b ], [ %2, %.lr.ph ]
  %i.ap = phi i64 [ %i.cz, %bb.b ], [ %i.c, %.lr.ph ]
  %i.aq = add nsw i64 %.02955, -1                 ; 3 uses
  %i.ar = udiv i64 %i.ap, 48
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ar ; 6 uses
  %i.at = getelementptr inbounds i8, ptr %storemerge2856, i64 -24 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !69 ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !71 ; 3 uses
  %.val2.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !69 ; 3 uses
  %i.au = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %.val3.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !71 ; 3 uses
  %i.av = ptrtoint ptr %.val1.i.i.i to i64
  %i.aw = ptrtoint ptr %.val.i.i.i to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = ptrtoint ptr %.val3.i.i.i to i64
  %i.az = ptrtoint ptr %.val2.i.i.i to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp ugt i64 %i.ax, %i.ba
  %.val2.i28.i.i = load ptr, ptr %i.at, align 8, !tbaa !69 ; 3 uses
  %i.bc = getelementptr i8, ptr %storemerge2856, i64 -16 ; 3 uses
  %.val3.i29.i.i = load ptr, ptr %i.bc, align 8, !tbaa !71 ; 3 uses
  %i.bd = ptrtoint ptr %.val3.i29.i.i to i64
  %i.be = ptrtoint ptr %.val2.i28.i.i to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  br i1 %i.bb, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph57
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !70
  %i.bk = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  store ptr %.val2.i.i.i, ptr %0, align 8, !tbaa !69
  store ptr %.val3.i.i.i, ptr %i.g, align 8, !tbaa !71
  store <2 x ptr> %i.bk, ptr %i.as, align 8, !tbaa !57
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
  %i.bl = icmp ugt i64 %i.ax, %i.bf
  %i.bm = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !71  ; 2 uses
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %.val2.i28.i.i, ptr %0, align 8, !tbaa !69
  store ptr %.val3.i29.i.i, ptr %i.g, align 8, !tbaa !71
  %i.bp = getelementptr inbounds i8, ptr %storemerge2856, i64 -8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !70
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !70
  store ptr %i.bm, ptr %i.at, align 8, !tbaa !69
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !71
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  store ptr %.val.i.i.i, ptr %0, align 8, !tbaa !69
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !71
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !70
  store ptr %i.br, ptr %i.h, align 8, !tbaa !70
  store ptr %i.bm, ptr %i.e, align 8, !tbaa !69
  store ptr %i.bn, ptr %i.f, align 8, !tbaa !71
  store ptr %i.bo, ptr %i.i, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph57
  %i.bs = icmp ugt i64 %i.ax, %i.bf
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !70
  store ptr %i.bu, ptr %i.h, align 8, !tbaa !70
  %5 = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  store ptr %.val.i.i.i, ptr %0, align 8, !tbaa !69
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !71
  store <2 x ptr> %5, ptr %i.e, align 8, !tbaa !57
  store ptr %i.bt, ptr %i.i, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.bv = icmp ugt i64 %i.ba, %i.bf
  %i.bw = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !71  ; 2 uses
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.val2.i28.i.i, ptr %0, align 8, !tbaa !69
  store ptr %.val3.i29.i.i, ptr %i.g, align 8, !tbaa !71
  %i.bz = getelementptr inbounds i8, ptr %storemerge2856, i64 -8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !70
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !70
  store ptr %i.bw, ptr %i.at, align 8, !tbaa !69
  store ptr %i.bx, ptr %i.bc, align 8, !tbaa !71
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  store ptr %.val2.i.i.i, ptr %0, align 8, !tbaa !69
  store ptr %.val3.i.i.i, ptr %i.g, align 8, !tbaa !71
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !70
  store ptr %i.cc, ptr %i.h, align 8, !tbaa !70
  store ptr %i.bw, ptr %i.as, align 8, !tbaa !69
  store ptr %i.bx, ptr %i.au, align 8, !tbaa !71
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.s
  %.sroa.014.0.i.i = phi ptr [ %i.cl, %bb.s ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.s ], [ %storemerge2856, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.val2.i.i13.i = load ptr, ptr %0, align 8, !tbaa !69
  %.val3.i.i14.i = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.cd = ptrtoint ptr %.val3.i.i14.i to i64
  %i.ce = ptrtoint ptr %.val2.i.i13.i to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.cl, %bb.q ] ; 11 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !69 ; 2 uses
  %i.cg = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8
  %.val1.i.i16.i = load ptr, ptr %i.cg, align 8, !tbaa !71 ; 2 uses
  %i.ch = ptrtoint ptr %.val1.i.i16.i to i64
  %i.ci = ptrtoint ptr %.val.i.i15.i to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp ugt i64 %i.cj, %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24 ; 2 uses
  br i1 %i.ck, label %bb.q, label %.preheader.i.i.preheader, !llvm.loop !175

.preheader.i.i.preheader:                         ; preds = %bb.q
  %i.cm = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %.val2.i10.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !69 ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %.val3.i11.i.i = load ptr, ptr %i.cn, align 8, !tbaa !71 ; 2 uses
  %i.co = ptrtoint ptr %.val3.i11.i.i to i64
  %i.cp = ptrtoint ptr %.val2.i10.i.i to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cf, %i.cq
  br i1 %i.cr, label %.preheader.i.i, label %bb.r, !llvm.loop !176

bb.r:                                             ; preds = %.preheader.i.i
  %i.cs = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cs, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEET_SL_SL_T0_.exit"

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !70
  store ptr %.val2.i10.i.i, ptr %.sroa.014.1.i.i, align 8, !tbaa !69
  store ptr %.val3.i11.i.i, ptr %i.cm, align 8, !tbaa !71
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !70
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !70
  store ptr %.val.i.i15.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !69
  store ptr %.val1.i.i16.i, ptr %i.ct, align 8, !tbaa !71
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !177

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEET_SL_SL_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2856, i64 noundef %i.aq)
  %i.cy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a                     ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 384
  br i1 %i.da, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !172

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_SL_SL_RT0_.exit.i11.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN2cv19RegionGrowing3DImpl7segmentERKNSB_12_OutputArrayESF_RKNSB_11_InputArrayESI_SI_E3$_0EEEvT_T0_SM_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
  %.045 = phi i64 [ %spec.select, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val1.i = load ptr, ptr %i.i, align 8, !tbaa !71
  %.val2.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.k = ptrtoint ptr %.val1.i to i64
  %i.l = ptrtoint ptr %.val.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ptrtoint ptr %.val3.i to i64
  %i.o = ptrtoint ptr %.val2.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ugt i64 %i.m, %i.p
  %spec.select = select i1 %i.q, i64 %i.g, i64 %i.e ; 4 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %.045 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.w = load <2 x ptr>, ptr %i.r, align 8, !tbaa !57
  store <2 x ptr> %i.w, ptr %i.s, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  store ptr %i.y, ptr %i.u, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit

_ZNSt6vectorIiSaIiEEaSEOS1_.exit:                 ; preds = %.lr.ph, %bb.b
  %i.ac = icmp slt i64 %spec.select, %i.b
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !178

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit ] ; 5 uses
  %i.ad = and i64 %2, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit26

bb.c:                                             ; preds = %._crit_edge
  %i.af = add nsw i64 %2, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit26

bb.d:                                             ; preds = %bb.c
  %i.ai = shl nsw i64 %.0.lcssa, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 3 uses
  %i.ak = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70
  %i.ap = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !57
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !70
  %.not.i.i.i.i.i25 = icmp eq ptr %i.am, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i25, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit26, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.au) #21
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit26

_ZNSt6vectorIiSaIiEEaSEOS1_.exit26:               ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.c ], [ %i.aj, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !57
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.az = icmp sgt i64 %.1, %1
  br i1 %i.az, label %.lr.ph.i.preheader, label %.critedge.i
end_hunk_0
