Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/min_enclosing_convex_polygon?download=true
inline.NumInlined: 1463
inline.NumDeleted: 622
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag:bb.a
bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.g, label %_ZSt13move_backwardIPN25minEnclosingConvexPolygon4SideES2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ac, ptr noundef nonnull align 4 dereferenceable(5) %1, i64 5, i1 false), !tbaa.struct !146
  br label %_ZSt13move_backwardIPN25minEnclosingConvexPolygon4SideES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN25minEnclosingConvexPolygon4SideES2_ET0_T_S4_S3_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ad = icmp sgt i64 %i.c, 8
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !145

bb.h:                                             ; preds = %_ZSt13move_backwardIPN25minEnclosingConvexPolygon4SideES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN25minEnclosingConvexPolygon4SideES2_ET0_T_S4_S3_.exit
  %i.ae = icmp eq i64 %i.c, 8
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef nonnull align 4 dereferenceable(5) %2, i64 5, i1 false), !tbaa.struct !146
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.af, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.ag = load i64, ptr %.sroa.04.08.i.i.i.i, align 4
  store i64 %i.ag, ptr %.09.i.i.i.i, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ah, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !299

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !143
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ak = sub nuw nsw i64 %i.d, %i.n
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  store ptr %i.al, ptr %i.g, align 8, !tbaa !143
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i52 ], [ %i.al, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i52 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit ] ; 2 uses
  %i.am = load i64, ptr %.sroa.08.012.i.i.i.i.i54, align 4
  store i64 %i.am, ptr %.013.i.i.i.i.i53, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 8
  %.not.i.i.i.i.i55 = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !298

_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52
  %.pre99 = load ptr, ptr %i.g, align 8, !tbaa !143
  br label %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57

_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit
  %i.ap = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57.loopexit ], [ %i.al, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.m
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !143
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !145

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  %i.as = icmp eq i64 %i.m, 8
  br i1 %i.as, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef nonnull align 4 dereferenceable(5) %2, i64 5, i1 false), !tbaa.struct !146
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.n:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %0, align 8, !tbaa !141   ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = sub i64 %i.j, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 4 uses
  %i.ax = sub nsw i64 1152921504606846975, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.d
  br i1 %i.ay, label %bb.o, label %_ZNKSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #28
  unreachable

_ZNKSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.d)
  %i.az = add nsw i64 %.sroa.speculated.i, %i.aw  ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.aw
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #29
  br label %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.bf = phi ptr [ %i.be, %bb.p ], [ null, %_ZNKSt6vectorIN25minEnclosingConvexPolygon4SideESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.at, %1
  br i1 %.not11.i.i.i.i.i59, label %.lr.ph.i.i.i.i66.preheader, label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i60 ], [ %i.bf, %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i60 ], [ %i.at, %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %i.bg = load i64, ptr %.sroa.08.012.i.i.i.i.i62, align 4
  store i64 %i.bg, ptr %.013.i.i.i.i.i61, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.bh, %1
  br i1 %.not.i.i.i.i.i63, label %.lr.ph.i.i.i.i66.preheader, label %.lr.ph.i.i.i.i.i60, !llvm.loop !298

.lr.ph.i.i.i.i66.preheader:                       ; preds = %.lr.ph.i.i.i.i.i60, %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit
  %.09.i.i.i.i67.ph = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE11_M_allocateEm.exit ], [ %i.bi, %.lr.ph.i.i.i.i.i60 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i66 ], [ %2, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.bj = load i64, ptr %.sroa.04.08.i.i.i.i68, align 4
  store i64 %i.bj, ptr %.09.i.i.i.i67, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 3 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.bk, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !299

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i73 ], [ %i.bl, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i73 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71 ] ; 2 uses
  %i.bm = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 4
  store i64 %i.bm, ptr %.013.i.i.i.i.i74, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.bn, %i.h
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !298

