Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/group?download=true
inline.NumInlined: 24122
inline.NumDeleted: 8481
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 49
begin_hunk_0_@"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S10_S11_":bb.a
  br i1 %i.ex, label %.preheader.i.i, label %bb.p, !llvm.loop !3995

bb.p:                                             ; preds = %.preheader.i.i
  %.not.i.i3 = icmp ult ptr %storemerge.i.i, %i.dm
  br i1 %.not.i.i3, label %bb.q, label %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S17_S17_S10_.exit"

bb.q:                                             ; preds = %bb.p
  store i32 %i.eg, ptr %i.dn, align 4, !tbaa !350, !noalias !3998
  store i32 %i.do, ptr %.pn.i.i, align 4, !tbaa !350, !noalias !3998
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S17_S17_S10_.exit.i", !llvm.loop !3996

"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S17_S17_S10_.exit": ; preds = %bb.p
  %i.ey = ptrtoint ptr %i.dm to i64               ; 5 uses
  store i64 %i.ey, ptr %8, align 8, !tbaa !298
  store i64 %i.ab, ptr %9, align 8, !tbaa !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S10_S11_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %8, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %9, i64 noundef %i.ac, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(24) %10)
  store i64 %i.ey, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.ez = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.fa = sub i64 %i.ez, %i.ey
  %i.fb = icmp sgt i64 %i.fa, 64
  br i1 %i.fb, label %bb.b, label %.loopexit, !llvm.loop !3987

.loopexit:                                        ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S17_S17_S10_.exit", %bb.a, %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S17_S10_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_T2_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #23 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4005 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val = load ptr, ptr %i.e, align 8, !tbaa !379 ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.f, align 8, !tbaa !370 ; 2 uses
  %i.g = getelementptr i8, ptr %.val, i64 80
  %.val.val25 = load ptr, ptr %i.g, align 8, !tbaa !371 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.035 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.h = shl i64 %.035, 1                         ; 4 uses
  %i.i = add i64 %i.h, 2
  %i.j = sub nuw nsw i64 -2, %i.h
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.j
  %i.l = or disjoint i64 %i.h, 1
  %i.m = xor i64 %i.h, -1
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !350
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !350
  %i.s = and i32 %i.p, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.t, 12
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !298
  %i.x = and i64 %i.t, 4095
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !350
  %i.aa = and i32 %i.z, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.val25, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !373
  %i.af = and i64 %i.ab, 1023
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.ai = and i32 %i.r, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !298
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !350
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.val25, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !373
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !282
  %i.ay = icmp sgt i32 %i.ah, %i.ax
  %spec.select = select i1 %i.ay, i64 %i.l, i64 %i.i ; 4 uses
  %i.az = sub i64 0, %spec.select
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !350
  %i.bd = sub i64 0, %.035
  %i.be = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !350
  %i.bg = icmp slt i64 %spec.select, %i.b
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !4001

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bh = and i64 %2, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bj = add nsw i64 %2, -2
  %i.bk = ashr exact i64 %i.bj, 1
  %i.bl = icmp eq i64 %.0.lcssa, %i.bk
  br i1 %i.bl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bm = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4006 ; 2 uses
  %i.bp = xor i64 %i.bm, -1
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !350
  %i.bt = sub nsw i64 0, %.0.lcssa
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bn, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bw = load i64, ptr %0, align 8, !tbaa !298
  %i.bx = inttoptr i64 %i.bw to ptr               ; 3 uses
  %i.by = icmp sgt i64 %.122, %1
  br i1 %i.by, label %.lr.ph.i, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !379
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %.val.val.i = load ptr, ptr %i.cc, align 8, !tbaa !370 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 80
  %.val.val12.i = load ptr, ptr %i.cd, align 8, !tbaa !371 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !298
  %i.cj = and i64 %i.cf, 4095
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.097.i = phi i64 [ %.122, %.lr.ph.i ], [ %.08.i, %bb.g ] ; 3 uses
  %.08.in.i = add nsw i64 %.097.i, -1
  %.08.i = sdiv i64 %.08.in.i, 2                  ; 4 uses
  %i.cl = sub nsw i64 0, %.08.i
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !350 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !298
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !350
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.val12.i, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !373
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !282
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !350
  %i.dg = and i32 %i.df, 1048575
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 10
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val.val12.i, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !373
  %i.dl = and i64 %i.dh, 1023
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !282
  %i.do = icmp sgt i32 %i.de, %i.dn
  br i1 %i.do, label %bb.g, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit"

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.097.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !350
  %i.ds = icmp sgt i64 %.08.i, %1
  br i1 %i.ds, label %bb.f, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit", !llvm.loop !4004

