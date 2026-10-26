Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 329
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2075
begin_hunk_0_@_ZNSt6vectorIN5boost9container4test12copyable_intESaIS3_EE17_M_default_appendEm:bb.a
  store i32 -2147483648, ptr %.05.i.i49, align 4, !tbaa !318
  %i.bk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i49, i64 4 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i50, label %_ZSt8_DestroyIPN5boost9container4test12copyable_intEEvT_S5_.exit51, label %.lr.ph.i.i48, !llvm.loop !6

_ZSt8_DestroyIPN5boost9container4test12copyable_intEEvT_S5_.exit51: ; preds = %.lr.ph.i.i48, %_ZNKSt6vectorIN5boost9container4test12copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i52 = icmp eq ptr %i.c, null
  br i1 %.not.i52, label %_ZNSt12_Vector_baseIN5boost9container4test12copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit53, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test12copyable_intEEvT_S5_.exit51
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !332
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #27
  br label %_ZNSt12_Vector_baseIN5boost9container4test12copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit53

_ZNSt12_Vector_baseIN5boost9container4test12copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit53: ; preds = %_ZSt8_DestroyIPN5boost9container4test12copyable_intEEvT_S5_.exit51, %bb.e
  store ptr %i.ai, ptr %0, align 8, !tbaa !316
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %1
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !331
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.br, ptr %i.h, align 8, !tbaa !332
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5boost9container4test12copyable_intEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5boost9container4test12copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit53, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEENS0_12vec_iteratorISC_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !333
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !330  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !328  ; 2 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 13 uses
  %i.l = icmp eq ptr %i.k, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter82 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.n = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.n, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !318
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.s = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !822

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %i.t = icmp ult i64 %i.m, 3
  br i1 %i.t, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !318
  store i32 %i.u, ptr %.01417.i.i.i.i, align 4, !tbaa !318
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.z = load i32, ptr %i.x, align 4, !tbaa !318
  store i32 %i.z, ptr %i.y, align 4, !tbaa !318
  %i.aa = add i32 %i.v, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !318
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !318
  %i.ae = add i32 %i.v, 3
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !318
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !318
  %i.ai = add i32 %i.v, 4
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.al = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.am = ptrtoint ptr %i.k to i64
  %i.an = ptrtoint ptr %i.b to i64                ; 4 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ap, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sub i64 0, %3
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aq ; 6 uses
  %i.as = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i.prol ], [ %i.ar, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i.prol ], [ %i.k, %bb.f ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.at = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  %i.au = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.au, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.av = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !823

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.at, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ar, %bb.f ], [ %i.ax, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %i.az = icmp ult i64 %i.as, 3
  br i1 %i.az, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %i.ba = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.ba, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.bb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bd = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !318
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !318
  %i.bg = add i32 %i.bb, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !318
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !318
  %i.bk = add i32 %i.bb, 3
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bn = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !318
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !318
  %i.bp = add i32 %i.bb, 4
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !8

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.ar
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bs = shl i64 %i.f, 2
  %i.bt = shl i64 %3, 2
  %i.bu = add i64 %i.bs, %i.j
  %i.bv = add i64 %i.bu, -4
  %i.bw = add i64 %i.bt, %i.an
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 60
  %i.ca = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cb = mul i64 %n.vec, -4                      ; 2 uses
  %i.cc = getelementptr i8, ptr %i.k, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.ar, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ce ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ar, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !318
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ch, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.ci, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !824

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader72

.lr.ph.i40.i.i.i.preheader72:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i40.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader72, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %.079.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !318
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.ck
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !825

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check29 = icmp ult i64 %3, 8
  %i.cn = sub i64 %i.a, %i.an
  %diff.check31 = icmp ugt i64 %i.cn, -32
  %or.cond66 = select i1 %min.iters.check29, i1 true, i1 %diff.check31
  br i1 %or.cond66, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec33 = and i64 %3, -8                       ; 3 uses
  %i.co = and i64 %3, 7
  %i.cp = shl i64 %n.vec33, 2                     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.b, i64 %i.cp
  %i.cr = getelementptr i8, ptr %4, i64 %i.cp
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.cs = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.b, i64 %i.cs ; 2 uses
  %next.gep37 = getelementptr i8, ptr %4, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep37, align 4, !tbaa !318
  %wide.load39 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !318
  %i.cu = getelementptr i8, ptr %next.gep36, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep36, align 4, !tbaa !318
  store <4 x i32> %wide.load39, ptr %i.cu, align 4, !tbaa !318
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cv, label %middle.block41, label %vector.body34, !llvm.loop !826

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block41
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.co, %middle.block41 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block41 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block41 ] ; 2 uses
  %i.cw = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter73 = and i64 %.09.i.i.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cx = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cy = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.cy, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !827

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %i.db = icmp ult i64 %i.cw, 7
  br i1 %i.db, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dc = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !318
  store i32 %i.dc, ptr %.048.i.i.i.i.i, align 4, !tbaa !318
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !318
  store i32 %i.df, ptr %i.de, align 4, !tbaa !318
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !318
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !318
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !318
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !318
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !318
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !318
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !318
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !318
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !318
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !318
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.dx = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !318
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !318
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS2_25expand_bwd_test_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !828

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ef, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i48.i.i.i ], [ %i.eb, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %i.ec = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !318
  store i32 %i.ec, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.ed = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ef, %i.k
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !9

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check49 = icmp ult i64 %i.ap, 8
  %i.eh = sub i64 %i.a, %i.an
  %diff.check51 = icmp ugt i64 %i.eh, -32
  %or.cond67 = select i1 %min.iters.check49, i1 true, i1 %diff.check51
  br i1 %or.cond67, label %.lr.ph.i.i52.i.i.i.preheader69, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec53 = and i64 %i.ap, -8                    ; 3 uses
  %i.ei = and i64 %i.ap, 7
  %i.ej = shl nsw i64 %n.vec53, 2                 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.b, i64 %i.ej
  %i.el = getelementptr i8, ptr %4, i64 %i.ej     ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.em = shl i64 %index55, 2                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.b, i64 %i.em ; 2 uses
  %next.gep57 = getelementptr i8, ptr %4, i64 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !318
  %wide.load59 = load <4 x i32>, ptr %i.en, align 4, !tbaa !318
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !355
  %i.am = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2406

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = icmp ult i64 %i.v, 4
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !355
  %i.aq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !355
  %i.at = add i32 %i.aq, -2
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !355
  %i.av = add i32 %i.aq, -3
  store i32 %i.av, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ax = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !355
  %i.ay = add i32 %i.aq, -4
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !353
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bb) #27
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !352
  br label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvPS3_mSA_mT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvPS3_mSA_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %.loopexit.i
  %i.bc = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.u to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.t, ptr %1, align 8, !tbaa !351
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !352
  store i64 %i.p, ptr %i.a, align 8, !tbaa !261
  %i.bh = getelementptr inbounds i8, ptr %i.t, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !444
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISA_Lb0EEERKSA_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !442    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !353
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !360  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !351    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !355
  store i32 %i.k, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %4, align 4, !tbaa !355
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !355
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !355
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !355
  store i32 %i.w, ptr %i.v, align 4, !tbaa !355
  store i32 0, ptr %i.u, align 4, !tbaa !355
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !56

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !355
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %i.ag, align 4, !tbaa !355
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !355
  store i32 %i.au, ptr %i.as, align 4, !tbaa !355
  store i32 0, ptr %i.ar, align 4, !tbaa !355
  %i.av = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !54

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !355, !alias.scope !2424
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !355, !alias.scope !2424
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !355, !alias.scope !2425, !noalias !2424
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !355, !alias.scope !2425, !noalias !2424
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !355, !alias.scope !2424
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !355, !alias.scope !2424
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !2410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !355
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !355
  store i32 0, ptr %i.cd, align 4, !tbaa !355
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !2411

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !355, !alias.scope !2426
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !355, !alias.scope !2426
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !355, !alias.scope !2427, !noalias !2426
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !355, !alias.scope !2427, !noalias !2426
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !355, !alias.scope !2426
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !355, !alias.scope !2426
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !2415

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !355
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2416

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !355
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !355
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !355
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !355
  store i32 0, ptr %i.cy, align 4, !tbaa !355
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !355
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !355
  store i32 0, ptr %i.db, align 4, !tbaa !355
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !355
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !355
  store i32 0, ptr %i.de, align 4, !tbaa !355
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2417

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  %i.dm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !48

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj1EEE:bb.a
.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !353
  %i.be = shl i64 %i.bd, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.be) #27
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  br label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i, %.loopexit.i.i
  %i.bf = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i ], [ %.pre.i.i, %.loopexit.i.i ], [ %i.m, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i ]
  store ptr %i.k, ptr %0, align 8, !tbaa !351
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !352
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %bb.e
  %.sink = phi i64 [ 0, %bb.e ], [ %i.d, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !261
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.f, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !360  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !353
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !351, !nonnull !274, !noundef !274
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !355
  store i32 %i.g, ptr %i.f, align 4, !tbaa !355
  store i32 0, ptr %1, align 4, !tbaa !355
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !360
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.k = load ptr, ptr %0, align 8, !tbaa !351
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.108") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !442    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !353
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !360  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !351    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !355
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !355
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !355
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !57

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !355
  store i32 %i.al, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %i.aj, align 4, !tbaa !355
  %i.am = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  %i.as = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !355
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !355
  store i32 0, ptr %i.au, align 4, !tbaa !355
  %i.ay = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !54

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !355, !alias.scope !2441
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !355, !alias.scope !2441
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !355, !alias.scope !2442, !noalias !2441
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !355, !alias.scope !2442, !noalias !2441
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !355, !alias.scope !2441
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !355, !alias.scope !2441
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !2437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !355
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !355
  store i32 0, ptr %i.cg, align 4, !tbaa !355
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !2438

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2439

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !247
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !355
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !355
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !412 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !355
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !412 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !355
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !412
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  %i.di = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !48

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !355
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !2440

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !247
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !355
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !247
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !355
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !412 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !355
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !355
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !412 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !58

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.el, ptr %i.i, align 4, !tbaa !355
  %i.em = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !367
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2973

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = icmp ult i64 %i.v, 4
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !367
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !367
  %i.at = add i32 %i.aq, -2
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !367
  %i.av = add i32 %i.aq, -3
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ax = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !367
  %i.ay = add i32 %i.aq, -4
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !365
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bb) #27
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !364
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvPS3_mSA_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvPS3_mSA_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %.loopexit.i
  %i.bc = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.u to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.t, ptr %1, align 8, !tbaa !363
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !364
  store i64 %i.p, ptr %i.a, align 8, !tbaa !261
  %i.bh = getelementptr inbounds i8, ptr %i.t, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !451
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISA_Lb0EEERKSA_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !365
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !372  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !363    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.k, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %4, align 4, !tbaa !367
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !367
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !367
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !367
  store i32 %i.w, ptr %i.v, align 4, !tbaa !367
  store i32 0, ptr %i.u, align 4, !tbaa !367
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !73

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !367
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.ag, align 4, !tbaa !367
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !367
  store i32 %i.au, ptr %i.as, align 4, !tbaa !367
  store i32 0, ptr %i.ar, align 4, !tbaa !367
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !71

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !367, !alias.scope !2991
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !367, !alias.scope !2991
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !367, !alias.scope !2992, !noalias !2991
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !367, !alias.scope !2992, !noalias !2991
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !367, !alias.scope !2991
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !367, !alias.scope !2991
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !2977

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !367
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !367
  store i32 0, ptr %i.cd, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !2978

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !367, !alias.scope !2993
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !367, !alias.scope !2993
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !367, !alias.scope !2994, !noalias !2993
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !367, !alias.scope !2994, !noalias !2993
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !367, !alias.scope !2993
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !367, !alias.scope !2993
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !2982

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !367
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2983

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !367
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !367
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !367
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !367
  store i32 0, ptr %i.cy, align 4, !tbaa !367
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !367
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !367
  store i32 0, ptr %i.db, align 4, !tbaa !367
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !367
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !367
  store i32 0, ptr %i.de, align 4, !tbaa !367
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2984

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  %i.dm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !65

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.cn, %.lr.ph.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.cr, %.lr.ph.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.prol ]
  %i.cw = icmp ult i64 %i.cn, 4
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.de, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !367
  %i.cx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.cz, align 4, !tbaa !367
  %i.da = add i32 %i.cx, -2
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !367
  %i.dc = add i32 %i.cx, -3
  store i32 %i.dc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.de = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !367
  %i.df = add i32 %i.cx, -4
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef 40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.017

