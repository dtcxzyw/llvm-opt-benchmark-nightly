Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DiffEngine?download=true
inline.NumInlined: 3127
inline.NumDeleted: 1344
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_:bb.a
  %i.cb = add nsw i64 %i.br, -1
  br label %.lr.ph.i.i.i.i.i10.i.prol.loopexit

.lr.ph.i.i.i.i.i10.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i10.i.prol, %.lr.ph.i.i.i.i.i10.i.preheader
  %.012.i.i.i.i.i11.i.unr = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i10.i.prol ]
  %.0811.i.i.i.i.i12.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i10.i.prol ]
  %.0910.i.i.i.i.i13.i.unr = phi ptr [ %.sroa.015.0.lcssa.i, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i10.i.prol ]
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i10.i.prol ]
  %i.cc = icmp eq i64 %i.bq, 32
  br i1 %i.cc, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit, label %.lr.ph.i.i.i.i.i10.i

.lr.ph.i.i.i.i.i10.i:                             ; preds = %.lr.ph.i.i.i.i.i10.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i
  %.012.i.i.i.i.i11.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i10.i ], [ %.012.i.i.i.i.i11.i.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i10.i ], [ %.0811.i.i.i.i.i12.i.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i13.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i10.i ], [ %.0910.i.i.i.i.i13.i.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !93
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 8
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !93
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %i.ch, i64 20, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !93
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 40
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 44
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cl, ptr noundef nonnull align 4 dereferenceable(20) %i.cm, i64 20, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 64 ; 2 uses
  %i.cp = add nsw i64 %.012.i.i.i.i.i11.i, -2
  %i.cq = icmp sgt i64 %.012.i.i.i.i.i11.i, 2
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i10.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit, !llvm.loop !22

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i9.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ], [ %.lcssa117.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ], [ %i.co, %.lr.ph.i.i.i.i.i10.i ] ; 2 uses
  %i.cr = sub i64 %i.a, %i.bo
  %i.cs = ashr exact i64 %i.cr, 5                 ; 2 uses
  %.not.i22 = icmp slt i64 %i.cs, %i.j
  br i1 %.not.i22, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit, label %.lr.ph.i21, !llvm.loop !667

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit, %bb.b
  %.sroa.023.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.cs, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.068, i64 %.lcssa.i)
  %i.ct = getelementptr inbounds [32 x i8], ptr %.sroa.023.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.cu = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_(ptr %.sroa.023.0.lcssa.i, ptr %i.ct, ptr %i.ct, ptr %1, ptr noundef %.0.lcssa.i) ; 0 uses
  %i.cv = shl nsw i64 %.068, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.cv
  br i1 %.not29.i, label %_ZSt17__merge_sort_loopIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit
  %.idx54 = shl nsw i64 %.068, 6                  ; 2 uses
  %.idx55 = shl nsw i64 %.068, 7                  ; 2 uses
  %.not56 = icmp eq i64 %.idx54, %.idx55
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit
  %.sroa.022.031.i = phi ptr [ %i.gj, %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ], [ %0, %.lr.ph.i23.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.cx, %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ], [ %2, %.lr.ph.i23.preheader ] ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.030.i, i64 %.idx54 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %.030.i, i64 %.idx55 ; 4 uses
  br i1 %.not56, label %._crit_edge.i, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i23, %bb.f
  %.033.i38 = phi ptr [ %.1.i, %bb.f ], [ %.030.i, %.lr.ph.i23 ] ; 6 uses
  %.01632.i = phi ptr [ %.117.i, %bb.f ], [ %i.cw, %.lr.ph.i23 ] ; 6 uses
  %.sroa.0.030.i = phi ptr [ %i.du, %bb.f ], [ %.sroa.022.031.i, %.lr.ph.i23 ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01632.i, i64 12 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !107 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.033.i38, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !107 ; 2 uses
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit.i

bb.e:                                             ; preds = %.lr.ph.i37
  %.sroa.2.0..sroa_idx.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %.01632.i, i64 24
  %.sroa.2.0.copyload.i.i.i.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i40, align 8, !tbaa !54 ; 2 uses
  %.sroa.2.0..sroa_idx.i10.i.i.i42 = getelementptr inbounds nuw i8, ptr %.033.i38, i64 24
  %.sroa.2.0.copyload.i11.i.i.i43 = load i64, ptr %.sroa.2.0..sroa_idx.i10.i.i.i42, align 8, !tbaa !54 ; 2 uses
  %.sroa.speculated.i.i.i.i.i44 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11.i.i.i43, i64 %.sroa.2.0.copyload.i.i.i.i41) ; 2 uses
  %i.dd = icmp eq i64 %.sroa.speculated.i.i.i.i.i44, 0
  br i1 %i.dd, label %.thread.i.i.i.i.i51, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45: ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %.033.i38, i64 16
  %.sroa.0.0.copyload.i9.i.i.i46 = load ptr, ptr %i.de, align 8, !tbaa !69
  %i.df = getelementptr inbounds nuw i8, ptr %.01632.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i47 = load ptr, ptr %i.df, align 8, !tbaa !69
  %i.dg = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i.i47, ptr noundef %.sroa.0.0.copyload.i9.i.i.i46, i64 noundef %.sroa.speculated.i.i.i.i.i44) #24
  %.fr.i.i.i.i.i48 = freeze i32 %i.dg             ; 2 uses
  %.not.not.i.i.i.i.i49 = icmp eq i32 %.fr.i.i.i.i.i48, 0
  br i1 %.not.not.i.i.i.i.i49, label %.thread.i.i.i.i.i51, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i50

