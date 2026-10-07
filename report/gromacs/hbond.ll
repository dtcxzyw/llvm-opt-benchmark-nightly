Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hbond?download=true
inline.NumInlined: 2770
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK3gmx15analysismodules12_GLOBAL__N_15Hbond16prepareFrameDataERKSt6vectorINS1_5HBondESaIS4_EE:bb.a
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #28
          to label %.noexc71 unwind label %.loopexit20 ; 5 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE12_M_check_lenEmPKc.exit.i.i60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ba, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.015.028, i64 16, i1 false), !tbaa.struct !181
  br i1 %i.at, label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i67, label %.lr.ph.i.i.i.i.i63

.lr.ph.i.i.i.i.i63:                               ; preds = %.noexc71, %.lr.ph.i.i.i.i.i63
  %.03.i.i.i.i.i64 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i63 ], [ %i.az, %.noexc71 ] ; 2 uses
  %.092.i.i.i.i.i65 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i63 ], [ %.val18.i.i59, %.noexc71 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.03.i.i.i.i.i64, ptr noundef nonnull readonly align 4 dereferenceable(16) %.092.i.i.i.i.i65, i64 16, i1 false), !tbaa.struct !181, !alias.scope !530
  %i.bb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i65, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i64, i64 16 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.bb, %i.h
  br i1 %.not.i.i.i.i.i66, label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i67, label %.lr.ph.i.i.i.i.i63, !llvm.loop !4