.thread88:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.058.0119, %.loopexit.split-lp99.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0121, %.loopexit.split-lp99.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp189, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp ]
  %i.dh = ptrtoint ptr %.sroa.29.3 to i64
  %i.di = ptrtoint ptr %.sroa.058.3 to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.v, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !365
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !372  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !363    ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 16 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter57 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !367
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3073

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !367
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.v, ptr %i.u, align 4, !tbaa !367
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.y, ptr %i.x, align 4, !tbaa !367
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !367
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3074

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr [4 x i8], ptr %i.i, i64 %i.aj ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.al = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !367
  store i32 %i.am, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.ak, align 4, !tbaa !367
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %i.ar = icmp eq i64 %3, 1
  br i1 %i.ar, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.as = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.as, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ax = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !367
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !367
  store i32 0, ptr %i.av, align 4, !tbaa !367
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !71

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.bd = shl i64 %i.e, 2
  %i.be = shl i64 %3, 2
  %i.bf = add i64 %i.bd, %i.h
  %i.bg = add i64 %i.bf, -4
  %i.bh = add i64 %i.be, %i.ag
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bl = shl i64 %i.e, 2                         ; 2 uses
  %i.bm = shl i64 %3, 2                           ; 2 uses
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = and i64 %i.bq, -4                       ; 2 uses
  %i.bs = add i64 %i.bl, -4                       ; 2 uses
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = getelementptr i8, ptr %i.g, i64 %i.bt
  %i.bv = add i64 %i.bm, %i.br
  %i.bw = sub i64 %i.bs, %i.bv
  %i.bx = getelementptr i8, ptr %i.g, i64 %i.bw
  %bound0 = icmp ult ptr %i.bu, %i.ak
  %bound1 = icmp ult ptr %i.bx, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.by = mul i64 %n.vec, -4                      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ak, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cb ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !367, !alias.scope !3085
  %wide.load24 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !367, !alias.scope !3085
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ce, align 4, !tbaa !367, !alias.scope !3086, !noalias !3085
  store <4 x i32> %wide.load24, ptr %i.cf, align 4, !tbaa !367, !alias.scope !3086, !noalias !3085
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !367, !alias.scope !3085
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !367, !alias.scope !3085
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !3078

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i40.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.ch = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !367
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !367
  store i32 0, ptr %i.ch, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ch
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3079

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !367 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.ck = and i64 %3, 7
  %i.cl = shl i64 %n.vec29, 2
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cn = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !367
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4, !tbaa !367
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cp, label %middle.block34, label %vector.body30, !llvm.loop !3080

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.ck, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.cm, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cq, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cr, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cq = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !367
  %i.cr = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !3081

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i50.i.i.i ], [ %i.cs, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ct = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ct, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !367
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cw, %i.i
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !65

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !367 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cy = and i64 %i.ai, 7
  %i.cz = shl nsw i64 %n.vec41, 2
  %i.da = getelementptr i8, ptr %i.a, i64 %i.cz
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.db = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !367
  store <4 x i32> %broadcast.splat43, ptr %i.dc, align 4, !tbaa !367
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.dd, label %middle.block48, label %vector.body44, !llvm.loop !3082

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i53.i.i.i ], [ %i.cy, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.da, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.de, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.df, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.de = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !367
  %i.df = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !3083

_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dg = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i ]
  %i.dh = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.di = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.di, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3084

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24movable_and_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.prol ]
  %i.dm = sub i64 %i.ai, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.do = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.do, ptr %.01416.i.i.i.i.i, align 4, !tbaa !367
  %i.dp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6assignIPS3_EEvT_S8_PNS_11move_detail13disable_if_orIvNS9_7is_sameINS9_17integral_constantIjLj1EEENSC_IjLj0EEEEENS9_14is_convertibleIS8_mEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEEE4typeE:bb.a
  br i1 %.not3.i.i20, label %_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  %xtraiter106 = and i64 %i.fo, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i21.prol = phi i64 [ %i.fp, %.lr.ph.i21.i.prol ], [ %i.fo, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i22.prol = phi ptr [ %i.fs, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fp = add i64 %.05.i.i21.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i22.prol, align 4, !tbaa !367
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !3149

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fo, %.lr.ph.i21.i.preheader ], [ %i.fp, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fs, %.lr.ph.i21.i.prol ]
  %i.ft = sub i64 %i.d, %i.bh
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.gc, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.ge, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !367
  %i.fv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fx, align 4, !tbaa !367
  %i.fy = add i32 %i.fv, -2
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !367
  %i.ga = add i32 %i.fv, -3
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.gc = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !367
  %i.gd = add i32 %i.fv, -4
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !16

_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bg, align 8, !tbaa !364
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !365
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !372  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !363    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !367
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !367
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !367
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !74

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !367
  store i32 %i.al, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.aj, align 4, !tbaa !367
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !367
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !367
  store i32 0, ptr %i.au, align 4, !tbaa !367
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !71

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !367, !alias.scope !3159
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !367, !alias.scope !3159
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !367, !alias.scope !3160, !noalias !3159
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !367, !alias.scope !3160, !noalias !3159
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !367, !alias.scope !3159
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !367, !alias.scope !3159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !367
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !367
  store i32 0, ptr %i.cg, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3156

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3157

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !247
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !367
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !367
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !412 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !367
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !412 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !367
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !412
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !65

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !367
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3158

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !247
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !367
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !247
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !367
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !412 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !367
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !367
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !412 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !75

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.el, ptr %i.i, align 4, !tbaa !367
  %i.em = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
end_hunk_5
begin_hunk_6_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SL_mSG_:bb.a
  %.sroa.4.1.i68 = phi ptr [ %i.fl, %bb.k ], [ %.sroa.4.0.i65, %.lr.ph.i.i63 ]
  %i.fn = phi ptr [ %i.fm, %bb.k ], [ %i.fd, %.lr.ph.i.i63 ] ; 2 uses
  %i.fo = phi ptr [ %i.fl, %bb.k ], [ %i.fi, %.lr.ph.i.i63 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !247, !noalias !3690
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !318, !noalias !3690
  %i.fr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3690
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3690
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fn
  br i1 %i.fu, label %bb.l, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1

bb.l:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i67, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !259, !noalias !3690 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1: ; preds = %bb.l, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66
  %.sroa.11.1.i67.1 = phi ptr [ %i.fv, %bb.l ], [ %.sroa.11.1.i67, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ] ; 2 uses
  %.sroa.4.1.i68.1 = phi ptr [ %i.fw, %bb.l ], [ %.sroa.4.1.i68, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ] ; 2 uses
  %i.fy = phi ptr [ %i.fx, %bb.l ], [ %i.fn, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ] ; 2 uses
  %i.fz = phi ptr [ %i.fw, %bb.l ], [ %i.ft, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.gb = add i64 %.015.i.i, -2                   ; 2 uses
  %.not.i.i69.1 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i69.1, label %_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test12copyable_intEEED2Ev.exit75, label %.lr.ph.i.i63, !llvm.loop !86

_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test12copyable_intEEED2Ev.exit75: ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1, %.lr.ph.i.i63.prol.loopexit
  %.sroa.11.1.i67.lcssa = phi ptr [ %.sroa.11.1.i67.lcssa.unr, %.lr.ph.i.i63.prol.loopexit ], [ %.sroa.11.1.i67.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1 ]
  %.sroa.4.1.i68.lcssa = phi ptr [ %.sroa.4.1.i68.lcssa.unr, %.lr.ph.i.i63.prol.loopexit ], [ %.sroa.4.1.i68.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1 ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i63.prol.loopexit ], [ %i.fy, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1 ]
  store ptr %.sroa.4.1.i68.lcssa, ptr %i.em, align 8, !tbaa !259
  store ptr %.lcssa, ptr %i.el, align 8, !tbaa !259
  store ptr %.sroa.11.1.i67.lcssa, ptr %i.ek, align 8, !tbaa !437
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, %_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test12copyable_intEEED2Ev.exit75
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !376
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !374    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not14.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter42 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.016.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter44 = phi i64 [ %prol.iter44.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.k = add i64 %.016.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !318
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3691

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.o = icmp ult i64 %3, 4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !318
  %i.s = add i32 %i.p, 2
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !318
  %i.u = add i32 %i.p, 3
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.w = add i64 %.016.i.i.i.i, -4                ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !318
  %i.x = add i32 %i.p, 4
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3692

bb.d:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.i to i64
  %i.aa = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i.i.i, label %.lr.ph.i53.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = sub i64 0, %3
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ad ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i10.i.i.prol ], [ %i.ae, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.af = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.ag = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.ag, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !3693

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.lcssa31.unr = phi i32 [ poison, %bb.f ], [ %i.ai, %.lr.ph.i.i10.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.af, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %i.al = icmp ult i64 %3, 4
  br i1 %i.al, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.am = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.am, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.an = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !318
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !318
  %i.as = add i32 %i.an, 2
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.av = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.av, ptr %i.au, align 4, !tbaa !318
  %i.aw = add i32 %i.an, 3
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.az = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !318
  %i.bb = add i32 %i.an, 4                        ; 2 uses
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !76

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.lcssa31 = phi i32 [ %.lcssa31.unr, %.lr.ph.i.i10.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i10.i.i ]
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ae
  br i1 %.not8.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.be = shl i64 %i.e, 2
  %i.bf = shl i64 %3, 2
  %i.bg = add i64 %i.be, %i.h
  %i.bh = add i64 %i.bg, -4
  %i.bi = add i64 %i.bf, %i.aa
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 60
  %i.bm = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bn = mul i64 %n.vec, -4                      ; 2 uses
  %i.bo = getelementptr i8, ptr %i.i, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ae, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bq ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.ae, i64 %i.bq ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %next.gep25, i64 -16
  %i.bs = getelementptr inbounds i8, ptr %next.gep25, i64 -32
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !318
  %wide.load26 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !318
  %i.bt = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bu = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bt, align 4, !tbaa !318
  store <4 x i32> %wide.load26, ptr %i.bu, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !3694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i.preheader30

.lr.ph.i40.i.i.i.preheader30:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i40.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader30, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %.079.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %i.bw = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !318
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.bw
  br i1 %.not.i41.i.i.i, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3695

.lr.ph.preheader.i.i.loopexit.i.i:                ; preds = %.lr.ph.i40.i.i.i, %middle.block
  %.pre.i.i.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.preheader.i.i.loopexit.i.i, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %.pre.i.i.i.i = phi i32 [ %.pre.i.i.pre.i.i, %.lr.ph.preheader.i.i.loopexit.i.i ], [ %.lcssa31, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i ]
  %i.bz = add i32 %.pre.i.i.i.i, 1                ; 2 uses
  %xtraiter32 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol

.lr.ph.i43.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i43.i.i.i.prol
  %i.ca = phi i32 [ %i.cd, %.lr.ph.i43.i.i.i.prol ], [ %i.bz, %.lr.ph.preheader.i.i.i.i ]
  %.010.i44.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i43.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.079.i45.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i43.i.i.i.prol ], [ %3, %.lr.ph.preheader.i.i.i.i ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i43.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.cb = add i64 %.079.i45.i.i.i.prol, -1        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i44.i.i.i.prol, align 4, !tbaa !318
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i.prol, i64 4 ; 2 uses
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol, !llvm.loop !3696

.lr.ph.i43.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i43.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.unr = phi i32 [ %i.bz, %.lr.ph.preheader.i.i.i.i ], [ %i.cd, %.lr.ph.i43.i.i.i.prol ]
  %.010.i44.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i.i ], [ %i.cc, %.lr.ph.i43.i.i.i.prol ]
  %.079.i45.i.i.i.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.cb, %.lr.ph.i43.i.i.i.prol ]
  %i.cf = icmp ult i64 %3, 4
  br i1 %i.cf, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i
  %i.cg = phi i32 [ %i.cm, %.lr.ph.i43.i.i.i ], [ %.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  %.010.i44.i.i.i = phi ptr [ %i.cl, %.lr.ph.i43.i.i.i ], [ %.010.i44.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i45.i.i.i = phi i64 [ %i.ck, %.lr.ph.i43.i.i.i ], [ %.079.i45.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i44.i.i.i, align 4, !tbaa !318
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !318
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 8
  store i32 0, ptr %i.ci, align 4, !tbaa !318
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 12
  %i.ck = add i64 %.079.i45.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !318
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 16
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i46.i.i.i.3 = icmp eq i64 %i.ck, 0
  br i1 %.not.i46.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i, !llvm.loop !3697

.lr.ph.i53.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i53.i.i.i

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i53.i.i.i, %.lr.ph.i53.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i53.i.i.i ], [ %i.a, %.lr.ph.i53.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i53.i.i.i ], [ %i.co, %.lr.ph.i53.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i54.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i54.i.i.i, label %.lr.ph.preheader.i56.i.i.i, label %.lr.ph.i53.i.i.i, !llvm.loop !77

.lr.ph.preheader.i56.i.i.i:                       ; preds = %.lr.ph.i53.i.i.i
  %i.cu = add i32 %i.cq, 2                        ; 2 uses
  %xtraiter35 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol

.lr.ph.i58.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i56.i.i.i, %.lr.ph.i58.i.i.i.prol
  %i.cv = phi i32 [ %i.cy, %.lr.ph.i58.i.i.i.prol ], [ %i.cu, %.lr.ph.preheader.i56.i.i.i ]
  %.010.i59.i.i.i.prol = phi ptr [ %i.cx, %.lr.ph.i58.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i56.i.i.i ] ; 2 uses
  %.079.i60.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i58.i.i.i.prol ], [ %i.ac, %.lr.ph.preheader.i56.i.i.i ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i58.i.i.i.prol ], [ 0, %.lr.ph.preheader.i56.i.i.i ]
  %i.cw = add i64 %.079.i60.i.i.i.prol, -1        ; 2 uses
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i59.i.i.i.prol, align 4, !tbaa !318
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i.prol, i64 4 ; 2 uses
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol, !llvm.loop !3698

.lr.ph.i58.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i58.i.i.i.prol, %.lr.ph.preheader.i56.i.i.i
  %.unr38 = phi i32 [ %i.cu, %.lr.ph.preheader.i56.i.i.i ], [ %i.cy, %.lr.ph.i58.i.i.i.prol ]
  %.010.i59.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i56.i.i.i ], [ %i.cx, %.lr.ph.i58.i.i.i.prol ]
  %.079.i60.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.preheader.i56.i.i.i ], [ %i.cw, %.lr.ph.i58.i.i.i.prol ]
  %i.da = icmp ult i64 %i.ac, 4
  br i1 %i.da, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %.lr.ph.i58.i.i.i.prol.loopexit, %.lr.ph.i58.i.i.i
  %i.db = phi i32 [ %i.dh, %.lr.ph.i58.i.i.i ], [ %.unr38, %.lr.ph.i58.i.i.i.prol.loopexit ]
  %.010.i59.i.i.i = phi ptr [ %i.dg, %.lr.ph.i58.i.i.i ], [ %.010.i59.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i60.i.i.i = phi i64 [ %i.df, %.lr.ph.i58.i.i.i ], [ %.079.i60.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ]
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i59.i.i.i, align 4, !tbaa !318
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 4
  store i32 0, ptr %i.dc, align 4, !tbaa !318
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 8
  store i32 0, ptr %i.dd, align 4, !tbaa !318
  %i.de = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 12
  %i.df = add i64 %.079.i60.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.de, align 4, !tbaa !318
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 16
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i61.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i61.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i, !llvm.loop !3697

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i: ; preds = %.lr.ph.i58.i.i.i, %.lr.ph.i58.i.i.i.prol.loopexit
  %i.dj = sub i64 %3, %i.ac                       ; 3 uses
  %xtraiter39 = and i64 %i.dj, 3                  ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.016.i.i.i.i.i.prol = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.prol ], [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i ]
  %.01315.i.i.i.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i ]
  %i.dk = add i64 %.016.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3699

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i
  %.016.i.i.i.i.i.unr = phi i64 [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit62.i.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.i.prol ]
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 -2147483648, ptr %i.cs, align 4, !tbaa !318
  %i.cu = add i32 %i.cm, -4
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !18

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !376
  %i.cx = shl i64 %i.cw, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.cx) #27
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !375
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvPS3_mSA_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvPS3_mSA_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %.loopexit.i
  %i.cy = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.cz = ptrtoint ptr %2 to i64
  %i.da = ptrtoint ptr %i.v to i64
  %i.db = sub i64 %i.cz, %i.da
  store ptr %i.u, ptr %1, align 8, !tbaa !374
  %i.dc = add i64 %i.cy, %3
  store i64 %i.dc, ptr %i.e, align 8, !tbaa !375
  store i64 %i.q, ptr %i.b, align 8, !tbaa !261
  %i.dd = getelementptr inbounds i8, ptr %i.u, i64 %i.db
  store ptr %i.dd, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISA_Lb0EEERKSA_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !376
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !381  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !374    ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter82 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.m = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.m, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !318
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3747

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.l, 3
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !318
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !318
  store i32 %i.y, ptr %i.x, align 4, !tbaa !318
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !318
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !318
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ak = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3748

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %i.b to i64                ; 4 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sub i64 0, %3
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ap ; 6 uses
  %i.ar = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i.prol ], [ %i.aq, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i.prol ], [ %i.j, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.as = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.at = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.at, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !3749

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.as, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aq, %bb.f ], [ %i.aw, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ax, %.lr.ph.i.i10.i.i.prol ]
  %i.ay = icmp ult i64 %i.ar, 3
  br i1 %i.ay, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.az = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.az, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !318
  %i.bf = add i32 %i.ba, 2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !318
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !318
  %i.bj = add i32 %i.ba, 3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bm = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !318
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !318
  %i.bo = add i32 %i.ba, 4
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !76

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.aq
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.br = shl i64 %i.f, 2
  %i.bs = shl i64 %3, 2
  %i.bt = add i64 %i.br, %i.i
  %i.bu = add i64 %i.bt, -4
  %i.bv = add i64 %i.bs, %i.am
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 60
  %i.bz = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ca = mul i64 %n.vec, -4                      ; 2 uses
  %i.cb = getelementptr i8, ptr %i.j, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.aq, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.cd ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aq, i64 %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ce, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !318
  %i.cg = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cg, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.ch, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !3750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader72