.thread.i.i.i.i.i51:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45, %bb.e
  %i.dh = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i41, %.sroa.2.0.copyload.i11.i.i.i43
  br i1 %i.dh, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i39

_ZN4llvmltENS_9StringRefES0_.exit.i.i.i50:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45
  %i.di = icmp slt i32 %.fr.i.i.i.i.i48, 0
  br i1 %i.di, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i39

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit.i: ; preds = %.lr.ph.i37
  %i.dj = icmp slt i32 %i.cz, %i.db
  br i1 %i.dj, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i39

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i50, %.thread.i.i.i.i.i51
  %i.dk = getelementptr inbounds nuw i8, ptr %.01632.i, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !93
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !93
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dn, ptr noundef nonnull align 4 dereferenceable(20) %i.cy, i64 20, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.01632.i, i64 32
  br label %bb.f

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i39: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i50, %.thread.i.i.i.i.i51
  %i.dp = getelementptr inbounds nuw i8, ptr %.033.i38, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !93
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ds, ptr noundef nonnull align 4 dereferenceable(20) %i.da, i64 20, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.033.i38, i64 32
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i39, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27.i
  %.117.i = phi ptr [ %i.do, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27.i ], [ %.01632.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i39 ] ; 3 uses
  %.1.i = phi ptr [ %.033.i38, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27.i ], [ %i.dt, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i39 ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 32 ; 2 uses
  %i.dv = icmp ne ptr %.1.i, %i.cw
  %i.dw = icmp ne ptr %.117.i, %i.cx
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph.i37, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph.i23
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i23 ], [ %i.du, %bb.f ] ; 7 uses
  %.016.lcssa.i = phi ptr [ %i.cw, %.lr.ph.i23 ], [ %.117.i, %bb.f ] ; 5 uses
  %.0.lcssa.i31 = phi ptr [ %.030.i, %.lr.ph.i23 ], [ %.1.i, %bb.f ] ; 5 uses
  %i.dy = ptrtoint ptr %i.cw to i64
  %i.dz = ptrtoint ptr %.0.lcssa.i31 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = ashr exact i64 %i.ea, 5                 ; 3 uses
  %i.ec = icmp sgt i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i33.preheader, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i33.preheader:                   ; preds = %._crit_edge.i
  %i.ed = and i64 %i.ea, 32
  %lcmp.mod130.not = icmp eq i64 %i.ed, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i33.prol

.lr.ph.i.i.i.i.i.i33.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i33.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i31, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !93
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !93
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 12
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i31, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.eh, ptr noundef nonnull align 4 dereferenceable(20) %i.ei, i64 20, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i31, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 32 ; 2 uses
  %i.el = add nsw i64 %i.eb, -1
  br label %.lr.ph.i.i.i.i.i.i33.prol.loopexit