_ZSt34__uninitialized_move_if_noexcept_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.bl, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit71 ], [ %i.bo, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.at, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit78
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !142
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.br) #30
  br label %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN25minEnclosingConvexPolygon4SideES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, %bb.q
  store ptr %i.bf, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.g, align 8, !tbaa !143
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc
  store ptr %i.bs, ptr %i.e, align 8, !tbaa !142
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN25minEnclosingConvexPolygon4SideESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEET_SE_SE_T0_.exit"
  %i.h = icmp eq i64 %i.ch, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !300

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.da, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ai, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.s, align 4 ; 3 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.thread.i.i.i

._crit_edge.i.us.thread.i.i.i:                    ; preds = %.split.us.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us13.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i32
  br label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %.val.i.i.us.i.i.i = load i32, ptr %i.w, align 4, !tbaa !76
  %.val1.i.i.us.i.i.i = load i32, ptr %i.y, align 4, !tbaa !76
  %i.z = icmp slt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ab, ptr noundef nonnull align 4 dereferenceable(5) %i.aa, i64 5, i1 false), !tbaa.struct !146
  %i.ac = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !301

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i32 ; 3 uses
  br label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !76
  %i.ae = icmp slt i32 %.val.i.i.i.us.i.i.i, %.sroa.03.0.extract.trunc.i.i.us.i.i.i
  br i1 %i.ae, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.af, ptr noundef nonnull align 4 dereferenceable(5) %i.ad, i64 5, i1 false), !tbaa.struct !146
  %i.ag = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i", !llvm.loop !302

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %._crit_edge.i.us.thread.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us14.i.i.i = phi i32 [ %.sroa.03.0.extract.trunc.i.i.us13.i.i.i, %._crit_edge.i.us.thread.i.i.i ], [ %.sroa.03.0.extract.trunc.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ], [ %.sroa.03.0.extract.trunc.i.i.us.i.i.i, %bb.c ]
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %._crit_edge.i.us.thread.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %.sroa.3.0.extract.shift.i.i.us.i.i.i = lshr i64 %.sroa.03.0.copyload.us.i.i.i, 32
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i ; 2 uses
  store i32 %.sroa.03.0.extract.trunc.i.i.us14.i.i.i, ptr %i.ah, align 4, !tbaa !119
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.3.sroa.0.0.extract.trunc.i.i.us.i.i.i = trunc i64 %.sroa.3.0.extract.shift.i.i.us.i.i.i to i8
  store i8 %.sroa.3.sroa.0.0.extract.trunc.i.i.us.i.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.us.i.i.i, align 4, !tbaa !105
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ai = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !303

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bb, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.aj, align 4 ; 2 uses
  %i.ak = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.al = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.am = add i64 %i.al, 2                        ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.am
  %i.ao = or disjoint i64 %i.al, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ao
  %.val.i.i.i.i.i = load i32, ptr %i.an, align 4, !tbaa !76
  %.val1.i.i.i.i.i = load i32, ptr %i.ap, align 4, !tbaa !76
  %i.aq = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.aq, i64 %i.ao, i64 %i.am ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.as, ptr noundef nonnull align 4 dereferenceable(5) %i.ar, i64 5, i1 false), !tbaa.struct !146
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !301

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.r, ptr noundef nonnull align 4 dereferenceable(5) %i.q, i64 5, i1 false), !tbaa.struct !146
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32 ; 2 uses
  %i.av = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !76
  %i.ax = icmp slt i32 %.val.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.ax, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ay, ptr noundef nonnull align 4 dereferenceable(5) %i.aw, i64 5, i1 false), !tbaa.struct !146
  %i.az = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i", !llvm.loop !302

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %.sroa.3.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.03.0.extract.trunc.i.i.i.i.i, ptr %i.ba, align 4, !tbaa !119
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.sroa.3.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.3.0.extract.shift.i.i.i.i.i to i8
  store i8 %.sroa.3.sroa.0.0.extract.trunc.i.i.i.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !105
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bb = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !303

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bc, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_RT0_.exit.i.i" ]
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.bc, align 4 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.bc, ptr noundef nonnull align 4 dereferenceable(5) %.fr27, i64 5, i1 false), !tbaa.struct !146
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.a                     ; 3 uses
  %i.bf = ashr exact i64 %i.be, 3                 ; 3 uses
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = icmp sgt i64 %i.bf, 2
  br i1 %i.bi, label %.lr.ph.i.i.i23.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i23.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i23.i
  %.036.i.i.i24.i = phi i64 [ %spec.select.i.i.i27.i, %.lr.ph.i.i.i23.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bj = shl i64 %.036.i.i.i24.i, 1              ; 2 uses
  %i.bk = add i64 %i.bj, 2                        ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bk
  %i.bm = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bm
  %.val.i.i.i.i25.i = load i32, ptr %i.bl, align 4, !tbaa !76
  %.val1.i.i.i.i26.i = load i32, ptr %i.bn, align 4, !tbaa !76
  %i.bo = icmp slt i32 %.val.i.i.i.i25.i, %.val1.i.i.i.i26.i
  %spec.select.i.i.i27.i = select i1 %i.bo, i64 %i.bm, i64 %i.bk ; 4 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i27.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i24.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.bq, ptr noundef nonnull align 4 dereferenceable(5) %i.bp, i64 5, i1 false), !tbaa.struct !146
  %i.br = icmp slt i64 %spec.select.i.i.i27.i, %i.bh
  br i1 %i.br, label %.lr.ph.i.i.i23.i, label %._crit_edge.i.i.i11.i, !llvm.loop !301

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i23.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i27.i, %.lr.ph.i.i.i23.i ] ; 5 uses
  %i.bs = and i64 %i.be, 8
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bu = add nsw i64 %i.bf, -2
  %i.bv = ashr exact i64 %i.bu, 1
  %i.bw = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bv
  br i1 %i.bw, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ca, ptr noundef nonnull align 4 dereferenceable(5) %i.bz, i64 5, i1 false), !tbaa.struct !146
  %.sroa.03.0.extract.trunc.i.i9.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.sroa.03.0.extract.trunc.i.i.i.i13.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32 ; 2 uses
  %.not.i.i14.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i14.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.sroa.03.0.extract.trunc.i.i12.i.i.i = phi i32 [ %.sroa.03.0.extract.trunc.i.i9.i.i.i, %.thread.i.i.i ], [ %.sroa.03.0.extract.trunc.i.i.i.i13.i, %bb.h ] ; 3 uses
  %.1.i11.i.i.i = phi i64 [ %i.by, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.h ]
  br label %.lr.ph.i.i.i.i15.i

