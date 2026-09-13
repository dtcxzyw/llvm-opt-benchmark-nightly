Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFRewriter?download=true
inline.NumInlined: 9616
inline.NumDeleted: 5276
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  br label %_ZNSt12_Vector_baseIPN4llvm9DWARFUnitESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPN4llvm9DWARFUnitESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !842
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.e ; 2 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !843
  store ptr %i.z, ptr %i.f, align 8, !tbaa !844
  br label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %_ZSt10__distanceIPN4llvm9DWARFUnitEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !843 ; 5 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.j
  %i.ae = ashr exact i64 %i.ad, 3                 ; 10 uses
  %.not.not = icmp ugt i64 %i.ae, %.015.i
  br i1 %.not.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread, %bb.d
  %i.af = phi ptr [ %i.c, %.thread ], [ %i.ab, %bb.d ]
  %i.ag = phi ptr [ %i.b, %.thread ], [ %i.aa, %bb.d ]
  %i.ah = phi ptr [ %i.a, %.thread ], [ %i.h, %bb.d ] ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not6.i.i.i.i.i, label %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.e ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %1, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !94
  store ptr %i.aj, ptr %.08.i.i.i.i.i, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = load ptr, ptr %.sroa.03.07.i.i.i.i.i, align 8, !tbaa !474 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %2
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2364

_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ak, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i19 = icmp eq ptr %i.af, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EE15_M_erase_at_endEPS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !843
  br label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.g:                                             ; preds = %bb.d
  %i.am = icmp sgt i64 %i.ae, 0
  br i1 %i.am, label %.preheader.i22.preheader, label %.preheader7.i

.preheader.i22.preheader:                         ; preds = %bb.g
  %xtraiter70 = and i64 %i.ae, 7                  ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.preheader.i22.prol.loopexit, label %.preheader.i22.prol

.preheader.i22.prol:                              ; preds = %.preheader.i22.preheader, %.preheader.i22.prol
  %.013.i.prol = phi i64 [ %i.ao, %.preheader.i22.prol ], [ %i.ae, %.preheader.i22.preheader ]
  %i.an = phi ptr [ %i.ap, %.preheader.i22.prol ], [ %1, %.preheader.i22.preheader ]
  %prol.iter72 = phi i64 [ %prol.iter72.next, %.preheader.i22.prol ], [ 0, %.preheader.i22.preheader ]
  %i.ao = add nsw i64 %.013.i.prol, -1            ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !474 ; 3 uses
  %prol.iter72.next = add i64 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i64 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %.preheader.i22.prol.loopexit, label %.preheader.i22.prol, !llvm.loop !2365

.preheader.i22.prol.loopexit:                     ; preds = %.preheader.i22.prol, %.preheader.i22.preheader
  %.lcssa66.unr = phi ptr [ poison, %.preheader.i22.preheader ], [ %i.ap, %.preheader.i22.prol ]
  %.013.i.unr = phi i64 [ %i.ae, %.preheader.i22.preheader ], [ %i.ao, %.preheader.i22.prol ]
  %.unr73 = phi ptr [ %1, %.preheader.i22.preheader ], [ %i.ap, %.preheader.i22.prol ]
  %i.aq = icmp ult i64 %i.ae, 8
  br i1 %i.aq, label %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i22

.preheader7.i:                                    ; preds = %bb.g
  %.not9.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not9.i, label %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %.preheader7.i
  %i.ar = sub nsw i64 0, %i.ae
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i20.prol.loopexit, label %.lr.ph.i20.prol

.lr.ph.i20.prol:                                  ; preds = %.lr.ph.i20.preheader, %.lr.ph.i20.prol
  %.110.i.prol = phi i64 [ %i.at, %.lr.ph.i20.prol ], [ %i.ae, %.lr.ph.i20.preheader ]
  %i.as = phi ptr [ %i.av, %.lr.ph.i20.prol ], [ %1, %.lr.ph.i20.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i20.prol ], [ 0, %.lr.ph.i20.preheader ]
  %i.at = add nsw i64 %.110.i.prol, 1             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2369 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i20.prol.loopexit, label %.lr.ph.i20.prol, !llvm.loop !2366

.lr.ph.i20.prol.loopexit:                         ; preds = %.lr.ph.i20.prol, %.lr.ph.i20.preheader
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph.i20.preheader ], [ %i.av, %.lr.ph.i20.prol ]
  %.110.i.unr = phi i64 [ %i.ae, %.lr.ph.i20.preheader ], [ %i.at, %.lr.ph.i20.prol ]
  %.unr = phi ptr [ %1, %.lr.ph.i20.preheader ], [ %i.av, %.lr.ph.i20.prol ]
  %i.aw = icmp ugt i64 %i.ae, -8
  br i1 %i.aw, label %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i20

