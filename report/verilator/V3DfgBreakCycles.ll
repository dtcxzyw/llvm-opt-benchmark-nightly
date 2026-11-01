Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgBreakCycles?download=true
inline.NumInlined: 4049
inline.NumDeleted: 1674
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_T1_:bb.a
  %i.bo = and i64 %i.aw, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i.i, %i.br
  br i1 %i.bs, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !341
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i9.i.i.i = phi i64 [ %i.bu, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.2.8.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.4.0.copyload.i.i.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i9.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i1011.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i1011.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i1011.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !281
  %i.ca = icmp ult i32 %i.bz, %.sroa.2.8.extract.trunc.i.i.i.i.i
  br i1 %i.ca, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !341
  %.not12.i.i.i = icmp eq i64 %.0920.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.j, !llvm.loop !557

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.cc, align 8, !tbaa !147
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !117
  %i.cd = icmp sgt i64 %i.aw, 16
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit, !llvm.loop !559

.lr.ph48:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2547 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02646 = phi i64 [ %i.cf, %bb.b ], [ %2, %.lr.ph ]
  %i.ce = phi i64 [ %i.de, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cf = add nsw i64 %.02646, -1                 ; 3 uses
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cg ; 5 uses
  %i.ci = getelementptr inbounds i8, ptr %storemerge2547, i64 -16 ; 4 uses
  %i.cj = load i32, ptr %i.g, align 8, !tbaa !281 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !281 ; 3 uses
  %i.cm = icmp ult i32 %i.cj, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %storemerge2547, i64 -8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !281 ; 4 uses
  br i1 %i.cm, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph48
  %i.cp = icmp ult i32 %i.cl, %i.co
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cq = icmp ult i32 %i.cj, %i.co
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph48
  %i.cr = icmp ult i32 %i.cj, %i.co
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cs = icmp ult i32 %i.cl, %i.co
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.cx, %bb.x ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2547, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.ct = load i32, ptr %i.h, align 8, !tbaa !281 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.cx, %bb.v ] ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !281
  %i.cw = icmp ult i32 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.cw, label %bb.v, label %.preheader.i.i, !llvm.loop !560

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !281
  %i.da = icmp ult i32 %i.ct, %i.cz
  br i1 %i.da, label %.preheader.i.i, label %bb.w, !llvm.loop !561

bb.w:                                             ; preds = %.preheader.i.i
  %i.db = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.db, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEET_SI_SI_T0_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !562

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEET_SI_SI_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2547, i64 noundef %i.cf)
  %i.dc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dd = sub i64 %i.dc, %i.a
  %.fr.i = freeze i64 %i.dd                       ; 2 uses
  %i.de = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.df = icmp sgt i64 %i.de, 16
  br i1 %i.df, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit, !llvm.loop !555

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %struct.Driver, align 8             ; 4 uses
  %3 = alloca %struct.Driver, align 8             ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !281  ; 4 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !281
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !341
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.j, label %bb.d, label %bb.e, !prof !165

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !147
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 28
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !281
  %i.n = icmp ult i32 %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.09.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !341
  %i.o = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !281
  %i.q = icmp ult i32 %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i, !llvm.loop !563

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.09.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.09.0.lcssa.i.i, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 8
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !tbaa !117
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 12
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 4, !tbaa !117
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !564

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.z, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i13 = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8 ; 2 uses
  %i.s = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !117
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !117 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !281
  %i.v = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i21
  %.sroa.09.012.i.i22 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i22, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i23, i64 16, i1 false), !tbaa.struct !341
  %i.w = getelementptr inbounds i8, ptr %.sroa.09.012.i.i22, i64 -24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !281
  %i.y = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16, !llvm.loop !563

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i21, %.lr.ph.i12
  %.sroa.09.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i13, ptr %.sroa.09.0.lcssa.i.i17, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx5.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 8
  store <2 x i32> %i.s, ptr %.sroa.4.0..sroa_idx5.i.i18, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i20 = icmp eq ptr %i.z, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.lr.ph.i12, !llvm.loop !565

bb.h:                                             ; preds = %bb.a
  %i.aa = icmp eq ptr %0, %1
  br i1 %i.aa, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.preheader.i24

.preheader.i24:                                   ; preds = %bb.h
  %.sroa.0.016.i25 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i26 = icmp eq ptr %.sroa.0.016.i25, %1
  br i1 %.not17.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.preheader.i24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i27
  %.sroa.0.019.i28 = phi ptr [ %.sroa.0.016.i25, %.lr.ph.i27 ], [ %.sroa.0.0.i37, %bb.o ] ; 7 uses
  %.pn18.i29 = phi ptr [ %0, %.lr.ph.i27 ], [ %.sroa.0.019.i28, %bb.o ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !281 ; 4 uses
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !281
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i28, i64 16, i1 false), !tbaa.struct !341
  %i.ag = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.ah = sub i64 %i.ag, %i.b                     ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 4                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !165

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %i.al = sub nsw i64 0, %i.ai
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ah, 16
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i30 = load ptr, ptr %.sroa.0.019.i28, align 8, !tbaa !147
  %.sroa.5.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 28
  %.sroa.5.0.copyload.i.i32 = load i32, ptr %.sroa.5.0..sroa_idx.i.i31, align 4, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !281
  %i.ar = icmp ult i32 %i.ad, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33

