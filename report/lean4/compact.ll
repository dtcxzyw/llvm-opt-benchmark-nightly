Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/compact?download=true
inline.NumInlined: 1489
inline.NumDeleted: 694
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4lean13region_reader29sort_and_validate_dep_regionsEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 7 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_T1_"(ptr %i.b, ptr %i.d, i64 noundef %i.l)
  %i.m = icmp sgt i64 %i.h, 384
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %.preheader.i23.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.0.018.i.idx.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i.i ], [ %.sroa.0.018.i.add.i.i.i, %bb.h ] ; 4 uses
  %.pn17.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i.i, %bb.h ] ; 3 uses
  %.sroa.0.018.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.018.i.idx.i.i.i ; 5 uses
  %i.o = getelementptr i8, ptr %.pn17.i.i.i.i, i64 40
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !117 ; 4 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.p = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !97
  %i.q = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i.i, 24
  br i1 %i.q, label %bb.e, label %bb.f, !prof !98

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %.sroa.0.018.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !97
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %i.s = getelementptr i8, ptr %.pn17.i.i.i.i, i64 16
  %.val2.i9.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.t = icmp ult ptr %.val.i.i.i.i.i, %.val2.i9.i.i.i.i.i
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.06.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !97
  %i.u = getelementptr i8, ptr %.sroa.06.010.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.v = icmp ult ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !175

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %.sroa.4.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.0.018.i.add.i.i.i = add nuw nsw i64 %.sroa.0.018.i.idx.i.i.i, 24 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.018.i.add.i.i.i, 384
  br i1 %i.w, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i", label %bb.c, !llvm.loop !176

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i": ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ad, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i" ], [ %i.x, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.06.i.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !67 ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val2.i9.i.i14.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.aa = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i9.i.i14.i.i.i
  br i1 %i.aa, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i"

.lr.ph.i.i18.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i18.i.i.i
  %.sroa.06.010.i.i19.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i19.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i, i64 24, i1 false), !tbaa.struct !97
  %i.ab = getelementptr i8, ptr %.sroa.06.010.i.i19.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.ac = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i.i.i21.i.i.i
  br i1 %i.ac, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i", !llvm.loop !175

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.06.0.lcssa.i.i16.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.lcssa.i.i16.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %.sroa.4.0..sroa_idx4.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i17.i.i.i, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 24 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !177

.preheader.i23.i.i.i:                             ; preds = %bb.b
  %.sroa.0.016.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.016.i24.i.i.i, %i.d
  br i1 %i.af, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i25.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.preheader.i23.i.i.i
  %i.ag = getelementptr i8, ptr %i.b, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25.i.i.i
  %.sroa.0.018.i26.i.i.i = phi ptr [ %.sroa.0.016.i24.i.i.i, %.lr.ph.i25.i.i.i ], [ %.sroa.0.0.i34.i.i.i, %bb.o ] ; 7 uses
  %.pn17.i27.i.i.i = phi ptr [ %i.b, %.lr.ph.i25.i.i.i ], [ %.sroa.0.018.i26.i.i.i, %bb.o ] ; 4 uses
  %i.ah = getelementptr i8, ptr %.pn17.i27.i.i.i, i64 40
  %.val.i.i28.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !117 ; 4 uses
  %.val1.i.i29.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !117
  %i.ai = icmp ult ptr %.val.i.i28.i.i.i, %.val1.i.i29.i.i.i
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i26.i.i.i, i64 24, i1 false), !tbaa.struct !97
  %i.aj = ptrtoint ptr %.sroa.0.018.i26.i.i.i to i64
  %i.ak = sub i64 %i.aj, %i.g                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %bb.k, label %bb.l, !prof !98

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pn17.i27.i.i.i, i64 48
  %.neg22.i40.i.i.i = udiv exact i64 %i.ak, 24
  %.neg22.neg.i41.i.i.i = sub nsw i64 0, %.neg22.i40.i.i.i
  %i.an = getelementptr inbounds [24 x i8], ptr %i.am, i64 %.neg22.neg.i41.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.ak, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.ak, 24
  br i1 %i.ao, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn17.i27.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !97
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i26.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %i.aq = getelementptr i8, ptr %.pn17.i27.i.i.i, i64 16
  %.val2.i9.i.i30.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !117
  %i.ar = icmp ult ptr %.val.i.i28.i.i.i, %.val2.i9.i.i30.i.i.i
  br i1 %i.ar, label %.lr.ph.i.i35.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i"