.lr.ph.i.i.i.i.i.i33.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i.i33.preheader
  %.012.i.i.i.i.i.i34.unr = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.el, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i.i35.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i.i36.unr = phi ptr [ %.0.lcssa.i31, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.lcssa121.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i33.prol ]
  %i.em = icmp eq i64 %i.ea, 32
  br i1 %i.em, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %.lr.ph.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i34 = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i33 ], [ %.012.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i35 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i33 ], [ %.0811.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i36 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i33 ], [ %.0910.i.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !93
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 8
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !93
  %i.eq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.eq, ptr noundef nonnull align 4 dereferenceable(20) %i.er, i64 20, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 40
  %i.et = load i32, ptr %i.es, align 8, !tbaa !93
  %i.eu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 40
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !93
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 44
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ev, ptr noundef nonnull align 4 dereferenceable(20) %i.ew, i64 20, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 64 ; 2 uses
  %i.ez = add nsw i64 %.012.i.i.i.i.i.i34, -2
  %i.fa = icmp sgt i64 %.012.i.i.i.i.i.i34, 2
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !22

_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i33, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa121.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ], [ %i.ey, %.lr.ph.i.i.i.i.i.i33 ]
  %i.fb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.fc = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.fd ; 5 uses
  %i.ff = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.fg = ptrtoint ptr %.016.lcssa.i to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 3 uses
  %i.fi = ashr exact i64 %i.fh, 5                 ; 3 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %i.fk = and i64 %i.fh, 32
  %lcmp.mod132.not = icmp eq i64 %i.fk, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %.016.lcssa.i, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !93
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !93
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %.016.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fo, ptr noundef nonnull align 4 dereferenceable(20) %i.fp, i64 20, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %.016.lcssa.i, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fs = add nsw i64 %i.fi, -1
  br label %.lr.ph.i.i.i.i.i19.i.prol.loopexit

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fq, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa122.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.ft = icmp eq i64 %i.fh, 32
  br i1 %i.ft, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !93
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !93
  %i.fx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 12
  %i.fy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fx, ptr noundef nonnull align 4 dereferenceable(20) %i.fy, i64 20, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !93
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store i32 %i.ga, ptr %i.gb, align 8, !tbaa !93
  %i.gc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 44
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gc, ptr noundef nonnull align 4 dereferenceable(20) %i.gd, i64 20, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.gg = add nsw i64 %.012.i.i.i.i.i20.i, -2
  %i.gh = icmp sgt i64 %.012.i.i.i.i.i20.i, 2
  br i1 %i.gh, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, !llvm.loop !22

_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit
  %.lcssa122 = phi ptr [ %.lcssa122.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.gf, %.lr.ph.i.i.i.i.i19.i ]
  %3 = ptrtoint ptr %.lcssa122 to i64
  br label %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit

_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit: ; preds = %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.fb, %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %3, %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i ]
  %i.gi = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.fb
  %i.gj = getelementptr inbounds i8, ptr %i.fe, i64 %i.gi ; 2 uses
  %i.gk = sub i64 %i.i, %i.ff
  %i.gl = ashr exact i64 %i.gk, 5                 ; 2 uses
  %.not.i24 = icmp slt i64 %i.gl, %i.cv
  br i1 %.not.i24, label %_ZSt17__merge_sort_loopIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit, label %.lr.ph.i23, !llvm.loop !668