"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit": ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.097.i, %bb.f ], [ %.08.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S10_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofree readnone captures(address) %.0.val, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #23 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.0.val
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.0.val
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !379 ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.f, align 8, !tbaa !370 ; 2 uses
  %i.g = getelementptr i8, ptr %.val, i64 80
  %.val.val3 = load ptr, ptr %i.g, align 8, !tbaa !371 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.010.015 = phi ptr [ %i.c, %.lr.ph ], [ %i.h, %bb.h ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.010.015, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !350  ; 3 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !350
  %i.k = and i32 %i.i, 1048575
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = lshr i64 %i.l, 12                        ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !298
  %i.p = and i64 %i.l, 4095                       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !350
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.t, 10
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val.val3, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !373
  %i.x = and i64 %i.t, 1023
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !282
  %i.aa = and i32 %i.j, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !298
  %i.af = and i64 %i.ab, 4095
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !350
  %i.ai = and i32 %i.ah, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val.val3, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !373
  %i.an = and i64 %i.aj, 1023
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !282
  %i.aq = icmp sgt i32 %i.z, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = ptrtoint ptr %.sroa.010.015 to i64
  %i.as = sub i64 %i.b, %i.ar                     ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %.sroa.010.015, i64 %i.as, i1 false), !tbaa !350, !noalias !4018
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.i, ptr %i.c, align 4, !tbaa !350
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.copyload = load i64, ptr %i.e, align 8
  %i.au = inttoptr i64 %.sroa.3.0.copyload to ptr ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr i8, ptr %i.au, i64 80
  %.val.val.i = load ptr, ptr %i.av, align 8, !tbaa !370 ; 2 uses
  %.val.val3.i = load ptr, ptr %i.aw, align 8, !tbaa !371 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.m
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !298
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ba = phi ptr [ %.sroa.010.015, %bb.e ], [ %.sroa.01.0.i, %bb.g ] ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !350 ; 2 uses
  %i.bc = load i32, ptr %i.az, align 4, !tbaa !350
  %i.bd = and i32 %i.bc, 1048575
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 10
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val.val3.i, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !373
  %i.bi = and i64 %i.be, 1023
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !282
  %i.bl = and i32 %i.bb, 1048575
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = lshr i64 %i.bm, 12
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !298
  %i.bq = and i64 %i.bm, 4095
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !350
  %i.bt = and i32 %i.bs, 1048575
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = lshr i64 %i.bu, 10
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.val.val3.i, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !373
  %i.by = and i64 %i.bu, 1023
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !282
  %i.cb = icmp sgt i32 %i.bk, %i.ca
  br i1 %i.cb, label %bb.g, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_.exit"

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.cc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  store i32 %i.bb, ptr %i.cc, align 4, !tbaa !350
  br label %bb.f, !llvm.loop !25

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_.exit": ; preds = %bb.f
  %i.cd = getelementptr inbounds i8, ptr %i.ba, i64 -4
  store i32 %i.i, ptr %i.cd, align 4, !tbaa !350
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_1NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_.exit"
  %i.ce = icmp eq ptr %i.h, %.0.val
  br i1 %i.ce, label %.loopexit, label %bb.c, !llvm.loop !4017

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S10_S11_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef nonnull align 8 captures(none) dead_on_return dereferenceable(8) %1, i64 noundef %2, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.974", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.985", align 8 ; 5 uses
  %6 = alloca %"class.std::reverse_iterator.974", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.985", align 8 ; 6 uses
  %.sroa.02.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.010 = alloca [16 x i8], align 8          ; 2 uses
  %8 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %9 = alloca %"class.std::reverse_iterator.974", align 8 ; 2 uses
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.985", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i21 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i22 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i21 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i22 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S17_S17_S10_.exit"
  %i.f = icmp eq i64 %i.ac, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43, !llvm.loop !4019

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa40 = phi i64 [ %i.b, %.lr.ph ], [ %i.es, %bb.b ] ; 2 uses
  %.lcssa38 = phi i64 [ %i.a, %.lr.ph ], [ %i.et, %bb.b ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i)
  %i.g = inttoptr i64 %.lcssa40 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.h = inttoptr i64 %.lcssa38 to ptr            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.i = sub i64 %.lcssa38, %.lcssa40             ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_RS10_.exit.i.i", label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = add nsw i64 %i.j, -2
  %i.m = lshr i64 %i.l, 1
  store i64 %.lcssa38, ptr %6, align 8, !tbaa !298
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx3.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.08.i.i.i = phi i64 [ %i.m, %bb.c ], [ %i.r, %bb.d ] ; 4 uses
  %i.n = sub i64 0, %.08.i.i.i
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S10_S11_":bb.a
  br i1 %i.er, label %.preheader.i.i, label %bb.p, !llvm.loop !4027

bb.p:                                             ; preds = %.preheader.i.i
  %.not.i.i5 = icmp ult ptr %storemerge.i.i, %i.di
  br i1 %.not.i.i5, label %bb.q, label %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S17_S17_S10_.exit"

bb.q:                                             ; preds = %bb.p
  store i32 %i.eb, ptr %i.dj, align 4, !tbaa !350, !noalias !4030
  store i32 %i.dk, ptr %.pn.i.i, align 4, !tbaa !350, !noalias !4030
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S17_S17_S10_.exit.i", !llvm.loop !4028

"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S17_S17_S10_.exit": ; preds = %bb.p
  %i.es = ptrtoint ptr %i.di to i64               ; 5 uses
  store i64 %i.es, ptr %8, align 8, !tbaa !298
  store i64 %i.ab, ptr %9, align 8, !tbaa !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S10_S11_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %8, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %9, i64 noundef %i.ac, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(24) %10)
  store i64 %i.es, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.et = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.eu = sub i64 %i.et, %i.es
  %i.ev = icmp sgt i64 %i.eu, 64
  br i1 %i.ev, label %bb.b, label %.loopexit, !llvm.loop !4019