.lr.ph.i.i.i.i15.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i16.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.1.i11.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i17.i = add nsw i64 %.010.i.i.i.i16.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i17.i, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i18.i = load i32, ptr %i.cb, align 4, !tbaa !76
  %i.cc = icmp slt i32 %.val.i.i.i.i.i18.i, %.sroa.03.0.extract.trunc.i.i12.i.i.i
  br i1 %i.cc, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i15.i
  %i.cd = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.cd, ptr noundef nonnull align 4 dereferenceable(5) %i.cb, i64 5, i1 false), !tbaa.struct !146
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.i.i15.i, !llvm.loop !302

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i15.i, %bb.h
  %.sroa.03.0.extract.trunc.i.i13.i.i.i = phi i32 [ %.sroa.03.0.extract.trunc.i.i.i.i13.i, %bb.h ], [ %.sroa.03.0.extract.trunc.i.i12.i.i.i, %.lr.ph.i.i.i.i15.i ], [ %.sroa.03.0.extract.trunc.i.i12.i.i.i, %bb.i ]
  %.0.lcssa.i.i.i.i19.i = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %.010.i.i.i.i16.i, %.lr.ph.i.i.i.i15.i ]
  %.sroa.3.0.extract.shift.i.i.i.i20.i = lshr i64 %.sroa.03.0.copyload.i.i10.i, 32
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i19.i ; 2 uses
  store i32 %.sroa.03.0.extract.trunc.i.i13.i.i.i, ptr %i.ce, align 4, !tbaa !119
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.sroa.3.sroa.0.0.extract.trunc.i.i.i.i22.i = trunc i64 %.sroa.3.0.extract.shift.i.i.i.i20.i to i8
  store i8 %.sroa.3.sroa.0.0.extract.trunc.i.i.i.i22.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i21.i, align 4, !tbaa !105
  %i.cf = icmp sgt i64 %i.be, 8
  br i1 %i.cf, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !304

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.ch, %bb.b ], [ %2, %.lr.ph ]
  %i.cg = phi i64 [ %i.db, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ch = add nsw i64 %.02544, -1                 ; 3 uses
  %i.ci = lshr i64 %i.cg, 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.ci ; 5 uses
  %i.ck = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 5 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !76 ; 3 uses
  %.val1.i.i.i = load i32, ptr %i.cj, align 4, !tbaa !76 ; 3 uses
  %i.cl = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.ck, align 4, !tbaa !76 ; 4 uses
  br i1 %i.cl, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.cm = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cn = load i64, ptr %.fr27, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr27, ptr noundef nonnull align 4 dereferenceable(5) %i.cj, i64 5, i1 false), !tbaa.struct !146
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %i.cn to i40
  store i40 %.sroa.0.0.extract.trunc.i.i.i.i, ptr %i.cj, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.co = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.cp = load i64, ptr %.fr27, align 4
  %.sroa.0.0.extract.trunc.i.i30.i.i = trunc i64 %i.cp to i40 ; 2 uses
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr27, ptr noundef nonnull align 4 dereferenceable(5) %i.ck, i64 5, i1 false), !tbaa.struct !146
  store i40 %.sroa.0.0.extract.trunc.i.i30.i.i, ptr %i.ck, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr27, ptr noundef nonnull align 4 dereferenceable(5) %i.f, i64 5, i1 false), !tbaa.struct !146
  store i40 %.sroa.0.0.extract.trunc.i.i30.i.i, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.cq = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = load i64, ptr %.fr27, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr27, ptr noundef nonnull align 4 dereferenceable(5) %i.f, i64 5, i1 false), !tbaa.struct !146
  %.sroa.0.0.extract.trunc.i.i34.i.i = trunc i64 %i.cr to i40
  store i40 %.sroa.0.0.extract.trunc.i.i34.i.i, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cs = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.ct = load i64, ptr %.fr27, align 4
  %.sroa.0.0.extract.trunc.i.i37.i.i = trunc i64 %i.ct to i40 ; 2 uses
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr27, ptr noundef nonnull align 4 dereferenceable(5) %i.ck, i64 5, i1 false), !tbaa.struct !146
  store i40 %.sroa.0.0.extract.trunc.i.i37.i.i, ptr %i.ck, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.fr27, ptr noundef nonnull align 4 dereferenceable(5) %i.cj, i64 5, i1 false), !tbaa.struct !146
  store i40 %.sroa.0.0.extract.trunc.i.i37.i.i, ptr %i.cj, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr27, align 4, !tbaa !76 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.cv, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !76
  %i.cu = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !305

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !76
  %i.cw = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.cw, label %.preheader.i.i, label %bb.u, !llvm.loop !306