.lr.ph.i40.i.i.i.preheader72:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader72, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %.079.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %i.cj = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !318
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.cj
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3751

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %min.iters.check29 = icmp ult i64 %3, 8
  %i.cm = sub i64 %i.a, %i.am
  %diff.check31 = icmp ugt i64 %i.cm, -32
  %or.cond66 = select i1 %min.iters.check29, i1 true, i1 %diff.check31
  br i1 %or.cond66, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec33 = and i64 %3, -8                       ; 3 uses
  %i.cn = and i64 %3, 7
  %i.co = shl i64 %n.vec33, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.b, i64 %i.co
  %i.cq = getelementptr i8, ptr %4, i64 %i.co
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.cr = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.b, i64 %i.cr ; 2 uses
  %next.gep37 = getelementptr i8, ptr %4, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep37, align 4, !tbaa !318
  %wide.load39 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !318
  %i.ct = getelementptr i8, ptr %next.gep36, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep36, align 4, !tbaa !318
  store <4 x i32> %wide.load39, ptr %i.ct, align 4, !tbaa !318
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cu, label %middle.block41, label %vector.body34, !llvm.loop !3752

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block41
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block41 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block41 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block41 ] ; 2 uses
  %i.cv = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter73 = and i64 %.09.i.i.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.cx, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3753

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.da = icmp ult i64 %i.cv, 7
  br i1 %i.da, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.db = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !318
  store i32 %i.db, ptr %.048.i.i.i.i.i, align 4, !tbaa !318
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !318
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !318
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !318
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !318
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !318
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !318
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !318
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !318
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !318
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !318
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !318
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.dw = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dx = load i32, ptr %i.du, align 4, !tbaa !318
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !318
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvSA_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3754

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ee, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i48.i.i.i ], [ %i.ea, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eb = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !318
  store i32 %i.eb, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.ec = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ee = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ee, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !77

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check49 = icmp ult i64 %i.ao, 8
  %i.eg = sub i64 %i.a, %i.am
  %diff.check51 = icmp ugt i64 %i.eg, -32
  %or.cond67 = select i1 %min.iters.check49, i1 true, i1 %diff.check51
  br i1 %or.cond67, label %.lr.ph.i.i52.i.i.i.preheader69, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec53 = and i64 %i.ao, -8                    ; 3 uses
  %i.eh = and i64 %i.ao, 7
  %i.ei = shl nsw i64 %n.vec53, 2                 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.b, i64 %i.ei
  %i.ek = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.el = shl i64 %index55, 2                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.b, i64 %i.el ; 2 uses
  %next.gep57 = getelementptr i8, ptr %4, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !318
end_hunk_7
begin_hunk_8_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.da = add i32 %i.cx, -2
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !318
  %i.dc = add i32 %i.cx, -3
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.de = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !318
  %i.df = add i32 %i.cx, -4
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef 40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.017

.thread88:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.058.0119, %.loopexit.split-lp99.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0121, %.loopexit.split-lp99.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp189, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp ]
  %i.dh = ptrtoint ptr %.sroa.29.3 to i64
  %i.di = ptrtoint ptr %.sroa.058.3 to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.v, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !376
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !374    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter58 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !318
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3869

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !318
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.v, ptr %i.u, align 4, !tbaa !318
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.y, ptr %i.x, align 4, !tbaa !318
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !318
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !78

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i43.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aj ; 6 uses
  %i.al = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i10.i.i.prol ], [ %i.ak, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.am = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.an = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.an, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.ao = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !3870

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ar, %.lr.ph.i.i10.i.i.prol ]
  %i.as = icmp ult i64 %i.al, 3
  br i1 %i.as, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.at = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.at, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !318
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !318
  %i.az = add i32 %i.au, 2
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !318
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !318
  %i.bd = add i32 %i.au, 3
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bg = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !318
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !318
  %i.bi = add i32 %i.au, 4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !76

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i.preheader

.lr.ph.i37.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.bl = shl i64 %i.e, 2
  %i.bm = shl i64 %3, 2
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 60
  %i.bt = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i37.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i37.i.i.i.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ak, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !318
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !3871

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i.preheader54

.lr.ph.i37.i.i.i.preheader54:                     ; preds = %.lr.ph.i37.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i37.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i37.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i37.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %.lr.ph.i37.i.i.i.preheader54, %.lr.ph.i37.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i37.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i37.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i37.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i37.i.i.i.preheader54 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !318
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !318
  %.not.i38.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i38.i.i.i, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i, !llvm.loop !3872

