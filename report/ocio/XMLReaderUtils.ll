Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/XMLReaderUtils?download=true
inline.NumInlined: 134
inline.NumDeleted: 44
begin_hunk_0_@_ZN16OpenColorIO_v2_54TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit: ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit11.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit60: ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit10.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit62: ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit60, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit62, %bb.d, %bb.c, %bb.b
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.0.lcssa.i.i.i.i, %bb.b ], [ %.sroa.032.2.i.i.i.i, %bb.d ], [ %.sroa.032.1.i.i.i.i, %bb.c ], [ %i.ab, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit62 ], [ %i.aa, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit60 ], [ %i.z, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.d
  br i1 %i.ac, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.thread.i, label %bb.e

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.thread.i: ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %._crit_edge.i.i.i.i
  store i64 0, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.a, align 1, !tbaa !13
  br label %_ZN16OpenColorIO_v2_5L5LTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.i
  %i.ad = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.ae = sub i64 %i.ad, %i.f
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.ae)
  br label %_ZN16OpenColorIO_v2_5L5LTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN16OpenColorIO_v2_5L5LTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPFbcEET_SC_SC_T0_.exit.thread.i, %bb.e
  %i.af = load ptr, ptr %0, align 8, !tbaa !28, !noalias !30 ; 4 uses
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !30 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64               ; 9 uses
  %i.aj = ashr i64 %i.ag, 2                       ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.preheader.i3, label %._crit_edge.i.i.i.i2

.lr.ph.i.i.i.preheader.i3:                        ; preds = %_ZN16OpenColorIO_v2_5L5LTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.al = and i64 %i.ag, 3
  %scevgep.i4 = getelementptr i8, ptr %i.af, i64 %i.al
  br label %.lr.ph.i.i.i.i5

.lr.ph.i.i.i.i5:                                  ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9, %.lr.ph.i.i.i.preheader.i3
  %.sroa.08.3.i.i.i = phi ptr [ %i.as, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9 ], [ %i.ah, %.lr.ph.i.i.i.preheader.i3 ] ; 8 uses
  %.017.i.i.i.i = phi i64 [ %i.au, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9 ], [ %i.aj, %.lr.ph.i.i.i.preheader.i3 ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.08.3.i.i.i, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13, !noalias !31
  switch i8 %i.an, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit25.i.i.i [
    i8 32, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
    i8 13, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
    i8 11, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
    i8 10, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
    i8 9, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
    i8 12, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
  ]

_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6:     ; preds = %.lr.ph.i.i.i.i5, %.lr.ph.i.i.i.i5, %.lr.ph.i.i.i.i5, %.lr.ph.i.i.i.i5, %.lr.ph.i.i.i.i5, %.lr.ph.i.i.i.i5
  %i.ao = getelementptr inbounds i8, ptr %.sroa.08.3.i.i.i, i64 -2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13, !noalias !31
  switch i8 %i.ap, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit23.i.i.i [
    i8 32, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
    i8 13, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
    i8 11, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
    i8 10, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
    i8 9, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
    i8 12, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
  ]

_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7:     ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
  %i.aq = getelementptr inbounds i8, ptr %.sroa.08.3.i.i.i, i64 -3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13, !noalias !31
  switch i8 %i.ar, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit21.i.i.i [
    i8 32, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
    i8 13, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
    i8 11, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
    i8 10, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
    i8 9, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
    i8 12, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
  ]

_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8:     ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
  %i.as = getelementptr inbounds i8, ptr %.sroa.08.3.i.i.i, i64 -4 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13, !noalias !31
  switch i8 %i.at, label %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit.i.i.i [
    i8 32, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9
    i8 13, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9
    i8 11, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9
    i8 10, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9
    i8 9, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9
    i8 12, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9
  ]

_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9:     ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
  %i.au = add nsw i64 %.017.i.i.i.i, -1
  %i.av = icmp sgt i64 %.017.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i5, label %._crit_edge.i.i.i.i2, !llvm.loop !24

._crit_edge.i.i.i.i2:                             ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9, %_ZN16OpenColorIO_v2_5L5LTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.08.0.i.i.i = phi ptr [ %i.ah, %_ZN16OpenColorIO_v2_5L5LTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %scevgep.i4, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit6.i9 ] ; 4 uses
  %i.aw = ptrtoint ptr %.sroa.08.0.i.i.i to i64   ; 2 uses
  %i.ax = sub i64 %i.aw, %i.ai
  switch i64 %i.ax, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i64 3, label %bb.f
    i64 2, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
    i64 1, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i2
  %i.ay = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.i, i64 -1 ; 7 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13, !noalias !31
  switch i8 %i.az, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i8 32, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
    i8 13, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
    i8 11, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
    i8 10, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
    i8 9, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
    i8 12, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
  ]