.loopexit:                                        ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S17_S17_S10_.exit", %bb.a, %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S17_S10_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_T2_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4037 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val23 = load ptr, ptr %i.e, align 8, !tbaa !379 ; 2 uses
  %i.f = getelementptr i8, ptr %.val23, i64 8
  %.val23.val = load ptr, ptr %i.f, align 8, !tbaa !370 ; 2 uses
  %i.g = getelementptr i8, ptr %.val23, i64 80
  %.val23.val27 = load ptr, ptr %i.g, align 8, !tbaa !371 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.036 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.h = shl i64 %.036, 1                         ; 4 uses
  %i.i = add i64 %i.h, 2
  %i.j = sub nuw nsw i64 -2, %i.h
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.j
  %i.l = or disjoint i64 %i.h, 1
  %i.m = xor i64 %i.h, -1
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !350
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !350
  %i.s = and i32 %i.p, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.t, 12
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val23.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !298
  %i.x = and i64 %i.t, 4095
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !350
  %i.aa = and i32 %i.z, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val23.val27, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !373
  %i.af = and i64 %i.ab, 1023
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = and i32 %i.r, 1048575
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = lshr i64 %i.ai, 12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val23.val, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !298
  %i.am = and i64 %i.ai, 4095
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !350
  %i.ap = and i32 %i.ao, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 10
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val23.val27, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !373
  %i.au = and i64 %i.aq, 1023
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %.val.val.i.i = load i32, ptr %i.ag, align 4, !tbaa !282
  %.val4.val.i.i = load i32, ptr %i.av, align 4, !tbaa !282
  %i.aw = icmp slt i32 %.val.val.i.i, %.val4.val.i.i
  %spec.select = select i1 %i.aw, i64 %i.l, i64 %i.i ; 4 uses
  %i.ax = sub i64 0, %spec.select
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !350
  %i.bb = sub i64 0, %.036
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !350
  %i.be = icmp slt i64 %spec.select, %i.b
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !4033

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bf = and i64 %2, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bh = add nsw i64 %2, -2
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = icmp eq i64 %.0.lcssa, %i.bi
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bk = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bl = or disjoint i64 %i.bk, 1
  %i.bm = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4038 ; 2 uses
  %i.bn = xor i64 %i.bk, -1
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !350
  %i.br = sub nsw i64 0, %.0.lcssa
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4
  store i32 %i.bq, ptr %i.bt, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bl, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bu = load i64, ptr %0, align 8, !tbaa !298
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = icmp sgt i64 %.122, %1
  br i1 %i.bw, label %.lr.ph.i, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !379
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %.val10.val.i = load ptr, ptr %i.ca, align 8, !tbaa !370 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 80
  %.val10.val14.i = load ptr, ptr %i.cb, align 8, !tbaa !371 ; 2 uses
  %i.cc = and i32 %3, 1048575
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = lshr i64 %i.cd, 12
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.val10.val.i, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !298
  %i.ch = and i64 %i.cd, 4095
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.097.i = phi i64 [ %.122, %.lr.ph.i ], [ %.08.i, %bb.g ] ; 3 uses
  %.08.in.i = add nsw i64 %.097.i, -1
  %.08.i = sdiv i64 %.08.in.i, 2                  ; 4 uses
  %i.cj = sub nsw i64 0, %.08.i
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !350 ; 2 uses
  %i.cn = and i32 %i.cm, 1048575
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = lshr i64 %i.co, 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val10.val.i, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !298
  %i.cs = and i64 %i.co, 4095
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !350
  %i.cv = and i32 %i.cu, 1048575
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 10
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val10.val14.i, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !373
  %i.da = and i64 %i.cw, 1023
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.ci, align 4, !tbaa !350
  %i.dd = and i32 %i.dc, 1048575
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val10.val14.i, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !373
  %i.di = and i64 %i.de, 1023
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %.val.val.i.i.i = load i32, ptr %i.db, align 4, !tbaa !282
  %.val4.val.i.i.i = load i32, ptr %i.dj, align 4, !tbaa !282
  %i.dk = icmp slt i32 %.val.val.i.i.i, %.val4.val.i.i.i
  br i1 %i.dk, label %bb.g, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit"

bb.g:                                             ; preds = %bb.f
  %i.dl = sub nsw i64 0, %.097.i
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !350
  %i.do = icmp sgt i64 %.08.i, %1
  br i1 %i.do, label %bb.f, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit", !llvm.loop !4036

