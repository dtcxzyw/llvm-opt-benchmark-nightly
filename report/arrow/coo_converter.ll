inline.NumInlined: 3398
inline.NumDeleted: 948
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7   ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7   ; 3 uses
  %i.bj = icmp ult i8 %i.bg, %i.bi
  %i.bk = icmp ule i8 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i8 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !195

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7   ; 3 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !7   ; 3 uses
  %i.bp = icmp ult i8 %i.bm, %i.bo
  %i.bq = icmp ule i8 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i8 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr i8, ptr %i.ae, i64 %i.bt  ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !577

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr i8, ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !7   ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7   ; 3 uses
  %i.cd = icmp ult i8 %i.ca, %i.cc
  %i.ce = icmp ule i8 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i8 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !195

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr i8, ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7   ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 3 uses
  %i.cn = icmp ult i8 %i.ck, %i.cm
  %i.co = icmp ule i8 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i8 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !578

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !195

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !577

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !574

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !185    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7     ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7     ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !195

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !579

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !579

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !185   ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7   ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7   ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !580

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !195

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !581

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !582

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !583

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !185   ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7   ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7   ; 3 uses
  %i.bj = icmp ult i8 %i.bg, %i.bi
  %i.bk = icmp ule i8 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i8 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !204

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7   ; 3 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !7   ; 3 uses
  %i.bp = icmp ult i8 %i.bm, %i.bo
  %i.bq = icmp ule i8 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i8 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr i8, ptr %i.ae, i64 %i.bt  ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !584

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr i8, ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !7   ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7   ; 3 uses
  %i.cd = icmp ult i8 %i.ca, %i.cc
  %i.ce = icmp ule i8 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i8 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !204

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr i8, ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7   ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 3 uses
  %i.cn = icmp ult i8 %i.ck, %i.cm
  %i.co = icmp ule i8 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i8 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !585

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !204

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !584

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !581

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !185    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7     ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7     ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !204

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !586

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !586

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !185   ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7   ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7   ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !587

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !204

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !588

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !589

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !590

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !185   ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !213
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7   ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7   ; 3 uses
  %i.bj = icmp ult i8 %i.bg, %i.bi
  %i.bk = icmp ule i8 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i8 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !213

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7   ; 3 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !7   ; 3 uses
  %i.bp = icmp ult i8 %i.bm, %i.bo
  %i.bq = icmp ule i8 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i8 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr i8, ptr %i.ae, i64 %i.bt  ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !591

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr i8, ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !7   ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7   ; 3 uses
  %i.cd = icmp ult i8 %i.ca, %i.cc
  %i.ce = icmp ule i8 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i8 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !213

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr i8, ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7   ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 3 uses
  %i.cn = icmp ult i8 %i.ck, %i.cm
  %i.co = icmp ule i8 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i8 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !592

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !213

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !591

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !588

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !185    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7     ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7     ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !213

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !593

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !593

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !185   ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7   ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7   ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !594

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !213

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !595

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !596

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !597

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !185   ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !222
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7   ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7   ; 3 uses
  %i.bj = icmp ult i8 %i.bg, %i.bi
  %i.bk = icmp ule i8 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i8 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !222

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7   ; 3 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !7   ; 3 uses
  %i.bp = icmp ult i8 %i.bm, %i.bo
  %i.bq = icmp ule i8 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i8 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr i8, ptr %i.ae, i64 %i.bt  ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !598

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr i8, ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !7   ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7   ; 3 uses
  %i.cd = icmp ult i8 %i.ca, %i.cc
  %i.ce = icmp ule i8 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i8 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !222

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr i8, ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7   ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 3 uses
  %i.cn = icmp ult i8 %i.ck, %i.cm
  %i.co = icmp ule i8 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i8 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !599

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !222

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !598

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !595

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !185    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7     ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7     ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !222

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !600

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !600

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !185   ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7   ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7   ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !601

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !222

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !602

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !603

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !604

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !227   ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !236
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !8  ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !8  ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i16 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !236

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !8  ; 3 uses
  %i.bn = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !8  ; 3 uses
  %i.bp = icmp ult i16 %i.bm, %i.bo
  %i.bq = icmp ule i16 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i16 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [2 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !605

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [2 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !8  ; 3 uses
  %i.cb = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !8  ; 3 uses
  %i.cd = icmp ult i16 %i.ca, %i.cc
  %i.ce = icmp ule i16 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i16 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !236

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [2 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !8  ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !8  ; 3 uses
  %i.cn = icmp ult i16 %i.ck, %i.cm
  %i.co = icmp ule i16 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i16 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !606

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !236

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !605

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !602

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !227    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !8    ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !8    ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !236

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !607

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !607

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !8  ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !8  ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !608

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !236

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !609

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !610

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !611

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !227   ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !245
end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !8  ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !8  ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i16 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !245

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !8  ; 3 uses
  %i.bn = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !8  ; 3 uses
  %i.bp = icmp ult i16 %i.bm, %i.bo
  %i.bq = icmp ule i16 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i16 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [2 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !612

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [2 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !8  ; 3 uses
  %i.cb = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !8  ; 3 uses
  %i.cd = icmp ult i16 %i.ca, %i.cc
  %i.ce = icmp ule i16 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i16 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !245

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [2 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !8  ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !8  ; 3 uses
  %i.cn = icmp ult i16 %i.ck, %i.cm
  %i.co = icmp ule i16 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i16 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !613

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !245

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !612

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !609

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !227    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !8    ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !8    ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !245

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !614

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !614

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !8  ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !8  ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !615

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !245

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !616

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !617

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !618

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !227   ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !254
end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !8  ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !8  ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i16 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !254

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !8  ; 3 uses
  %i.bn = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !8  ; 3 uses
  %i.bp = icmp ult i16 %i.bm, %i.bo
  %i.bq = icmp ule i16 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i16 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [2 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !619

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [2 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !8  ; 3 uses
  %i.cb = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !8  ; 3 uses
  %i.cd = icmp ult i16 %i.ca, %i.cc
  %i.ce = icmp ule i16 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i16 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !254

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [2 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !8  ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !8  ; 3 uses
  %i.cn = icmp ult i16 %i.ck, %i.cm
  %i.co = icmp ule i16 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i16 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !620

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !254

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !619

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !616

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !227    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !8    ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !8    ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !254

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !621

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !621

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !8  ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !8  ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !622

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !254

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !623

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !624

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !625

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !227   ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !263
end_hunk_6
begin_hunk_7_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !8  ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !8  ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i16 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !263

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !8  ; 3 uses
  %i.bn = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !8  ; 3 uses
  %i.bp = icmp ult i16 %i.bm, %i.bo
  %i.bq = icmp ule i16 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i16 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [2 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !626

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [2 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !8  ; 3 uses
  %i.cb = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !8  ; 3 uses
  %i.cd = icmp ult i16 %i.ca, %i.cc
  %i.ce = icmp ule i16 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i16 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !263

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [2 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !8  ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !8  ; 3 uses
  %i.cn = icmp ult i16 %i.ck, %i.cm
  %i.co = icmp ule i16 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i16 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !627

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !263

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !626

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !623

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !227    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !8    ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !8    ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !263

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !628

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !628

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !8  ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !8  ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !629

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !263

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !630

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !631

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !632

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !268   ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !277
end_hunk_7
begin_hunk_8_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i32 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !277

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 3 uses
  %i.bp = icmp ult i32 %i.bm, %i.bo
  %i.bq = icmp ule i32 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i32 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [4 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !633

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [4 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 3 uses
  %i.cd = icmp ult i32 %i.ca, %i.cc
  %i.ce = icmp ule i32 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i32 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !277

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [4 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3  ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = icmp ult i32 %i.ck, %i.cm
  %i.co = icmp ule i32 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i32 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !634

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !277

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !633

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !630

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !268    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !277

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !635

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !635

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !268   ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !636

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !277

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !637

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !638

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !639

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !268   ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !286
end_hunk_8
begin_hunk_9_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i32 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !286

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 3 uses
  %i.bp = icmp ult i32 %i.bm, %i.bo
  %i.bq = icmp ule i32 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i32 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [4 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !640

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [4 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 3 uses
  %i.cd = icmp ult i32 %i.ca, %i.cc
  %i.ce = icmp ule i32 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i32 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !286

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [4 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3  ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = icmp ult i32 %i.ck, %i.cm
  %i.co = icmp ule i32 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i32 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !641

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !286

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !640

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !637

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !268    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !286

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !642

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !642

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !268   ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !643

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !286

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !644

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !645

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !646

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !268   ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !295
end_hunk_9
begin_hunk_10_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i32 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !295

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 3 uses
  %i.bp = icmp ult i32 %i.bm, %i.bo
  %i.bq = icmp ule i32 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i32 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [4 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !647

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [4 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 3 uses
  %i.cd = icmp ult i32 %i.ca, %i.cc
  %i.ce = icmp ule i32 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i32 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !295

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [4 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3  ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = icmp ult i32 %i.ck, %i.cm
  %i.co = icmp ule i32 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i32 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !648

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !295

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !647

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !644

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !268    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !295

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !649

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !649

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !268   ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !650

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !295

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !651

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !652

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !653

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !268   ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !304
end_hunk_10
begin_hunk_11_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i32 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !304

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 3 uses
  %i.bp = icmp ult i32 %i.bm, %i.bo
  %i.bq = icmp ule i32 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i32 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [4 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !654

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [4 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 3 uses
  %i.cd = icmp ult i32 %i.ca, %i.cc
  %i.ce = icmp ule i32 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i32 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !304

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [4 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3  ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = icmp ult i32 %i.ck, %i.cm
  %i.co = icmp ule i32 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i32 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !655

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !304

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !654

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !651

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !268    ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !304

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !656

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !656

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !268   ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !657

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !304

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !658

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !659

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !660

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !53    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !313
end_hunk_11
begin_hunk_12_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i64 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !313

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10 ; 3 uses
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %i.bq = icmp sle i64 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i64 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [8 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !661

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [8 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10 ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10 ; 3 uses
  %i.cd = icmp slt i64 %i.ca, %i.cc
  %i.ce = icmp sle i64 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i64 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !313

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [8 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !10 ; 3 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10 ; 3 uses
  %i.cn = icmp slt i64 %i.ck, %i.cm
  %i.co = icmp sle i64 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i64 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !662

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !313

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !661

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !658

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !313

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !663

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !663

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !664

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !313

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !665

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !666

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !667

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !53    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !322
end_hunk_12
begin_hunk_13_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i64 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !322

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10 ; 3 uses
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %i.bq = icmp sle i64 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i64 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [8 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !668

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [8 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10 ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10 ; 3 uses
  %i.cd = icmp slt i64 %i.ca, %i.cc
  %i.ce = icmp sle i64 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i64 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !322

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [8 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !10 ; 3 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10 ; 3 uses
  %i.cn = icmp slt i64 %i.ck, %i.cm
  %i.co = icmp sle i64 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i64 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !669

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !322

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !668

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !665

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !322

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !670

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !670

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !671

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !322

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !672

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !673

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !674

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !53    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !331
end_hunk_13
begin_hunk_14_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i64 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !331

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10 ; 3 uses
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %i.bq = icmp sle i64 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i64 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [8 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !675

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [8 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10 ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10 ; 3 uses
  %i.cd = icmp slt i64 %i.ca, %i.cc
  %i.ce = icmp sle i64 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i64 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !331

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [8 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !10 ; 3 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10 ; 3 uses
  %i.cn = icmp slt i64 %i.ck, %i.cm
  %i.co = icmp sle i64 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i64 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !676

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !331

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !675

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !672

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !331

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !677

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !677

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !678

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !331

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !679

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !680

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !681

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !53    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !340
end_hunk_14
begin_hunk_15_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..0.i.i62.i.i = select i1 %i.bk, i1 %.03.i.i61.i.i, i1 false
  %cond1.i.i63.i.i = icmp eq i64 %i.bg, %i.bi
  %.1.i.i64.i.i = select i1 %i.bj, i1 true, i1 %..0.i.i62.i.i ; 2 uses
  br i1 %cond1.i.i63.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.1.i.i64.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !340

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.03.i.i72.i.i = phi i1 [ %.1.i.i75.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
  %i.bl = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i71.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i71.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10 ; 3 uses
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %i.bq = icmp sle i64 %i.bm, %i.bo
  %..0.i.i73.i.i = select i1 %i.bq, i1 %.03.i.i72.i.i, i1 false
  %cond1.i.i74.i.i = icmp eq i64 %i.bm, %i.bo
  %.1.i.i75.i.i = select i1 %i.bp, i1 true, i1 %..0.i.i73.i.i ; 3 uses
  br i1 %cond1.i.i74.i.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i: ; preds = %.lr.ph.i.i70.i.i
  %spec.select.i = select i1 %.1.i.i75.i.i, i64 %i.bc, i64 %.pre.i.i
  %spec.select67.i = select i1 %.1.i.i75.i.i, ptr %i.y, ptr %i.x
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  %.sink100.i.i = phi i64 [ %.pre.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %.pre.i.i, %bb.k ]
  %.sink99.i.i = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i ], [ %spec.select67.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit78.i.i ], [ %i.x, %bb.k ]
  %i.br = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.sink100.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.br, ptr %.sink99.i.i, align 8, !tbaa !10
  br label %.lr.ph.i.i.lr.ph.us.i.i

.lr.ph.i.i.lr.ph.us.i.i:                          ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i
  %.sroa.024.0.us.i.i = phi ptr [ %storemerge41114, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %.sroa.024.1.us.us.i.i, %bb.l ]
  %.sroa.027.0.us.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i ], [ %i.bv, %bb.l ]
  %i.bs = load i64, ptr %0, align 8, !tbaa !10
  %i.bt = mul nsw i64 %i.bs, %i.ab
  %i.bu = getelementptr [8 x i8], ptr %i.ae, i64 %i.bt ; 2 uses
  br label %.lr.ph.i.i.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.q
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.l, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cg, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10
  store i64 %i.bw, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !682

.lr.ph.i.i.us.us.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.lr.ph.us.i.i
  %.sroa.027.144.us.us.i.i = phi ptr [ %.sroa.027.0.us.i.i, %.lr.ph.i.i.lr.ph.us.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.bw = load i64, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.ab
  %i.by = getelementptr [8 x i8], ptr %i.ae, i64 %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.us.us.i.i
  %indvars.iv.i.i.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i.i ], [ %indvars.iv.next.i.i.us.us.i.i, %bb.o ] ; 3 uses
  %.03.i.i.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i.us.us.i.i ], [ %.1.i.i.us.us.i.i, %bb.o ]
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv.i.i.us.us.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10 ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.us.us.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10 ; 3 uses
  %i.cd = icmp slt i64 %i.ca, %i.cc
  %i.ce = icmp sle i64 %i.ca, %i.cc
  %..0.i.i.us.us.i.i = select i1 %i.ce, i1 %.03.i.i.us.us.i.i, i1 false
  %cond1.i.i.us.us.i.i = icmp eq i64 %i.ca, %i.cc
  %.1.i.i.us.us.i.i = select i1 %i.cd, i1 true, i1 %..0.i.i.us.us.i.i ; 2 uses
  br i1 %cond1.i.i.us.us.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i: ; preds = %bb.m
  br i1 %.1.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i.preheader, label %bb.m, !llvm.loop !340

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.o
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cg = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.ab
  %i.ci = getelementptr [8 x i8], ptr %i.ae, i64 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.q ] ; 3 uses
  %.03.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.1.i.i20.us.us.i.i, %bb.q ]
  %i.cj = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !10 ; 3 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10 ; 3 uses
  %i.cn = icmp slt i64 %i.ck, %i.cm
  %i.co = icmp sle i64 %i.ck, %i.cm
  %..0.i.i18.us.us.i.i = select i1 %i.co, i1 %.03.i.i17.us.us.i.i, i1 false
  %cond1.i.i19.us.us.i.i = icmp eq i64 %i.ck, %i.cm
  %.1.i.i20.us.us.i.i = select i1 %i.cn, i1 true, i1 %..0.i.i18.us.us.i.i ; 2 uses
  br i1 %cond1.i.i19.us.us.i.i, label %bb.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.p
  br i1 %.1.i.i20.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !683

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.p, !llvm.loop !340

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !10
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !682

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !679

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, %.lr.ph.i10.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #14 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.val.val = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !340

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !684

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !684

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !685

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !340

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISD_EERKSt6vectorIlSaIlEERSJ_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !47
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !686
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !686
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %bb.h

.body:                                            ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}
end_hunk_15