.lr.ph.i39.i.i.i:                                 ; preds = %.lr.ph.i37.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !318 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i39.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cg = and i64 %3, 7
  %i.ch = shl i64 %n.vec29, 2
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cj = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4, !tbaa !318
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cl, label %middle.block34, label %vector.body30, !llvm.loop !3873

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i39.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i39.i.i.i ], [ %i.cg, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i39.i.i.i ], [ %i.ci, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cm, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cn, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cm = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !318
  %i.cn = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i40.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i40.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !3874

.lr.ph.i43.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i, %.lr.ph.i43.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i43.i.i.i ], [ %i.a, %.lr.ph.i43.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i43.i.i.i ], [ %i.co, %.lr.ph.i43.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i44.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i44.i.i.i, label %.lr.ph.i46.i.i.i, label %.lr.ph.i43.i.i.i, !llvm.loop !77

.lr.ph.i46.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i
  %.pre.i47.i.i.i = load i32, ptr %4, align 4, !tbaa !318 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i46.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cu = and i64 %i.ai, 7
  %i.cv = shl nsw i64 %n.vec41, 2
  %i.cw = getelementptr i8, ptr %i.a, i64 %i.cv
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i47.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.cx = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat43, ptr %i.cy, align 4, !tbaa !318
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.cz, label %middle.block48, label %vector.body44, !llvm.loop !3875

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i46.i.i.i, %middle.block48
  %.07.i48.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i46.i.i.i ], [ %i.cu, %middle.block48 ]
  %.046.i49.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i46.i.i.i ], [ %i.cw, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i48.i.i.i = phi i64 [ %i.da, %scalar.ph38 ], [ %.07.i48.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i49.i.i.i = phi ptr [ %i.db, %scalar.ph38 ], [ %.046.i49.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.da = add i64 %.07.i48.i.i.i, -1              ; 2 uses
  store i32 %.pre.i47.i.i.i, ptr %.046.i49.i.i.i, align 4, !tbaa !318
  %i.db = getelementptr inbounds nuw i8, ptr %.046.i49.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i50.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i, label %scalar.ph38, !llvm.loop !3876

_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dc = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dc, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i ]
  %i.dd = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.de = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.de, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3877

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = sub i64 %i.ai, %3
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.dk = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.dk, ptr %.01416.i.i.i.i.i, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.do = load i32, ptr %4, align 4, !tbaa !318
end_hunk_8
begin_hunk_9_@_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6assignIPS3_EEvT_S8_PNS_11move_detail13disable_if_orIvNS9_7is_sameINS9_17integral_constantIjLj1EEENSC_IjLj0EEEEENS9_14is_convertibleIS8_mEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEEE4typeE:bb.a
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !3990

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fo, %.lr.ph.i21.i.preheader ], [ %i.fp, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fs, %.lr.ph.i21.i.prol ]
  %i.ft = sub i64 %i.d, %i.bh
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.gc, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.ge, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !318
  %i.fv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fx, align 4, !tbaa !318
  %i.fy = add i32 %i.fv, -2
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !318
  %i.ga = add i32 %i.fv, -3
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.gc = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !318
  %i.gd = add i32 %i.fv, -4
  store i32 %i.gd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !18

_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bg, align 8, !tbaa !375
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !376
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !381  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !374    ; 4 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 15 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter38 = and i64 %3, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !318
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !318
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !88

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ai ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i10.i.i.prol ], [ %i.aj, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.ak = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.al = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.al, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.am = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !3993

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp ult i64 %3, 4
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !318
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !318
  %i.ax = add i32 %i.as, 2
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !318
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !318
  %i.bb = add i32 %i.as, 3
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.be = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !318
  %i.bg = add i32 %i.as, 4
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !76

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.bj = shl i64 %i.e, 2
  %i.bk = shl i64 %3, 2
  %i.bl = add i64 %i.bj, %i.h
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.af
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 60
  %i.br = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 3 uses
  %i.bs = mul i64 %n.vec, -4                      ; 2 uses
  %i.bt = getelementptr i8, ptr %i.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.aj, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bv ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bw, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !318
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.by, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.bz, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !3994

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !318
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cb
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3995

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ce = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !247
  store i32 %i.cg, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.ch = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3996

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.prol ]
  %i.cj = icmp ult i64 %3, 4
  br i1 %i.cj, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i, align 4, !tbaa !318
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !247
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !318
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !412 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !247
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !318
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !412 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.cw = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !318
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !412
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !89

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.df, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i48.i.i.i ], [ %i.db, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dc = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !318
  store i32 %i.dc, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.df, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !77

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter32 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dh = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !247
  store i32 %i.dj, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !318
  %i.dk = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3997

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dm = icmp ult i64 %i.ah, 4
  br i1 %i.dm, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i, align 4, !tbaa !318
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !247
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !318
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !412 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !247
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !318
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !412 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.dz = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !318
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !89

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.ec, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ee = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter35 = and i64 %i.ee, 1
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.i, align 4, !tbaa !318
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = add i32 %i.eh, 1
end_hunk_9
begin_hunk_10_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hm = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gw, i64 %i.hm ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hm ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !355, !alias.scope !6116
  %wide.load334 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !355, !alias.scope !6116
  %i.hp = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.hq = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hp, align 4, !tbaa !355, !alias.scope !6117, !noalias !6116
  store <4 x i32> %wide.load334, ptr %i.hq, align 4, !tbaa !355, !alias.scope !6117, !noalias !6116
  store <4 x i32> zeroinitializer, ptr %i.hn, align 4, !tbaa !355, !alias.scope !6116
  store <4 x i32> zeroinitializer, ptr %i.ho, align 4, !tbaa !355, !alias.scope !6116
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hr, label %middle.block336, label %vector.body329, !llvm.loop !6108

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.hb, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gw, %vector.memcheck323 ], [ %i.gw, %.lr.ph.i.i198.preheader ], [ %i.hk, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.hl, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.ht, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hs, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hs = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.ht = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !355
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !355
  store i32 0, ptr %i.hs, align 4, !tbaa !355
  %.not.i.i201 = icmp eq ptr %0, %i.hs
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !6109

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hv = phi ptr [ %i.gw, %bb.i ], [ %i.hk, %middle.block336 ], [ %i.ht, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hv
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.hy, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !355
  %i.hw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hx = add i32 %i.hw, -1
  store i32 %i.hx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hy = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.hy, %i.hv
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i204, !llvm.loop !135

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !442    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !472
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !477  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !470    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !355
  store i32 %i.k, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %4, align 4, !tbaa !355
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !355
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !355
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !355
  store i32 %i.w, ptr %i.v, align 4, !tbaa !355
  store i32 0, ptr %i.u, align 4, !tbaa !355
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !138

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !355
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %i.ag, align 4, !tbaa !355
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !355
  store i32 %i.au, ptr %i.as, align 4, !tbaa !355
  store i32 0, ptr %i.ar, align 4, !tbaa !355
  %i.av = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !355, !alias.scope !6135
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !355, !alias.scope !6135
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !355, !alias.scope !6136, !noalias !6135
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !355, !alias.scope !6136, !noalias !6135
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !355, !alias.scope !6135
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !355, !alias.scope !6135
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !6121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !355
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !355
  store i32 0, ptr %i.cd, align 4, !tbaa !355
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !6122

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !355, !alias.scope !6137
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !355, !alias.scope !6137
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !355, !alias.scope !6138, !noalias !6137
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !355, !alias.scope !6138, !noalias !6137
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !355, !alias.scope !6137
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !355, !alias.scope !6137
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !6126

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !355
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !6127

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !355
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !355
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !355
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !355
  store i32 0, ptr %i.cy, align 4, !tbaa !355
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !355
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !355
  store i32 0, ptr %i.db, align 4, !tbaa !355
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !355
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !355
  store i32 0, ptr %i.de, align 4, !tbaa !355
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6128

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  %i.dm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !134

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj2EEE:bb.a
  br i1 %.not8, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit
  %i.p = lshr i64 %i.o, 2
  br label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit.thread.sink.split

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit.thread.sink.split: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit, %bb.h
  %.sink = phi i64 [ %i.p, %bb.h ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !261
  br label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit.thread

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit.thread.sink.split, %bb.f, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit, %bb.a
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !477  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !472
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !470, !nonnull !274, !noundef !274
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !355
  store i32 %i.g, ptr %i.f, align 4, !tbaa !355
  store i32 0, ptr %1, align 4, !tbaa !355
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !477
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.k = load ptr, ptr %0, align 8, !tbaa !470
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.108") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !442    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !472
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !477  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !470    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !355
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !355
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !355
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !139

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !355
  store i32 %i.al, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %i.aj, align 4, !tbaa !355
  %i.am = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  %i.as = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !355
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !355
  store i32 0, ptr %i.au, align 4, !tbaa !355
  %i.ay = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !355, !alias.scope !6294
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !355, !alias.scope !6294
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !355, !alias.scope !6295, !noalias !6294
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !355, !alias.scope !6295, !noalias !6294
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !355, !alias.scope !6294
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !355, !alias.scope !6294
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !6290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !355
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !355
  store i32 0, ptr %i.cg, align 4, !tbaa !355
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !6291

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !6292

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !247
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !355
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !355
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !412 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !355
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !412 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !355
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !412
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  %i.di = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !134

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !355
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !6293

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !247
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !355
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !247
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !355
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !412 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !355
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !355
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !412 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !58

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.el, ptr %i.i, align 4, !tbaa !355
  %i.em = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
end_hunk_11
begin_hunk_12_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hm = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gw, i64 %i.hm ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hm ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !367, !alias.scope !7210
  %wide.load334 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !367, !alias.scope !7210
  %i.hp = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.hq = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hp, align 4, !tbaa !367, !alias.scope !7211, !noalias !7210
  store <4 x i32> %wide.load334, ptr %i.hq, align 4, !tbaa !367, !alias.scope !7211, !noalias !7210
  store <4 x i32> zeroinitializer, ptr %i.hn, align 4, !tbaa !367, !alias.scope !7210
  store <4 x i32> zeroinitializer, ptr %i.ho, align 4, !tbaa !367, !alias.scope !7210
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hr, label %middle.block336, label %vector.body329, !llvm.loop !7202

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.hb, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gw, %vector.memcheck323 ], [ %i.gw, %.lr.ph.i.i198.preheader ], [ %i.hk, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.hl, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.ht, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hs, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hs = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.ht = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !367
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !367
  store i32 0, ptr %i.hs, align 4, !tbaa !367
  %.not.i.i201 = icmp eq ptr %0, %i.hs
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !7203

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hv = phi ptr [ %i.gw, %bb.i ], [ %i.hk, %middle.block336 ], [ %i.ht, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hv
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.hy, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !367
  %i.hw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hx = add i32 %i.hw, -1
  store i32 %i.hx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hy = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.hy, %i.hv
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i204, !llvm.loop !145

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !481
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !486  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !479    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.k, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %4, align 4, !tbaa !367
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !367
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !367
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !367
  store i32 %i.w, ptr %i.v, align 4, !tbaa !367
  store i32 0, ptr %i.u, align 4, !tbaa !367
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !148

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !367
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.ag, align 4, !tbaa !367
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !367
  store i32 %i.au, ptr %i.as, align 4, !tbaa !367
  store i32 0, ptr %i.ar, align 4, !tbaa !367
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !367, !alias.scope !7229
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !367, !alias.scope !7229
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !367, !alias.scope !7230, !noalias !7229
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !367, !alias.scope !7230, !noalias !7229
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !367, !alias.scope !7229
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !367, !alias.scope !7229
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !7215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !367
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !367
  store i32 0, ptr %i.cd, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !7216

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !367, !alias.scope !7231
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !367, !alias.scope !7231
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !367, !alias.scope !7232, !noalias !7231
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !367, !alias.scope !7232, !noalias !7231
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !367, !alias.scope !7231
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !367, !alias.scope !7231
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !7220

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !367
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !7221

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !367
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !367
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !367
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !367
  store i32 0, ptr %i.cy, align 4, !tbaa !367
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !367
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !367
  store i32 0, ptr %i.db, align 4, !tbaa !367
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !367
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !367
  store i32 0, ptr %i.de, align 4, !tbaa !367
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7222

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  %i.dm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !144

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.dd = add i32 %i.da, -2
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.de, align 4, !tbaa !367
  %i.df = add i32 %i.da, -3
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.dh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dg, align 4, !tbaa !367
  %i.di = add i32 %i.da, -4
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i49.3 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i49.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i, !llvm.loop !121

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !481
  %.not.i1.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.cu)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #29
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.017

.thread86:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp97.loopexit.split-lp
  %.sroa.056.3 = phi ptr [ %.sroa.056.1123, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.056.0117, %.loopexit.split-lp97.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0119, %.loopexit.split-lp97.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp97.loopexit.split-lp ]
  %i.dn = ptrtoint ptr %.sroa.29.3 to i64
  %i.do = ptrtoint ptr %.sroa.056.3 to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.3, i64 noundef %i.dp) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51

_ZNSt6vectorIiSaIiEED2Ev.exit51:                  ; preds = %.thread80, %.thread86
  %.pn19.pn85 = phi { ptr, i32 } [ %i.x, %.thread80 ], [ %.pn19.pn, %.thread86 ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn19.pn85
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !481
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !486  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !479    ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 16 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter57 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !367
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !7411

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !367
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.v, ptr %i.u, align 4, !tbaa !367
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.y, ptr %i.x, align 4, !tbaa !367
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !367
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !149

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr [4 x i8], ptr %i.i, i64 %i.aj ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.al = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !367
  store i32 %i.am, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.ak, align 4, !tbaa !367
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %i.ar = icmp eq i64 %3, 1
  br i1 %i.ar, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.as = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.as, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ax = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !367
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !367
  store i32 0, ptr %i.av, align 4, !tbaa !367
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bd = shl i64 %i.e, 2
  %i.be = shl i64 %3, 2
  %i.bf = add i64 %i.bd, %i.h
  %i.bg = add i64 %i.bf, -4
  %i.bh = add i64 %i.be, %i.ag
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bl = shl i64 %i.e, 2                         ; 2 uses
  %i.bm = shl i64 %3, 2                           ; 2 uses
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = and i64 %i.bq, -4                       ; 2 uses
  %i.bs = add i64 %i.bl, -4                       ; 2 uses
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = getelementptr i8, ptr %i.g, i64 %i.bt
  %i.bv = add i64 %i.bm, %i.br
  %i.bw = sub i64 %i.bs, %i.bv
  %i.bx = getelementptr i8, ptr %i.g, i64 %i.bw
  %bound0 = icmp ult ptr %i.bu, %i.ak
  %bound1 = icmp ult ptr %i.bx, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.by = mul i64 %n.vec, -4                      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ak, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cb ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !367, !alias.scope !7422
  %wide.load24 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !367, !alias.scope !7422
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ce, align 4, !tbaa !367, !alias.scope !7423, !noalias !7422
  store <4 x i32> %wide.load24, ptr %i.cf, align 4, !tbaa !367, !alias.scope !7423, !noalias !7422
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !367, !alias.scope !7422
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !367, !alias.scope !7422
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !7415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i40.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.ch = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !367
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !367
  store i32 0, ptr %i.ch, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ch
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !7416

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !367 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.ck = and i64 %3, 7
  %i.cl = shl i64 %n.vec29, 2
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cn = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !367
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4, !tbaa !367
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cp, label %middle.block34, label %vector.body30, !llvm.loop !7417

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.ck, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.cm, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cq, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cr, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cq = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !367
  %i.cr = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !7418

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i50.i.i.i ], [ %i.cs, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ct = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ct, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !367
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cw, %i.i
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !144

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !367 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cy = and i64 %i.ai, 7
  %i.cz = shl nsw i64 %n.vec41, 2
  %i.da = getelementptr i8, ptr %i.a, i64 %i.cz
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.db = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !367
  store <4 x i32> %broadcast.splat43, ptr %i.dc, align 4, !tbaa !367
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.dd, label %middle.block48, label %vector.body44, !llvm.loop !7419

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i53.i.i.i ], [ %i.cy, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.da, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.de, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.df, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.de = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !367
  %i.df = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !7420

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dg = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ]
  %i.dh = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.di = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.di, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !7421

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.prol ]
  %i.dm = sub i64 %i.ai, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.do = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.do, ptr %.01416.i.i.i.i.i, align 4, !tbaa !367
  %i.dp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
end_hunk_13
begin_hunk_14_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj2EEE:bb.a
  %.05.i.i.unr = phi i64 [ %i.s, %.lr.ph.i.i.preheader ], [ %i.au, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = icmp ult i64 %i.s, 4
  br i1 %i.ay, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  store ptr %i.f, ptr %0, align 8, !tbaa !479
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !367
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !367
  %i.bc = add i32 %i.az, -2
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !367
  %i.be = add i32 %i.az, -3
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bg = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !367
  %i.bh = add i32 %i.az, -4
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i, !llvm.loop !121

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.j)
          to label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  store ptr %i.f, ptr %0, align 8, !tbaa !479
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !480
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i
  %.sink26.i = phi i64 [ %i.bl, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i ]
  store i64 %.sink26.i, ptr %i.r, align 8, !tbaa !480
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.bm, align 8, !tbaa !261
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !481
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !486  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !479    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !367
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !367
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !367
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !150

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !367
  store i32 %i.al, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.aj, align 4, !tbaa !367
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !367
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !367
  store i32 0, ptr %i.au, align 4, !tbaa !367
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !367, !alias.scope !7704
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !367, !alias.scope !7704
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !367, !alias.scope !7705, !noalias !7704
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !367, !alias.scope !7705, !noalias !7704
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !367, !alias.scope !7704
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !367, !alias.scope !7704
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !7700

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !367
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !367
  store i32 0, ptr %i.cg, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !7701

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !7702

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !247
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !367
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !367
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !412 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !367
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !412 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !367
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !412
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !144

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !367
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !7703

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !247
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !367
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !247
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !367
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !412 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !367
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !367
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !412 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !75

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.el, ptr %i.i, align 4, !tbaa !367
  %i.em = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
end_hunk_14
begin_hunk_15_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St15_Deque_iteratorIiRKiPSA_EEEEEvT0_mSF_SF_mT1_RT_:bb.a
  %index.next398 = add nuw i64 %index393, 8       ; 2 uses
  %i.my = icmp eq i64 %index.next398, %n.vec391
  br i1 %i.my, label %middle.block399, label %vector.body392, !llvm.loop !8390

middle.block399:                                  ; preds = %vector.body392
  %cmp.n400 = icmp eq i64 %i.mm, %n.vec391
  br i1 %cmp.n400, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239, label %.lr.ph.i.i235.preheader428

.lr.ph.i.i235.preheader428:                       ; preds = %vector.memcheck388, %.lr.ph.i.i235.preheader, %middle.block399
  %.010.i.i236.ph = phi ptr [ %i.kx, %vector.memcheck388 ], [ %i.kx, %.lr.ph.i.i235.preheader ], [ %i.mr, %middle.block399 ]
  %.079.i.i237.ph = phi ptr [ %3, %vector.memcheck388 ], [ %3, %.lr.ph.i.i235.preheader ], [ %i.ms, %middle.block399 ]
  br label %.lr.ph.i.i235

.lr.ph.i.i235:                                    ; preds = %.lr.ph.i.i235.preheader428, %.lr.ph.i.i235
  %.010.i.i236 = phi ptr [ %i.na, %.lr.ph.i.i235 ], [ %.010.i.i236.ph, %.lr.ph.i.i235.preheader428 ]
  %.079.i.i237 = phi ptr [ %i.mz, %.lr.ph.i.i235 ], [ %.079.i.i237.ph, %.lr.ph.i.i235.preheader428 ]
  %i.mz = getelementptr inbounds i8, ptr %.079.i.i237, i64 -4 ; 3 uses
  %i.na = getelementptr inbounds i8, ptr %.010.i.i236, i64 -4 ; 3 uses
  %i.nb = load i32, ptr %i.mz, align 4, !tbaa !318
  store i32 %i.nb, ptr %i.na, align 4, !tbaa !318
  %.not.i.i238 = icmp eq ptr %0, %i.mz
  br i1 %.not.i.i238, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239, label %.lr.ph.i.i235, !llvm.loop !8391

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239: ; preds = %.lr.ph.i.i235, %middle.block399, %bb.u
  %i.nc = phi ptr [ %i.kx, %bb.u ], [ %i.mr, %middle.block399 ], [ %i.na, %.lr.ph.i.i235 ] ; 2 uses
  %.not3.i240 = icmp eq ptr %0, %i.nc
  br i1 %.not3.i240, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit151, label %.lr.ph.i241

.lr.ph.i241:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239, %.lr.ph.i241
  %storemerge4.i242 = phi ptr [ %i.nf, %.lr.ph.i241 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i242, align 4, !tbaa !318
  %i.nd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ne = add i32 %i.nd, -1
  store i32 %i.ne, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.nf = getelementptr inbounds nuw i8, ptr %storemerge4.i242, i64 4 ; 2 uses
  %.not.i243 = icmp eq ptr %i.nf, %i.nc
  br i1 %.not.i243, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit151, label %.lr.ph.i241, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit151: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i140, %.lr.ph.i241, %.lr.ph.i193, %.loopexit279, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !490
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !495  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !488    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not14.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter42 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.016.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter44 = phi i64 [ %prol.iter44.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.k = add i64 %.016.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !318
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !8396

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.o = icmp ult i64 %3, 4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !318
  %i.s = add i32 %i.p, 2
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !318
  %i.u = add i32 %i.p, 3
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.w = add i64 %.016.i.i.i.i, -4                ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !318
  %i.x = add i32 %i.p, 4
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !151

bb.d:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.i to i64
  %i.aa = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i.i.i, label %.lr.ph.i53.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = sub i64 0, %3
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ad ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i10.i.i.prol ], [ %i.ae, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.af = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.ag = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.ag, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !8397

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.lcssa31.unr = phi i32 [ poison, %bb.f ], [ %i.ai, %.lr.ph.i.i10.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.af, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %i.al = icmp ult i64 %3, 4
  br i1 %i.al, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.am = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.am, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.an = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !318
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !318
  %i.as = add i32 %i.an, 2
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.av = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.av, ptr %i.au, align 4, !tbaa !318
  %i.aw = add i32 %i.an, 3
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.az = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !318
  %i.bb = add i32 %i.an, 4                        ; 2 uses
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.lcssa31 = phi i32 [ %.lcssa31.unr, %.lr.ph.i.i10.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i10.i.i ]
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ae
  br i1 %.not8.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.be = shl i64 %i.e, 2
  %i.bf = shl i64 %3, 2
  %i.bg = add i64 %i.be, %i.h
  %i.bh = add i64 %i.bg, -4
  %i.bi = add i64 %i.bf, %i.aa
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 60
  %i.bm = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bn = mul i64 %n.vec, -4                      ; 2 uses
  %i.bo = getelementptr i8, ptr %i.i, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ae, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bq ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.ae, i64 %i.bq ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %next.gep25, i64 -16
  %i.bs = getelementptr inbounds i8, ptr %next.gep25, i64 -32
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !318
  %wide.load26 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !318
  %i.bt = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bu = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bt, align 4, !tbaa !318
  store <4 x i32> %wide.load26, ptr %i.bu, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !8398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i.preheader30

.lr.ph.i40.i.i.i.preheader30:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i40.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader30, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %.079.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %i.bw = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !318
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.bw
  br i1 %.not.i41.i.i.i, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !8399

.lr.ph.preheader.i.i.loopexit.i.i:                ; preds = %.lr.ph.i40.i.i.i, %middle.block
  %.pre.i.i.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.preheader.i.i.loopexit.i.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %.pre.i.i.i.i = phi i32 [ %.pre.i.i.pre.i.i, %.lr.ph.preheader.i.i.loopexit.i.i ], [ %.lcssa31, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i ]
  %i.bz = add i32 %.pre.i.i.i.i, 1                ; 2 uses
  %xtraiter32 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol

.lr.ph.i43.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i43.i.i.i.prol
  %i.ca = phi i32 [ %i.cd, %.lr.ph.i43.i.i.i.prol ], [ %i.bz, %.lr.ph.preheader.i.i.i.i ]
  %.010.i44.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i43.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.079.i45.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i43.i.i.i.prol ], [ %3, %.lr.ph.preheader.i.i.i.i ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i43.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.cb = add i64 %.079.i45.i.i.i.prol, -1        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i44.i.i.i.prol, align 4, !tbaa !318
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i.prol, i64 4 ; 2 uses
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol, !llvm.loop !8400

.lr.ph.i43.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i43.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.unr = phi i32 [ %i.bz, %.lr.ph.preheader.i.i.i.i ], [ %i.cd, %.lr.ph.i43.i.i.i.prol ]
  %.010.i44.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i.i ], [ %i.cc, %.lr.ph.i43.i.i.i.prol ]
  %.079.i45.i.i.i.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.cb, %.lr.ph.i43.i.i.i.prol ]
  %i.cf = icmp ult i64 %3, 4
  br i1 %i.cf, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i
  %i.cg = phi i32 [ %i.cm, %.lr.ph.i43.i.i.i ], [ %.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  %.010.i44.i.i.i = phi ptr [ %i.cl, %.lr.ph.i43.i.i.i ], [ %.010.i44.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i45.i.i.i = phi i64 [ %i.ck, %.lr.ph.i43.i.i.i ], [ %.079.i45.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i44.i.i.i, align 4, !tbaa !318
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !318
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 8
  store i32 0, ptr %i.ci, align 4, !tbaa !318
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 12
  %i.ck = add i64 %.079.i45.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !318
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 16
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i46.i.i.i.3 = icmp eq i64 %i.ck, 0
  br i1 %.not.i46.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i, !llvm.loop !159

.lr.ph.i53.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i53.i.i.i

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i53.i.i.i, %.lr.ph.i53.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i53.i.i.i ], [ %i.a, %.lr.ph.i53.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i53.i.i.i ], [ %i.co, %.lr.ph.i53.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i54.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i54.i.i.i, label %.lr.ph.preheader.i56.i.i.i, label %.lr.ph.i53.i.i.i, !llvm.loop !153

.lr.ph.preheader.i56.i.i.i:                       ; preds = %.lr.ph.i53.i.i.i
  %i.cu = add i32 %i.cq, 2                        ; 2 uses
  %xtraiter35 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol

.lr.ph.i58.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i56.i.i.i, %.lr.ph.i58.i.i.i.prol
  %i.cv = phi i32 [ %i.cy, %.lr.ph.i58.i.i.i.prol ], [ %i.cu, %.lr.ph.preheader.i56.i.i.i ]
  %.010.i59.i.i.i.prol = phi ptr [ %i.cx, %.lr.ph.i58.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i56.i.i.i ] ; 2 uses
  %.079.i60.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i58.i.i.i.prol ], [ %i.ac, %.lr.ph.preheader.i56.i.i.i ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i58.i.i.i.prol ], [ 0, %.lr.ph.preheader.i56.i.i.i ]
  %i.cw = add i64 %.079.i60.i.i.i.prol, -1        ; 2 uses
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i59.i.i.i.prol, align 4, !tbaa !318
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i.prol, i64 4 ; 2 uses
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol, !llvm.loop !8401

.lr.ph.i58.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i58.i.i.i.prol, %.lr.ph.preheader.i56.i.i.i
  %.unr38 = phi i32 [ %i.cu, %.lr.ph.preheader.i56.i.i.i ], [ %i.cy, %.lr.ph.i58.i.i.i.prol ]
  %.010.i59.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i56.i.i.i ], [ %i.cx, %.lr.ph.i58.i.i.i.prol ]
  %.079.i60.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.preheader.i56.i.i.i ], [ %i.cw, %.lr.ph.i58.i.i.i.prol ]
  %i.da = icmp ult i64 %i.ac, 4
  br i1 %i.da, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %.lr.ph.i58.i.i.i.prol.loopexit, %.lr.ph.i58.i.i.i
  %i.db = phi i32 [ %i.dh, %.lr.ph.i58.i.i.i ], [ %.unr38, %.lr.ph.i58.i.i.i.prol.loopexit ]
  %.010.i59.i.i.i = phi ptr [ %i.dg, %.lr.ph.i58.i.i.i ], [ %.010.i59.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i60.i.i.i = phi i64 [ %i.df, %.lr.ph.i58.i.i.i ], [ %.079.i60.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ]
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i59.i.i.i, align 4, !tbaa !318
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 4
  store i32 0, ptr %i.dc, align 4, !tbaa !318
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 8
  store i32 0, ptr %i.dd, align 4, !tbaa !318
  %i.de = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 12
  %i.df = add i64 %.079.i60.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.de, align 4, !tbaa !318
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 16
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i61.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i61.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i, !llvm.loop !159

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i: ; preds = %.lr.ph.i58.i.i.i, %.lr.ph.i58.i.i.i.prol.loopexit
  %i.dj = sub i64 %3, %i.ac                       ; 3 uses
  %xtraiter39 = and i64 %i.dj, 3                  ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.016.i.i.i.i.i.prol = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.prol ], [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ]
  %.01315.i.i.i.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ]
  %i.dk = add i64 %.016.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !8402

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i
  %.016.i.i.i.i.i.unr = phi i64 [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.i.prol ]
end_hunk_15
begin_hunk_16_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a
  %.010.i.i197 = phi ptr [ %i.hb, %.lr.ph.i.i196 ], [ %.010.i.i197.ph, %.lr.ph.i.i196.preheader353 ]
  %.079.i.i198 = phi ptr [ %i.ha, %.lr.ph.i.i196 ], [ %.079.i.i198.ph, %.lr.ph.i.i196.preheader353 ]
  %i.ha = getelementptr inbounds i8, ptr %.079.i.i198, i64 -4 ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %.010.i.i197, i64 -4 ; 3 uses
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !318
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !318
  %.not.i.i199 = icmp eq ptr %0, %i.ha
  br i1 %.not.i.i199, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196, !llvm.loop !8475

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200: ; preds = %.lr.ph.i.i196, %middle.block327, %bb.i
  %i.hd = phi ptr [ %i.gi, %bb.i ], [ %i.gs, %middle.block327 ], [ %i.hb, %.lr.ph.i.i196 ] ; 2 uses
  %.not3.i201 = icmp eq ptr %0, %i.hd
  br i1 %.not3.i201, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %.lr.ph.i202
  %storemerge4.i203 = phi ptr [ %i.hg, %.lr.ph.i202 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i203, align 4, !tbaa !318
  %i.he = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hf = add i32 %i.he, -1
  store i32 %i.hf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %storemerge4.i203, i64 4 ; 2 uses
  %.not.i204 = icmp eq ptr %i.hg, %i.hd
  br i1 %.not.i204, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i202, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i136, %.lr.ph.i202, %.lr.ph.i167, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !490
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !495  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !488    ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter82 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.m = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.m, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !318
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !8476

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.l, 3
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !318
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !318
  store i32 %i.y, ptr %i.x, align 4, !tbaa !318
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !318
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !318
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ak = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !160

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %i.b to i64                ; 4 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sub i64 0, %3
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ap ; 6 uses
  %i.ar = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i.prol ], [ %i.aq, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i.prol ], [ %i.j, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.as = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.at = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.at, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !8477

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.as, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aq, %bb.f ], [ %i.aw, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ax, %.lr.ph.i.i10.i.i.prol ]
  %i.ay = icmp ult i64 %i.ar, 3
  br i1 %i.ay, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.az = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.az, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !318
  %i.bf = add i32 %i.ba, 2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !318
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !318
  %i.bj = add i32 %i.ba, 3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bm = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !318
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !318
  %i.bo = add i32 %i.ba, 4
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.aq
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.br = shl i64 %i.f, 2
  %i.bs = shl i64 %3, 2
  %i.bt = add i64 %i.br, %i.i
  %i.bu = add i64 %i.bt, -4
  %i.bv = add i64 %i.bs, %i.am
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 60
  %i.bz = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ca = mul i64 %n.vec, -4                      ; 2 uses
  %i.cb = getelementptr i8, ptr %i.j, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.aq, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.cd ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aq, i64 %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ce, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !318
  %i.cg = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cg, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.ch, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !8478

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader72

.lr.ph.i40.i.i.i.preheader72:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader72, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %.079.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %i.cj = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !318
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.cj
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !8479

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check29 = icmp ult i64 %3, 8
  %i.cm = sub i64 %i.a, %i.am
  %diff.check31 = icmp ugt i64 %i.cm, -32
  %or.cond66 = select i1 %min.iters.check29, i1 true, i1 %diff.check31
  br i1 %or.cond66, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec33 = and i64 %3, -8                       ; 3 uses
  %i.cn = and i64 %3, 7
  %i.co = shl i64 %n.vec33, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.b, i64 %i.co
  %i.cq = getelementptr i8, ptr %4, i64 %i.co
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.cr = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.b, i64 %i.cr ; 2 uses
  %next.gep37 = getelementptr i8, ptr %4, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep37, align 4, !tbaa !318
  %wide.load39 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !318
  %i.ct = getelementptr i8, ptr %next.gep36, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep36, align 4, !tbaa !318
  store <4 x i32> %wide.load39, ptr %i.ct, align 4, !tbaa !318
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cu, label %middle.block41, label %vector.body34, !llvm.loop !8480

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block41
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block41 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block41 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block41 ] ; 2 uses
  %i.cv = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter73 = and i64 %.09.i.i.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.cx, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !8481

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.da = icmp ult i64 %i.cv, 7
  br i1 %i.da, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.db = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !318
  store i32 %i.db, ptr %.048.i.i.i.i.i, align 4, !tbaa !318
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !318
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !318
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !318
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !318
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !318
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !318
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !318
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !318
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !318
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !318
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !318
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.dw = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dx = load i32, ptr %i.du, align 4, !tbaa !318
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !318
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8482

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ee, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i48.i.i.i ], [ %i.ea, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eb = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !318
  store i32 %i.eb, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.ec = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ee = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ee, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !153

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check49 = icmp ult i64 %i.ao, 8
  %i.eg = sub i64 %i.a, %i.am
  %diff.check51 = icmp ugt i64 %i.eg, -32
  %or.cond67 = select i1 %min.iters.check49, i1 true, i1 %diff.check51
  br i1 %or.cond67, label %.lr.ph.i.i52.i.i.i.preheader69, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec53 = and i64 %i.ao, -8                    ; 3 uses
  %i.eh = and i64 %i.ao, 7
  %i.ei = shl nsw i64 %n.vec53, 2                 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.b, i64 %i.ei
  %i.ek = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.el = shl i64 %index55, 2                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.b, i64 %i.el ; 2 uses
  %next.gep57 = getelementptr i8, ptr %4, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !318
end_hunk_16
begin_hunk_17_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !490
  %.not.i1.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.cu)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #29
  unreachable

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.017

