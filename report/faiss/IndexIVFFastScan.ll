inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !182
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ null, %bb.k ]
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.am = load i64, ptr %i.al, align 8, !tbaa !75
  %i.an = mul i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.g, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ao = and i64 %1, 6917529027641081856
  %.not60 = icmp eq i64 %i.ao, 0
  %i.ap = shl i64 %1, 3
  %i.aq = select i1 %.not60, i64 %i.ap, i64 -1
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #40
          to label %bb.n unwind label %bb.ae      ; 4 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.ar, ptr %13, align 8, !tbaa !97
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(26) %8)
          to label %bb.o unwind label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.av = load ptr, ptr %0, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.p unwind label %.thread190

bb.p:                                             ; preds = %bb.o
  %i.az = xor i1 %i.ay, true
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.h, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.bb = load i64, ptr %6, align 8, !tbaa !94    ; 4 uses
  store i64 %i.bb, ptr %i.i, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bc = icmp sgt i64 %1, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %._crit_edge130.thread

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.not137 = icmp eq i64 %i.bb, 0
  br i1 %.not137, label %._crit_edge130.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.pre152 = phi i64 [ %.pre153, %._crit_edge ], [ %i.bb, %.preheader.lr.ph ] ; 2 uses
  %i.bg = phi i64 [ %i.dh, %._crit_edge ], [ %1, %.preheader.lr.ph ]
  %i.bh = phi i64 [ %i.di, %._crit_edge ], [ %i.bb, %.preheader.lr.ph ] ; 2 uses
  %.val18.i.i.i142 = phi ptr [ %.val18.i.i.i143, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bi = phi ptr [ %i.dj, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bj = phi ptr [ %i.dk, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bk = phi i64 [ %i.dl, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.044129 = phi i64 [ %i.dm, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.045128 = phi i64 [ %.146.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not138 = icmp eq i64 %i.bk, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bl = trunc i64 %.044129 to i32               ; 2 uses
  br label %bb.af

._crit_edge130.thread:                            ; preds = %bb.p, %.preheader.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit"

._crit_edge130:                                   ; preds = %._crit_edge
  %.val.pre = load ptr, ptr %14, align 8, !tbaa !210 ; 17 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.bo = icmp eq ptr %.val.pre, %i.dk
  br i1 %i.bo, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %bb.q

bb.q:                                             ; preds = %._crit_edge130
  %i.bp = ptrtoint ptr %i.dk to i64
  %i.bq = ptrtoint ptr %.val.pre to i64           ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = sdiv exact i64 %i.br, 12
  %i.bt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = xor i64 %i.bu, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_T1_"(ptr %.val.pre, ptr %i.dk, i64 noundef %i.bv)
  %i.bw = icmp sgt i64 %i.br, 192
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.bx = getelementptr i8, ptr %.val.pre, i64 4
  %scevgep.i.i.i = getelementptr i8, ptr %.val.pre, i64 12
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 12, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.w ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.val.pre, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.w ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.val.pre, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.by = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.val2.i.i.i.i.i = load i32, ptr %i.by, align 4, !tbaa !212 ; 4 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !212
  %i.bz = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.bz, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4
  %i.ca = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 12
  br i1 %i.ca, label %bb.t, label %bb.u, !prof !66

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.val.pre, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val.pre, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  store <3 x i32> %.sroa.0.0.copyload, ptr %.val.pre, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %.sroa.06.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %i.cc = getelementptr i8, ptr %.pn18.i.i.i.i, i64 4
  %.val3.i11.i.i.i.i.i = load i32, ptr %i.cc, align 4, !tbaa !212
  %i.cd = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i11.i.i.i.i.i
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %.sroa.010.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.v ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.ce = getelementptr i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -20
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ce, align 4, !tbaa !212
  %i.cf = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !215

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.v
  %.sroa.010.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.v ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.010.0.lcssa.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 4
  store i32 %.val2.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  br label %bb.w

bb.w:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 12 ; 2 uses
  %i.cg = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 192
  br i1 %i.cg, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", label %bb.r, !llvm.loop !216

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i": ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.pre, i64 192 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.dk
  br i1 %i.ci, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.co, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.ch, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i" ] ; 7 uses
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98 ; 2 uses
  %i.cj = load <2 x i32>, ptr %.sroa.0.06.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i18.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i, align 4, !tbaa !98
  %i.ck = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val3.i11.i.i19.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !212
  %i.cl = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i11.i.i19.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.010.012.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i26.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.cm = getelementptr i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -20
  %.val3.i.i.i27.i.i.i = load i32, ptr %i.cm, align 4, !tbaa !212
  %i.cn = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i.i.i27.i.i.i
  br i1 %i.cn, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !215

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i15.i.i.i
  %.sroa.010.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ], [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 2 uses
  store <2 x i32> %i.cj, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i18.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i23.i.i.i, align 4, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 12 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.dk
  br i1 %i.cp, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i15.i.i.i, !llvm.loop !217

.preheader.i28.i.i.i:                             ; preds = %bb.q
  %.sroa.0.017.i29.i.i.i = getelementptr inbounds nuw i8, ptr %.val.pre, i64 12 ; 3 uses
  %i.cq = icmp eq ptr %.sroa.0.017.i29.i.i.i, %i.dk
  br i1 %i.cq, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i30.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %.preheader.i28.i.i.i
  %i.cr = getelementptr i8, ptr %.val.pre, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i30.i.i.i
  %.sroa.0.019.i31.i.i.i = phi ptr [ %.sroa.0.017.i29.i.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.0.0.i43.i.i.i, %bb.ad ] ; 7 uses
  %.pn18.i32.i.i.i = phi ptr [ %.val.pre, %.lr.ph.i30.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ad ] ; 4 uses
  %i.cs = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 16
  %.val2.i.i33.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !212 ; 4 uses
  %.val3.i.i34.i.i.i = load i32, ptr %i.cr, align 4, !tbaa !212
  %i.ct = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i34.i.i.i
  br i1 %i.ct, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %.sroa.0220.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4
  %i.cu = ptrtoint ptr %.sroa.0.019.i31.i.i.i to i64
  %i.cv = sub i64 %i.cu, %i.bq                    ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, 12
  br i1 %i.cw, label %bb.z, label %bb.aa, !prof !66

bb.z:                                             ; preds = %bb.y
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.017.i29.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.val.pre, i64 %i.cv, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cx = icmp eq i64 %i.cv, 12
  br i1 %i.cx, label %bb.ab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cy, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val.pre, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store <3 x i32> %.sroa.0220.0.copyload, ptr %.val.pre, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %.sroa.06.0.copyload.i.i35.i.i.i = load i32, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i37.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i, align 4, !tbaa !98
  %i.cz = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 4
  %.val3.i11.i.i38.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !212
  %i.da = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i11.i.i38.i.i.i
  br i1 %i.da, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i"

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.ac, %.lr.ph.i.i44.i.i.i
  %.sroa.010.012.i.i45.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i45.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i46.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.db = getelementptr i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -20
  %.val3.i.i.i47.i.i.i = load i32, ptr %i.db, align 4, !tbaa !212
  %i.dc = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i.i47.i.i.i
  br i1 %i.dc, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i", !llvm.loop !215

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i, %bb.ac
  %.sroa.010.0.lcssa.i.i40.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i, %bb.ac ], [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i35.i.i.i, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i41.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 4
  store i32 %.val2.i.i33.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i41.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i37.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i42.i.i.i, align 4, !tbaa !98
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i
  %.sroa.0.0.i43.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i, i64 12 ; 2 uses
  %i.dd = icmp eq ptr %.sroa.0.0.i43.i.i.i, %i.dk
  br i1 %i.dd, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %bb.x, !llvm.loop !216

bb.ae:                                            ; preds = %bb.m
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit101

.thread:                                          ; preds = %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i100

.thread190:                                       ; preds = %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i100

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit
  %.pre146 = load i64, ptr %i.a, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre153 = phi i64 [ %.pre152, %.preheader ], [ %.pre155, %._crit_edge.loopexit ]
  %i.dh = phi i64 [ %i.bg, %.preheader ], [ %.pre146, %._crit_edge.loopexit ] ; 2 uses
  %i.di = phi i64 [ %i.bh, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.val18.i.i.i143 = phi ptr [ %.val18.i.i.i142, %.preheader ], [ %.val18.i.i.i145, %._crit_edge.loopexit ]
  %i.dj = phi ptr [ %i.bi, %.preheader ], [ %i.ep, %._crit_edge.loopexit ]
  %i.dk = phi ptr [ %i.bj, %.preheader ], [ %i.eq, %._crit_edge.loopexit ] ; 8 uses
  %i.dl = phi i64 [ 0, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.146.lcssa = phi i64 [ %.045128, %.preheader ], [ %i.er, %._crit_edge.loopexit ]
  %i.dm = add nuw nsw i64 %.044129, 1             ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.dh
  br i1 %i.dn, label %.preheader, label %._crit_edge130, !llvm.loop !218

bb.af:                                            ; preds = %.lr.ph, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit
  %.pre154 = phi i64 [ %.pre152, %.lr.ph ], [ %.pre155, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 3 uses
  %i.do = phi i64 [ %i.bh, %.lr.ph ], [ %i.eo, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %.val18.i.i.i = phi ptr [ %.val18.i.i.i142, %.lr.ph ], [ %.val18.i.i.i145, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 7 uses
  %i.dp = phi ptr [ %i.bi, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 5 uses
  %i.dq = phi ptr [ %i.bj, %.lr.ph ], [ %i.eq, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 6 uses
  %.043127 = phi i64 [ 0, %.lr.ph ], [ %i.es, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %.146126 = phi i64 [ %.045128, %.lr.ph ], [ %i.er, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %i.bd, align 8, !tbaa !101
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.146126
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !61 ; 2 uses
  %i.du = icmp sgt i64 %i.dt, -1
  br i1 %i.du, label %bb.ag, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

bb.ag:                                            ; preds = %bb.af
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  %i.dw = trunc i64 %.043127 to i32               ; 2 uses
  %.not.i.i = icmp eq ptr %i.dq, %i.dp
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.bl, ptr %i.dq, align 4, !tbaa !98
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %i.dv, ptr %.sroa.6109.0..sroa_idx, align 4, !tbaa !98
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %i.dw, ptr %.sroa.7112.0..sroa_idx, align 4, !tbaa !98
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  store ptr %i.dx, ptr %i.be, align 8, !tbaa !220
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dy = ptrtoint ptr %i.dp to i64
  %i.dz = ptrtoint ptr %.val18.i.i.i to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 6 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.aj, label %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #38
          to label %.noexc unwind label %.loopexit.split-lp120

.noexc:                                           ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ec = sdiv exact i64 %i.ea, 12                ; 3 uses
  %i.ed = icmp eq ptr %i.dp, %.val18.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.ed, i64 1, i64 %i.ec
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ec ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ec
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 768614336404564650)
  %i.eh = select i1 %i.ef, i64 768614336404564650, i64 %i.eg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ei = mul nuw nsw i64 %i.eh, 12
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #40
          to label %.noexc87 unwind label %.loopexit119 ; 5 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ea ; 4 uses
  store i32 %i.bl, ptr %i.ek, align 4, !tbaa !98
  %.sroa.6109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.dv, ptr %.sroa.6109.0..sroa_idx110, align 4, !tbaa !98
  %.sroa.7112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.dw, ptr %.sroa.7112.0..sroa_idx113, align 4, !tbaa !98
  %i.el = icmp sgt i64 %i.ea, 0
  br i1 %i.el, label %bb.ak, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i

bb.ak:                                            ; preds = %.noexc87
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr align 4 %.val18.i.i.i, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i: ; preds = %bb.ak, %.noexc87
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  %.not.i21.i.i.i = icmp eq ptr %.val18.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i, i64 noundef %i.ea) #39
  %.pre.pre = load i64, ptr %i.i, align 8, !tbaa !61
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i
  %.pre = phi i64 [ %.pre.pre, %bb.al ], [ %.pre154, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i ] ; 2 uses
  store ptr %i.ej, ptr %14, align 8, !tbaa !222
  store ptr %i.em, ptr %i.be, align 8, !tbaa !220
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.ej, i64 %i.eh ; 2 uses
  store ptr %i.en, ptr %i.bf, align 8, !tbaa !223
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

.loopexit119:                                     ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp120:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit: ; preds = %bb.ah, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, %bb.af
  %.pre155 = phi i64 [ %.pre154, %bb.ah ], [ %.pre, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %.pre154, %bb.af ] ; 2 uses
  %i.eo = phi i64 [ %i.do, %bb.ah ], [ %.pre, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.do, %bb.af ] ; 4 uses
  %.val18.i.i.i145 = phi ptr [ %.val18.i.i.i, %bb.ah ], [ %i.ej, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %.val18.i.i.i, %bb.af ] ; 2 uses
  %i.ep = phi ptr [ %i.dp, %bb.ah ], [ %i.en, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.dp, %bb.af ] ; 2 uses
  %i.eq = phi ptr [ %i.dx, %bb.ah ], [ %i.em, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.dq, %bb.af ] ; 2 uses
  %i.er = add i64 %.146126, 1                     ; 2 uses
  %i.es = add nuw i64 %.043127, 1                 ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.eo
  br i1 %i.et, label %bb.af, label %._crit_edge.loopexit, !llvm.loop !224

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit": ; preds = %bb.ad, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i", %._crit_edge130.thread, %.preheader.i28.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", %._crit_edge130
  %i.eu = phi ptr [ %i.bm, %._crit_edge130.thread ], [ %i.bn, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.bn, %._crit_edge130 ], [ %i.bn, %.preheader.i28.i.i.i ], [ %i.bn, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i" ], [ %i.bn, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.val75131 = load ptr, ptr %14, align 8, !tbaa !222 ; 3 uses
  %.val76132 = load ptr, ptr %i.eu, align 8, !tbaa !220 ; 2 uses
  %.not139 = icmp eq ptr %.val76132, %.val75131
  br i1 %.not139, label %._crit_edge136, label %.lr.ph135

end_hunk_0
begin_hunk_1_@_ZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS_24SIMDResultHandlerToFloatERKNS0_15CoarseQuantizedEPmS8_RKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFERNS_19FastScanCodeScannerE:bb.a

bb.q:                                             ; preds = %bb.p
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  %i.az = trunc i64 %.0134512.us to i32           ; 2 uses
  %.not.i.i.us = icmp eq ptr %.sroa.15293.1508.us, %.sroa.22.1509.us
  br i1 %.not.i.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.at, ptr %.sroa.15293.1508.us, align 4, !tbaa !98
  %.sroa.6287.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.15293.1508.us, i64 4
  store i32 %i.ay, ptr %.sroa.6287.0..sroa_idx.us, align 4, !tbaa !98
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.15293.1508.us, i64 8
  store i32 %i.az, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !98
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.15293.1508.us, i64 12
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us

bb.s:                                             ; preds = %bb.q
  %i.bb = ptrtoint ptr %.sroa.22.1509.us to i64
  %i.bc = ptrtoint ptr %.sroa.0292.1510.us to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %.split.us, label %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.s
  %i.bf = sdiv exact i64 %i.bd, 12                ; 3 uses
  %i.bg = icmp eq ptr %.sroa.22.1509.us, %.sroa.0292.1510.us
  %.sroa.speculated.i.i.i.i.us = select i1 %i.bg, i64 1, i64 %i.bf
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 768614336404564650)
  %i.bk = select i1 %i.bi, i64 768614336404564650, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.us = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.us)
  %i.bl = mul nuw nsw i64 %i.bk, 12
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #40
          to label %.noexc186.us unwind label %.loopexit364.split.us ; 4 uses

.noexc186.us:                                     ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bd ; 4 uses
  store i32 %i.at, ptr %i.bn, align 4, !tbaa !98
  %.sroa.6287.0..sroa_idx288.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.ay, ptr %.sroa.6287.0..sroa_idx288.us, align 4, !tbaa !98
  %.sroa.7.0..sroa_idx290.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.az, ptr %.sroa.7.0..sroa_idx290.us, align 4, !tbaa !98
  %i.bo = icmp sgt i64 %i.bd, 0
  br i1 %i.bo, label %bb.t, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us

bb.t:                                             ; preds = %.noexc186.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %.sroa.0292.1510.us, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us: ; preds = %bb.t, %.noexc186.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %.not.i21.i.i.i.us = icmp eq ptr %.sroa.0292.1510.us, null
  br i1 %.not.i21.i.i.i.us, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0292.1510.us, i64 noundef %i.bd) #39
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us: ; preds = %bb.u, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bk
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us: ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us, %bb.r, %bb.p
  %.sroa.15293.2.us = phi ptr [ %.sroa.15293.1508.us, %bb.p ], [ %i.bp, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %i.ba, %bb.r ] ; 14 uses
  %.sroa.22.2.us = phi ptr [ %.sroa.22.1509.us, %bb.p ], [ %i.bq, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %.sroa.22.1509.us, %bb.r ] ; 7 uses
  %.sroa.0292.2.us = phi ptr [ %.sroa.0292.1510.us, %bb.p ], [ %i.bm, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %.sroa.0292.1510.us, %bb.r ] ; 24 uses
  %i.br = add i64 %.1137511.us, 1                 ; 2 uses
  %i.bs = add nuw i64 %.0134512.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.aq
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.p, !llvm.loop !236

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us
  %i.bt = add nuw nsw i64 %.0135520.us, 1         ; 2 uses
  %exitcond641.not = icmp eq i64 %i.bt, %1
  br i1 %exitcond641.not, label %._crit_edge521, label %.preheader363.us, !llvm.loop !237

.loopexit364.split.us:                            ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit366.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit223

._crit_edge521:                                   ; preds = %._crit_edge.us
  %i.bu = icmp eq ptr %.sroa.0292.2.us, %.sroa.15293.2.us
  br i1 %i.bu, label %.loopexit361, label %bb.v

bb.v:                                             ; preds = %._crit_edge521
  %i.bv = ptrtoint ptr %.sroa.15293.2.us to i64
  %i.bw = ptrtoint ptr %.sroa.0292.2.us to i64    ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = sdiv exact i64 %i.bx, 12
  %i.bz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_T1_"(ptr %.sroa.0292.2.us, ptr %.sroa.15293.2.us, i64 noundef %i.cb)
  %i.cc = icmp sgt i64 %i.bx, 192
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v
  %i.cd = getelementptr i8, ptr %.sroa.0292.2.us, i64 4
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0292.2.us, i64 12
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 12, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.ab ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0292.2.us, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.ab ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0292.2.us, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.ce = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.val2.i.i.i.i.i = load i32, ptr %i.ce, align 4, !tbaa !238 ; 4 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !238
  %i.cf = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.cf, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4
  %i.cg = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 12
  br i1 %i.cg, label %bb.y, label %bb.z, !prof !66

bb.y:                                             ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0292.2.us, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.0292.2.us, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  store <3 x i32> %.sroa.0.0.copyload, ptr %.sroa.0292.2.us, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %.sroa.06.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %i.ci = getelementptr i8, ptr %.pn18.i.i.i.i, i64 4
  %.val3.i11.i.i.i.i.i = load i32, ptr %i.ci, align 4, !tbaa !238
  %i.cj = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i11.i.i.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %.lr.ph.i.i.i.i.i
  %.sroa.010.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.aa ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.ck = getelementptr i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -20
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !238
  %i.cl = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !240

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.aa
  %.sroa.010.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.010.0.lcssa.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 4
  store i32 %.val2.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 12 ; 2 uses
  %i.cm = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 192
  br i1 %i.cm, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", label %bb.w, !llvm.loop !241

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i": ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0292.2.us, i64 192 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %.sroa.15293.2.us
  br i1 %i.co, label %.loopexit361, label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.cu, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.cn, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ] ; 7 uses
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98 ; 2 uses
  %i.cp = load <2 x i32>, ptr %.sroa.0.06.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i18.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i, align 4, !tbaa !98
  %i.cq = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val3.i11.i.i19.i.i.i = load i32, ptr %i.cq, align 4, !tbaa !238
  %i.cr = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i11.i.i19.i.i.i
  br i1 %i.cr, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.010.012.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i26.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.cs = getelementptr i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -20
  %.val3.i.i.i27.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !238
  %i.ct = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i.i.i27.i.i.i
  br i1 %i.ct, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !240

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i15.i.i.i
  %.sroa.010.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ], [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 2 uses
  store <2 x i32> %i.cp, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i18.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i23.i.i.i, align 4, !tbaa !98
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 12 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %.sroa.15293.2.us
  br i1 %i.cv, label %.loopexit361, label %.lr.ph.i15.i.i.i, !llvm.loop !242

.preheader.i28.i.i.i:                             ; preds = %bb.v
  %.sroa.0.017.i29.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0292.2.us, i64 12 ; 3 uses
  %i.cw = icmp eq ptr %.sroa.0.017.i29.i.i.i, %.sroa.15293.2.us
  br i1 %i.cw, label %.loopexit361, label %.lr.ph.i30.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %.preheader.i28.i.i.i
  %i.cx = getelementptr i8, ptr %.sroa.0292.2.us, i64 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %.lr.ph.i30.i.i.i
  %.sroa.0.019.i31.i.i.i = phi ptr [ %.sroa.0.017.i29.i.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.0.0.i43.i.i.i, %bb.ai ] ; 7 uses
  %.pn18.i32.i.i.i = phi ptr [ %.sroa.0292.2.us, %.lr.ph.i30.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ai ] ; 4 uses
  %i.cy = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 16
  %.val2.i.i33.i.i.i = load i32, ptr %i.cy, align 4, !tbaa !238 ; 4 uses
  %.val3.i.i34.i.i.i = load i32, ptr %i.cx, align 4, !tbaa !238
  %i.cz = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i34.i.i.i
  br i1 %i.cz, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0933.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4
  %i.da = ptrtoint ptr %.sroa.0.019.i31.i.i.i to i64
  %i.db = sub i64 %i.da, %i.bw                    ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 12
  br i1 %i.dc, label %bb.ae, label %bb.af, !prof !66

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.017.i29.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0292.2.us, i64 %i.db, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dd = icmp eq i64 %i.db, 12
  br i1 %i.dd, label %bb.ag, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.0292.2.us, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  store <3 x i32> %.sroa.0933.0.copyload, ptr %.sroa.0292.2.us, align 4
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  %.sroa.06.0.copyload.i.i35.i.i.i = load i32, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i37.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i, align 4, !tbaa !98
  %i.df = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 4
  %.val3.i11.i.i38.i.i.i = load i32, ptr %i.df, align 4, !tbaa !238
  %i.dg = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i11.i.i38.i.i.i
  br i1 %i.dg, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i"

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.ah, %.lr.ph.i.i44.i.i.i
  %.sroa.010.012.i.i45.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ah ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i45.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i46.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.dh = getelementptr i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -20
  %.val3.i.i.i47.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !238
  %i.di = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i.i47.i.i.i
  br i1 %i.di, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i", !llvm.loop !240

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i, %bb.ah
  %.sroa.010.0.lcssa.i.i40.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i, %bb.ah ], [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i35.i.i.i, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i41.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 4
  store i32 %.val2.i.i33.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i41.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i37.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i42.i.i.i, align 4, !tbaa !98
  br label %bb.ai

bb.ai:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i
  %.sroa.0.0.i43.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i, i64 12 ; 2 uses
  %i.dj = icmp eq ptr %.sroa.0.0.i43.i.i.i, %.sroa.15293.2.us
  br i1 %i.dj, label %.loopexit361, label %bb.ac, !llvm.loop !241

bb.aj:                                            ; preds = %bb.k
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ak:                                            ; preds = %bb.m, %bb.l
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228

bb.al:                                            ; preds = %bb.n
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228

.split.us:                                        ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #38
          to label %.noexc unwind label %.loopexit.split-lp365

.noexc:                                           ; preds = %.split.us
  unreachable

.loopexit.split-lp365:                            ; preds = %.split.us
  %lpad.loopexit.split-lp367 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit223

.loopexit361:                                     ; preds = %bb.ai, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i", %.preheader363.lr.ph, %bb.o, %._crit_edge521, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", %.preheader.i28.i.i.i
  %i.dn = phi i1 [ false, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ true, %.preheader363.lr.ph ], [ false, %.preheader.i28.i.i.i ], [ true, %._crit_edge521 ], [ false, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ true, %bb.o ], [ false, %bb.ai ]
  %.sroa.0292.0.lcssa681 = phi ptr [ %.sroa.0292.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader363.lr.ph ], [ %.sroa.0292.2.us, %.preheader.i28.i.i.i ], [ %.sroa.0292.2.us, %._crit_edge521 ], [ %.sroa.0292.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.0292.2.us, %bb.ai ] ; 20 uses
  %.sroa.22.0.lcssa680 = phi ptr [ %.sroa.22.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader363.lr.ph ], [ %.sroa.22.2.us, %.preheader.i28.i.i.i ], [ %.sroa.22.2.us, %._crit_edge521 ], [ %.sroa.22.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.22.2.us, %bb.ai ] ; 4 uses
  %.sroa.15293.0.lcssa679 = phi ptr [ %.sroa.15293.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader363.lr.ph ], [ %.sroa.15293.2.us, %.preheader.i28.i.i.i ], [ %.sroa.15293.2.us, %._crit_edge521 ], [ %.sroa.15293.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.15293.2.us, %bb.ai ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !225 ; 2 uses
  %.not144 = icmp eq i64 %i.dp, 0
  %sext = shl i64 %i.dp, 32
  %i.dq = ashr exact i64 %sext, 32
  %i.dr = select i1 %.not144, i64 11, i64 %i.dq   ; 10 uses
  %i.ds = load ptr, ptr %12, align 8, !tbaa !175
  %.not145 = icmp eq ptr %i.ds, null
  br i1 %.not145, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.loopexit361
  %.not355 = icmp eq i64 %i.dr, 0
  br i1 %.not355, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = icmp ugt i64 %i.dr, 4611686018427387903
  br i1 %i.dt, label %bb.ao, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc230 unwind label %.thread341

.noexc230:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.an
  %i.du = shl nuw nsw i64 %i.dr, 1
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #40
          to label %.noexc231 unwind label %.thread341 ; 4 uses

.noexc231:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  store i16 0, ptr %i.dv, align 2, !tbaa !243
  %i.dw = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.noexc188, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc231
  %i.dy = getelementptr i8, ptr %i.dv, i64 2
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dw, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.dy, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !243
  br label %.noexc188

.noexc188:                                        ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc231
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.dr
  br label %.thread

.thread:                                          ; preds = %bb.am, %.noexc188
  %.sroa.0275.2 = phi ptr [ %i.dv, %.noexc188 ], [ null, %bb.am ] ; 2 uses
  %.sroa.16.2 = phi ptr [ %i.dz, %.noexc188 ], [ null, %bb.am ]
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %.sroa.0275.2, ptr %i.ea, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %bb.ar

.thread341:                                       ; preds = %bb.ao, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit223

bb.ap:                                            ; preds = %.loopexit361
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ec = icmp ugt i64 %i.dr, 2305843009213693951
  br i1 %i.ec, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #38
          to label %.noexc189 unwind label %bb.au

.noexc189:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %.thread, %bb.ap
  %.sroa.16.0314 = phi ptr [ %.sroa.16.2, %.thread ], [ null, %bb.ap ] ; 8 uses
  %.sroa.0275.0307 = phi ptr [ %.sroa.0275.2, %.thread ], [ null, %bb.ap ] ; 11 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %.not675 = icmp eq i64 %i.dr, 0
  br i1 %.not675, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.ar
  %i.ee = shl nuw nsw i64 %i.dr, 2
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #40
          to label %.noexc190 unwind label %bb.au ; 3 uses

.noexc190:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ef, ptr %13, align 8, !tbaa !247
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !249
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dr
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !250
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.ar, %.noexc190
  %i.ei = ptrtoint ptr %.sroa.15293.0.lcssa679 to i64
  %i.ej = ptrtoint ptr %.sroa.0292.0.lcssa681 to i64 ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 12                ; 2 uses
  br i1 %i.dn, label %._crit_edge542, label %.lr.ph541

.lr.ph541:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.en = trunc i64 %i.aq to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %scevgep847 = getelementptr i8, ptr %.sroa.0292.0.lcssa681, i64 8
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph541, %_ZNSt6vectorIiSaIiEED2Ev.exit210
  %.0108540 = phi i64 [ 0, %.lr.ph541 ], [ %.0107.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit210 ] ; 17 uses
  %.0109539 = phi i64 [ 0, %.lr.ph541 ], [ %.1110, %_ZNSt6vectorIiSaIiEED2Ev.exit210 ] ; 2 uses
  %.0111538 = phi i64 [ 0, %.lr.ph541 ], [ %.1112, %_ZNSt6vectorIiSaIiEED2Ev.exit210 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0292.0.lcssa681, i64 %.0108540
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !238 ; 2 uses
  %i.ev = add i64 %.0108540, %i.dr
  %.fr = freeze i64 %i.ev
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.el, i64 %.fr)
  %i.ew = add nuw i64 %.0108540, 1                ; 3 uses
end_hunk_1