.preheader.i22:                                   ; preds = %.preheader.i22.prol.loopexit, %.preheader.i22
  %.013.i = phi i64 [ %i.bf, %.preheader.i22 ], [ %.013.i.unr, %.preheader.i22.prol.loopexit ]
  %i.ax = phi ptr [ %i.bg, %.preheader.i22 ], [ %.unr73, %.preheader.i22.prol.loopexit ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !474
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !474
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !474
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !474
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !474
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !474
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !474
  %i.bf = add nsw i64 %.013.i, -8                 ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !474 ; 2 uses
  %.not6.i.7 = icmp eq i64 %i.bf, 0
  br i1 %.not6.i.7, label %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i22, !llvm.loop !2367

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20
  %.110.i = phi i64 [ %i.bw, %.lr.ph.i20 ], [ %.110.i.unr, %.lr.ph.i20.prol.loopexit ]
  %i.bh = phi ptr [ %i.by, %.lr.ph.i20 ], [ %.unr, %.lr.ph.i20.prol.loopexit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2369
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2369
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2369
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2369
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2369
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !2369
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2369
  %i.bw = add nsw i64 %.110.i, 8                  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2369 ; 2 uses
  %.not.i21.7 = icmp eq i64 %i.bw, 0
  br i1 %.not.i21.7, label %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i20, !llvm.loop !2368

_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20, %.preheader.i22.prol.loopexit, %.preheader.i22
  %.sroa.0.0 = phi ptr [ %i.bg, %.preheader.i22 ], [ %.lcssa66.unr, %.preheader.i22.prol.loopexit ], [ %.lcssa68.unr, %.lr.ph.i20.prol.loopexit ], [ %i.by, %.lr.ph.i20 ] ; 4 uses
  %.not6.i.i.i.i.i23 = icmp eq ptr %1, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i23, label %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph.i.i.i.i.i24
  %.08.i.i.i.i.i25 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i24 ], [ %i.h, %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i26 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i24 ], [ %1, %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i26, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !94
  store ptr %i.ca, ptr %.08.i.i.i.i.i25, align 8, !tbaa !94
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i25, i64 8
  %i.cc = load ptr, ptr %.sroa.03.07.i.i.i.i.i26, align 8, !tbaa !474 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.cc, %.sroa.0.0
  br i1 %.not.i.i.i.i.i27, label %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29, label %.lr.ph.i.i.i.i.i24, !llvm.loop !2364

_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29: ; preds = %.lr.ph.i.i.i.i.i24, %.preheader7.i, %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.0.037 = phi ptr [ %1, %.preheader7.i ], [ %.sroa.0.0, %_ZSt9__advanceISt20_List_const_iteratorIPN4llvm9DWARFUnitEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.0.0, %.lr.ph.i.i.i.i.i24 ] ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.037, %2
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ab, %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.037, %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !94
  store ptr %i.ce, ptr %.08.i.i.i.i.i.i.i.i, align 8, !tbaa !94
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, align 8, !tbaa !474 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %2
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2364

_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit29 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !843
  br label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %bb.f, %_ZSt4copyISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIPN4llvm9DWARFUnitEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN4llvm9DWARFUnitESaIS2_EE13_M_deallocateEPS2_m.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !2370

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !94
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  %.val.i.i.us.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !222
  %i.ad = getelementptr i8, ptr %i.ab, i64 24
  %.val1.i.i.us.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !222
  %i.ae = icmp ult i64 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !94
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !2371

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 24
  %.val.val.i.i.us.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !222
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !94 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %.val.i.i.i.us.i.i.i = load i64, ptr %i.am, align 8, !tbaa !222
  %i.an = icmp ult i64 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !94
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !2372

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !94
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !2373

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !94 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !94
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.bc = getelementptr i8, ptr %i.ba, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.bc, align 8, !tbaa !222
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !222
  %i.be = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !94
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !94
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2371

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !94
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !94
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 24
  %.val.val.i.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !222
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !222
  %i.bq = icmp ult i64 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !94
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !2372

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !94
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !2373

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !94 ; 2 uses
  %i.bx = load ptr, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !94
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !94
  %i.cl = getelementptr i8, ptr %i.cj, i64 24
  %.val.i.i.i.i21.i = load i64, ptr %i.cl, align 8, !tbaa !222
  %i.cm = getelementptr i8, ptr %i.ck, i64 24
  %.val1.i.i.i.i22.i = load i64, ptr %i.cm, align 8, !tbaa !222
  %i.cn = icmp ult i64 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !94
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !94
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !2371

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !94
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !94
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 24
  %.val.val.i.i.i.i14.i = load i64, ptr %i.dc, align 8, !tbaa !222
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !94 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 24
  %.val.i.i.i.i.i17.i = load i64, ptr %i.df, align 8, !tbaa !222
  %i.dg = icmp ult i64 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !94
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i", label %bb.k, !llvm.loop !2372

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !94
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_T0_.exit", !llvm.loop !2374

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !94  ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !94 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 24
  %.val.i.i.i = load i64, ptr %i.dr, align 8, !tbaa !222 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 24
  %.val1.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !222 ; 3 uses
  %i.dt = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !94 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 24
  %.val1.i27.i.i = load i64, ptr %i.dv, align 8, !tbaa !222 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dw = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !94
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr29, align 8, !tbaa !94 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !94
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !94
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.ea = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !94
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr29, align 8, !tbaa !94 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !94
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !94
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !94
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr29, align 8, !tbaa !94
  %i.ef = getelementptr i8, ptr %i.ee, i64 24
  %.val1.i.i13.i = load i64, ptr %i.ef, align 8, !tbaa !222 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !94 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  %.val.i.i14.i = load i64, ptr %i.eh, align 8, !tbaa !222
  %i.ei = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !2375

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !94 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 24
  %.val1.i9.i.i = load i64, ptr %i.el, align 8, !tbaa !222
  %i.em = icmp ult i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !2376

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEET_SJ_SJ_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !94
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !94
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !2377

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEET_SJ_SJ_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_T0_.exit", !llvm.loop !2370

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm9DWARFUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_4bolt13DWARFRewriter15updateDebugInfoEvENK3$_0clEmEUlPKS3_SG_E_EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm4bolt6CUInfoEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1132
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm4bolt6CUInfoEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1133 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2378

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt10DIEBuilder5StateD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2382 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #29
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2379

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2383
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2384
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !2383 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !2384
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.n) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2387 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2388 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, %_ZSt8_DestroyIN4llvm4bolt10DIEBuilder16LocWithReferenceEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4llvm4bolt10DIEBuilder16LocWithReferenceEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !2390 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm4bolt10DIEBuilder16LocWithReferenceEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2391
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #29
  br label %_ZSt8_DestroyIN4llvm4bolt10DIEBuilder16LocWithReferenceEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm4bolt10DIEBuilder16LocWithReferenceEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2380

_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm4bolt10DIEBuilder16LocWithReferenceEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !2387
  br label %_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exit.i

_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exitthread-pre-split.i, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exitthread-pre-split.i ], [ %i.p, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm4bolt10DIEBuilder16LocWithReferenceESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2392
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #29
  br label %_ZNSt6vectorIN4llvm4bolt10DIEBuilder16LocWithReferenceESaIS3_EED2Ev.exit

_ZNSt6vectorIN4llvm4bolt10DIEBuilder16LocWithReferenceESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm4bolt10DIEBuilder16LocWithReferenceEEvT_S5_.exit.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm4bolt10DIEBuilder16LocWithReferenceESaIS3_EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !844
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #29
  br label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm4bolt10DIEBuilder16LocWithReferenceESaIS3_EED2Ev.exit, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !844
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #29
  br label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit3

_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit3: ; preds = %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !844
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #29
  br label %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit5

_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit5: ; preds = %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit3, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2395 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorISt4pairIPN4llvm4bolt10DIEBuilder7DIEInfoENS3_17AddrReferenceInfoEESaIS7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit5
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2396
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #29
  br label %_ZNSt6vectorISt4pairIPN4llvm4bolt10DIEBuilder7DIEInfoENS3_17AddrReferenceInfoEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm4bolt10DIEBuilder7DIEInfoENS3_17AddrReferenceInfoEESaIS7_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm9DWARFUnitESaIS2_EED2Ev.exit5, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6vectorIN4llvm4bolt10DIEBuilder13DWARFUnitInfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !474 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN4llvm9DWARFUnitESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIPN4llvm4bolt10DIEBuilder7DIEInfoENS3_17AddrReferenceInfoEESaIS7_EED2Ev.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %i.bj, %_ZNSt6vectorISt4pairIPN4llvm4bolt10DIEBuilder7DIEInfoENS3_17AddrReferenceInfoEESaIS7_EED2Ev.exit ] ; 2 uses
  %i.bk = load ptr, ptr %.09.i.i, align 8, !tbaa !474 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #29
  %.not.i.i = icmp eq ptr %i.bk, %i.bi
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN4llvm9DWARFUnitESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2381

_ZNSt7__cxx1110_List_baseIPN4llvm9DWARFUnitESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorISt4pairIPN4llvm4bolt10DIEBuilder7DIEInfoENS3_17AddrReferenceInfoEESaIS7_EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !1143 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN4llvm8DenseMapIPNS_9DWARFUnitEPNS_3DIEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN4llvm9DWARFUnitESaIS3_EED2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1144
  %i.bq = zext i32 %i.bm to i64                   ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 4
  %i.bs = add nuw nsw i64 %i.bq, 31
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741820
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bp, i64 noundef %i.bv, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPNS_9DWARFUnitEPNS_3DIEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_9DWARFUnitEPNS_3DIEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIPN4llvm9DWARFUnitESaIS3_EED2Ev.exit, %bb.i
end_hunk_0