"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_S10_S11_RT2_.exit": ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.097.i, %bb.f ], [ %.08.i, %bb.g ]
  %i.dp = sub nsw i64 0, %.09.lcssa.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %3, ptr %i.dr, align 4, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S17_S10_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofree readnone captures(address) %.0.val, ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.0.val
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.0.val
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val1 = load ptr, ptr %i.e, align 8, !tbaa !379 ; 2 uses
  %i.f = getelementptr i8, ptr %.val1, i64 8
  %.val1.val = load ptr, ptr %i.f, align 8, !tbaa !370 ; 2 uses
  %i.g = getelementptr i8, ptr %.val1, i64 80
  %.val1.val5 = load ptr, ptr %i.g, align 8, !tbaa !371 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.010.015 = phi ptr [ %i.c, %.lr.ph ], [ %i.h, %bb.h ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.010.015, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !350  ; 3 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !350
  %i.k = and i32 %i.i, 1048575
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = lshr i64 %i.l, 12                        ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val1.val, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !298
  %i.p = and i64 %i.l, 4095                       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !350
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.t, 10
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val1.val5, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !373
  %i.x = and i64 %i.t, 1023
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = and i32 %i.j, 1048575
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = lshr i64 %i.aa, 12
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.val, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.ae = and i64 %i.aa, 4095
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !350
  %i.ah = and i32 %i.ag, 1048575
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = lshr i64 %i.ai, 10
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val1.val5, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !373
  %i.am = and i64 %i.ai, 1023
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %.val.val.i.i = load i32, ptr %i.y, align 4, !tbaa !282
  %.val4.val.i.i = load i32, ptr %i.an, align 4, !tbaa !282
  %i.ao = icmp slt i32 %.val.val.i.i, %.val4.val.i.i
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = ptrtoint ptr %.sroa.010.015 to i64
  %i.aq = sub i64 %i.b, %i.ap                     ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %.sroa.010.015, i64 %i.aq, i1 false), !tbaa !350, !noalias !4050
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.i, ptr %i.c, align 4, !tbaa !350
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.copyload = load i64, ptr %i.e, align 8
  %i.as = inttoptr i64 %.sroa.3.0.copyload to ptr ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = getelementptr i8, ptr %i.as, i64 80
  %.val1.val.i = load ptr, ptr %i.at, align 8, !tbaa !370 ; 2 uses
  %.val1.val5.i = load ptr, ptr %i.au, align 8, !tbaa !371 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val1.val.i, i64 %i.m
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !298
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ay = phi ptr [ %.sroa.010.015, %bb.e ], [ %.sroa.01.0.i, %bb.g ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !350 ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !350
  %i.bb = and i32 %i.ba, 1048575
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = lshr i64 %i.bc, 10
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val1.val5.i, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !373
  %i.bg = and i64 %i.bc, 1023
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val1.val.i, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !298
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !350
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val1.val5.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !373
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %.val.val.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !282
  %.val4.val.i.i.i = load i32, ptr %i.bw, align 4, !tbaa !282
  %i.bx = icmp slt i32 %.val.val.i.i.i, %.val4.val.i.i.i
  br i1 %i.bx, label %bb.g, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_.exit"

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.by = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.by, align 4, !tbaa !350
  br label %bb.f, !llvm.loop !26

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_.exit": ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.i, ptr %i.bz, align 4, !tbaa !350
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_11basic_groupINS3_7owned_tIJEEENS3_5get_tIJKNS3_16basic_sigh_mixinINS3_13basic_storageIiS4_SaIiEEENS3_14basic_registryIS4_S7_EEEENSH_INSI_IjS4_SaIjEEESM_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN24GroupNonOwning_Sort_Test8TestBodyEvE3$_2NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S10_.exit"
  %i.ca = icmp eq ptr %i.h, %.0.val
  br i1 %i.ca, label %.loopexit, label %bb.c, !llvm.loop !4049

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN7testing13PrintToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN7testing13PrintToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIjjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIjjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIjjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !313    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !293
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.f = load ptr, ptr %5, align 8, !tbaa !313    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !293
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIjjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !313    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
end_hunk_1
begin_hunk_2_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SO_SJ_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !373
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !282
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !282
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !350
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !350
  store i64 %i.r, ptr %4, align 8, !tbaa !298
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !298
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !298
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !4099
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4106 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !370  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !451  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !350
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !350
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !298
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !350
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !373
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !298
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !350
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !373
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !282
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !282
  %i.az = icmp ult i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !350
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !350
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !4102

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bi = and i64 %2, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bk = add nsw i64 %2, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa, %i.bl
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bn = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4107 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !350
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !298
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !370 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !451 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !298
  %i.cj = and i64 %i.cf, 4095
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cl = sub nsw i64 0, %.017.i
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !350 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !298
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !350
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !373
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !350
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !373
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !282
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !282
  %i.do = icmp ult i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !350
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit, !llvm.loop !4105

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SO_SO_SJ_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !298
  %i.b = load i64, ptr %2, align 8, !tbaa !298
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !350  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !350  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !370  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !298
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !350
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !451  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !373
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !298
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !350
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !373
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !282 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !282 ; 3 uses
  %i.as = icmp ult i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !298
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !350 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !298
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !350
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !373
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !282 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp ult i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !298
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !350
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !350
  store i32 %i.br, ptr %i.g, align 4, !tbaa !350
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp ult i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !298
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !350 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !350
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !350
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !350
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !350
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp ult i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !298
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !350
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !350
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !350
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp ult i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !298
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !350 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !350
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !350
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !350
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !350
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7sort_asITkSt14input_iteratorNS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEEEES9_T_SA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !449
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !450
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !362
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !363
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.e, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = icmp eq i64 %i.n, 0
  %i.q = icmp eq i64 %2, %4
  %or.cond19 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond19, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !370
  br label %bb.e

.critedge:                                        ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, %bb.d
  %.sroa.315.0.lcssa = phi i64 [ %i.n, %bb.d ], [ %.sroa.315.1, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.315.0.lcssa, 1
  ret { ptr, i64 } %.fca.1.insert

bb.e:                                             ; preds = %.lr.ph, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread
  %i.t = phi ptr [ %.pre, %.lr.ph ], [ %i.ck, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ] ; 7 uses
  %.sroa.315.021 = phi i64 [ %i.n, %.lr.ph ], [ %.sroa.315.1, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ] ; 5 uses
  %.sroa.2.020 = phi i64 [ %2, %.lr.ph ], [ %i.cl, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !363
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.sroa.2.020
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !350  ; 3 uses
  %i.y = and i32 %i.x, 1048575
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = lshr i64 %i.z, 12                       ; 2 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !398
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.t to i64
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_":bb.a
  br i1 %i.fb, label %.preheader.i.i, label %bb.o, !llvm.loop !4590

bb.o:                                             ; preds = %.preheader.i.i
  %.not.i.i7 = icmp ult ptr %storemerge.i.i, %i.dq
  br i1 %.not.i.i7, label %bb.p, label %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit"

bb.p:                                             ; preds = %bb.o
  store i32 %i.ek, ptr %i.dr, align 4, !tbaa !350, !noalias !4595
  store i32 %i.ds, ptr %.pn.i.i, align 4, !tbaa !350, !noalias !4595
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !4591

"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.o
  %i.fc = ptrtoint ptr %i.dq to i64               ; 5 uses
  store i64 %i.fc, ptr %6, align 8, !tbaa !298
  store i64 %i.ab, ptr %7, align 8, !tbaa !298
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %7, i64 noundef %i.ac, ptr nonnull %3)
  store i64 %i.fc, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.fd = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.fe = sub i64 %i.fd, %i.fc
  %i.ff = icmp sgt i64 %i.fe, 64
  br i1 %i.ff, label %.lr.ph, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !4578

"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEET_SG_SG_T0_.exit", %.lr.ph.i1.i, %bb.a, %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree readonly captures(none) %4) unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4608 ; 4 uses
  %.val.val = load ptr, ptr %4, align 8, !tbaa !531, !noalias !769, !nonnull !365, !noundef !365
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !369, !noalias !4609 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !370  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !534  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.036 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.k = shl i64 %.036, 1                         ; 4 uses
  %i.l = add i64 %i.k, 2
  %i.m = sub nuw nsw i64 -2, %i.k
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  %i.o = or disjoint i64 %i.k, 1
  %i.p = xor i64 %i.k, -1
  %i.q = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !350
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !350
  %i.v = and i32 %i.s, 1048575
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = lshr i64 %i.w, 12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !298
  %i.aa = and i64 %i.w, 4095
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !350
  %i.ad = and i32 %i.ac, 1048575
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = lshr i64 %i.ae, 10
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !536
  %i.ai = and i64 %i.ae, 1023
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !538
  %i.al = and i32 %i.u, 1048575
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = lshr i64 %i.am, 12
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !298
  %i.aq = and i64 %i.am, 4095
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !350
  %i.at = and i32 %i.as, 1048575
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = lshr i64 %i.au, 10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !536
  %i.ay = and i64 %i.au, 1023
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !538
  %i.bb = icmp slt i32 %i.ak, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.o, i64 %i.l ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !350
  %i.bg = sub i64 0, %.036
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !350
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !4600

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4610 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !350
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !298
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e
  %.val.val.i = load ptr, ptr %4, align 8, !tbaa !531, !noalias !4611, !nonnull !365, !noundef !365
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !369, !noalias !4612 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !370 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !534 ; 2 uses
  %i.ci = and i32 %3, 1048575
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = lshr i64 %i.cj, 12
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !298
  %i.cn = and i64 %i.cj, 4095
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cn
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.099.i = phi i64 [ %.122, %.lr.ph.i ], [ %.010.i, %bb.g ] ; 3 uses
  %.010.in.i = add nsw i64 %.099.i, -1
  %.010.i = sdiv i64 %.010.in.i, 2                ; 4 uses
  %i.cp = sub nsw i64 0, %.010.i
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !350 ; 2 uses
  %i.ct = and i32 %i.cs, 1048575
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cv = lshr i64 %i.cu, 12
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !298
  %i.cy = and i64 %i.cu, 4095
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !350
  %i.db = and i32 %i.da, 1048575
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = lshr i64 %i.dc, 10
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !536
  %i.dg = and i64 %i.dc, 1023
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !538
  %i.dj = load i32, ptr %i.co, align 4, !tbaa !350
  %i.dk = and i32 %i.dj, 1048575
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dm = lshr i64 %i.dl, 10
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !536
  %i.dp = and i64 %i.dl, 1023
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !538
  %i.ds = icmp slt i32 %i.di, %i.dr
  br i1 %i.ds, label %bb.g, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_RT2_.exit"

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.099.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cs, ptr %i.dv, align 4, !tbaa !350
  %i.dw = icmp sgt i64 %.010.i, %1
  br i1 %i.dw, label %bb.f, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_RT2_.exit", !llvm.loop !4607

"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_SH_T1_RT2_.exit": ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.099.i, %bb.f ], [ %.010.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_SG_T0_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, ptr nofree readnone captures(address) %.0.val, ptr nofree readonly captures(none) %1) unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.0.val
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.0.val
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val.val = load ptr, ptr %1, align 8, !tbaa !531, !noalias !769, !nonnull !365, !noundef !365
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !369, !noalias !4626 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !370  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !534  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.07.013 = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %bb.f ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.07.013, i64 -4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !350  ; 3 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !350
  %i.n = and i32 %i.l, 1048575
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = lshr i64 %i.o, 12
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !298
  %i.s = and i64 %i.o, 4095
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !350  ; 2 uses
  %i.v = and i32 %i.u, 1048575
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = lshr i64 %i.w, 10
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !536
  %i.aa = and i64 %i.w, 1023
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !538
  %i.ad = and i32 %i.m, 1048575
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = lshr i64 %i.ae, 12
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !298
  %i.ai = and i64 %i.ae, 4095
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !350
  %i.al = and i32 %i.ak, 1048575
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = lshr i64 %i.am, 10
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !536
  %i.aq = and i64 %i.am, 1023
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !538
  %i.at = icmp slt i32 %i.ac, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.07.013 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 4 %.sroa.07.013, i64 %i.av, i1 false), !tbaa !350, !noalias !4627
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.l, ptr %i.c, align 4, !tbaa !350
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.u, %bb.c ]
  %i.ay = phi ptr [ %.sroa.03.0.i, %bb.e ], [ %.sroa.07.013, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !350 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !536
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !538
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !298
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !350
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !536
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !538
  %i.by = icmp slt i32 %i.bh, %i.bx
  br i1 %i.by, label %bb.e, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit"

bb.e:                                             ; preds = %.preheader
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bz = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.bz, align 4, !tbaa !350
  %.pre = load i32, ptr %i.t, align 4, !tbaa !350
  br label %.preheader, !llvm.loop !48

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit": ; preds = %.preheader
  %i.ca = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.l, ptr %i.ca, align 4, !tbaa !350
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN28GroupOwning_SortOrdered_Test8TestBodyEvE3$_0EEEvT_T0_.exit"
  %i.cb = icmp eq ptr %i.k, %.0.val
  br i1 %i.cb, label %.loopexit, label %bb.c, !llvm.loop !4625

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIN4test8internal10value_typeIiEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN7testing13PrintToStringIN4test8internal10value_typeIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN7testing13PrintToStringIN4test8internal10value_typeIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4test8internal10value_typeIiEES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4test8internal10value_typeIiEES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4test8internal10value_typeIiEES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !313    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !293
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.f = load ptr, ptr %5, align 8, !tbaa !313    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !293
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4test8internal10value_typeIiEES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !313    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !293
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
end_hunk_3
begin_hunk_4_@"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_S14_":bb.a
  %.val2.i.i10.i.i = load i32, ptr %i.er, align 4, !tbaa !538, !noalias !4660
  %i.es = icmp slt i32 %.val2.i.i.i8.i, %.val2.i.i10.i.i
  br i1 %i.es, label %.preheader.i.i, label %bb.p, !llvm.loop !4657

bb.p:                                             ; preds = %.preheader.i.i
  %.not.i.i12 = icmp ult ptr %storemerge.i.i, %i.dj
  br i1 %.not.i.i12, label %bb.q, label %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S1A_S1A_S13_.exit"

bb.q:                                             ; preds = %bb.p
  store i32 %i.ec, ptr %i.dk, align 4, !tbaa !350, !noalias !4660
  store i32 %i.dl, ptr %.pn.i.i, align 4, !tbaa !350, !noalias !4660
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S1A_S1A_S13_.exit.i", !llvm.loop !4658

"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S1A_S1A_S13_.exit": ; preds = %bb.p
  %i.et = ptrtoint ptr %i.dj to i64               ; 5 uses
  store i64 %i.et, ptr %6, align 8, !tbaa !298
  store i64 %i.ac, ptr %7, align 8, !tbaa !298
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_S14_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %7, i64 noundef %i.ad, ptr %3)
  store i64 %i.et, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.eu = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.ev = sub i64 %i.eu, %i.et
  %i.ew = icmp sgt i64 %i.ev, 64
  br i1 %i.ew, label %bb.b, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S1A_S13_.exit", !llvm.loop !4649

