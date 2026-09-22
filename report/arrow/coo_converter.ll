Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/coo_converter?download=true
inline.NumInlined: 3398
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr i8, ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !28  ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28  ; 3 uses
  %i.cm = icmp ult i8 %i.cj, %i.cl
  %i.cn = icmp ule i8 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i8 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !5

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !582

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !583

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !583

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !579

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28    ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !5

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !584

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !584

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28  ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !28  ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !5

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !585

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !586

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !587

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !588

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !86    ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !6

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28  ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28  ; 3 uses
  %i.al = icmp ult i8 %i.ai, %i.ak
  %i.am = icmp ule i8 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i8 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !6

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28  ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28  ; 3 uses
  %i.au = icmp ult i8 %i.ar, %i.at
  %i.av = icmp ule i8 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i8 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !6

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28  ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28  ; 3 uses
  %i.ba = icmp ult i8 %i.ax, %i.az
  %i.bb = icmp ule i8 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i8 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr i8, ptr %i.ae, i64 %i.bd  ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !6

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28  ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28  ; 3 uses
  %i.bj = icmp ult i8 %i.bg, %i.bi
  %i.bk = icmp ule i8 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i8 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !6

end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr i8, ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !28  ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28  ; 3 uses
  %i.cm = icmp ult i8 %i.cj, %i.cl
  %i.cn = icmp ule i8 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i8 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !6

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !589

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !590

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !590

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !586

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28    ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !6

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !591

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !591

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28  ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !28  ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !6

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !592

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !593

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !594

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !595

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !86    ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28  ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28  ; 3 uses
  %i.al = icmp ult i8 %i.ai, %i.ak
  %i.am = icmp ule i8 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i8 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !7

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28  ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28  ; 3 uses
  %i.au = icmp ult i8 %i.ar, %i.at
  %i.av = icmp ule i8 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i8 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !7

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28  ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28  ; 3 uses
  %i.ba = icmp ult i8 %i.ax, %i.az
  %i.bb = icmp ule i8 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i8 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr i8, ptr %i.ae, i64 %i.bd  ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28  ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28  ; 3 uses
  %i.bj = icmp ult i8 %i.bg, %i.bi
  %i.bk = icmp ule i8 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i8 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !7

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr i8, ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !28  ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28  ; 3 uses
  %i.cm = icmp ult i8 %i.cj, %i.cl
  %i.cn = icmp ule i8 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i8 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !7

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !596

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !597

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !597

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !593

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28    ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !7

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !598

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !598

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28  ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !28  ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !7

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !599

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !600

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !601

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !602

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !86    ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !8

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28  ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28  ; 3 uses
  %i.al = icmp ult i8 %i.ai, %i.ak
  %i.am = icmp ule i8 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i8 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !8

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28  ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28  ; 3 uses
  %i.au = icmp ult i8 %i.ar, %i.at
  %i.av = icmp ule i8 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i8 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !8

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28  ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28  ; 3 uses
  %i.ba = icmp ult i8 %i.ax, %i.az
  %i.bb = icmp ule i8 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i8 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr i8, ptr %i.ae, i64 %i.bd  ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !8

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28  ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28  ; 3 uses
  %i.bj = icmp ult i8 %i.bg, %i.bi
  %i.bk = icmp ule i8 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i8 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !8

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr i8, ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !28  ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28  ; 3 uses
  %i.cm = icmp ult i8 %i.cj, %i.cl
  %i.cn = icmp ule i8 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i8 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !8

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !603

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !604

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !604

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !600

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr i8, ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28    ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 3 uses
  %i.u = icmp ult i8 %i.r, %i.t
  %i.v = icmp ule i8 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i8 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !8

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !605

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !605

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28  ; 3 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !28  ; 3 uses
  %i.bd = icmp ult i8 %i.ba, %i.bc
  %i.be = icmp ule i8 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i8 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !8

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !606

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !607

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !608

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !609

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !93    ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !9

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30 ; 3 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30 ; 3 uses
  %i.al = icmp ult i16 %i.ai, %i.ak
  %i.am = icmp ule i16 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i16 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [2 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !9

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !30 ; 3 uses
  %i.as = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !30 ; 3 uses
  %i.au = icmp ult i16 %i.ar, %i.at
  %i.av = icmp ule i16 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i16 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !9

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !30 ; 3 uses
  %i.ay = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !30 ; 3 uses
  %i.ba = icmp ult i16 %i.ax, %i.az
  %i.bb = icmp ule i16 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i16 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [2 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !9

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !30 ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !30 ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i16 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !9

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [2 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !30 ; 3 uses
  %i.ck = getelementptr [2 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !30 ; 3 uses
  %i.cm = icmp ult i16 %i.cj, %i.cl
  %i.cn = icmp ule i16 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i16 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !9

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !610

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !611

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !611

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !607

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !93     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !30   ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30   ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !9

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !612

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !612

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !93    ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !30 ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !30 ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !9

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !613

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIthEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !614

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !615

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !616

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !93    ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !10

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30 ; 3 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30 ; 3 uses
  %i.al = icmp ult i16 %i.ai, %i.ak
  %i.am = icmp ule i16 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i16 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [2 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !10

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !30 ; 3 uses
  %i.as = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !30 ; 3 uses
  %i.au = icmp ult i16 %i.ar, %i.at
  %i.av = icmp ule i16 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i16 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !10

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !30 ; 3 uses
  %i.ay = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !30 ; 3 uses
  %i.ba = icmp ult i16 %i.ax, %i.az
  %i.bb = icmp ule i16 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i16 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [2 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !10

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !30 ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !30 ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i16 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !10

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [2 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !30 ; 3 uses
  %i.ck = getelementptr [2 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !30 ; 3 uses
  %i.cm = icmp ult i16 %i.cj, %i.cl
  %i.cn = icmp ule i16 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i16 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !10

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !617

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !618

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !618

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !614

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !93     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !30   ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30   ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !10

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !619

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !619

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !93    ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !30 ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !30 ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !10

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !620

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIttEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !621

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !622

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !623

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !93    ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !11

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30 ; 3 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30 ; 3 uses
  %i.al = icmp ult i16 %i.ai, %i.ak
  %i.am = icmp ule i16 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i16 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [2 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !11

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !30 ; 3 uses
  %i.as = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !30 ; 3 uses
  %i.au = icmp ult i16 %i.ar, %i.at
  %i.av = icmp ule i16 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i16 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !11

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !30 ; 3 uses
  %i.ay = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !30 ; 3 uses
  %i.ba = icmp ult i16 %i.ax, %i.az
  %i.bb = icmp ule i16 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i16 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [2 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !11

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !30 ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !30 ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i16 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !11

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [2 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !30 ; 3 uses
  %i.ck = getelementptr [2 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !30 ; 3 uses
  %i.cm = icmp ult i16 %i.cj, %i.cl
  %i.cn = icmp ule i16 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i16 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !11

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !624

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !625

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !625

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !621

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !93     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !30   ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30   ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !11

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !626

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !626

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !93    ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !30 ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !30 ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !11

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !627

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !628

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !629

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !630

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !93    ; 7 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !12

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30 ; 3 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30 ; 3 uses
  %i.al = icmp ult i16 %i.ai, %i.ak
  %i.am = icmp ule i16 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i16 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [2 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !12

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !30 ; 3 uses
  %i.as = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !30 ; 3 uses
  %i.au = icmp ult i16 %i.ar, %i.at
  %i.av = icmp ule i16 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i16 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !12

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !30 ; 3 uses
  %i.ay = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !30 ; 3 uses
  %i.ba = icmp ult i16 %i.ax, %i.az
  %i.bb = icmp ule i16 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i16 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [2 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !12

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [2 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !30 ; 3 uses
  %i.bh = getelementptr [2 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !30 ; 3 uses
  %i.bj = icmp ult i16 %i.bg, %i.bi
  %i.bk = icmp ule i16 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i16 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !12

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_6
begin_hunk_7_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [2 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !30 ; 3 uses
  %i.ck = getelementptr [2 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !30 ; 3 uses
  %i.cm = icmp ult i16 %i.cj, %i.cl
  %i.cn = icmp ule i16 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i16 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !12

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !631

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !632

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !632

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !628

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !93     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [2 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [2 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i16, ptr %i.q, align 2, !tbaa !30   ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30   ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t
  %i.v = icmp ule i16 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i16 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !12

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !633

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !633

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !93    ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [2 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !30 ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !30 ; 3 uses
  %i.bd = icmp ult i16 %i.ba, %i.bc
  %i.be = icmp ule i16 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i16 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !12

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !634

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorItmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !635

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !636

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !637

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !98    ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !13

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 3 uses
  %i.al = icmp ult i32 %i.ai, %i.ak
  %i.am = icmp ule i32 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i32 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [4 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !13

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27 ; 3 uses
  %i.au = icmp ult i32 %i.ar, %i.at
  %i.av = icmp ule i32 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i32 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !13

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27 ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27 ; 3 uses
  %i.ba = icmp ult i32 %i.ax, %i.az
  %i.bb = icmp ule i32 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i32 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [4 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !13

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27 ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27 ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i32 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !13

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_7
begin_hunk_8_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [4 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27 ; 3 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27 ; 3 uses
  %i.cm = icmp ult i32 %i.cj, %i.cl
  %i.cn = icmp ule i32 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i32 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !13

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !638

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !639

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !639

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !635

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !13

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !640

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !640

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27 ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27 ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !13

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !641

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !642

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !643

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !644

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !98    ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !14

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 3 uses
  %i.al = icmp ult i32 %i.ai, %i.ak
  %i.am = icmp ule i32 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i32 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [4 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !14

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27 ; 3 uses
  %i.au = icmp ult i32 %i.ar, %i.at
  %i.av = icmp ule i32 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i32 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !14

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27 ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27 ; 3 uses
  %i.ba = icmp ult i32 %i.ax, %i.az
  %i.bb = icmp ule i32 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i32 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [4 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !14

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27 ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27 ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i32 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !14

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_8
begin_hunk_9_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [4 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27 ; 3 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27 ; 3 uses
  %i.cm = icmp ult i32 %i.cj, %i.cl
  %i.cn = icmp ule i32 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i32 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !14

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !645

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !646

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !646

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !642

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !14

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !647

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !647

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27 ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27 ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !14

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !648

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjtEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !649

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !650

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !651

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !98    ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !15

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 3 uses
  %i.al = icmp ult i32 %i.ai, %i.ak
  %i.am = icmp ule i32 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i32 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [4 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !15

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27 ; 3 uses
  %i.au = icmp ult i32 %i.ar, %i.at
  %i.av = icmp ule i32 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i32 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !15

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27 ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27 ; 3 uses
  %i.ba = icmp ult i32 %i.ax, %i.az
  %i.bb = icmp ule i32 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i32 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [4 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !15

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27 ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27 ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i32 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !15

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_9
begin_hunk_10_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [4 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27 ; 3 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27 ; 3 uses
  %i.cm = icmp ult i32 %i.cj, %i.cl
  %i.cn = icmp ule i32 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i32 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !15

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !652

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !653

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !653

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !649

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !15

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !654

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !654

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27 ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27 ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !15

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !655

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !656

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !657

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !658

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !98    ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !16

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 3 uses
  %i.al = icmp ult i32 %i.ai, %i.ak
  %i.am = icmp ule i32 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i32 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [4 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !16

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27 ; 3 uses
  %i.au = icmp ult i32 %i.ar, %i.at
  %i.av = icmp ule i32 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i32 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !16

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27 ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27 ; 3 uses
  %i.ba = icmp ult i32 %i.ax, %i.az
  %i.bb = icmp ule i32 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i32 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [4 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !16

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27 ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27 ; 3 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %i.bk = icmp ule i32 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i32 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !16

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_10
begin_hunk_11_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [4 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27 ; 3 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27 ; 3 uses
  %i.cm = icmp ult i32 %i.cj, %i.cl
  %i.cn = icmp ule i32 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i32 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !16

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !659

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !660

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !660

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !656

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ule i32 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i32 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !16

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !661

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !661

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [4 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27 ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27 ; 3 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = icmp ule i32 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i32 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !16

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !662

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !663

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !664

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !665

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !56    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.al = icmp slt i64 %i.ai, %i.ak
  %i.am = icmp sle i64 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i64 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [8 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !17

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32 ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32 ; 3 uses
  %i.au = icmp slt i64 %i.ar, %i.at
  %i.av = icmp sle i64 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i64 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !17

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32 ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32 ; 3 uses
  %i.ba = icmp slt i64 %i.ax, %i.az
  %i.bb = icmp sle i64 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i64 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [8 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !17

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i64 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !17

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_11
begin_hunk_12_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [8 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !32 ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !32 ; 3 uses
  %i.cm = icmp slt i64 %i.cj, %i.cl
  %i.cn = icmp sle i64 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i64 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !17

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !666

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !667

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !667

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !663

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !17

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !668

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !668

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !32 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !17

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !669

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !670

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !671

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !672

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !56    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !18

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.al = icmp slt i64 %i.ai, %i.ak
  %i.am = icmp sle i64 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i64 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [8 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !18

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32 ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32 ; 3 uses
  %i.au = icmp slt i64 %i.ar, %i.at
  %i.av = icmp sle i64 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i64 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !18

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32 ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32 ; 3 uses
  %i.ba = icmp slt i64 %i.ax, %i.az
  %i.bb = icmp sle i64 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i64 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [8 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !18

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i64 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !18

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_12
begin_hunk_13_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [8 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !32 ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !32 ; 3 uses
  %i.cm = icmp slt i64 %i.cj, %i.cl
  %i.cn = icmp sle i64 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i64 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !18

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !673

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !674

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !674

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !670

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !18

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !675

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !675

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !32 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !18

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !676

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIltEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !677

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !678

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !679

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !56    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !19

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.al = icmp slt i64 %i.ai, %i.ak
  %i.am = icmp sle i64 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i64 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [8 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !19

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32 ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32 ; 3 uses
  %i.au = icmp slt i64 %i.ar, %i.at
  %i.av = icmp sle i64 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i64 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !19

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32 ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32 ; 3 uses
  %i.ba = icmp slt i64 %i.ax, %i.az
  %i.bb = icmp sle i64 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i64 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [8 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !19

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i64 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !19

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_13
begin_hunk_14_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [8 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !32 ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !32 ; 3 uses
  %i.cm = icmp slt i64 %i.cj, %i.cl
  %i.cn = icmp sle i64 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i64 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !19

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !680

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !681

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !681

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !677

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !19

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !682

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !682

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !32 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !19

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !683

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIljEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !684

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !685

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !686

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !32 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !32
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !56    ; 7 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !20

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.0172.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.d ]
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.al = icmp slt i64 %i.ai, %i.ak
  %i.am = icmp sle i64 %i.ai, %i.ak
  %..017.i.i.i.i = select i1 %i.am, i1 %.0172.i.i.i.i, i1 false
  %.118.i.i.i.i = select i1 %i.al, i1 true, i1 %..017.i.i.i.i ; 2 uses
  %cond1.i.i.i.i = icmp eq i64 %i.ai, %i.ak
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.118.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr [8 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !20

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.0172.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.118.i.i41.i.i, %bb.f ]
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32 ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32 ; 3 uses
  %i.au = icmp slt i64 %i.ar, %i.at
  %i.av = icmp sle i64 %i.ar, %i.at
  %..017.i.i40.i.i = select i1 %i.av, i1 %.0172.i.i39.i.i, i1 false
  %.118.i.i41.i.i = select i1 %i.au, i1 true, i1 %..017.i.i40.i.i ; 2 uses
  %cond1.i.i42.i.i = icmp eq i64 %i.ar, %i.at
  br i1 %cond1.i.i42.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.118.i.i41.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader

.lr.ph.i.i48.i.i.preheader:                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i
  br label %.lr.ph.i.i48.i.i

bb.h:                                             ; preds = %.lr.ph.i.i48.i.i
  %indvars.iv.next.i.i54.i.i = add nuw nsw i64 %indvars.iv.i.i49.i.i, 1 ; 2 uses
  %exitcond.not.i.i55.i.i = icmp eq i64 %indvars.iv.next.i.i54.i.i, %i.ab
  br i1 %exitcond.not.i.i55.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i, label %.lr.ph.i.i48.i.i, !llvm.loop !20

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i48.i.i.preheader, %bb.h
  %indvars.iv.i.i49.i.i = phi i64 [ %indvars.iv.next.i.i54.i.i, %bb.h ], [ 0, %.lr.ph.i.i48.i.i.preheader ] ; 3 uses
  %.0172.i.i50.i.i = phi i1 [ %.118.i.i52.i.i, %bb.h ], [ undef, %.lr.ph.i.i48.i.i.preheader ]
  %i.aw = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i49.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32 ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i49.i.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32 ; 3 uses
  %i.ba = icmp slt i64 %i.ax, %i.az
  %i.bb = icmp sle i64 %i.ax, %i.az
  %..017.i.i51.i.i = select i1 %i.bb, i1 %.0172.i.i50.i.i, i1 false
  %.118.i.i52.i.i = select i1 %i.ba, i1 true, i1 %..017.i.i51.i.i ; 2 uses
  %cond1.i.i53.i.i = icmp eq i64 %i.ax, %i.az
  br i1 %cond1.i.i53.i.i, label %bb.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i: ; preds = %.lr.ph.i.i48.i.i
  br i1 %.118.i.i52.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.thread.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit56.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i

.lr.ph.i.i59.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ab
  %i.be = getelementptr [8 x i8], ptr %i.ae, i64 %i.bd ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i65.i.i = add nuw nsw i64 %indvars.iv.i.i60.i.i, 1 ; 2 uses
  %exitcond.not.i.i66.i.i = icmp eq i64 %indvars.iv.next.i.i65.i.i, %i.ab
  br i1 %exitcond.not.i.i66.i.i, label %.lr.ph.i.i70.i.i.preheader, label %bb.j, !llvm.loop !20

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i59.i.i
  %indvars.iv.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i59.i.i ], [ %indvars.iv.next.i.i65.i.i, %bb.i ] ; 3 uses
  %.0172.i.i61.i.i = phi i1 [ undef, %.lr.ph.i.i59.i.i ], [ %.118.i.i63.i.i, %bb.i ]
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv.i.i60.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !32 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.i60.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32 ; 3 uses
  %i.bj = icmp slt i64 %i.bg, %i.bi
  %i.bk = icmp sle i64 %i.bg, %i.bi
  %..017.i.i62.i.i = select i1 %i.bk, i1 %.0172.i.i61.i.i, i1 false
  %.118.i.i63.i.i = select i1 %i.bj, i1 true, i1 %..017.i.i62.i.i ; 2 uses
  %cond1.i.i64.i.i = icmp eq i64 %i.bg, %i.bi
  br i1 %cond1.i.i64.i.i, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i: ; preds = %bb.j
  br i1 %.118.i.i63.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i.preheader

.lr.ph.i.i70.i.i.preheader:                       ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit67.i.i
  br label %.lr.ph.i.i70.i.i

bb.k:                                             ; preds = %.lr.ph.i.i70.i.i
  %indvars.iv.next.i.i76.i.i = add nuw nsw i64 %indvars.iv.i.i71.i.i, 1 ; 2 uses
  %exitcond.not.i.i77.i.i = icmp eq i64 %indvars.iv.next.i.i76.i.i, %i.ab
  br i1 %exitcond.not.i.i77.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i70.i.i, !llvm.loop !20

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph.i.i70.i.i.preheader, %bb.k
  %indvars.iv.i.i71.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i, %bb.k ], [ 0, %.lr.ph.i.i70.i.i.preheader ] ; 3 uses
  %.0172.i.i72.i.i = phi i1 [ %.118.i.i74.i.i, %bb.k ], [ undef, %.lr.ph.i.i70.i.i.preheader ]
end_hunk_14
begin_hunk_15_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_:bb.a
  br i1 %.118.i.i.us.us.i.i, label %bb.n, label %.lr.ph.i.i15.us.us.i.i.preheader

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.us.us.i.i

.lr.ph.i.i15.us.us.i.i.preheader:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us.us.i.i, %bb.m
  br label %.lr.ph.i.i15.us.us.i.i

.lr.ph.i.i15.us.us.i.i:                           ; preds = %.lr.ph.i.i15.us.us.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i
  %.sroa.024.0.pn.us.us.i.i = phi ptr [ %.sroa.024.1.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i ], [ %.sroa.024.0.us.i.i, %.lr.ph.i.i15.us.us.i.i.preheader ]
  %.sroa.024.1.us.us.i.i = getelementptr inbounds i8, ptr %.sroa.024.0.pn.us.us.i.i, i64 -8 ; 5 uses
  %i.cf = load i64, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.ab
  %i.ch = getelementptr [8 x i8], ptr %i.ae, i64 %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i15.us.us.i.i
  %indvars.iv.i.i16.us.us.i.i = phi i64 [ 0, %.lr.ph.i.i15.us.us.i.i ], [ %indvars.iv.next.i.i21.us.us.i.i, %bb.p ] ; 3 uses
  %.0172.i.i17.us.us.i.i = phi i1 [ undef, %.lr.ph.i.i15.us.us.i.i ], [ %.118.i.i19.us.us.i.i, %bb.p ]
  %i.ci = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !32 ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i16.us.us.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !32 ; 3 uses
  %i.cm = icmp slt i64 %i.cj, %i.cl
  %i.cn = icmp sle i64 %i.cj, %i.cl
  %..017.i.i18.us.us.i.i = select i1 %i.cn, i1 %.0172.i.i17.us.us.i.i, i1 false
  %.118.i.i19.us.us.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i18.us.us.i.i ; 2 uses
  %cond1.i.i20.us.us.i.i = icmp eq i64 %i.cj, %i.cl
  br i1 %cond1.i.i20.us.us.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i21.us.us.i.i = add nuw nsw i64 %indvars.iv.i.i16.us.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i22.us.us.i.i = icmp eq i64 %indvars.iv.next.i.i21.us.us.i.i, %i.ab
  br i1 %exitcond.not.i.i22.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, label %bb.o, !llvm.loop !20

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i: ; preds = %bb.o
  br i1 %.118.i.i19.us.us.i.i, label %.lr.ph.i.i15.us.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, !llvm.loop !687

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.us.us.i.i, %bb.p
  %.not.us.i.i = icmp ult ptr %.sroa.027.144.us.us.i.i, %.sroa.024.1.us.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i
  store i64 %i.cf, ptr %.sroa.027.144.us.us.i.i, align 8, !tbaa !32
  store i64 %i.bv, ptr %.sroa.024.1.us.us.i.i, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.144.us.us.i.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i.i, !llvm.loop !688

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i
  %.sroa.024.177.i.i = phi ptr [ %.sroa.024.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.y, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %.sroa.027.076.i.i = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ] ; 3 uses
  %i.cp = load i64, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  %i.cq = load i64, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  store i64 %i.cq, ptr %.sroa.027.076.i.i, align 8, !tbaa !32
  store i64 %i.cp, ptr %.sroa.024.177.i.i, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.027.076.i.i, i64 8 ; 3 uses
  %.sroa.024.1.i.i = getelementptr inbounds i8, ptr %.sroa.024.177.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cr, %.sroa.024.1.i.i
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit, !llvm.loop !688

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i
  %.us-phi73.i.i = phi ptr [ %.sroa.027.144.us.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit23.thread.us.i.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i ], [ %i.cr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i ] ; 4 uses
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr nonnull %.us-phi73.i.i, ptr %storemerge41114, i64 noundef %i.v, ptr nonnull %3, ptr %4)
  %i.cs = ptrtoint ptr %.us-phi73.i.i to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, 16
  br i1 %i.cv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !684

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
  %.val.val = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.0172.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..017.i.i.us = and i1 %.0172.i.i.us, %i.v
  %.118.i.i.us = or i1 %i.u, %..017.i.i.us
  %cond.fr.us = freeze i1 %.118.i.i.us            ; 2 uses
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !20

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !689

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !689

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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !27 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %6, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %6 ] ; 3 uses
  %.0172.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.118.i.i.us.i, %6 ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !32 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..017.i.i.us.i = select i1 %i.be, i1 %.0172.i.i.us.i, i1 false
  %.118.i.i.us.i = select i1 %i.bd, i1 true, i1 %..017.i.i.us.i ; 2 uses
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  br i1 %cond1.i.i.us.i, label %6, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

6:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !20

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.118.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !690

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %6, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %6 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISD_EERKSt6vectorIlSaIlEERSJ_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !51
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !691
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !691
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !52

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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6TensorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #23, !inline_history !692
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !51
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #23, !inline_history !693
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #23, !inline_history !693
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !52

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}
end_hunk_15