_ZSt17__merge_sort_loopIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit
  %.0.lcssa.i25 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit ], [ %i.cx, %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit ], [ %i.gj, %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ]
  %.lcssa.i26 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit ], [ %i.gl, %_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_.exit ]
  %.sroa.speculated.i27 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %.lcssa.i26)
  %i.gm = getelementptr inbounds [32 x i8], ptr %.0.lcssa.i25, i64 %.sroa.speculated.i27 ; 2 uses
  %i.gn = tail call ptr @_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_(ptr noundef %.0.lcssa.i25, ptr noundef %i.gm, ptr noundef %i.gm, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i) ; 0 uses
  %i.go = icmp slt i64 %i.cv, %i.d
  br i1 %i.go, label %bb.b, label %._crit_edge, !llvm.loop !669

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SF_SL_SL_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_SL_T1_T2_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.f = and i64 %i.c, 32
  %lcmp.mod.not = icmp eq i64 %i.f, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.k, i64 20, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.n = add nsw i64 %i.d, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa54.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %i.o = icmp eq i64 %i.c, 32
  br i1 %i.o, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.t, i64 20, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i32 %i.v, ptr %i.w, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.x, ptr noundef nonnull align 4 dereferenceable(20) %i.y, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.ab = add nsw i64 %.012.i.i.i.i.i, -2
  %i.ac = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.preheader, !llvm.loop !22

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa54 = phi ptr [ %.lcssa54.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.030.i = phi ptr [ %.1.i, %bb.e ], [ %5, %.lr.ph.i.preheader ] ; 11 uses
  %.sroa.0.028.i = phi ptr [ %i.az, %bb.e ], [ %0, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.016.027.i = phi ptr [ %.sroa.016.1.i, %bb.e ], [ %1, %.lr.ph.i.preheader ] ; 7 uses
  %.not22.i = icmp eq ptr %.sroa.016.027.i, %2
  br i1 %.not22.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !107 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.030.i, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !107 ; 2 uses
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEESM_EEbS9_SF_.exit.i

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !54 ; 2 uses
  %.sroa.2.0..sroa_idx.i10.i.i.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 24
  %.sroa.2.0.copyload.i11.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i10.i.i.i, align 8, !tbaa !54 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ai, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.al = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i9.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #24
  %.fr.i.i.i.i.i = freeze i32 %i.al               ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.am = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i11.i.i.i
  br i1 %i.am, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread20.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %i.an = icmp slt i32 %.fr.i.i.i.i.i, 0
  br i1 %i.an, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread20.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEESM_EEbS9_SF_.exit.i: ; preds = %bb.c
  %i.ao = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ao, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread20.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEESM_EEbS9_SF_.exit.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i, %.thread.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.as, ptr noundef nonnull align 4 dereferenceable(20) %i.ad, i64 20, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 32
  br label %bb.e

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i:   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEESM_EEbS9_SF_.exit.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i, %.thread.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !93
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ax, ptr noundef nonnull align 4 dereferenceable(20) %i.af, i64 20, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread20.i
  %.sroa.016.1.i = phi ptr [ %i.at, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread20.i ], [ %.sroa.016.027.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i ]
  %.1.i = phi ptr [ %.030.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread20.i ], [ %i.ay, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 32
  %.not.i = icmp eq ptr %.1.i, %.lcssa54
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_SL_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !670

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ba = ptrtoint ptr %.lcssa54 to i64
  %i.bb = ptrtoint ptr %.030.i to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 5                 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_SL_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %i.bf = and i64 %i.bc, 32
  %lcmp.mod56.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %.030.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bj, ptr noundef nonnull align 4 dereferenceable(20) %i.bk, i64 20, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 32
  %i.bn = add nsw i64 %i.bd, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.028.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.030.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bo = icmp eq i64 %i.bc, 32
  br i1 %i.bo, label %_ZSt21__move_merge_adaptiveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_SL_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_:bb.a
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i10.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit14

.lr.ph.i.i.i.i.i10.preheader:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  %i.bj = and i64 %i.bg, 32
  %lcmp.mod49.not = icmp eq i64 %i.bj, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i.i.i10.prol

.lr.ph.i.i.i.i.i10.prol:                          ; preds = %.lr.ph.i.i.i.i.i10.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !93
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bn, ptr noundef nonnull align 4 dereferenceable(20) %i.bo, i64 20, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %i.br = add nsw i64 %i.bh, -1
  br label %.lr.ph.i.i.i.i.i10.prol.loopexit

.lr.ph.i.i.i.i.i10.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i10.prol, %.lr.ph.i.i.i.i.i10.preheader
  %.012.i.i.i.i.i11.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i10.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i10.prol ]
  %.0811.i.i.i.i.i12.unr = phi ptr [ %.08.lcssa.i.i.i.i.i, %.lr.ph.i.i.i.i.i10.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i10.prol ]
  %.0910.i.i.i.i.i13.unr = phi ptr [ %.sroa.015.0.lcssa, %.lr.ph.i.i.i.i.i10.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i10.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i10.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i10.prol ]
  %i.bs = icmp eq i64 %i.bg, 32
  br i1 %i.bs, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit14, label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %.lr.ph.i.i.i.i.i10.prol.loopexit, %.lr.ph.i.i.i.i.i10
  %.012.i.i.i.i.i11 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i10 ], [ %.012.i.i.i.i.i11.unr, %.lr.ph.i.i.i.i.i10.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i10 ], [ %.0811.i.i.i.i.i12.unr, %.lr.ph.i.i.i.i.i10.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i13 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i10 ], [ %.0910.i.i.i.i.i13.unr, %.lr.ph.i.i.i.i.i10.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !93
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12, i64 8
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !93
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bw, ptr noundef nonnull align 4 dereferenceable(20) %i.bx, i64 20, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !93
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12, i64 40
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12, i64 44
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cb, ptr noundef nonnull align 4 dereferenceable(20) %i.cc, i64 20, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12, i64 64 ; 2 uses
  %i.cf = add nsw i64 %.012.i.i.i.i.i11, -2
  %i.cg = icmp sgt i64 %.012.i.i.i.i.i11, 2
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit14, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit14: ; preds = %.lr.ph.i.i.i.i.i10.prol.loopexit, %.lr.ph.i.i.i.i.i10, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  %.08.lcssa.i.i.i.i.i9 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i10.prol.loopexit ], [ %i.ce, %.lr.ph.i.i.i.i.i10 ]
  ret ptr %.08.lcssa.i.i.i.i.i9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt12__move_mergeIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS4_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEESL_SF_SF_SF_SF_SL_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.033 = phi ptr [ %.1, %bb.c ], [ %0, %bb.a ]   ; 6 uses
  %.01632 = phi ptr [ %.117, %bb.c ], [ %2, %bb.a ] ; 6 uses
  %.sroa.0.030 = phi ptr [ %i.z, %bb.c ], [ %4, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01632, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.033, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !107  ; 2 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit

bb.b:                                             ; preds = %.lr.ph
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01632, i64 24
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !54 ; 2 uses
  %.sroa.2.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %.033, i64 24
  %.sroa.2.0.copyload.i11.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i10.i.i, align 8, !tbaa !54 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11.i.i, i64 %.sroa.2.0.copyload.i.i.i) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.i, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %.sroa.0.0.copyload.i9.i.i = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %.01632, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i, ptr noundef %.sroa.0.0.copyload.i9.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #24
  %.fr.i.i.i.i = freeze i32 %i.l                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.m = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i11.i.i
  br i1 %i.m, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.n = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.n, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit: ; preds = %.lr.ph
  %i.o = icmp slt i32 %i.e, %i.g
  br i1 %i.o, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27:   ; preds = %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.01632, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01632, i64 32
  br label %bb.c

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread:     ; preds = %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_SL_EEbS9_SF_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 8
  store i32 %i.v, ptr %i.w, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.x, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.033, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27
  %.117 = phi ptr [ %i.t, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27 ], [ %.01632, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread ] ; 3 uses
  %.1 = phi ptr [ %.033, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread27 ], [ %i.y, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 32 ; 2 uses
  %i.aa = icmp ne ptr %.1, %1
  %i.ab = icmp ne ptr %.117, %3
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.z, %bb.c ] ; 7 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.c ] ; 5 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.c ] ; 5 uses
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = ptrtoint ptr %.0.lcssa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = ashr exact i64 %i.af, 5                 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge
  %i.ai = and i64 %i.af, 32
  %lcmp.mod.not = icmp eq i64 %i.ai, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %i.an, i64 20, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 32 ; 2 uses
  %i.aq = add nsw i64 %i.ag, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %.0.lcssa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa49.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %i.ar = icmp eq i64 %i.af, 32
  br i1 %i.ar, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !93
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.at, ptr %i.au, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.av, ptr noundef nonnull align 4 dereferenceable(20) %i.aw, i64 20, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !93
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ba, ptr noundef nonnull align 4 dereferenceable(20) %i.bb, i64 20, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.be = add nsw i64 %.012.i.i.i.i.i, -2
  %i.bf = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, !llvm.loop !22

