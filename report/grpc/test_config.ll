Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/test_config?download=true
inline.NumInlined: 3354
inline.NumDeleted: 1548
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_T0_T1_:bb.a
bb.bc:                                            ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i93.i.i
  %i.fy = invoke noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i95.i.i unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #34
  unreachable

_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i95.i.i: ; preds = %bb.bc, %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i93.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %11, i64 10, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.not.i.i.i.i88.i.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i96.i.i, label %bb.be

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i95.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !926
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i96.i.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i96.i.i: ; preds = %bb.be, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i95.i.i
  %.sroa.0.i.i.i.i4.i.i86.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %9, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i4.i.i86.i.i.sroa.0.0.copyload, ptr %i.gb, align 8, !tbaa !15
  %i.gc = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !921
  %i.gd = load ptr, ptr %i.fs, align 8, !tbaa !921 ; 2 uses
  store ptr %i.fp, ptr %i.fs, align 8, !tbaa !921
  store <2 x ptr> %i.gc, ptr %i.l, align 16, !tbaa !921
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !921
  %.not.i.i.i7.i.i97.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i7.i.i97.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit98.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i96.i.i
  %i.ge = invoke noundef zeroext i1 %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit98.i.i unwind label %bb.bg ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #34
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit98.i.i: ; preds = %bb.bf, %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i96.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit98.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit85.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit70.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit55.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit42.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i.preheader, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i32.i
  %.sroa.012.0.i.i = phi ptr [ %i.gj, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i32.i ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i32.i ], [ %storemerge65170, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.val3.i.i20.i = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i ], [ %i.gj, %bb.bh ] ; 13 uses
  %.val2.i.i21.i = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !19
  %i.gh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val2.i.i21.i, ptr noundef nonnull readonly dereferenceable(1) %.val3.i.i20.i) #28
  %i.gi = icmp slt i32 %i.gh, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 48 ; 2 uses
  br i1 %i.gi, label %bb.bh, label %.preheader.i.i, !llvm.loop !1021

.preheader.i.i:                                   ; preds = %bb.bh, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.bh ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 6 uses
  %.val3.i10.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !19
  %i.gk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val3.i.i20.i, ptr noundef nonnull readonly dereferenceable(1) %.val3.i10.i.i) #28
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %.preheader.i.i, label %bb.bi, !llvm.loop !1022

bb.bi:                                            ; preds = %.preheader.i.i
  %i.gm = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gm, label %bb.bj, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEET_SF_SF_T0_.exit

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.012.1.i.i, i64 10, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.16..sroa_idx192, i8 0, i64 24, i1 false)
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !41 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 4 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.not.i.i.i.i.i22.i = icmp eq ptr %i.gq, null ; 2 uses
  br i1 %.not.i.i.not.i.i.i.i.i22.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit.i.i.i23.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.gr, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i8 0, i64 16, i1 false)
  br label %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit.i.i.i23.i