.lr.ph.i.i39:                                     ; preds = %bb.n, %.lr.ph.i.i39
  %.sroa.09.012.i.i40 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ], [ %.sroa.0.019.i28, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i40, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i41, i64 16, i1 false), !tbaa.struct !341
  %i.as = getelementptr inbounds i8, ptr %.sroa.09.012.i.i40, i64 -24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !281
  %i.au = icmp ult i32 %i.ad, %i.at
  br i1 %i.au, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33, !llvm.loop !563

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33: ; preds = %.lr.ph.i.i39, %bb.n
  %.sroa.09.0.lcssa.i.i34 = phi ptr [ %.sroa.0.019.i28, %bb.n ], [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i30, ptr %.sroa.09.0.lcssa.i.i34, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx5.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i34, i64 8
  store i32 %i.ad, ptr %.sroa.4.0..sroa_idx5.i.i35, align 8, !tbaa !117
  %.sroa.5.0..sroa_idx7.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i34, i64 12
  store i32 %.sroa.5.0.copyload.i.i32, ptr %.sroa.5.0..sroa_idx7.i.i36, align 4, !tbaa !117
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !564

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16, %.preheader.i24, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN16V3DfgBreakCycles11TraceDriver11traceAddSubI6DfgSubEEP9DfgVertexPT_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !250
  %i.c = add i32 %i.b, 1
  %i.d = tail call noundef ptr @_ZN16V3DfgBreakCycles11TraceDriver4makeI6DfgSubEEPT_PK9DfgVertexj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !237
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !238
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !239
  %i.j = load i32, ptr %i.a, align 4, !tbaa !250
  %i.k = tail call noundef ptr @_ZN16V3DfgBreakCycles11TraceDriver5traceEP9DfgVertexjj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.i, i32 noundef %i.j, i32 noundef 0) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !238  ; 11 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !219  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !248 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.pre.i.i.i.i.i, ptr %i.t, align 8, !tbaa !248
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c, %bb.b
  %.not15.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 16
  store ptr %i.s, ptr %i.u, align 8, !tbaa !219
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i.i
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !217
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !219
  store ptr %i.x, ptr %i.q, align 8, !tbaa !217
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !249
  %i.aa = icmp eq ptr %i.z, %i.o
  br i1 %i.aa, label %bb.h, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %.pre.i.i.i.i.i, ptr %i.y, align 8, !tbaa !249
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i

_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i:             ; preds = %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i, %bb.a
  store ptr %i.k, ptr %i.o, align 8, !tbaa !239
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN6DfgSub4rhspEP9DfgVertex.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !217 ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !219
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !248
  %.not.i2.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i2.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.o, ptr %i.af, align 8, !tbaa !248
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.o, ptr %i.ab, align 8, !tbaa !217
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !249
  %.not6.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not6.i.i.i.i, label %bb.l, label %_ZN6DfgSub4rhspEP9DfgVertex.exit

bb.l:                                             ; preds = %bb.k
  store ptr %i.o, ptr %i.ag, align 8, !tbaa !249
  br label %_ZN6DfgSub4rhspEP9DfgVertex.exit

_ZN6DfgSub4rhspEP9DfgVertex.exit:                 ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i, %bb.k, %bb.l
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !237
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !238
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !239
  %i.al = load i32, ptr %i.a, align 4, !tbaa !250
  %i.am = tail call noundef ptr @_ZN16V3DfgBreakCycles11TraceDriver5traceEP9DfgVertexjj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.ak, i32 noundef %i.al, i32 noundef 0) ; 4 uses
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !237
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !238 ; 11 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i11, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i18, label %bb.m

bb.m:                                             ; preds = %_ZN6DfgSub4rhspEP9DfgVertex.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.as, null
  %.phi.trans.insert.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.pre.i.i.i.i.i14 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i13, align 8, !tbaa !248 ; 4 uses
  br i1 %.not.i.i.i.i.i12, label %._crit_edge.i.i.i.i.i15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.pre.i.i.i.i.i14, ptr %i.at, align 8, !tbaa !248
  br label %._crit_edge.i.i.i.i.i15

._crit_edge.i.i.i.i.i15:                          ; preds = %bb.n, %bb.m
  %.not15.i.i.i.i.i16 = icmp eq ptr %.pre.i.i.i.i.i14, null
  br i1 %.not15.i.i.i.i.i16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i15
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i14, i64 16
  store ptr %i.as, ptr %i.au, align 8, !tbaa !219
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i15
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !217
  %i.aw = icmp eq ptr %i.av, %i.ao
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !219
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !217
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !249
  %i.ba = icmp eq ptr %i.az, %i.ao
  br i1 %i.ba, label %bb.s, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i17

bb.s:                                             ; preds = %bb.r
  store ptr %.pre.i.i.i.i.i14, ptr %i.ay, align 8, !tbaa !249
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i17

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i17: ; preds = %bb.s, %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i18

_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i18:           ; preds = %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i17, %_ZN6DfgSub4rhspEP9DfgVertex.exit
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !239
  %.not.i.i.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i19, label %_ZN6DfgSub4lhspEP9DfgVertex.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !217 ; 3 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !219
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr null, ptr %i.be, align 8, !tbaa !248
  %.not.i2.i.i.i20 = icmp eq ptr %i.bd, null
  br i1 %.not.i2.i.i.i20, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.ao, ptr %i.bf, align 8, !tbaa !248
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %i.ao, ptr %i.bb, align 8, !tbaa !217
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !249
  %.not6.i.i.i.i21 = icmp eq ptr %i.bh, null
  br i1 %.not6.i.i.i.i21, label %bb.w, label %_ZN6DfgSub4lhspEP9DfgVertex.exit

end_hunk_0