.thread86:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp97.loopexit.split-lp
  %.sroa.056.3 = phi ptr [ %.sroa.056.1123, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.056.0117, %.loopexit.split-lp97.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0119, %.loopexit.split-lp97.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp97.loopexit.split-lp ]
  %i.dn = ptrtoint ptr %.sroa.29.3 to i64
  %i.do = ptrtoint ptr %.sroa.056.3 to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.3, i64 noundef %i.dp) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51

_ZNSt6vectorIiSaIiEED2Ev.exit51:                  ; preds = %.thread80, %.thread86
  %.pn19.pn85 = phi { ptr, i32 } [ %i.x, %.thread80 ], [ %.pn19.pn, %.thread86 ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn19.pn85
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !490
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !495  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !488    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter58 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !318
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !8580

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !318
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.v, ptr %i.u, align 4, !tbaa !318
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.y, ptr %i.x, align 4, !tbaa !318
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !318
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !154

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i43.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aj ; 6 uses
  %i.al = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i10.i.i.prol ], [ %i.ak, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.am = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.an = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.an, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.ao = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !8581

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ar, %.lr.ph.i.i10.i.i.prol ]
  %i.as = icmp ult i64 %i.al, 3
  br i1 %i.as, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.at = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.at, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !318
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !318
  %i.az = add i32 %i.au, 2
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !318
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !318
  %i.bd = add i32 %i.au, 3
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bg = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !318
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !318
  %i.bi = add i32 %i.au, 4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i.preheader