_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %.lcssa49.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.bg = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.bh = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.bi ; 5 uses
  %i.bk = ptrtoint ptr %3 to i64
  %i.bl = ptrtoint ptr %.016.lcssa to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 5                 ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i19.preheader, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %i.bp = and i64 %i.bm, 32
  %lcmp.mod52.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.i.i.i19.prol.loopexit, label %.lr.ph.i.i.i.i.i19.prol

.lr.ph.i.i.i.i.i19.prol:                          ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %.016.lcssa, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !93
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !93
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.016.lcssa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bt, ptr noundef nonnull align 4 dereferenceable(20) %i.bu, i64 20, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %.016.lcssa, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bx = add nsw i64 %i.bn, -1
  br label %.lr.ph.i.i.i.i.i19.prol.loopexit

.lr.ph.i.i.i.i.i19.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i19.prol, %.lr.ph.i.i.i.i.i19.preheader
  %.012.i.i.i.i.i20.unr = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bx, %.lr.ph.i.i.i.i.i19.prol ]
  %.0811.i.i.i.i.i21.unr = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i19.prol ]
  %.0910.i.i.i.i.i22.unr = phi ptr [ %.016.lcssa, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bv, %.lr.ph.i.i.i.i.i19.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i19.prol ]
  %i.by = icmp eq i64 %i.bm, 32
  br i1 %i.by, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.prol.loopexit, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i19 ], [ %.012.i.i.i.i.i20.unr, %.lr.ph.i.i.i.i.i19.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i19 ], [ %.0811.i.i.i.i.i21.unr, %.lr.ph.i.i.i.i.i19.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i19 ], [ %.0910.i.i.i.i.i22.unr, %.lr.ph.i.i.i.i.i19.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 8
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !93
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cc, ptr noundef nonnull align 4 dereferenceable(20) %i.cd, i64 20, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !93
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 40
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !93
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ch, ptr noundef nonnull align 4 dereferenceable(20) %i.ci, i64 20, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 64 ; 2 uses
  %i.cl = add nsw i64 %.012.i.i.i.i.i20, -2
  %i.cm = icmp sgt i64 %.012.i.i.i.i.i20, 2
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit, !llvm.loop !22

_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit: ; preds = %.lr.ph.i.i.i.i.i19, %.lr.ph.i.i.i.i.i19.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i19.prol.loopexit ], [ %i.ck, %.lr.ph.i.i.i.i.i19 ]
  %5 = ptrtoint ptr %.lcssa to i64
  br label %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23