_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit.i.i.i23.i: ; preds = %bb.bk, %bb.bj
  %i.gs = phi ptr [ %i.go, %bb.bj ], [ null, %bb.bk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, i64 10, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.gu = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.gv = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.gw = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !921
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !40
  %.not.i.i.not.i.i.i.i.i.i24.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.not.i.i.i.i.i.i24.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i27.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit.i.i.i23.i
  %i.gy = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gy, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  %.pre.i.i.i25.i = load ptr, ptr %i.gp, align 8, !tbaa !921
  %.pre9.i.i.i26.i = load ptr, ptr %i.gn, align 8, !tbaa !921
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i27.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i27.i: ; preds = %bb.bl, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit.i.i.i23.i
  %i.gz = phi ptr [ %.pre9.i.i.i26.i, %bb.bl ], [ %i.gs, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit.i.i.i23.i ]
  %i.ha = phi ptr [ %.pre.i.i.i25.i, %bb.bl ], [ null, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit.i.i.i23.i ] ; 3 uses
  %.sroa.0.i.i.i.i.i.i.i19.i.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i.i.i.i19.i.sroa.0.0.copyload, ptr %i.gt, align 8, !tbaa !15
  store ptr %i.ha, ptr %i.ag, align 16, !tbaa !921
  store ptr %i.gz, ptr %i.af, align 8, !tbaa !921
  store <2 x ptr> %i.gw, ptr %i.gp, align 8, !tbaa !921
  %.not.i.i.i.i.i.i28.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i.i28.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i29.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i27.i
  %i.hb = invoke noundef zeroext i1 %i.ha(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i29.i unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #34
  unreachable

_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i29.i: ; preds = %bb.bm, %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 10, i1 false)
  %i.he = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.not.i.i.i.i.i22.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i.i30.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i29.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !926
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i.i30.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i.i30.i: ; preds = %bb.bo, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i29.i
  %.sroa.0.i.i.i.i4.i.i.i18.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.he, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i4.i.i.i18.i.sroa.0.0.copyload, ptr %i.he, align 8, !tbaa !15
  %i.hf = load ptr, ptr %i.gv, align 8, !tbaa !921 ; 3 uses
  store ptr %i.hf, ptr %i.ai, align 16, !tbaa !921
  store ptr %i.gq, ptr %i.gv, align 8, !tbaa !921
  %i.hg = load ptr, ptr %i.gu, align 8, !tbaa !921
  store ptr %i.hg, ptr %i.ah, align 8, !tbaa !921
  store ptr %i.go, ptr %i.gu, align 8, !tbaa !921
  %.not.i.i.i7.i.i.i31.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i7.i.i.i31.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i32.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i.i30.i
  %i.hh = invoke noundef zeroext i1 %i.hf(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i32.i unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #34
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i32.i: ; preds = %bb.bp, %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i6.i.i.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !1023

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEET_SF_SF_T0_.exit: ; preds = %bb.bi
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge65170, i64 noundef %i.cn)
  %i.hk = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.hl = sub i64 %i.hk, %i.a                     ; 3 uses
  %i.hm = icmp sgt i64 %i.hl, 768
  br i1 %i.hm, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_T0_.exit, !llvm.loop !1018

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_SF_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_T0_SG_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef range(i64 -192153584101141162, 192153584101141163) %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %"class.std::function", align 16    ; 9 uses
  %7 = alloca %"class.std::function", align 16    ; 9 uses
  %.sroa.3.sroa.2 = alloca [24 x i8], align 8     ; 3 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit
  %.047 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit ] ; 2 uses
  %i.e = shl i64 %.047, 1                         ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = getelementptr inbounds [48 x i8], ptr %0, i64 %i.f
  %i.h = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.i = getelementptr inbounds [48 x i8], ptr %0, i64 %i.h
  %.val2.i = load ptr, ptr %i.g, align 8, !tbaa !19
  %.val3.i = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.j = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val2.i, ptr noundef nonnull readonly dereferenceable(1) %.val3.i) #28
  %i.k = icmp slt i32 %i.j, 0
  %spec.select = select i1 %i.k, i64 %i.h, i64 %i.f ; 4 uses
  %i.l = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.m = getelementptr inbounds [48 x i8], ptr %0, i64 %.047 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 10, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !921
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !40
  %.not.i.i.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.n, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !921
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !921  ; 2 uses
  store <2 x ptr> %i.t, ptr %i.d, align 16, !tbaa !921
  store <2 x ptr> %i.p, ptr %i.s, align 8, !tbaa !921
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit: ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.y = icmp slt i64 %spec.select, %i.b
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !1024

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit ] ; 5 uses
  %i.z = and i64 %2, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.ab = add nsw i64 %2, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ae = shl nsw i64 %.0.lcssa, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds [48 x i8], ptr %0, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 10, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !921
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !40
  %.not.i.i.not.i.i.i35 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i.i35, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i36, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i36

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i36: ; preds = %bb.h, %bb.g
  %.sroa.0.i.i.i.i34.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i34.sroa.0.0.copyload, ptr %i.ai, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !921
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !921 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.an, align 16, !tbaa !921
  store <2 x ptr> %i.ak, ptr %i.ao, align 8, !tbaa !921
  %.not.i.i.i37 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i37, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i36
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit38 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #34
  unreachable

_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit38: ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i36, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit38, %bb.f, %._crit_edge
  %.1 = phi i64 [ %i.af, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit38 ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.sroa.0.0.copyload = load i16, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.2, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !921
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not.i.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit

_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit: ; preds = %bb.k, %bb.l
  %i.ay = icmp sgt i64 %.1, %1
  br i1 %i.ay, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i, %.lr.ph.i
  %.07.i = phi i64 [ %.1, %.lr.ph.i ], [ %.098.i, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i ] ; 3 uses
  %.098.in.i = add nsw i64 %.07.i, -1
  %.098.i = sdiv i64 %.098.in.i, 2                ; 4 uses
  %i.ba = getelementptr inbounds [48 x i8], ptr %0, i64 %.098.i ; 4 uses
  %.val2.i.i = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val2.i.i, ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.copyload) #28
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds [48 x i8], ptr %0, i64 %.07.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 10, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !921
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !40
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i.i.sroa.0.0.copyload, ptr %i.be, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 3 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !921
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !921 ; 2 uses
  store <2 x ptr> %i.bk, ptr %i.az, align 16, !tbaa !921
  store <2 x ptr> %i.bg, ptr %i.bj, align 8, !tbaa !921
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #34
  unreachable