_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i67: ; preds = %.lr.ph.i.i.i.i.i63, %.noexc71
  %.0.lcssa.i.i.i.i.i68 = phi ptr [ %i.az, %.noexc71 ], [ %i.bc, %.lr.ph.i.i.i.i.i63 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i68, i64 16 ; 2 uses
  %.not.i27.i.i69 = icmp eq ptr %.val18.i.i59, null
  br i1 %.not.i27.i.i69, label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i67
  tail call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i59, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i67
  store ptr %i.az, ptr %0, align 8, !tbaa !192
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !193
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.be, ptr %i.d, align 8, !tbaa !194
  br label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

.loopexit20:                                      ; preds = %_ZNKSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE12_M_check_lenEmPKc.exit.i.i60
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

.loopexit.split-lp21:                             ; preds = %bb.m
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k, %bb.f, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.bf = phi ptr [ %i.bd, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.an, %bb.k ], [ %i.u, %bb.f ], [ %i.ak, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.028, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bg, %.8.val
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge
  %.pre.i.i.i = load i32, ptr %.val38, align 4, !tbaa !178
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i, %.lr.ph.preheader.i.i.i
  %i.bh = phi i32 [ %i.bj, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.bi = phi ptr [ %i.bv, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i ], [ %i.g, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.09.011.i.i.i = phi ptr [ %i.bi, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i ], [ %.val38, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i.i.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !179
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i.i.i, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !179
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i: ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i.i.i, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !180
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i.i.i, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !180
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i, %bb.o, %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.bv, %.val43
  br i1 %.not.i.i.i72, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i
  %i.bw = icmp eq ptr %.sroa.09.011.i.i.i, %.val43
  br i1 %i.bw, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i.i.i, i64 32 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.bx, %.val43
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i.i.i, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.preheader.i.i
  %i.bz = phi ptr [ %i.co, %bb.r ], [ %i.bx, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.0.020.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %.sroa.09.011.i.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %.sroa.014.019.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.by, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ca = load i32, ptr %.sroa.0.020.i.i, align 4, !tbaa !178
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !178
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.q, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !179
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !179
  %i.ch = icmp eq i32 %i.ce, %i.cg
  br i1 %i.ch, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !180
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !180
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %bb.q, %.lr.ph.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !181
  br label %bb.r

bb.r:                                             ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.020.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ], [ %i.cn, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.co, %.val43
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.p
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.011.i.i.i, %bb.p ], [ %.sroa.0.1.i.i, %bb.r ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i, %._crit_edge.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.i.i, %._crit_edge
  %.sroa.05.0.i.i = phi ptr [ %i.cp, %._crit_edge.i.i ], [ %.val43, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SD_SD_T0_.exit.i.i ], [ %.val43, %._crit_edge ], [ %.val43, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i ] ; 2 uses
  %.val41 = load ptr, ptr %i.e, align 8, !tbaa !195 ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !195 ; 6 uses
  %i.cq = ptrtoint ptr %.val.i to i64             ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %.val41, %.sroa.05.0.i.i
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit
  %i.cr = ptrtoint ptr %.sroa.05.0.i.i to i64
  %i.cs = sub i64 %i.cr, %i.cq
  %i.ct = getelementptr inbounds i8, ptr %.val.i, i64 %i.cs ; 2 uses
  store ptr %i.ct, ptr %i.e, align 8, !tbaa !193
  br label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit
  %.promoted = phi ptr [ %i.ct, %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i ], [ %.val41, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !166, !range !144, !noundef !145
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 490
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !176, !range !144, !noundef !145
  %i.cz = trunc nuw i8 %i.cy to i1
  %.not1729 = icmp ne ptr %.val.i, %.promoted
  %or.cond69.not = select i1 %i.cz, i1 %.not1729, i1 false
  br i1 %or.cond69.not, label %.lr.ph31, label %.loopexit

.lr.ph31:                                         ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph31, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89
  %.sroa.04.030 = phi ptr [ %.val.i, %.lr.ph31 ], [ %.sroa.04.1, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89 ] ; 4 uses
  %i.db = phi ptr [ %.promoted, %.lr.ph31 ], [ %i.dq, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %.val49 = load i32, ptr %.sroa.04.030, align 4, !tbaa !178
  %i.dc = getelementptr i8, ptr %.sroa.04.030, i64 4
  %.val50 = load i32, ptr %i.dc, align 4, !tbaa !179
  %.sroa.2.0.insert.ext.i75 = zext i32 %.val49 to i64
  %.sroa.2.0.insert.shift.i76 = shl nuw i64 %.sroa.2.0.insert.ext.i75, 32
  %.sroa.0.0.insert.ext.i77 = zext i32 %.val50 to i64
  %.sroa.0.0.insert.insert.i78 = or disjoint i64 %.sroa.2.0.insert.shift.i76, %.sroa.0.0.insert.ext.i77
  store i64 %.sroa.0.0.insert.insert.i78, ptr %2, align 8
  store i64 -4294967295, ptr %i.da, align 8
  %i.dd = call fastcc { ptr, ptr } @_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEES5_ESt4pairIT_SC_ESC_SC_RKT0_(ptr nonnull %.sroa.04.030, ptr %i.db, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { ptr, ptr } %i.dd, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not18 = icmp eq ptr %i.de, %i.df
  br i1 %.not18, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.dg, %i.cq
  %i.di = getelementptr inbounds i8, ptr %.val.i, i64 %i.dh ; 5 uses
  %i.dj = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dk = sub i64 %i.dj, %i.cq
  %i.dl = getelementptr inbounds i8, ptr %.val.i, i64 %i.dk ; 2 uses
  %.not16.i.i84 = icmp eq ptr %i.df, %i.db
  %.pre = ptrtoint ptr %i.db to i64
  %.pre39 = sub i64 %.pre, %i.dj                  ; 6 uses
  br i1 %.not16.i.i84, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = icmp sgt i64 %.pre39, 16
  br i1 %i.dm, label %bb.w, label %bb.x, !prof !175

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.di, ptr align 4 %i.dl, i64 %.pre39, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85

bb.x:                                             ; preds = %bb.v
  %i.dn = icmp eq i64 %.pre39, 16
  br i1 %i.dn, label %bb.y, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.dl, i64 16, i1 false), !tbaa.struct !181
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85: ; preds = %bb.u, %bb.y, %bb.x, %bb.w
  %.pre-phi40 = phi i64 [ %.pre39, %bb.w ], [ 16, %bb.y ], [ %.pre39, %bb.x ], [ %.pre39, %bb.u ]
  %i.do = getelementptr inbounds i8, ptr %i.di, i64 %.pre-phi40 ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.db, %i.do
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i88

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i88: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85
  store ptr %i.do, ptr %i.e, align 8, !tbaa !193
  br label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89

bb.z:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.030, i64 16
  br label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89

_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85, %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i88, %bb.z
  %i.dq = phi ptr [ %i.db, %bb.z ], [ %i.do, %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i88 ], [ %i.db, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85 ] ; 2 uses
  %.sroa.04.1 = phi ptr [ %i.dp, %bb.z ], [ %i.di, %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_15HBondES3_EvT_S5_RSaIT0_E.exit.i.i.i88 ], [ %i.di, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3gmx15analysismodules12_GLOBAL__N_15HBondESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i85 ] ; 2 uses
  %.not17 = icmp eq ptr %.sroa.04.1, %i.dq
  br i1 %.not17, label %.loopexit, label %bb.t, !llvm.loop !528

.loopexit:                                        ; preds = %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit89, %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, %bb.s
  ret void

thread-pre-split:                                 ; preds = %.loopexit20, %.loopexit.split-lp21, %.loopexit19, %.loopexit.split-lp
  %.val.pr = phi ptr [ %.val18.i.i, %.loopexit.split-lp ], [ %.val18.i.i, %.loopexit19 ], [ %.val18.i.i59, %.loopexit20 ], [ %.val18.i.i59, %.loopexit.split-lp21 ] ; 3 uses
  %.pn25.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit19 ], [ %lpad.loopexit22, %.loopexit20 ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp21 ]
  %.not.i.i.i90 = icmp eq ptr %.val.pr, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %thread-pre-split
  %i.dr = ptrtoint ptr %i.h to i64
  %i.ds = ptrtoint ptr %.val.pr to i64
  %i.dt = sub i64 %i.dr, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.pr, i64 noundef %i.dt) #30
  br label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EED2Ev.exit

_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_15HBondESaIS3_EED2Ev.exit: ; preds = %thread-pre-split, %bb.aa
  resume { ptr, i32 } %.pn25.pn.ph
}

declare void @_ZN3gmx18AnalysisDataHandle11finishFrameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN3gmx20AnalysisNeighborhoodD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !184 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #30
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !172    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !173
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !531
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !182
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #29 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !531
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !173
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !172    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !183  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !184
  store ptr %i.w, ptr %3, align 8, !tbaa !184
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !183
  store ptr %3, ptr %i.x, align 8, !tbaa !184
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !196
  store ptr %i.z, ptr %3, align 8, !tbaa !184
  store ptr %3, ptr %i.y, align 8, !tbaa !196
  %i.aa = load ptr, ptr %3, align 8, !tbaa !184   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !173
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !112
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !183
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !182
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !182
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !111

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !533
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
end_hunk_0