"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S1A_S13_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S1A_S1A_S13_.exit", %.lr.ph.i2.i, %bb.a, %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_RS13_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_T2_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree readonly captures(none) %4) unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4667 ; 4 uses
  %i.e = getelementptr i8, ptr %4, i64 8
  %.val.val = load ptr, ptr %i.e, align 8, !tbaa !542 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.f, align 8, !tbaa !370 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.val, i64 80
  %.val.val.val25 = load ptr, ptr %i.g, align 8, !tbaa !534 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.036 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.h = shl i64 %.036, 1                         ; 4 uses
  %i.i = add i64 %i.h, 2
  %i.j = sub nuw nsw i64 -2, %i.h
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.j
  %i.l = or disjoint i64 %i.h, 1
  %i.m = xor i64 %i.h, -1
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !350
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !350
  %i.s = and i32 %i.p, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.t, 12
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !298
  %i.x = and i64 %i.t, 4095
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !350
  %i.aa = and i32 %i.z, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val25, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !536
  %i.af = and i64 %i.ab, 1023
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = and i32 %i.r, 1048575
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = lshr i64 %i.ai, 12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !298
  %i.am = and i64 %i.ai, 4095
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !350
  %i.ap = and i32 %i.ao, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 10
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val25, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !536
  %i.au = and i64 %i.aq, 1023
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %.val.i.i = load i32, ptr %i.ag, align 4, !tbaa !538
  %.val2.i.i = load i32, ptr %i.av, align 4, !tbaa !538
  %i.aw = icmp slt i32 %.val.i.i, %.val2.i.i
  %spec.select = select i1 %i.aw, i64 %i.l, i64 %i.i ; 4 uses
  %i.ax = sub i64 0, %spec.select
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !350
  %i.bb = sub i64 0, %.036
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !350
  %i.be = icmp slt i64 %spec.select, %i.b
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !4663

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bf = and i64 %2, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bh = add nsw i64 %2, -2
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = icmp eq i64 %.0.lcssa, %i.bi
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bk = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bl = or disjoint i64 %i.bk, 1
  %i.bm = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4668 ; 2 uses
  %i.bn = xor i64 %i.bk, -1
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !350
  %i.br = sub nsw i64 0, %.0.lcssa
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4
  store i32 %i.bq, ptr %i.bt, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bl, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bu = load i64, ptr %0, align 8, !tbaa !298
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = icmp sgt i64 %.122, %1
  br i1 %i.bw, label %.lr.ph.i, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e
  %i.bx = getelementptr i8, ptr %4, i64 8
  %.val.val.i = load ptr, ptr %i.bx, align 8, !tbaa !542 ; 2 uses
  %i.by = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load ptr, ptr %i.by, align 8, !tbaa !370 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val.val.i, i64 80
  %.val.val.val12.i = load ptr, ptr %i.bz, align 8, !tbaa !534 ; 2 uses
  %i.ca = and i32 %3, 1048575
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = lshr i64 %i.cb, 12
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !298
  %i.cf = and i64 %i.cb, 4095
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.097.i = phi i64 [ %.122, %.lr.ph.i ], [ %.08.i, %bb.g ] ; 3 uses
  %.08.in.i = add nsw i64 %.097.i, -1
  %.08.i = sdiv i64 %.08.in.i, 2                  ; 4 uses
  %i.ch = sub nsw i64 0, %.08.i
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !350 ; 2 uses
  %i.cl = and i32 %i.ck, 1048575
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = lshr i64 %i.cm, 12
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !298
  %i.cq = and i64 %i.cm, 4095
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !350
  %i.ct = and i32 %i.cs, 1048575
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cv = lshr i64 %i.cu, 10
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val12.i, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !536
  %i.cy = and i64 %i.cu, 1023
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cg, align 4, !tbaa !350
  %i.db = and i32 %i.da, 1048575
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = lshr i64 %i.dc, 10
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val12.i, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !536
  %i.dg = and i64 %i.dc, 1023
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg
  %.val.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !538
  %.val2.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !538
  %i.di = icmp slt i32 %.val.i.i.i, %.val2.i.i.i
  br i1 %i.di, label %bb.g, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit"