_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23: ; preds = %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit, %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %.08.lcssa.i.i.i.i.i18 = phi i64 [ %i.bg, %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %5, %_ZSt4moveIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit ]
  %i.cn = sub i64 %.08.lcssa.i.i.i.i.i18, %i.bg
  %i.co = getelementptr inbounds i8, ptr %i.bj, i64 %i.cn
  ret ptr %i.co
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm13DiffScalarValINS2_9StringRefELNS2_12DiffAttrKindE3EEESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_comp_iterIZ16sortTargetValuesIS6_EvRS8_IT_SaISF_EEEUlRKSF_RKT0_E_EEEvSF_SF_SL_SL_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.g = and i64 %i.d, 32
  %lcmp.mod64.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod64.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.h = getelementptr inbounds i8, ptr %3, i64 -32
  %i.i = getelementptr inbounds i8, ptr %4, i64 -32
  %i.j = getelementptr inbounds i8, ptr %3, i64 -24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = getelementptr inbounds i8, ptr %4, i64 -24
  store i32 %i.k, ptr %i.l, align 8, !tbaa !93
  %i.m = getelementptr inbounds i8, ptr %4, i64 -20
  %i.n = getelementptr inbounds i8, ptr %3, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, ptr noundef nonnull align 4 dereferenceable(20) %i.n, i64 20, i1 false)
  %i.o = add nsw i64 %i.e, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.i, %.lr.ph.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %i.p = icmp eq i64 %i.d, 32
  br i1 %i.p, label %_ZSt13move_backwardIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !93
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !93
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.t, ptr noundef nonnull align 4 dereferenceable(20) %i.u, i64 20, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !93
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  store i32 %i.y, ptr %i.z, align 8, !tbaa !93
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -52
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %i.ab, i64 20, i1 false)
  %i.ac = add nsw i64 %.010.i.i.i.i.i, -2
  %i.ad = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, !llvm.loop !24

bb.c:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %2, %3
  br i1 %i.ae, label %_ZSt13move_backwardIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %3, i64 -32
  br label %.outer

.outer:                                           ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35, %bb.d
  %.sroa.027.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.027.0.ph, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35 ] ; 6 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.at, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35 ]
  %.0.ph = phi ptr [ %i.af, %bb.d ], [ %.0, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35 ]
  %.sroa.027.0.ph = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -32 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -20
  %.sroa.2.0..sroa_idx.i10.i.i = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -8
  %i.ah = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -16
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.h
  %.sroa.0.0 = phi ptr [ %i.ch, %bb.h ], [ %.sroa.0.0.ph, %.outer ] ; 9 uses
  %.0 = phi ptr [ %i.ci, %bb.h ], [ %.0.ph, %.outer ] ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !107 ; 2 uses
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !107 ; 2 uses
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_NS_17__normal_iteratorISL_S8_IS7_SaIS7_EEEEEEbS9_SF_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !54 ; 2 uses
  %.sroa.2.0.copyload.i11.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i10.i.i, align 8, !tbaa !54 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11.i.i, i64 %.sroa.2.0.copyload.i.i.i) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.am, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i9.i.i = load ptr, ptr %i.ah, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.ao = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i, ptr noundef %.sroa.0.0.copyload.i9.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #24
  %.fr.i.i.i.i = freeze i32 %i.ao                 ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %bb.f
  %i.ap = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i11.i.i
  br i1 %i.ap, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread

_ZN4llvmltENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.aq = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.aq, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_NS_17__normal_iteratorISL_S8_IS7_SaIS7_EEEEEEbS9_SF_.exit: ; preds = %bb.e
  %i.ar = icmp slt i32 %i.aj, %i.ak
  br i1 %i.ar, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35:   ; preds = %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_NS_17__normal_iteratorISL_S8_IS7_SaIS7_EEEEEEbS9_SF_.exit
  %i.as = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -20
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -32 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.027.0.ph.pn, i64 -24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !93
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -24
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !93
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ax, ptr noundef nonnull align 4 dereferenceable(20) %i.as, i64 20, i1 false)
  %i.ay = icmp eq ptr %0, %.sroa.027.0.ph
  br i1 %i.ay, label %bb.g, label %.outer, !llvm.loop !673

bb.g:                                             ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread35
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 5                 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i19.preheader, label %_ZSt13move_backwardIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %bb.g
  %i.bf = and i64 %i.bc, 32
  %lcmp.mod.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i19.prol.loopexit, label %.lr.ph.i.i.i.i.i19.prol

.lr.ph.i.i.i.i.i19.prol:                          ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.bg = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -64
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !93
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -56
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !93
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -52
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bk, ptr noundef nonnull align 4 dereferenceable(20) %i.bl, i64 20, i1 false)
  %i.bm = add nsw i64 %i.bd, -1
  br label %.lr.ph.i.i.i.i.i19.prol.loopexit

.lr.ph.i.i.i.i.i19.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i19.prol, %.lr.ph.i.i.i.i.i19.preheader
  %.010.i.i.i.i.i20.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i19.prol ]
  %.069.i.i.i.i.i21.unr = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.i19.prol ]
  %.078.i.i.i.i.i22.unr = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i19.preheader ], [ %.0, %.lr.ph.i.i.i.i.i19.prol ]
  %i.bn = icmp eq i64 %i.bc, 32
  br i1 %i.bn, label %_ZSt13move_backwardIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.prol.loopexit, %.lr.ph.i.i.i.i.i19
  %.010.i.i.i.i.i20 = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i19 ], [ %.010.i.i.i.i.i20.unr, %.lr.ph.i.i.i.i.i19.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i19 ], [ %.069.i.i.i.i.i21.unr, %.lr.ph.i.i.i.i.i19.prol.loopexit ] ; 5 uses
  %.078.i.i.i.i.i22 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i19 ], [ %.078.i.i.i.i.i22.unr, %.lr.ph.i.i.i.i.i19.prol.loopexit ] ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !93
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -24
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !93
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -20
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.br, ptr noundef nonnull align 4 dereferenceable(20) %i.bs, i64 20, i1 false)
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -64
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -64
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !93
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -56
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !93
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -52
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.by, ptr noundef nonnull align 4 dereferenceable(20) %i.bz, i64 20, i1 false)
  %i.ca = add nsw i64 %.010.i.i.i.i.i20, -2
  %i.cb = icmp sgt i64 %.010.i.i.i.i.i20, 2
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN4llvm13DiffScalarValINS0_9StringRefELNS0_12DiffAttrKindE3EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, !llvm.loop !24

_ZN4llvmltENS_9StringRefES0_.exit.i.i.thread:     ; preds = %.thread.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ16sortTargetValuesIN4llvm13DiffScalarValINS3_9StringRefELNS3_12DiffAttrKindE3EEEEvRSt6vectorIT_SaIS9_EEEUlRKS9_RKT0_E_EclIPS7_NS_17__normal_iteratorISL_S8_IS7_SaIS7_EEEEEEbS9_SF_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !93
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -24
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !93
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i64 20, i1 false)
  %i.cg = icmp eq ptr %2, %.0
end_hunk_1