bb.u:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cx, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEET_SE_SE_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.cy = load i64, ptr %.sroa.012.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.012.1.i.i, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.0.1.i.i, i64 5, i1 false), !tbaa.struct !146
  %.sroa.0.0.extract.trunc.i.i.i15.i = trunc i64 %i.cy to i40
  store i40 %.sroa.0.0.extract.trunc.i.i.i15.i, ptr %.sroa.0.1.i.i, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !307

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2445, i64 noundef %i.ch)
  %i.cz = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.da = sub i64 %i.cz, %i.a                     ; 2 uses
  %i.db = ashr exact i64 %i.da, 3                 ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 16
  br i1 %i.dc, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !300

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEET_SE_SE_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_SE_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN25minEnclosingConvexPolygon4SideESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6Chains10findKSidesEiiiE3$_0EEEvT_SE_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !40}
!1 = distinct !{!1, !40}
!2 = distinct !{!2, !40}
!3 = distinct !{!3, !40}
!4 = distinct !{!4, !40}
!5 = distinct !{!5, !40}
!6 = distinct !{!6, !40}
!7 = distinct !{!7, !40}
!8 = distinct !{!8, !40}
!9 = distinct !{!9, !40}
!10 = distinct !{!10, !40}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"float", !15, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSN2cv6Point_IfEE", !19, i64 0, !19, i64 4}
!22 = !{!"bool", !15, i64 0}
!23 = !{!"_ZTSN25minEnclosingConvexPolygon17IntersectionPointE", !21, i64 0, !22, i64 8}
!24 = !{!23, !22, i64 8}
!25 = !{!"any pointer", !15, i64 0}
!26 = !{!"p1 _ZTSN2cv6Point_IfEE", !25, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!27, !26, i64 0}
!29 = !{!27, !26, i64 8}
!30 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IfEESaIS2_EE", !25, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTSN25minEnclosingConvexPolygon14FlushIntersectE", !25, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN25minEnclosingConvexPolygon14FlushIntersectESaIS1_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 0}
!35 = !{!33, !32, i64 16}
!36 = !{!"double", !15, i64 0}
!37 = !{!"_ZTSN25minEnclosingConvexPolygon14FlushIntersectE", !23, i64 0, !36, i64 16, !22, i64 24}
!38 = !{!37, !36, i64 16}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!33, !32, i64 8}
!42 = !{!"p1 _ZTSSt6vectorIN25minEnclosingConvexPolygon14FlushIntersectESaIS1_EE", !25, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon14FlushIntersectESaIS2_EESaIS4_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 8}
!46 = !{!43, !42, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon14FlushIntersectESaIS2_EESaIS4_EE12_Vector_implE", !43, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon14FlushIntersectESaIS2_EESaIS4_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIS_IN25minEnclosingConvexPolygon14FlushIntersectESaIS1_EESaIS3_EE", !48, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE12_Vector_implE", !27, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIN2cv6Point_IfEESaIS2_EE", !51, i64 0}
!53 = !{!"_ZTSN25minEnclosingConvexPolygon18FlushIntersectionsE", !30, i64 0, !49, i64 8, !52, i64 32}
!54 = !{!53, !30, i64 0}
!55 = !{}
!56 = !{i64 8}
!57 = !{!27, !26, i64 16}
!58 = !{!"p1 _ZTSN25minEnclosingConvexPolygon17BalancedIntersectE", !25, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN25minEnclosingConvexPolygon17BalancedIntersectESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !58, i64 16}
!62 = !{!"_ZTSN25minEnclosingConvexPolygon17BalancedIntersectE", !21, i64 0, !21, i64 8, !36, i64 16, !16, i64 24, !22, i64 28, !22, i64 29}
!63 = !{!62, !36, i64 16}
!64 = !{!59, !58, i64 8}
!65 = !{!"p1 _ZTSSt6vectorIN25minEnclosingConvexPolygon17BalancedIntersectESaIS1_EE", !25, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon17BalancedIntersectESaIS2_EESaIS4_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 8}
!69 = !{!66, !65, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon17BalancedIntersectESaIS2_EESaIS4_EE12_Vector_implE", !66, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon17BalancedIntersectESaIS2_EESaIS4_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIS_IN25minEnclosingConvexPolygon17BalancedIntersectESaIS1_EESaIS3_EE", !71, i64 0}
!73 = !{!"_ZTSN25minEnclosingConvexPolygon21BalancedIntersectionsE", !30, i64 0, !72, i64 8, !52, i64 32}
!74 = !{!73, !30, i64 0}
!75 = !{!"_ZTSN25minEnclosingConvexPolygon4SideE", !16, i64 0, !22, i64 4}
!76 = !{!75, !16, i64 0}
!77 = !{!75, !22, i64 4}
!78 = !{!"p1 _ZTSN25minEnclosingConvexPolygon7SegmentE", !25, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN25minEnclosingConvexPolygon7SegmentESaIS1_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!79, !78, i64 0}
!81 = !{!79, !78, i64 16}
!82 = !{!"_ZTSN25minEnclosingConvexPolygon7SegmentE", !36, i64 0, !16, i64 8, !22, i64 12, !22, i64 13, !22, i64 14}
!83 = !{!82, !36, i64 0}
!84 = !{!79, !78, i64 8}
!85 = !{!"p1 _ZTSSt6vectorIN25minEnclosingConvexPolygon7SegmentESaIS1_EE", !25, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon7SegmentESaIS2_EESaIS4_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!86, !85, i64 8}
!89 = !{!86, !85, i64 16}
!90 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon7SegmentESaIS2_EESaIS4_EE12_Vector_implE", !86, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseISt6vectorIN25minEnclosingConvexPolygon7SegmentESaIS2_EESaIS4_EE", !90, i64 0}
!92 = !{!"_ZTSSt6vectorIS_IN25minEnclosingConvexPolygon7SegmentESaIS1_EESaIS3_EE", !91, i64 0}
!93 = !{!"p1 _ZTSSt6vectorIS_IN25minEnclosingConvexPolygon7SegmentESaIS1_EESaIS3_EE", !25, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IN25minEnclosingConvexPolygon7SegmentESaIS2_EESaIS4_EESaIS6_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IN25minEnclosingConvexPolygon7SegmentESaIS2_EESaIS4_EESaIS6_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_IN25minEnclosingConvexPolygon7SegmentESaIS2_EESaIS4_EESaIS6_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIS_IS_IN25minEnclosingConvexPolygon7SegmentESaIS1_EESaIS3_EESaIS5_EE", !96, i64 0}
!98 = !{!"_ZTSN25minEnclosingConvexPolygon6ChainsE", !30, i64 0, !92, i64 8, !97, i64 32, !53, i64 56, !73, i64 112}
!99 = !{!98, !30, i64 0}
!100 = !{!94, !93, i64 0}
!101 = !{!94, !93, i64 8}
!102 = !{!94, !93, i64 16}
!103 = !{i8 0, i8 2}
!104 = !{!37, !22, i64 8}
!105 = !{!22, !22, i64 0}
!106 = !{!"_ZTSN2cv5Size_IiEE", !16, i64 0, !16, i64 4}
!107 = !{!106, !16, i64 0}
!108 = !{!106, !16, i64 4}
!109 = !{!"_ZTSN2cv11_InputArrayE", !16, i64 0, !25, i64 8, !106, i64 16}
!110 = !{!109, !16, i64 0}
!111 = !{!109, !25, i64 8}
!112 = !{!"p1 omnipotent char", !25, i64 0}
!113 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !112, i64 0}
!114 = !{!"long", !15, i64 0}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !113, i64 0, !114, i64 8, !15, i64 16}
!116 = !{!115, !112, i64 0}
!117 = !{!15, !15, i64 0}
!118 = !{!36, !36, i64 0}
!119 = !{!16, !16, i64 0}
!120 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 12, i64 4, !20, i64 16, i64 8, !118, i64 24, i64 4, !119, i64 28, i64 1, !105, i64 29, i64 1, !105}
!121 = !{!62, !22, i64 28}
!122 = !{!62, !16, i64 24}
!123 = !{!113, !112, i64 0}
!124 = !{!114, !114, i64 0}
!125 = !{!115, !114, i64 8}
!126 = !{!62, !22, i64 29}
!127 = !{!82, !22, i64 14}
!128 = !{!82, !16, i64 8}
end_hunk_0