.lr.ph.i.i35.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i35.i.i.i
  %.sroa.06.010.i.i36.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ], [ %.sroa.0.018.i26.i.i.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i36.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i36.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i37.i.i.i, i64 24, i1 false), !tbaa.struct !97
  %i.as = getelementptr i8, ptr %.sroa.06.010.i.i36.i.i.i, i64 -32
  %.val2.i.i.i38.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !117
  %i.at = icmp ult ptr %.val.i.i28.i.i.i, %.val2.i.i.i38.i.i.i
  br i1 %i.at, label %.lr.ph.i.i35.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i", !llvm.loop !175

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i": ; preds = %.lr.ph.i.i35.i.i.i, %bb.n
  %.sroa.06.0.lcssa.i.i32.i.i.i = phi ptr [ %.sroa.0.018.i26.i.i.i, %bb.n ], [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0.lcssa.i.i32.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i, i64 16, i1 false), !tbaa.struct !97
  %.sroa.4.0..sroa_idx4.i.i33.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32.i.i.i, i64 16
  store ptr %.val.i.i28.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i33.i.i.i, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i31.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i39.i.i.i
  %.sroa.0.0.i34.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i26.i.i.i, i64 24 ; 2 uses
  %i.au = icmp eq ptr %.sroa.0.0.i34.i.i.i, %i.d
  br i1 %i.au, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", label %bb.i, !llvm.loop !176

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_T0_.exit.i15.i.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EEEvT_SE_T0_.exit.i.i.i", %.preheader.i23.i.i.i
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !179 ; 3 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !99  ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %3 = sdiv exact i64 %i.az, 24                   ; 2 uses
  %i.ba = icmp ugt i64 %3, 1
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph
  %i.bb = add nuw i64 %.02130, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %bb.p, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit"
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !137
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = load i64, ptr %0, align 8, !tbaa !136
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = icmp eq ptr %i.aw, %i.av
  br i1 %i.bh, label %._crit_edge35, label %.lr.ph34

.lr.ph:                                           ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit", %bb.p
  %.02130 = phi i64 [ %i.bb, %bb.p ], [ 1, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEZNS2_13region_reader29sort_and_validate_dep_regionsEvE3$_0EvT_SB_T0_.exit" ] ; 2 uses
  %i.bi = getelementptr [24 x i8], ptr %i.aw, i64 %.02130 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !117
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.bi, i64 -16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !116
  %i.bo = add i64 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !117
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = icmp ugt i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.q, label %bb.p

bb.q:                                             ; preds = %.lr.ph
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull @.str.3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.t:                                             ; preds = %.lr.ph34
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 24 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.av
  br i1 %i.bw, label %._crit_edge35, label %.lr.ph34

._crit_edge35:                                    ; preds = %bb.t, %._crit_edge
  ret void

.lr.ph34:                                         ; preds = %._crit_edge, %bb.t
  %.sroa.023.032 = phi ptr [ %i.bv, %bb.t ], [ %i.aw, %._crit_edge ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !117
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !116
  %i.cc = add i64 %i.cb, %i.bz
  %i.cd = icmp ugt i64 %i.cc, %i.be
  %i.ce = icmp ugt i64 %i.bg, %i.bz
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.u, label %bb.t

bb.u:                                             ; preds = %.lr.ph34
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull @.str.4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.sink = phi ptr [ %i.cf, %bb.w ], [ %i.bt, %bb.s ]
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %i.bu, %bb.s ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4lean13region_reader7fix_mpzEP11lean_object(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  store ptr %i.k, ptr %i.c, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !128
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.q, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean13region_reader11fix_closureEP11lean_object(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 18
  %.val = load i16, ptr %i.b, align 2, !tbaa !123 ; 2 uses
  %i.c = zext i16 %.val to i64
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not10 = icmp eq i16 %.val, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit
  %.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.ay, %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit ] ; 3 uses
  %i.j = load ptr, ptr %.011, align 8, !tbaa !67  ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.l = and i64 %i.k, 1
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.c, label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %.not26.i = icmp uge ptr %i.j, %i.m
  %i.o = add i64 %i.f, %i.n
  %i.p = icmp ugt i64 %i.o, %i.k
  %or.cond = select i1 %.not26.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.r = sub i64 %i.k, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  br label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %bb.e
  %i.z = udiv exact i64 %i.x, 24
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.aa = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117
  %i.ae = icmp ult ptr %i.j, %i.ad                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = xor i64 %i.aa, -1
  %i.ah = add nsw i64 %.016.i.i.i, %i.ag
  %.sroa.011.1.i.i.i = select i1 %i.ae, ptr %.sroa.011.015.i.i.i, ptr %i.af ; 5 uses
  %.1.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i, !llvm.loop !6

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.aj = icmp eq ptr %.sroa.011.1.i.i.i, %i.t
  br i1 %i.aj, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i
  %i.ak = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 -24
  %i.al = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 -16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !116
  %i.aq = add i64 %i.ap, %i.an
  %.not27.i = icmp ugt i64 %i.aq, %i.k
  %i.ar = load ptr, ptr %i.ak, align 8
  %i.as = sub i64 %i.k, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  br i1 %.not27.i, label %_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.thread.i: ; preds = %bb.f, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPN4lean11region_viewESt6vectorIS3_SaIS3_EEEEPcZNS2_13region_reader14fix_object_ptrEP11lean_objectEUlS9_RKS3_E_ET_SG_SG_RKT0_T1_.exit.i, %bb.e
  %i.au = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %i.ax, align 8, !tbaa !73
  store i8 0, ptr %i.aw, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.au, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #28
  unreachable

_ZN4lean13region_reader14fix_object_ptrEP11lean_object.exit: ; preds = %bb.b, %bb.d, %bb.f
end_hunk_0