.lr.ph.i37.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bl = shl i64 %i.e, 2
  %i.bm = shl i64 %3, 2
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 60
  %i.bt = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i37.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i37.i.i.i.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ak, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !318
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !8582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i.preheader54

.lr.ph.i37.i.i.i.preheader54:                     ; preds = %.lr.ph.i37.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i37.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i37.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i37.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %.lr.ph.i37.i.i.i.preheader54, %.lr.ph.i37.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i37.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i37.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i37.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i37.i.i.i.preheader54 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !318
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !318
  %.not.i38.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i38.i.i.i, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i, !llvm.loop !8583

.lr.ph.i39.i.i.i:                                 ; preds = %.lr.ph.i37.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !318 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i39.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cg = and i64 %3, 7
  %i.ch = shl i64 %n.vec29, 2
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cj = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4, !tbaa !318
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cl, label %middle.block34, label %vector.body30, !llvm.loop !8584

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i39.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i39.i.i.i ], [ %i.cg, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i39.i.i.i ], [ %i.ci, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cm, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cn, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cm = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !318
  %i.cn = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i40.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i40.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !8585

.lr.ph.i43.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i, %.lr.ph.i43.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i43.i.i.i ], [ %i.a, %.lr.ph.i43.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i43.i.i.i ], [ %i.co, %.lr.ph.i43.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i44.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i44.i.i.i, label %.lr.ph.i46.i.i.i, label %.lr.ph.i43.i.i.i, !llvm.loop !153

.lr.ph.i46.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i
  %.pre.i47.i.i.i = load i32, ptr %4, align 4, !tbaa !318 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i46.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cu = and i64 %i.ai, 7
  %i.cv = shl nsw i64 %n.vec41, 2
  %i.cw = getelementptr i8, ptr %i.a, i64 %i.cv
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i47.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.cx = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat43, ptr %i.cy, align 4, !tbaa !318
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.cz, label %middle.block48, label %vector.body44, !llvm.loop !8586

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i46.i.i.i, %middle.block48
  %.07.i48.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i46.i.i.i ], [ %i.cu, %middle.block48 ]
  %.046.i49.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i46.i.i.i ], [ %i.cw, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i48.i.i.i = phi i64 [ %i.da, %scalar.ph38 ], [ %.07.i48.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i49.i.i.i = phi ptr [ %i.db, %scalar.ph38 ], [ %.046.i49.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.da = add i64 %.07.i48.i.i.i, -1              ; 2 uses
  store i32 %.pre.i47.i.i.i, ptr %.046.i49.i.i.i, align 4, !tbaa !318
  %i.db = getelementptr inbounds nuw i8, ptr %.046.i49.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i50.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i, label %scalar.ph38, !llvm.loop !8587

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dc = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dc, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ]
  %i.dd = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.de = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.de, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !8588

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = sub i64 %i.ai, %3
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.dk = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.dk, ptr %.01416.i.i.i.i.i, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.do = load i32, ptr %4, align 4, !tbaa !318
end_hunk_17
begin_hunk_18_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj2EEE:bb.a
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !318
  %i.bc = add i32 %i.az, -2
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !318
  %i.be = add i32 %i.az, -3
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bg = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !318
  %i.bh = add i32 %i.az, -4
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i, !llvm.loop !123

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.j)
          to label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  store ptr %i.f, ptr %0, align 8, !tbaa !488
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !489
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i
  %.sink26.i = phi i64 [ %i.bl, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i ]
  store i64 %.sink26.i, ptr %i.r, align 8, !tbaa !489
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.bm, align 8, !tbaa !261
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mSB_mT_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !490
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !495  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !488    ; 4 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 15 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter38 = and i64 %3, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !318
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !318
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !161

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ai ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i10.i.i.prol ], [ %i.aj, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.ak = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.al = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.al, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.am = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !8732

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp ult i64 %3, 4
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !318
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !318
  %i.ax = add i32 %i.as, 2
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !318
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !318
  %i.bb = add i32 %i.as, 3
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.be = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !318
  %i.bg = add i32 %i.as, 4
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bj = shl i64 %i.e, 2
  %i.bk = shl i64 %3, 2
  %i.bl = add i64 %i.bj, %i.h
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.af
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 60
  %i.br = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 3 uses
  %i.bs = mul i64 %n.vec, -4                      ; 2 uses
  %i.bt = getelementptr i8, ptr %i.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.aj, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bv ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bw, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !318
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.by, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.bz, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !8733

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !318
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cb
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !8734

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ce = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !247
  store i32 %i.cg, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.ch = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !8735

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.prol ]
  %i.cj = icmp ult i64 %3, 4
  br i1 %i.cj, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i, align 4, !tbaa !318
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !247
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !318
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !412 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !247
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !318
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !412 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.cw = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !318
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !412
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !89

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.df, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i48.i.i.i ], [ %i.db, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dc = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !318
  store i32 %i.dc, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.df, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !153

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter32 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dh = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !247
  store i32 %i.dj, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !318
  %i.dk = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !8736

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dm = icmp ult i64 %i.ah, 4
  br i1 %i.dm, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i, align 4, !tbaa !318
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !247
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !318
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !412 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !247
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !318
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !412 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.dz = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !318
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !89

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.ec, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ee = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter35 = and i64 %i.ee, 1
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.i, align 4, !tbaa !318
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = add i32 %i.eh, 1
end_hunk_18
begin_hunk_19_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !355
  %i.ak = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !10654

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !355
  %i.ao = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !355
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !355
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !355
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !173

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !529
  %i.az = shl i64 %i.ay, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.az) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !528
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.ba = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %i.s to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store ptr %i.r, ptr %1, align 8, !tbaa !527
  %i.be = add i64 %i.ba, %3
  store i64 %i.be, ptr %i.d, align 8, !tbaa !528
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.bf = getelementptr inbounds i8, ptr %i.r, i64 %i.bd
  store ptr %i.bf, ptr %0, align 8, !tbaa !444
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !442    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !529
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !534  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !527    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !355
  store i32 %i.k, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %4, align 4, !tbaa !355
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !355
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !355
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !355
  store i32 %i.w, ptr %i.v, align 4, !tbaa !355
  store i32 0, ptr %i.u, align 4, !tbaa !355
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !188

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !355
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %i.ag, align 4, !tbaa !355
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !355
  store i32 %i.au, ptr %i.as, align 4, !tbaa !355
  store i32 0, ptr %i.ar, align 4, !tbaa !355
  %i.av = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !187

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !355, !alias.scope !10672
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !355, !alias.scope !10672
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !355, !alias.scope !10673, !noalias !10672
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !355, !alias.scope !10673, !noalias !10672
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !355, !alias.scope !10672
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !355, !alias.scope !10672
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !10658

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !355
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !355
  store i32 0, ptr %i.cd, align 4, !tbaa !355
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !10659

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !355, !alias.scope !10674
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !355, !alias.scope !10674
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !355, !alias.scope !10675, !noalias !10674
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !355, !alias.scope !10675, !noalias !10674
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !355, !alias.scope !10674
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !355, !alias.scope !10674
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !10663

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !355
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10664

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !355
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !355
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !355
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !355
  store i32 0, ptr %i.cy, align 4, !tbaa !355
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !355
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !355
  store i32 0, ptr %i.db, align 4, !tbaa !355
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !355
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !355
  store i32 0, ptr %i.de, align 4, !tbaa !355
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !10665

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  %i.dm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !185

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_19
begin_hunk_20_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj1EEE:bb.a
.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !529
  %i.bd = shl i64 %i.bc, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.bd) #26
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !528
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, %.loopexit.i.i
  %i.be = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i ], [ %.pre.i.i, %.loopexit.i.i ], [ %i.l, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i ]
  store ptr %i.j, ptr %0, align 8, !tbaa !527
  store i64 %i.be, ptr %i.c, align 8, !tbaa !528
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %bb.e
  %.sink = phi i64 [ 0, %bb.e ], [ %i.d, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !261
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !534  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !529
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !527, !nonnull !274, !noundef !274
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !355
  store i32 %i.g, ptr %i.f, align 4, !tbaa !355
  store i32 0, ptr %1, align 4, !tbaa !355
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !534
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.k = load ptr, ptr %0, align 8, !tbaa !527
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.108") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !442    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !529
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !534  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !527    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !355
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !355
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !355
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !189

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !355
  store i32 %i.al, ptr %i.i, align 4, !tbaa !355
  store i32 0, ptr %i.aj, align 4, !tbaa !355
  %i.am = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !355
  %i.as = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !355
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !355
  store i32 0, ptr %i.au, align 4, !tbaa !355
  %i.ay = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !187

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !355, !alias.scope !10689
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !355, !alias.scope !10689
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !355, !alias.scope !10690, !noalias !10689
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !355, !alias.scope !10690, !noalias !10689
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !355, !alias.scope !10689
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !355, !alias.scope !10689
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !10685

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !355
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !355
  store i32 0, ptr %i.cg, align 4, !tbaa !355
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !10686

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10687

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !247
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !355
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !355
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !412 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !355
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !412 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !355
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !412
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !355
  %i.di = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !185

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !355
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !10688

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test11movable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !247
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !355
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !247
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !355
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !412 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !355
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !355
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !412 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test11movable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !58

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test11movable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test11movable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.el, ptr %i.i, align 4, !tbaa !355
  %i.em = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
end_hunk_20
begin_hunk_21_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !367
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !11221

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !367
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !367
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !367
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !367
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !175

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !538
  %i.az = shl i64 %i.ay, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.az) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !537
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.ba = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %i.s to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store ptr %i.r, ptr %1, align 8, !tbaa !536
  %i.be = add i64 %i.ba, %3
  store i64 %i.be, ptr %i.d, align 8, !tbaa !537
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.bf = getelementptr inbounds i8, ptr %i.r, i64 %i.bd
  store ptr %i.bf, ptr %0, align 8, !tbaa !451
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !538
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !543  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !536    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.k, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %4, align 4, !tbaa !367
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !367
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !367
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !367
  store i32 %i.w, ptr %i.v, align 4, !tbaa !367
  store i32 0, ptr %i.u, align 4, !tbaa !367
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !194

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !367
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.ag, align 4, !tbaa !367
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !367
  store i32 %i.au, ptr %i.as, align 4, !tbaa !367
  store i32 0, ptr %i.ar, align 4, !tbaa !367
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !193

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !367, !alias.scope !11239
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !367, !alias.scope !11239
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !367, !alias.scope !11240, !noalias !11239
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !367, !alias.scope !11240, !noalias !11239
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !367, !alias.scope !11239
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !367, !alias.scope !11239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !11225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !367
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !367
  store i32 0, ptr %i.cd, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !11226

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !367, !alias.scope !11241
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !367, !alias.scope !11241
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !367, !alias.scope !11242, !noalias !11241
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !367, !alias.scope !11242, !noalias !11241
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !367, !alias.scope !11241
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !367, !alias.scope !11241
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !11230

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !367
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11231

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !367
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !367
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !367
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !367
  store i32 0, ptr %i.cy, align 4, !tbaa !367
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !367
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !367
  store i32 0, ptr %i.db, align 4, !tbaa !367
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !367
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !367
  store i32 0, ptr %i.de, align 4, !tbaa !367
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !11232

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  %i.dm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !191

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_21
begin_hunk_22_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.cn, %.lr.ph.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.cr, %.lr.ph.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.prol ]
  %i.cw = icmp ult i64 %i.cn, 4
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.de, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !367
  %i.cx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.cz, align 4, !tbaa !367
  %i.da = add i32 %i.cx, -2
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !367
  %i.dc = add i32 %i.cx, -3
  store i32 %i.dc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.de = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !367
  %i.df = add i32 %i.cx, -4
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !175

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef 40) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.017