bb.g:                                             ; preds = %bb.f
  %i.dj = sub nsw i64 0, %.097.i
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4
  store i32 %i.ck, ptr %i.dl, align 4, !tbaa !350
  %i.dm = icmp sgt i64 %.08.i, %1
  br i1 %i.dm, label %bb.f, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit", !llvm.loop !4666

"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEENSF_INSG_IcS4_SaIcEEESO_EEEEENS3_5get_tIJEEENS3_9exclude_tIJEEEE4sortIJLm0EEZN28GroupOwning_SortReverse_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit": ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.097.i, %bb.f ], [ %.08.i, %bb.g ]
  %i.dn = sub nsw i64 0, %.09.lcssa.i
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dn
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -4
  store i32 %3, ptr %i.dp, align 4, !tbaa !350
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EEC2IJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES3_SaISD_EEENS_14basic_registryIS3_S4_EEEENS8_INS9_IcS3_SaIcEEESH_EEEJEEESt5tupleIJDpRT_EESM_IJDpRT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %2 = alloca %"class.entt::sink.1431", align 8   ; 4 uses
  %3 = alloca %"class.entt::connection", align 8  ; 3 uses
  %4 = alloca %"class.entt::sink.1431", align 8   ; 4 uses
  %5 = alloca %"class.entt::connection", align 8  ; 3 uses
  %6 = alloca %"class.entt::sink.804", align 8    ; 4 uses
  %7 = alloca %"class.entt::connection", align 8  ; 3 uses
  %8 = alloca %"class.entt::sink.804", align 8    ; 4 uses
  %9 = alloca %"class.entt::connection", align 8  ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EEE, i64 16), ptr %0, align 8, !tbaa !265
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !298
  %i.d = shufflevector <2 x ptr> %i.c, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8, !tbaa !501
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !771, !nonnull !365, !align !686 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !688, !nonnull !365, !align !686 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.h, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESK_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.j, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr %i.k, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE9remove_ifES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !363  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp eq ptr %i.o, %i.p
  br i1 %i.u, label %_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE12common_setupEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.i
  %.sroa.5.06.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %.noexc ] ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !363
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %.sroa.5.06.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !350
  call void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE17push_on_constructES3_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.x)
  %i.y = add nuw nsw i64 %.sroa.5.06.i, 1         ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.t
  br i1 %i.z, label %_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE12common_setupEv.exit, label %.lr.ph.i, !llvm.loop !152