_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i: ; preds = %bb.p, %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bp = icmp sgt i64 %.098.i, %1
  br i1 %i.bp, label %bb.m, label %.critedge.i, !llvm.loop !1025

.critedge.i:                                      ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i, %bb.m, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit ], [ %.07.i, %bb.m ], [ %.098.i, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i ]
  %i.bq = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i ; 4 uses
  store ptr %.sroa.0.0.copyload, ptr %i.bq, align 8
  %.sroa.3.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i16 %.sroa.3.sroa.0.0.copyload, ptr %.sroa.3.0..sroa_idx60, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i18.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not.i.i.i18.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i19.i, label %bb.r

bb.r:                                             ; preds = %.critedge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2, i64 16, i1 false), !tbaa.struct !926
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i19.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i19.i: ; preds = %bb.r, %.critedge.i
  %.sroa.0.i.i.i.i17.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i17.i.sroa.0.0.copyload, ptr %i.br, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 3 uses
  %i.bu = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !921
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !921 ; 2 uses
  store <2 x ptr> %i.bu, ptr %i.bs, align 16, !tbaa !921
  store <2 x ptr> %i.av, ptr %i.bt, align 8, !tbaa !921
  %.not.i.i.i20.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i20.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i19.i
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_14FlagI10TestConfigED2Ev.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #34
  unreachable

_ZN12_GLOBAL__N_14FlagI10TestConfigED2Ev.exit:    ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i19.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_14FlagI10TestConfigEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_18FlagNameComparatorEEEEvT_SF_T0_(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 10 uses
  %3 = alloca %"class.std::function", align 16    ; 10 uses
  %4 = alloca %"struct.(anonymous namespace)::Flag", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.0.020, %1
  br i1 %.not21, label %.loopexit19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0.023 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.o ] ; 7 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.023, %bb.o ] ; 4 uses
  %.val2.i = load ptr, ptr %.sroa.0.023, align 8, !tbaa !19
  %.val3.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.l = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val2.i, ptr noundef nonnull readonly dereferenceable(1) %.val3.i) #28
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.023, i64 10, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.pn22, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %.pn22, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pn22, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !926
  store ptr %i.q, ptr %i.d, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit

_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit: ; preds = %bb.c, %bb.d
  %i.s = ptrtoint ptr %.sroa.0.023 to i64
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.pn22, i64 96
  %i.w = udiv exact i64 %i.t, 48
  br label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i ] ; 4 uses
  %.079.i.i.i.i.i = phi ptr [ %.sroa.0.023, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i ] ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -48 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 10, i1 false)
  %i.z = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.aa = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i.i.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.i.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.z, align 8, !tbaa !15
  %i.af = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !921 ; 3 uses
  store ptr %i.ag, ptr %i.g, align 16, !tbaa !921
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !921
  %i.ah = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !921
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !921
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !921
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i.i.i
  %i.aj = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #34
  unreachable

_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.am = add nsw i64 %.011.i.i.i.i.i, -1
  %i.an = icmp sgt i64 %.011.i.i.i.i.i, 1
  br i1 %i.an, label %bb.e, label %.loopexit.loopexit, !llvm.loop !1026

.loopexit.loopexit:                               ; preds = %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !41
  %.pre24 = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit
  %i.ao = phi ptr [ %.pre24, %.loopexit.loopexit ], [ %i.q, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit ] ; 2 uses
  %i.ap = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.o, %_ZN12_GLOBAL__N_14FlagI10TestConfigEC2EOS2_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i

_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i: ; preds = %bb.i, %.loopexit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !926
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !15
  %i.aq = load <2 x ptr>, ptr %i.j, align 8, !tbaa !921
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !921 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !921
  store <2 x ptr> %i.aq, ptr %i.i, align 16, !tbaa !921
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !921
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.thread, label %bb.j

_ZN12_GLOBAL__N_14FlagI10TestConfigEaSEOS2_.exit.thread: ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZN12_GLOBAL__N_14FlagI10TestConfigED2Ev.exit

bb.j:                                             ; preds = %_ZNSt8functionIFbP10TestConfigPKcEEC2EOS5_.exit.i.i
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
end_hunk_0