.thread88:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.058.0119, %.loopexit.split-lp99.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0121, %.loopexit.split-lp99.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp189, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp ]
  %i.dh = ptrtoint ptr %.sroa.29.3 to i64
  %i.di = ptrtoint ptr %.sroa.058.3 to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.v, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !538
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !543  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !536    ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 16 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter57 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !367
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !11321

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !367
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.v, ptr %i.u, align 4, !tbaa !367
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.y, ptr %i.x, align 4, !tbaa !367
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !367
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11322

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr [4 x i8], ptr %i.i, i64 %i.aj ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.al = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !367
  store i32 %i.am, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.ak, align 4, !tbaa !367
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %i.ar = icmp eq i64 %3, 1
  br i1 %i.ar, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.as = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.as, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ax = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !367
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !367
  store i32 0, ptr %i.av, align 4, !tbaa !367
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !193

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bd = shl i64 %i.e, 2
  %i.be = shl i64 %3, 2
  %i.bf = add i64 %i.bd, %i.h
  %i.bg = add i64 %i.bf, -4
  %i.bh = add i64 %i.be, %i.ag
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bl = shl i64 %i.e, 2                         ; 2 uses
  %i.bm = shl i64 %3, 2                           ; 2 uses
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = and i64 %i.bq, -4                       ; 2 uses
  %i.bs = add i64 %i.bl, -4                       ; 2 uses
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = getelementptr i8, ptr %i.g, i64 %i.bt
  %i.bv = add i64 %i.bm, %i.br
  %i.bw = sub i64 %i.bs, %i.bv
  %i.bx = getelementptr i8, ptr %i.g, i64 %i.bw
  %bound0 = icmp ult ptr %i.bu, %i.ak
  %bound1 = icmp ult ptr %i.bx, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.by = mul i64 %n.vec, -4                      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ak, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cb ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !367, !alias.scope !11333
  %wide.load24 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !367, !alias.scope !11333
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ce, align 4, !tbaa !367, !alias.scope !11334, !noalias !11333
  store <4 x i32> %wide.load24, ptr %i.cf, align 4, !tbaa !367, !alias.scope !11334, !noalias !11333
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !367, !alias.scope !11333
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !367, !alias.scope !11333
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !11326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i40.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.ch = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !367
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !367
  store i32 0, ptr %i.ch, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ch
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !11327

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !367 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.ck = and i64 %3, 7
  %i.cl = shl i64 %n.vec29, 2
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cn = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !367
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4, !tbaa !367
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cp, label %middle.block34, label %vector.body30, !llvm.loop !11328

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.ck, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.cm, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cq, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cr, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cq = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !367
  %i.cr = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !11329

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i50.i.i.i ], [ %i.cs, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ct = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ct, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !367
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cw, %i.i
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !191

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !367 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cy = and i64 %i.ai, 7
  %i.cz = shl nsw i64 %n.vec41, 2
  %i.da = getelementptr i8, ptr %i.a, i64 %i.cz
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.db = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !367
  store <4 x i32> %broadcast.splat43, ptr %i.dc, align 4, !tbaa !367
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.dd, label %middle.block48, label %vector.body44, !llvm.loop !11330

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i53.i.i.i ], [ %i.cy, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.da, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.de, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.df, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.de = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !367
  %i.df = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !11331

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dg = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ]
  %i.dh = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.di = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.di, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11332

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.prol ]
  %i.dm = sub i64 %i.ai, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.do = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.do, ptr %.01416.i.i.i.i.i, align 4, !tbaa !367
  %i.dp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
end_hunk_22
begin_hunk_23_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6assignIPS3_EEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE:bb.a
  br i1 %.not3.i.i20, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  %xtraiter106 = and i64 %i.fo, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i21.prol = phi i64 [ %i.fp, %.lr.ph.i21.i.prol ], [ %i.fo, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i22.prol = phi ptr [ %i.fs, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fp = add i64 %.05.i.i21.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i22.prol, align 4, !tbaa !367
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !11397

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fo, %.lr.ph.i21.i.preheader ], [ %i.fp, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fs, %.lr.ph.i21.i.prol ]
  %i.ft = sub i64 %i.d, %i.bh
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.gc, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.ge, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !367
  %i.fv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fx, align 4, !tbaa !367
  %i.fy = add i32 %i.fv, -2
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !367
  %i.ga = add i32 %i.fv, -3
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.gc = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !367
  %i.gd = add i32 %i.fv, -4
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !175

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bg, align 8, !tbaa !537
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !538
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !543  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !536    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !367
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !367
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !367
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !195

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !367
  store i32 %i.al, ptr %i.i, align 4, !tbaa !367
  store i32 0, ptr %i.aj, align 4, !tbaa !367
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !367
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !367
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !367
  store i32 0, ptr %i.au, align 4, !tbaa !367
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !193

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !367, !alias.scope !11407
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !367, !alias.scope !11407
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !367, !alias.scope !11408, !noalias !11407
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !367, !alias.scope !11408, !noalias !11407
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !367, !alias.scope !11407
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !367, !alias.scope !11407
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !11403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !367
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !367
  store i32 0, ptr %i.cg, align 4, !tbaa !367
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !11404

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11405

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !247
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !367
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !367
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !412 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !367
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !412 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !367
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !412
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !367
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !191

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !367
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !11406

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !247
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !367
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !247
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !367
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !412 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !367
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !367
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !412 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !75

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.el, ptr %i.i, align 4, !tbaa !367
  %i.em = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
end_hunk_23
begin_hunk_24_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_St15_Deque_iteratorIiRKiPSA_EEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_:bb.a
  %.sroa.4.1.i68 = phi ptr [ %i.fl, %bb.k ], [ %.sroa.4.0.i65, %.lr.ph.i.i63 ]
  %i.fn = phi ptr [ %i.fm, %bb.k ], [ %i.fd, %.lr.ph.i.i63 ] ; 2 uses
  %i.fo = phi ptr [ %i.fl, %bb.k ], [ %i.fi, %.lr.ph.i.i63 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !247, !noalias !11938
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !318, !noalias !11938
  %i.fr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11938
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11938
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fn
  br i1 %i.fu, label %bb.l, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1

bb.l:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i67, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !259, !noalias !11938 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1: ; preds = %bb.l, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66
  %.sroa.11.1.i67.1 = phi ptr [ %i.fv, %bb.l ], [ %.sroa.11.1.i67, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ] ; 2 uses
  %.sroa.4.1.i68.1 = phi ptr [ %i.fw, %bb.l ], [ %.sroa.4.1.i68, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ] ; 2 uses
  %i.fy = phi ptr [ %i.fx, %bb.l ], [ %i.fn, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ] ; 2 uses
  %i.fz = phi ptr [ %i.fw, %bb.l ], [ %i.ft, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.gb = add i64 %.015.i.i, -2                   ; 2 uses
  %.not.i.i69.1 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i69.1, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test12copyable_intEEEED2Ev.exit75, label %.lr.ph.i.i63, !llvm.loop !199

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test12copyable_intEEEED2Ev.exit75: ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1, %.lr.ph.i.i63.prol.loopexit
  %.sroa.11.1.i67.lcssa = phi ptr [ %.sroa.11.1.i67.lcssa.unr, %.lr.ph.i.i63.prol.loopexit ], [ %.sroa.11.1.i67.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1 ]
  %.sroa.4.1.i68.lcssa = phi ptr [ %.sroa.4.1.i68.lcssa.unr, %.lr.ph.i.i63.prol.loopexit ], [ %.sroa.4.1.i68.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1 ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i63.prol.loopexit ], [ %i.fy, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i66.1 ]
  store ptr %.sroa.4.1.i68.lcssa, ptr %i.em, align 8, !tbaa !259
  store ptr %.lcssa, ptr %i.el, align 8, !tbaa !259
  store ptr %.sroa.11.1.i67.lcssa, ptr %i.ek, align 8, !tbaa !437
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test12copyable_intEEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test12copyable_intEEEED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test12copyable_intEEEED2Ev.exit75
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !547
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !552  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !545    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not14.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter42 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.016.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter44 = phi i64 [ %prol.iter44.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.k = add i64 %.016.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !318
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !11939

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.o = icmp ult i64 %3, 4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !318
  %i.s = add i32 %i.p, 2
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !318
  %i.u = add i32 %i.p, 3
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.w = add i64 %.016.i.i.i.i, -4                ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !318
  %i.x = add i32 %i.p, 4
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11940

bb.d:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.i to i64
  %i.aa = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i.i.i, label %.lr.ph.i53.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = sub i64 0, %3
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ad ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i10.i.i.prol ], [ %i.ae, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.af = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.ag = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.ag, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !11941

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.lcssa31.unr = phi i32 [ poison, %bb.f ], [ %i.ai, %.lr.ph.i.i10.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.af, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %i.al = icmp ult i64 %3, 4
  br i1 %i.al, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.am = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.am, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.an = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !318
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !318
  %i.as = add i32 %i.an, 2
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.av = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.av, ptr %i.au, align 4, !tbaa !318
  %i.aw = add i32 %i.an, 3
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.az = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !318
  %i.bb = add i32 %i.an, 4                        ; 2 uses
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !196

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.lcssa31 = phi i32 [ %.lcssa31.unr, %.lr.ph.i.i10.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i10.i.i ]
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ae
  br i1 %.not8.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.be = shl i64 %i.e, 2
  %i.bf = shl i64 %3, 2
  %i.bg = add i64 %i.be, %i.h
  %i.bh = add i64 %i.bg, -4
  %i.bi = add i64 %i.bf, %i.aa
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 60
  %i.bm = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bn = mul i64 %n.vec, -4                      ; 2 uses
  %i.bo = getelementptr i8, ptr %i.i, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ae, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bq ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.ae, i64 %i.bq ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %next.gep25, i64 -16
  %i.bs = getelementptr inbounds i8, ptr %next.gep25, i64 -32
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !318
  %wide.load26 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !318
  %i.bt = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bu = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bt, align 4, !tbaa !318
  store <4 x i32> %wide.load26, ptr %i.bu, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !11942

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i.preheader30

.lr.ph.i40.i.i.i.preheader30:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i40.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader30, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %.079.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %i.bw = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !318
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.bw
  br i1 %.not.i41.i.i.i, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !11943

.lr.ph.preheader.i.i.loopexit.i.i:                ; preds = %.lr.ph.i40.i.i.i, %middle.block
  %.pre.i.i.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.preheader.i.i.loopexit.i.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %.pre.i.i.i.i = phi i32 [ %.pre.i.i.pre.i.i, %.lr.ph.preheader.i.i.loopexit.i.i ], [ %.lcssa31, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i ]
  %i.bz = add i32 %.pre.i.i.i.i, 1                ; 2 uses
  %xtraiter32 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol

.lr.ph.i43.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i43.i.i.i.prol
  %i.ca = phi i32 [ %i.cd, %.lr.ph.i43.i.i.i.prol ], [ %i.bz, %.lr.ph.preheader.i.i.i.i ]
  %.010.i44.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i43.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.079.i45.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i43.i.i.i.prol ], [ %3, %.lr.ph.preheader.i.i.i.i ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i43.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.cb = add i64 %.079.i45.i.i.i.prol, -1        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i44.i.i.i.prol, align 4, !tbaa !318
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i.prol, i64 4 ; 2 uses
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol, !llvm.loop !11944

.lr.ph.i43.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i43.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.unr = phi i32 [ %i.bz, %.lr.ph.preheader.i.i.i.i ], [ %i.cd, %.lr.ph.i43.i.i.i.prol ]
  %.010.i44.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i.i ], [ %i.cc, %.lr.ph.i43.i.i.i.prol ]
  %.079.i45.i.i.i.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.cb, %.lr.ph.i43.i.i.i.prol ]
  %i.cf = icmp ult i64 %3, 4
  br i1 %i.cf, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i
  %i.cg = phi i32 [ %i.cm, %.lr.ph.i43.i.i.i ], [ %.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  %.010.i44.i.i.i = phi ptr [ %i.cl, %.lr.ph.i43.i.i.i ], [ %.010.i44.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i45.i.i.i = phi i64 [ %i.ck, %.lr.ph.i43.i.i.i ], [ %.079.i45.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i44.i.i.i, align 4, !tbaa !318
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !318
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 8
  store i32 0, ptr %i.ci, align 4, !tbaa !318
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 12
  %i.ck = add i64 %.079.i45.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !318
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 16
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i46.i.i.i.3 = icmp eq i64 %i.ck, 0
  br i1 %.not.i46.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i, !llvm.loop !11945

.lr.ph.i53.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i53.i.i.i

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i53.i.i.i, %.lr.ph.i53.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i53.i.i.i ], [ %i.a, %.lr.ph.i53.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i53.i.i.i ], [ %i.co, %.lr.ph.i53.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i54.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i54.i.i.i, label %.lr.ph.preheader.i56.i.i.i, label %.lr.ph.i53.i.i.i, !llvm.loop !197

.lr.ph.preheader.i56.i.i.i:                       ; preds = %.lr.ph.i53.i.i.i
  %i.cu = add i32 %i.cq, 2                        ; 2 uses
  %xtraiter35 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol

.lr.ph.i58.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i56.i.i.i, %.lr.ph.i58.i.i.i.prol
  %i.cv = phi i32 [ %i.cy, %.lr.ph.i58.i.i.i.prol ], [ %i.cu, %.lr.ph.preheader.i56.i.i.i ]
  %.010.i59.i.i.i.prol = phi ptr [ %i.cx, %.lr.ph.i58.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i56.i.i.i ] ; 2 uses
  %.079.i60.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i58.i.i.i.prol ], [ %i.ac, %.lr.ph.preheader.i56.i.i.i ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i58.i.i.i.prol ], [ 0, %.lr.ph.preheader.i56.i.i.i ]
  %i.cw = add i64 %.079.i60.i.i.i.prol, -1        ; 2 uses
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i59.i.i.i.prol, align 4, !tbaa !318
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i.prol, i64 4 ; 2 uses
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol, !llvm.loop !11946

.lr.ph.i58.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i58.i.i.i.prol, %.lr.ph.preheader.i56.i.i.i
  %.unr38 = phi i32 [ %i.cu, %.lr.ph.preheader.i56.i.i.i ], [ %i.cy, %.lr.ph.i58.i.i.i.prol ]
  %.010.i59.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i56.i.i.i ], [ %i.cx, %.lr.ph.i58.i.i.i.prol ]
  %.079.i60.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.preheader.i56.i.i.i ], [ %i.cw, %.lr.ph.i58.i.i.i.prol ]
  %i.da = icmp ult i64 %i.ac, 4
  br i1 %i.da, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %.lr.ph.i58.i.i.i.prol.loopexit, %.lr.ph.i58.i.i.i
  %i.db = phi i32 [ %i.dh, %.lr.ph.i58.i.i.i ], [ %.unr38, %.lr.ph.i58.i.i.i.prol.loopexit ]
  %.010.i59.i.i.i = phi ptr [ %i.dg, %.lr.ph.i58.i.i.i ], [ %.010.i59.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i60.i.i.i = phi i64 [ %i.df, %.lr.ph.i58.i.i.i ], [ %.079.i60.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ]
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i59.i.i.i, align 4, !tbaa !318
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 4
  store i32 0, ptr %i.dc, align 4, !tbaa !318
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 8
  store i32 0, ptr %i.dd, align 4, !tbaa !318
  %i.de = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 12
  %i.df = add i64 %.079.i60.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.de, align 4, !tbaa !318
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 16
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i61.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i61.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i, !llvm.loop !11945

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i: ; preds = %.lr.ph.i58.i.i.i, %.lr.ph.i58.i.i.i.prol.loopexit
  %i.dj = sub i64 %3, %i.ac                       ; 3 uses
  %xtraiter39 = and i64 %i.dj, 3                  ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.016.i.i.i.i.i.prol = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.prol ], [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ]
  %.01315.i.i.i.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ]
  %i.dk = add i64 %.016.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11947

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i
  %.016.i.i.i.i.i.unr = phi i64 [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.i.prol ]
end_hunk_24
begin_hunk_25_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 -2147483648, ptr %i.cq, align 4, !tbaa !318
  %i.cs = add i32 %i.ck, -4
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !177

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !547
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.cv) #26
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !546
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.cw = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.t to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.s, ptr %1, align 8, !tbaa !545
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.e, align 8, !tbaa !546
  store i64 %i.p, ptr %i.b, align 8, !tbaa !261
  %i.db = getelementptr inbounds i8, ptr %i.s, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !547
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !552  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !545    ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter82 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.m = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.m, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !318
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !11995

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.l, 3
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !318
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !318
  store i32 %i.y, ptr %i.x, align 4, !tbaa !318
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !318
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !318
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ak = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11996

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %i.b to i64                ; 4 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sub i64 0, %3
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ap ; 6 uses
  %i.ar = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i.prol ], [ %i.aq, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i.prol ], [ %i.j, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.as = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.at = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.at, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !11997

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.as, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aq, %bb.f ], [ %i.aw, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ax, %.lr.ph.i.i10.i.i.prol ]
  %i.ay = icmp ult i64 %i.ar, 3
  br i1 %i.ay, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.az = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.az, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !318
  %i.bf = add i32 %i.ba, 2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !318
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !318
  %i.bj = add i32 %i.ba, 3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bm = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !318
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !318
  %i.bo = add i32 %i.ba, 4
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !196

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.aq
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.br = shl i64 %i.f, 2
  %i.bs = shl i64 %3, 2
  %i.bt = add i64 %i.br, %i.i
  %i.bu = add i64 %i.bt, -4
  %i.bv = add i64 %i.bs, %i.am
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 60
  %i.bz = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ca = mul i64 %n.vec, -4                      ; 2 uses
  %i.cb = getelementptr i8, ptr %i.j, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.aq, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.cd ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aq, i64 %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ce, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !318
  %i.cg = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cg, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.ch, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !11998

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader72