_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i:      ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %._crit_edge.i.i.i.i2
  %.ptr21.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i, %._crit_edge.i.i.i.i2 ], [ %i.ay, %bb.f ], [ %i.ay, %bb.f ], [ %i.ay, %bb.f ], [ %i.ay, %bb.f ], [ %i.ay, %bb.f ], [ %i.ay, %bb.f ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.ptr21.i.i.i.i, i64 -1 ; 7 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13, !noalias !31
  switch i8 %i.bb, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.thread.i [
    i8 32, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
    i8 13, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
    i8 11, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
    i8 10, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
    i8 9, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
    i8 12, label %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
  ]

_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.thread.i: ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i
  %i.bc = ptrtoint ptr %.ptr21.i.i.i.i to i64
  br label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i:      ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i, %._crit_edge.i.i.i.i2
  %.ptr23.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i, %._crit_edge.i.i.i.i2 ], [ %i.ba, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i ], [ %i.ba, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i ], [ %i.ba, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i ], [ %i.ba, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i ], [ %i.ba, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i ], [ %i.ba, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit5.i ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.ptr23.i.i.i.i, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13, !noalias !31
  switch i8 %i.be, label %bb.g [
    i8 32, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 13, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 11, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 10, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 9, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 12, label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i
  %i.bf = ptrtoint ptr %.ptr23.i.i.i.i to i64
  br label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit.i.i.i: ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit7.i8
  %i.bg = getelementptr inbounds i8, ptr %.sroa.08.3.i.i.i, i64 -3
  %i.bh = ptrtoint ptr %i.bg to i64
  br label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit21.i.i.i: ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit8.i7
  %i.bi = getelementptr inbounds i8, ptr %.sroa.08.3.i.i.i, i64 -2
  %i.bj = ptrtoint ptr %i.bi to i64
  br label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit23.i.i.i: ; preds = %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit9.i6
  %i.bk = getelementptr inbounds i8, ptr %.sroa.08.3.i.i.i, i64 -1
  %i.bl = ptrtoint ptr %i.bk to i64
  br label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit25.i.i.i: ; preds = %.lr.ph.i.i.i.i5
  %i.bm = ptrtoint ptr %.sroa.08.3.i.i.i to i64
  br label %_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN16OpenColorIO_v2_5L5RTrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i2, %bb.f, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.thread.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i, %bb.g, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit.i.i.i, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit21.i.i.i, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit23.i.i.i, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit25.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.ai, %._crit_edge.i.i.i.i2 ], [ %i.bm, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit25.i.i.i ], [ %i.bc, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.thread.i ], [ %i.ai, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i ], [ %i.bl, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit23.i.i.i ], [ %i.bj, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit21.i.i.i ], [ %i.bh, %_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit.i.i.i ], [ %i.bf, %bb.g ], [ %i.ai, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i ], [ %i.ai, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i ], [ %i.ai, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i ], [ %i.ai, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i ], [ %i.ai, %_ZN16OpenColorIO_v2_510IsNotSpaceEc.exit4.i ], [ %i.aw, %bb.f ]
  %i.bn = sub i64 %.sink.i.i.i.i, %i.ai           ; 2 uses
  store i64 %i.bn, ptr %i.b, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_513FindSubStringEPKcmRmS2_(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %.not17 = icmp eq i8 %i.a, 0
  br i1 %.not17, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %2, align 8, !tbaa !34
  br label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread.sink.split

.preheader:                                       ; preds = %bb.b, %bb.e
  %i.b = phi i8 [ %.pr, %bb.e ], [ %i.a, %bb.b ]
  %.08.i = phi ptr [ %i.d, %bb.e ], [ %0, %bb.b ]
  %.0.i = phi i64 [ %i.e, %bb.e ], [ 0, %bb.b ]   ; 4 uses
  switch i8 %i.b, label %_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 11, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.c = icmp eq i64 %.0.i, %1
  br i1 %i.c, label %_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %i.e = add i64 %.0.i, 1
  %.pr = load i8, ptr %i.d, align 1, !tbaa !13
  br label %.preheader, !llvm.loop !32

_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit: ; preds = %.preheader
  store i64 %.0.i, ptr %2, align 8, !tbaa !34
  %i.f = icmp eq i64 %.0.i, %1
  br i1 %i.f, label %_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit.thread, label %bb.f

_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit.thread: ; preds = %bb.d, %_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit
  store i64 0, ptr %2, align 8, !tbaa !34
  br label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread.sink.split

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit
  %i.g = add i64 %1, -1                           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.08.i18 = phi i64 [ %i.g, %bb.f ], [ %i.l, %bb.i ] ; 5 uses
  %.0.i19 = phi ptr [ %i.h, %bb.f ], [ %i.k, %bb.i ] ; 2 uses
  %i.i = load i8, ptr %.0.i19, align 1, !tbaa !13
  switch i8 %i.i, label %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit [
    i8 32, label %bb.h
    i8 13, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 12, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.j = icmp eq i64 %.08.i18, 0
  br i1 %i.j, label %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds i8, ptr %.0.i19, i64 -1
  %i.l = add i64 %.08.i18, -1
  br label %bb.g, !llvm.loop !33

_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit: ; preds = %bb.g, %bb.h
  store i64 %.08.i18, ptr %3, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.08.i18
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  switch i8 %i.n, label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit [
    i8 32, label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread
    i8 13, label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread
    i8 11, label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread
    i8 10, label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread
    i8 9, label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread
    i8 12, label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread
  ]

_ZN16OpenColorIO_v2_57IsSpaceEc.exit:             ; preds = %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit
  %i.o = add i64 %.08.i18, 1
  br label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread.sink.split

_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread.sink.split: ; preds = %bb.c, %_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit.thread, %_ZN16OpenColorIO_v2_57IsSpaceEc.exit
  %.sink = phi i64 [ %i.o, %_ZN16OpenColorIO_v2_57IsSpaceEc.exit ], [ 0, %_ZN16OpenColorIO_v2_522FindFirstNonWhiteSpaceEPKcm.exit.thread ], [ 0, %bb.c ]
  store i64 %.sink, ptr %3, align 8, !tbaa !34
  br label %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread

_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread:      ; preds = %_ZN16OpenColorIO_v2_57IsSpaceEc.exit.thread.sink.split, %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit, %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit, %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit, %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit, %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit, %_ZN16OpenColorIO_v2_521FindLastNonWhiteSpaceEPKcm.exit
  ret void
}

; Function Attrs: nounwind
declare ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @freelocale(ptr noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_XMLReaderUtils.cpp() #7 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str, ptr noundef null) #8
  store ptr %i.a, ptr @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, align 8, !tbaa !11
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtils6LocaleD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, ptr nonnull @__dso_handle) #8 ; 0 uses
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS15__locale_struct", !8, i64 0}
!10 = !{!"_ZTSN16OpenColorIO_v2_511NumberUtils6LocaleE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, i1 true, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!17 = distinct !{!17, !16, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!18 = distinct !{!18, i1 true, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPFbcEET_SE_SE_T0_"}
!19 = distinct !{!19, !18, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPFbcEET_SE_SE_T0_: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_"}
!21 = distinct !{!21, !20, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag"}
!23 = distinct !{!23, !22, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIPFbcEEEET_SH_SH_T0_St26random_access_iterator_tag: argument 0"}
!24 = distinct !{!24, !14}
!25 = !{!"p1 omnipotent char", !8, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !12, i64 8, !4, i64 16}
!28 = !{!27, !25, i64 0}
!29 = !{!27, !12, i64 8}
!30 = !{!17}
!31 = !{!23, !21, !19}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = !{!12, !12, i64 0}
end_hunk_0