_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm1ELm0EE12common_setupEv.exit: ; preds = %.lr.ph.i, %.noexc
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EENS_10connectionERT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::connection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !766    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i, -1                    ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !345
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347
  %i.o = icmp eq ptr %i.n, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm1ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.p, %2
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !480
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !344
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !344
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.u, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit.loopexit, label %bb.b, !llvm.loop !179

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !766   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !344
  br label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit

_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit: ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit.loopexit, %bb.a
  %i.w = phi ptr [ %.pre9, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit.loopexit ], [ %i.c, %bb.a ] ; 6 uses
  %i.x = phi ptr [ %.pre, %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !481
  %.not.i.i4 = icmp eq ptr %i.w, %i.aa
  br i1 %.not.i.i4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit
  store ptr %2, ptr %i.w, align 8, !tbaa !298
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm1ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !298
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !344
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !344
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE9push_backEOS8_.exit

bb.f:                                             ; preds = %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm1ELm0EE17push_on_constructES3_EESK_EEvRT0_.exit
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !345 ; 5 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775792
  br i1 %i.ah, label %bb.g, label %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #32
  unreachable

_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ai = ashr exact i64 %i.ag, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 576460752303423487)
  %i.am = select i1 %i.ak, i64 576460752303423487, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #31 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store ptr %2, ptr %i.ap, align 8, !tbaa !298
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm1ELm0EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_, ptr %.sroa.7.0..sroa_idx7, align 8, !tbaa !298
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !480, !alias.scope !4672
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #29
  br label %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityESaIS3_EEES3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !345
end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_S14_":bb.a
  %i.ep = and i64 %i.el, 1023
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep
  %.val4.val.i.i14.i.i = load i8, ptr %i.eq, align 1, !tbaa !293, !noalias !4688
  %i.er = icmp slt i8 %.val4.val.i.i.i8.i, %.val4.val.i.i14.i.i
  br i1 %i.er, label %.preheader.i.i, label %bb.o, !llvm.loop !4685

bb.o:                                             ; preds = %.preheader.i.i
  %.not.i.i12 = icmp ult ptr %storemerge.i.i, %i.di
  br i1 %.not.i.i12, label %bb.p, label %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S1A_S1A_S13_.exit"

bb.p:                                             ; preds = %bb.o
  store i32 %i.eb, ptr %i.dj, align 4, !tbaa !350, !noalias !4688
  store i32 %i.dk, ptr %.pn.i.i, align 4, !tbaa !350, !noalias !4688
  br label %"_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S1A_S1A_S13_.exit.i", !llvm.loop !4686

"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S1A_S1A_S13_.exit": ; preds = %bb.o
  %i.es = ptrtoint ptr %i.di to i64               ; 5 uses
  store i64 %i.es, ptr %6, align 8, !tbaa !298
  store i64 %i.ab, ptr %7, align 8, !tbaa !298
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S13_S14_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %7, i64 noundef %i.ac, ptr nonnull %3)
  store i64 %i.es, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.et = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.eu = sub i64 %i.et, %i.es
  %i.ev = icmp sgt i64 %i.eu, 64
  br i1 %i.ev, label %.lr.ph, label %"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S1A_S13_.exit", !llvm.loop !4677

"_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_S1A_S13_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEET_S1A_S1A_S13_.exit", %.lr.ph.i2.i, %bb.a, %"_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S1A_RS13_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_T2_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree readonly captures(none) %4) unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4695 ; 4 uses
  %.val.val = load ptr, ptr %4, align 8, !tbaa !377 ; 2 uses
  %i.e = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.e, align 8, !tbaa !370 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.val, i64 80
  %.val.val.val26 = load ptr, ptr %i.f, align 8, !tbaa !374 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.038 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = shl i64 %.038, 1                         ; 4 uses
  %i.h = add i64 %i.g, 2
  %i.i = sub nuw nsw i64 -2, %i.g
  %i.j = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  %i.k = or disjoint i64 %i.g, 1
  %i.l = xor i64 %i.g, -1
  %i.m = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !350
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !350
  %i.r = and i32 %i.o, 1048575
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = lshr i64 %i.s, 12
  %i.u = and i64 %i.s, 4095
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !298
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load i32, ptr %i.x, align 4, !tbaa !350
  %i.z = and i32 %i.y, 1048575
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = lshr i64 %i.aa, 10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val26, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !375
  %i.ae = and i64 %i.aa, 1023
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = and i32 %i.q, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = and i64 %i.ah, 4095
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !298
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  %i.an = load i32, ptr %i.am, align 4, !tbaa !350
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val26, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !375
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %.val.val.i.i = load i8, ptr %i.af, align 1, !tbaa !293
  %.val4.val.i.i = load i8, ptr %i.au, align 1, !tbaa !293
  %i.av = icmp slt i8 %.val.val.i.i, %.val4.val.i.i
  %spec.select = select i1 %i.av, i64 %i.k, i64 %i.h ; 4 uses
  %i.aw = sub i64 0, %spec.select
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !350
  %i.ba = sub i64 0, %.038
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !350
  %i.bd = icmp slt i64 %spec.select, %i.b
  br i1 %i.bd, label %bb.b, label %._crit_edge, !llvm.loop !4691

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.be = and i64 %2, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bg = add nsw i64 %2, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa, %i.bh
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bk = or disjoint i64 %i.bj, 1
  %i.bl = load ptr, ptr %0, align 8, !tbaa !730, !noalias !4696 ; 2 uses
  %i.bm = xor i64 %i.bj, -1
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !350
  %i.bq = sub nsw i64 0, %.0.lcssa
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !350
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bk, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bt = load i64, ptr %0, align 8, !tbaa !298
  %i.bu = inttoptr i64 %i.bt to ptr               ; 3 uses
  %i.bv = icmp sgt i64 %.122, %1
  br i1 %i.bv, label %.lr.ph.i, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e
  %.val.val.i = load ptr, ptr %4, align 8, !tbaa !377 ; 2 uses
  %i.bw = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load ptr, ptr %i.bw, align 8, !tbaa !370 ; 2 uses
  %i.bx = getelementptr i8, ptr %.val.val.i, i64 80
  %.val.val.val13.i = load ptr, ptr %i.bx, align 8, !tbaa !374 ; 2 uses
  %i.by = and i32 %3, 1048575
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = lshr i64 %i.bz, 12
  %i.cb = and i64 %i.bz, 4095
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !298
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cb
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.097.i = phi i64 [ %.122, %.lr.ph.i ], [ %.08.i, %bb.g ] ; 3 uses
  %.08.in.i = add nsw i64 %.097.i, -1
  %.08.i = sdiv i64 %.08.in.i, 2                  ; 4 uses
  %i.cf = sub nsw i64 0, %.08.i
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !350 ; 2 uses
  %i.cj = and i32 %i.ci, 1048575
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = lshr i64 %i.ck, 12
  %i.cm = and i64 %i.ck, 4095
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !298
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !350
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 10
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val13.i, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !375
  %i.cw = and i64 %i.cs, 1023
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.ce, align 4, !tbaa !350
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val13.i, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !375
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %.val.val.i.i.i = load i8, ptr %i.cx, align 1, !tbaa !293
  %.val4.val.i.i.i = load i8, ptr %i.df, align 1, !tbaa !293
  %i.dg = icmp slt i8 %.val.val.i.i.i, %.val4.val.i.i.i
  br i1 %i.dg, label %bb.g, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit"