.lr.ph.i40.i.i.i.preheader72:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader72, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %.079.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %i.cj = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !318
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.cj
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !11999

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check29 = icmp ult i64 %3, 8
  %i.cm = sub i64 %i.a, %i.am
  %diff.check31 = icmp ugt i64 %i.cm, -32
  %or.cond66 = select i1 %min.iters.check29, i1 true, i1 %diff.check31
  br i1 %or.cond66, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec33 = and i64 %3, -8                       ; 3 uses
  %i.cn = and i64 %3, 7
  %i.co = shl i64 %n.vec33, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.b, i64 %i.co
  %i.cq = getelementptr i8, ptr %4, i64 %i.co
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.cr = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.b, i64 %i.cr ; 2 uses
  %next.gep37 = getelementptr i8, ptr %4, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep37, align 4, !tbaa !318
  %wide.load39 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !318
  %i.ct = getelementptr i8, ptr %next.gep36, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep36, align 4, !tbaa !318
  store <4 x i32> %wide.load39, ptr %i.ct, align 4, !tbaa !318
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cu, label %middle.block41, label %vector.body34, !llvm.loop !12000

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block41
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block41 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block41 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block41 ] ; 2 uses
  %i.cv = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter73 = and i64 %.09.i.i.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.cx, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12001

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.da = icmp ult i64 %i.cv, 7
  br i1 %i.da, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.db = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !318
  store i32 %i.db, ptr %.048.i.i.i.i.i, align 4, !tbaa !318
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !318
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !318
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !318
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !318
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !318
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !318
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !318
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !318
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !318
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !318
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !318
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.dw = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dx = load i32, ptr %i.du, align 4, !tbaa !318
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !318
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12002

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ee, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i48.i.i.i ], [ %i.ea, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eb = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !318
  store i32 %i.eb, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.ec = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ee = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ee, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !197

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check49 = icmp ult i64 %i.ao, 8
  %i.eg = sub i64 %i.a, %i.am
  %diff.check51 = icmp ugt i64 %i.eg, -32
  %or.cond67 = select i1 %min.iters.check49, i1 true, i1 %diff.check51
  br i1 %or.cond67, label %.lr.ph.i.i52.i.i.i.preheader69, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec53 = and i64 %i.ao, -8                    ; 3 uses
  %i.eh = and i64 %i.ao, 7
  %i.ei = shl nsw i64 %n.vec53, 2                 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.b, i64 %i.ei
  %i.ek = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.el = shl i64 %index55, 2                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.b, i64 %i.el ; 2 uses
  %next.gep57 = getelementptr i8, ptr %4, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !318
end_hunk_25
begin_hunk_26_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.da = add i32 %i.cx, -2
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !318
  %i.dc = add i32 %i.cx, -3
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.de = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !318
  %i.df = add i32 %i.cx, -4
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !177

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef 40) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.017

.thread88:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.058.0119, %.loopexit.split-lp99.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0121, %.loopexit.split-lp99.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp189, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp ]
  %i.dh = ptrtoint ptr %.sroa.29.3 to i64
  %i.di = ptrtoint ptr %.sroa.058.3 to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.v, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !547
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !552  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !545    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter58 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !318
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12117

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !318
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.v, ptr %i.u, align 4, !tbaa !318
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.y, ptr %i.x, align 4, !tbaa !318
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !318
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !198

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i43.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aj ; 6 uses
  %i.al = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i10.i.i.prol ], [ %i.ak, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.am = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.an = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.an, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.ao = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12118

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ar, %.lr.ph.i.i10.i.i.prol ]
  %i.as = icmp ult i64 %i.al, 3
  br i1 %i.as, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.at = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.at, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !318
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !318
  %i.az = add i32 %i.au, 2
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !318
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !318
  %i.bd = add i32 %i.au, 3
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bg = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !318
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !318
  %i.bi = add i32 %i.au, 4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !196

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i.preheader

.lr.ph.i37.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bl = shl i64 %i.e, 2
  %i.bm = shl i64 %3, 2
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 60
  %i.bt = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i37.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i37.i.i.i.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ak, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !318
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !12119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i.preheader54

.lr.ph.i37.i.i.i.preheader54:                     ; preds = %.lr.ph.i37.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i37.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i37.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i37.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %.lr.ph.i37.i.i.i.preheader54, %.lr.ph.i37.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i37.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i37.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i37.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i37.i.i.i.preheader54 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !318
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !318
  %.not.i38.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i38.i.i.i, label %.lr.ph.i39.i.i.i, label %.lr.ph.i37.i.i.i, !llvm.loop !12120

.lr.ph.i39.i.i.i:                                 ; preds = %.lr.ph.i37.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !318 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i39.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cg = and i64 %3, 7
  %i.ch = shl i64 %n.vec29, 2
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cj = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4, !tbaa !318
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cl, label %middle.block34, label %vector.body30, !llvm.loop !12121

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i39.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i39.i.i.i ], [ %i.cg, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i39.i.i.i ], [ %i.ci, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cm, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cn, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cm = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !318
  %i.cn = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i40.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i40.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !12122

.lr.ph.i43.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i, %.lr.ph.i43.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i43.i.i.i ], [ %i.a, %.lr.ph.i43.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i43.i.i.i ], [ %i.co, %.lr.ph.i43.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i44.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i44.i.i.i, label %.lr.ph.i46.i.i.i, label %.lr.ph.i43.i.i.i, !llvm.loop !197

.lr.ph.i46.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i
  %.pre.i47.i.i.i = load i32, ptr %4, align 4, !tbaa !318 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i46.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cu = and i64 %i.ai, 7
  %i.cv = shl nsw i64 %n.vec41, 2
  %i.cw = getelementptr i8, ptr %i.a, i64 %i.cv
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i47.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.cx = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat43, ptr %i.cy, align 4, !tbaa !318
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.cz, label %middle.block48, label %vector.body44, !llvm.loop !12123

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i46.i.i.i, %middle.block48
  %.07.i48.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i46.i.i.i ], [ %i.cu, %middle.block48 ]
  %.046.i49.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i46.i.i.i ], [ %i.cw, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i48.i.i.i = phi i64 [ %i.da, %scalar.ph38 ], [ %.07.i48.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i49.i.i.i = phi ptr [ %i.db, %scalar.ph38 ], [ %.046.i49.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.da = add i64 %.07.i48.i.i.i, -1              ; 2 uses
  store i32 %.pre.i47.i.i.i, ptr %.046.i49.i.i.i, align 4, !tbaa !318
  %i.db = getelementptr inbounds nuw i8, ptr %.046.i49.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i50.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i, label %scalar.ph38, !llvm.loop !12124

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dc = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dc, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ]
  %i.dd = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.de = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.de, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12125

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = sub i64 %i.ai, %3
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.dk = load i32, ptr %4, align 4, !tbaa !318
  store i32 %i.dk, ptr %.01416.i.i.i.i.i, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.do = load i32, ptr %4, align 4, !tbaa !318
end_hunk_26
begin_hunk_27_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6assignIPS3_EEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE:bb.a
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !12238

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fo, %.lr.ph.i21.i.preheader ], [ %i.fp, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fs, %.lr.ph.i21.i.prol ]
  %i.ft = sub i64 %i.d, %i.bh
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.gc, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.ge, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !318
  %i.fv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fx, align 4, !tbaa !318
  %i.fy = add i32 %i.fv, -2
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !318
  %i.ga = add i32 %i.fv, -3
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.gc = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !318
  %i.gd = add i32 %i.fv, -4
  store i32 %i.gd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !177

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bg, align 8, !tbaa !546
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !547
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !552  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !545    ; 4 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 15 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter38 = and i64 %3, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  store i32 %i.l, ptr %i.i, align 4, !tbaa !318
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = load ptr, ptr %4, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %i.x, align 4, !tbaa !318
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !200

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !272

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ai ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i10.i.i.prol ], [ %i.aj, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.ak = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.al = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.al, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !318
  %i.am = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12241

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp ult i64 %3, 4
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !318
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !318
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !318
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !318
  %i.ax = add i32 %i.as, 2
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !318
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !318
  %i.bb = add i32 %i.as, 3
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.be = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !318
  %i.bg = add i32 %i.as, 4
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !196

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bj = shl i64 %i.e, 2
  %i.bk = shl i64 %3, 2
  %i.bl = add i64 %i.bj, %i.h
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.af
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 60
  %i.br = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 3 uses
  %i.bs = mul i64 %n.vec, -4                      ; 2 uses
  %i.bt = getelementptr i8, ptr %i.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.aj, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bv ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bw, align 4, !tbaa !318
  %wide.load24 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !318
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.by, align 4, !tbaa !318
  store <4 x i32> %wide.load24, ptr %i.bz, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !12242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !318
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !318
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cb
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !12243

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ce = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !247
  store i32 %i.cg, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.ch = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !412 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12244

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.prol ]
  %i.cj = icmp ult i64 %3, 4
  br i1 %i.cj, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !247
  store i32 %i.cl, ptr %.048.i.i.i.i.i, align 4, !tbaa !318
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !247
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !318
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !412 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !247
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !318
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !412 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.cw = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !318
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !412
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !89

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.df, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i48.i.i.i ], [ %i.db, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dc = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !318
  store i32 %i.dc, ptr %.01517.i.i.i.i, align 4, !tbaa !318
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.df, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !197

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter32 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dh = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !247
  store i32 %i.dj, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !318
  %i.dk = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !12245

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dm = icmp ult i64 %i.ah, 4
  br i1 %i.dm, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  store i32 %i.do, ptr %.048.i.i54.i.i.i, align 4, !tbaa !318
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !412 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !247
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !318
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !412 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !247
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !318
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !412 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.dz = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !318
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !412 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !89

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.ec, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ee = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter35 = and i64 %i.ee, 1
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.i, align 4, !tbaa !318
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = add i32 %i.eh, 1
end_hunk_27