bb.g:                                             ; preds = %bb.f
  %i.dh = sub nsw i64 0, %.097.i
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4
  store i32 %i.ci, ptr %i.dj, align 4, !tbaa !350
  %i.dk = icmp sgt i64 %.08.i, %1
  br i1 %i.dk, label %bb.f, label %"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit", !llvm.loop !4694

"_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNKS3_11basic_groupINS3_7owned_tIJNS3_16basic_sigh_mixinINS3_13basic_storageIN4test8internal10value_typeIiEES4_SaISK_EEENS3_14basic_registryIS4_S7_EEEEEEENS3_5get_tIJNSF_INSG_IcS4_SaIcEEESO_EEEEENS3_9exclude_tIJEEEE4sortIJLm0ELm1EEZN30GroupOwning_SortUnordered_Test8TestBodyEvE3$_0NS3_8std_sortEJEEEvT0_T1_DpOT2_EUlS4_S4_E_EEEvT_S13_S13_S14_RT2_.exit": ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.097.i, %bb.f ], [ %.08.i, %bb.g ]
  %i.dl = sub nsw i64 0, %.09.lcssa.i
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4
  store i32 %3, ptr %i.dn, align 4, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm1EEES5_LN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm1EEES5_LN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm1EEES5_LN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm1EEES5_LN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS1_16basic_sparse_setINS1_6entityESaIS5_EEELm1ELm0ELm1EEES6_LN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8internal13group_handlerINS0_16basic_sparse_setINS0_6entityESaIS4_EEELm1ELm0ELm1EEES5_LN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !385  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !293
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EEC2IJNS_16basic_sigh_mixinINS_13basic_storageIN4test8internal10value_typeIiEES3_SaISD_EEENS_14basic_registryIS3_S4_EEEEEJNS8_INS9_IcS3_SaIcEEESH_EEEEESt5tupleIJDpRT_EESM_IJDpRT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.entt::sink.804", align 8    ; 4 uses
  %4 = alloca %"class.entt::connection", align 8  ; 3 uses
  %5 = alloca %"class.entt::sink.804", align 8    ; 4 uses
  %6 = alloca %"class.entt::connection", align 8  ; 3 uses
  %7 = alloca %"class.entt::sink.1431", align 8   ; 4 uses
  %8 = alloca %"class.entt::connection", align 8  ; 3 uses
  %9 = alloca %"class.entt::sink.1431", align 8   ; 4 uses
  %10 = alloca %"class.entt::connection", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EEE, i64 16), ptr %0, align 8, !tbaa !265
  %i.a = load ptr, ptr %1, align 8, !tbaa !771, !nonnull !365, !align !686
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = load ptr, ptr %2, align 8, !tbaa !706, !nonnull !365, !align !686
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !556
  %i.f = load ptr, ptr %1, align 8, !tbaa !771, !nonnull !365, !align !686 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.g, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm1EE17push_on_constructES3_EESK_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.h, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm1EE9remove_ifES3_EESK_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.i = load ptr, ptr %2, align 8, !tbaa !706, !nonnull !365, !align !686 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr %i.j, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm1EE9remove_ifES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  store ptr %i.k, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIcEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm1EE15push_on_destroyES3_EESG_EENS_10connectionERT0_(ptr dead_on_unwind nonnull writable sret(%"class.entt::connection") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !363  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp eq ptr %i.o, %i.p
  br i1 %i.u, label %_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EE12common_setupEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.i
  %.sroa.5.06.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %.noexc ] ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !363
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %.sroa.5.06.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !350
  call void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EE17push_on_constructES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.x)
  %i.y = add nuw nsw i64 %.sroa.5.06.i, 1         ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.t
  br i1 %i.z, label %_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EE12common_setupEv.exit, label %.lr.ph.i, !llvm.loop !181

_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EE12common_setupEv.exit: ; preds = %.lr.ph.i, %.noexc
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4entt8internal13group_handlerINS_16basic_sparse_setINS_6entityESaIS3_EEELm1ELm0ELm1EE5ownedEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !596
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !612
  %i.g = icmp eq i32 %i.f, %1
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE7connectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm1EE17push_on_constructES3_EESK_EENS_10connectionERT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::connection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !766    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not9.i.i, label %_ZN4entt4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS3_EEES3_ESaIN4test8internal10value_typeIiEEEEEE10disconnectITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS3_S4_EELm1ELm0ELm1EE17push_on_constructES3_EESK_EEvRT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i, -1                    ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !345
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347
  %i.o = icmp eq ptr %i.n, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZNS_8internal13group_handlerINS_16basic_sparse_setIS2_S3_EELm1ELm0ELm1EE17push_on_constructES2_EESD_JLm0EEEEDaRT0_St16integer_sequenceImJXspT1_EEEENUlPKvS5_S2_E_8__invokeESJ_S5_S2_
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = icmp eq ptr %i.p, %2
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !480
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !344
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !344
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_5
