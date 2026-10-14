Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/small_vector_test?download=true
inline.NumInlined: 11236
inline.NumDeleted: 2906
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 526
begin_hunk_0_@_ZN5boost9container4test20test_range_insertionINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEEEEbv:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.jk = load ptr, ptr %i.ci, align 8, !tbaa !200 ; 2 uses
  %i.jl = load ptr, ptr %i.ch, align 8, !tbaa !201 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = icmp ult ptr %i.jk, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i.i32, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31

.lr.ph.i.i.i32:                                   ; preds = %bb.cc, %.lr.ph.i.i.i32
  %.06.i.i.i33 = phi ptr [ %i.jp, %.lr.ph.i.i.i32 ], [ %i.jk, %bb.cc ] ; 3 uses
  %i.jo = load ptr, ptr %.06.i.i.i33, align 8, !tbaa !78
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef 512) #26
  %i.jp = getelementptr inbounds nuw i8, ptr %.06.i.i.i33, i64 8
  %i.jq = icmp ult ptr %.06.i.i.i33, %i.jl
  br i1 %i.jq, label %.lr.ph.i.i.i32, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34, !llvm.loop !6

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34: ; preds = %.lr.ph.i.i.i32
  %.pre.i.i35 = load ptr, ptr %1, align 8, !tbaa !199
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34, %bb.cc
  %i.jr = phi ptr [ %.pre.i.i35, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34 ], [ %i.jj, %bb.cc ]
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !198
  %i.ju = shl i64 %i.jt, 3
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #26
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit36

_ZNSt5dequeIiSaIiEED2Ev.exit36:                   ; preds = %bb.cb, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31
  %i.jv = icmp eq i32 %i.b, %i.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %i.jv

bb.cd:                                            ; preds = %bb.ar
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %bb.ap
  %.pn21 = phi { ptr, i32 } [ %i.cu, %bb.ap ], [ %.pn.pn.pn.pn, %bb.ca ], [ %i.jw, %bb.cd ]
  call void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !230  ; 8 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %.lr.ph.i.preheader.i.i, label %bb.b

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !223
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.g = sub i64 0, %i.d
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %xtraiter5 = and i64 %i.d, 3                    ; 2 uses
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.i, %.lr.ph.i.i.i.prol ], [ %i.d, %.lr.ph.i.preheader.i.i ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %i.h, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter7 = phi i64 [ %prol.iter7.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.i = add i64 %.05.i.i.i.prol, -1              ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !225
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter7.next = add i64 %prol.iter7, 1       ; 2 uses
  %prol.iter7.cmp.not = icmp eq i64 %prol.iter7.next, %xtraiter5
  br i1 %prol.iter7.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2912

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.05.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader.i.i ], [ %i.i, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.preheader.i.i ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %i.m = sub i64 %1, %i.b
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !225
  %i.o = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.q, align 4, !tbaa !225
  %i.r = add i32 %i.o, -2
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.s, align 4, !tbaa !225
  %i.t = add i32 %i.o, -3
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.v = add i64 %.05.i.i.i, -4                   ; 2 uses
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !225
  %i.w = add i32 %i.o, -4
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  store i64 %1, ptr %i.a, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !223
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.b ; 3 uses
  %i.aa = sub nuw i64 %1, %i.b                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !222, !noalias !2916
  %i.ad = sub i64 %i.ac, %i.b
  %.not.i.i = icmp ugt i64 %i.aa, %i.ad
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %.not14.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.016.i.i.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.01315.i.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ae = add i64 %.016.i.i.i.i.i.i.prol, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.prol, align 4, !tbaa !225, !noalias !2916
  %i.af = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2916
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2916
  %i.ah = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2915

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.016.i.i.i.i.i.i.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01315.i.i.i.i.i.i.unr = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ai = sub i64 %i.b, %1
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.01315.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i, align 4, !tbaa !225, !noalias !2916
  %i.ak = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2916 ; 4 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2916
  %i.am = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !225, !noalias !2916
  %i.an = add i32 %i.ak, 2
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2916
  %i.ao = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ao, align 4, !tbaa !225, !noalias !2916
  %i.ap = add i32 %i.ak, 3
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2916
  %i.aq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 12
  %i.ar = add i64 %.016.i.i.i.i.i.i, -4           ; 2 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !225, !noalias !2916
  %i.as = add i32 %i.ak, 4
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2916
  %i.at = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !28

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.c
  store i64 %1, ptr %i.a, align 8, !tbaa !221, !noalias !2916
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.z, i64 noundef %i.aa)
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i: ; preds = %bb.d, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !270    ; 9 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !270    ; 9 uses
  %4 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !223    ; 2 uses
  %5 = ptrtoaddr ptr %i.c to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !230  ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %.not8.i = icmp eq ptr %i.b, %i.f
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.e, 2
  %i.h = add i64 %i.g, %5
  %i.i = add i64 %i.h, -4
  %i.j = sub i64 %i.i, %4                         ; 2 uses
  %i.k = lshr i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 92
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.m = shl nuw nsw i64 %i.e, 2
  %i.n = add i64 %i.m, %5
  %i.o = add i64 %i.n, -4
  %i.p = sub i64 %i.o, %4
  %i.q = and i64 %i.p, -4
  %i.r = add i64 %i.q, 4                          ; 2 uses
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  %i.t = getelementptr i8, ptr %i.b, i64 %i.r
  %bound0 = icmp ult ptr %i.a, %i.t
  %bound1 = icmp ult ptr %i.b, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u     ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.x ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.b, i64 %i.x ; 3 uses
  %i.y = getelementptr i8, ptr %next.gep13, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !225, !alias.scope !2923
  %wide.load14 = load <4 x i32>, ptr %i.y, align 4, !tbaa !225, !alias.scope !2923
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !225, !alias.scope !2924, !noalias !2923
  store <4 x i32> %wide.load14, ptr %i.z, align 4, !tbaa !225, !alias.scope !2924, !noalias !2923
  store <4 x i32> zeroinitializer, ptr %next.gep13, align 4, !tbaa !225, !alias.scope !2923
  store <4 x i32> zeroinitializer, ptr %i.y, align 4, !tbaa !225, !alias.scope !2923
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.v, %middle.block ]
  %.079.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader16 ] ; 3 uses
  %i.ab = load i32, ptr %.079.i, align 4, !tbaa !225
  store i32 %i.ab, ptr %.010.i, align 4, !tbaa !225
  store i32 0, ptr %.079.i, align 4, !tbaa !225
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.f
  br i1 %.not.i, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i, !llvm.loop !2921

_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.b
  %.0.lcssa.i = phi ptr [ %i.a, %bb.b ], [ %i.v, %middle.block ], [ %i.ad, %.lr.ph.i ] ; 4 uses
  %i.ae = ptrtoint ptr %i.f to i64
  %i.af = ptrtoint ptr %.0.lcssa.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 5 uses
  %.not3.i = icmp eq ptr %i.f, %.0.lcssa.i
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i8.prol.loopexit, label %.lr.ph.i8.prol

.lr.ph.i8.prol:                                   ; preds = %.lr.ph.i8.preheader, %.lr.ph.i8.prol
  %.05.i.prol = phi i64 [ %i.ai, %.lr.ph.i8.prol ], [ %i.ah, %.lr.ph.i8.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.al, %.lr.ph.i8.prol ], [ %.0.lcssa.i, %.lr.ph.i8.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.prol ], [ 0, %.lr.ph.i8.preheader ]
  %i.ai = add i64 %.05.i.prol, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !225
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.prol.loopexit, label %.lr.ph.i8.prol, !llvm.loop !2922

.lr.ph.i8.prol.loopexit:                          ; preds = %.lr.ph.i8.prol, %.lr.ph.i8.preheader
  %.05.i.unr = phi i64 [ %i.ah, %.lr.ph.i8.preheader ], [ %i.ai, %.lr.ph.i8.prol ]
  %storemerge4.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i8.preheader ], [ %i.al, %.lr.ph.i8.prol ]
  %i.am = icmp ult i64 %i.ah, 4
  br i1 %i.am, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.prol.loopexit, %.lr.ph.i8
  %.05.i = phi i64 [ %i.au, %.lr.ph.i8 ], [ %.05.i.unr, %.lr.ph.i8.prol.loopexit ]
  %storemerge4.i = phi ptr [ %i.aw, %.lr.ph.i8 ], [ %storemerge4.i.unr, %.lr.ph.i8.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !225
  %i.an = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !225
  %i.aq = add i32 %i.an, -2
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !225
  %i.as = add i32 %i.an, -3
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 12
  %i.au = add i64 %.05.i, -4                      ; 2 uses
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !225
  %i.av = add i32 %i.an, -4
  store i32 %i.av, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %.not.i9.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i9.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i8, !llvm.loop !22

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit: ; preds = %.lr.ph.i8.prol.loopexit, %.lr.ph.i8, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.ax = sub i64 %i.e, %i.ah
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !221
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !273
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_12vec_iteratorISC_Lb0EEENSF_ISC_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl21is_not_input_iteratorISI_EENSJ_5bool_ILb0EEESR_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !223, !noalias !2933 ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !270    ; 2 uses
  %.not8 = icmp eq ptr %3, %4
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit
  %.sroa.05.010 = phi ptr [ %3, %.lr.ph ], [ %i.as, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit ] ; 6 uses
  %.sroa.01.09 = phi ptr [ %i.b, %.lr.ph ], [ %i.ar, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.e = load i64, ptr %i.c, align 8, !tbaa !222, !noalias !2934
  %i.f = load i64, ptr %i.d, align 8, !tbaa !230, !noalias !2934 ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.f, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !223, !noalias !2934 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.h, %.sroa.01.09
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.i = load i32, ptr %.sroa.05.010, align 4, !tbaa !225, !noalias !2934
  store i32 %i.i, ptr %i.h, align 4, !tbaa !225, !noalias !2934
  store i32 0, ptr %.sroa.05.010, align 4, !tbaa !225, !noalias !2934
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2934
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2934
  %i.l = add i64 %i.f, 1
  store i64 %i.l, ptr %i.d, align 8, !tbaa !230, !noalias !2934
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %.sroa.01.09 to i64
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !225, !noalias !2934
  store i32 %i.r, ptr %i.h, align 4, !tbaa !225, !noalias !2934
  store i32 0, ptr %i.q, align 4, !tbaa !225, !noalias !2934
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2934
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2934
  %i.u = add i64 %i.f, 1
  store i64 %i.u, ptr %i.d, align 8, !tbaa !230, !noalias !2934
  %i.v = add nsw i64 %i.p, -1                     ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.w = add nsw i64 %i.p, -2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.x = add i64 %.0610.i.i.i.i.prol, -1          ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !225, !noalias !2934
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !225, !noalias !2934
  store i32 0, ptr %i.y, align 4, !tbaa !225, !noalias !2934
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_:bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef 1, ptr nonnull %3)
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !222  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !221  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !223    ; 9 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !230  ; 8 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !225
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !225
  %i.w = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !31

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !225
  store i32 %i.aa, ptr %.015.lcssa.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %4, align 4, !tbaa !225
  %i.ab = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !225
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !225
  %i.af = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !31

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !225
  %i.ak = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3189

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !225
  %i.ao = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !225
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !225
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !225
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !22

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !222
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bb) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.bc = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.s to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.r, ptr %1, align 8, !tbaa !223
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !221
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !273
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !271    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !230  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !223    ; 7 uses
  %5 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !225
  store i32 %i.j, ptr %i.h, align 4, !tbaa !225
  store i32 0, ptr %4, align 4, !tbaa !225
  %i.k = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !225
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !225
  %i.r = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !225
  store i32 %i.v, ptr %i.u, align 4, !tbaa !225
  store i32 0, ptr %i.t, align 4, !tbaa !225
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !34

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i64 0, %3
  %i.af = getelementptr [4 x i8], ptr %i.h, i64 %i.ae ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ag = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !225
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !225
  store i32 0, ptr %i.af, align 4, !tbaa !225
  %i.ai = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  %i.ao = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !225
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !225
  store i32 0, ptr %i.aq, align 4, !tbaa !225
  %i.au = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !33

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.ay = shl nuw nsw i64 %i.e, 2
  %i.az = shl i64 %3, 2
  %i.ba = add i64 %i.ay, %5
  %i.bb = add i64 %i.ba, -4
  %i.bc = add i64 %i.az, %i.ab
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bg = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bh = shl i64 %3, 2                           ; 2 uses
  %i.bi = add i64 %i.bg, %5
  %i.bj = add i64 %i.bi, -4
  %i.bk = add i64 %i.bh, %i.ab
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = add nsw i64 %i.bg, -4                   ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr i8, ptr %i.g, i64 %i.bo
  %i.bq = add i64 %i.bh, %i.bm
  %i.br = sub i64 %i.bn, %i.bq
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %bound0 = icmp ult ptr %i.bp, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !225, !alias.scope !3207
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !225, !alias.scope !3207
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !225, !alias.scope !3208, !noalias !3207
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !225, !alias.scope !3208, !noalias !3207
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !225, !alias.scope !3207
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !225, !alias.scope !3207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !3193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !225
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !225
  store i32 0, ptr %i.cc, align 4, !tbaa !225
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3194

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  %bound034 = icmp ult ptr %i.a, %i.ch
  %bound135 = icmp ult ptr %4, %i.cg
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.ci = and i64 %3, 7
  %i.cj = shl i64 %n.vec38, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.cj
  %i.cl = getelementptr i8, ptr %4, i64 %i.cj
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cm = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !225, !alias.scope !3209
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !225, !alias.scope !3209
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !225, !alias.scope !3210, !noalias !3209
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !225, !alias.scope !3210, !noalias !3209
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !225, !alias.scope !3209
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !225, !alias.scope !3209
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !3198

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ck, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %i.cq = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !225
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !225
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3199

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !225
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !225
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !225
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !225
  store i32 0, ptr %i.cx, align 4, !tbaa !225
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !225
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !225
  store i32 0, ptr %i.da, align 4, !tbaa !225
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !225
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !225
  store i32 0, ptr %i.dd, align 4, !tbaa !225
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3200

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  %i.dl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !31

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m:bb.a
  %xtraiter41 = and i64 %i.bb, 3                  ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.prol ], [ %i.aw, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01517.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.prol ], [ %i.av, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bc = load i32, ptr %.018.i.i.i.i.prol, align 4, !tbaa !225
  store i32 %i.bc, ptr %.01517.i.i.i.i.prol, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i.i.i.prol, align 4, !tbaa !225
  %i.bd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.bf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3215

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.prol ]
  %.01517.i.i.i.i.unr = phi ptr [ %i.av, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %i.bh = icmp ult i64 %i.az, 12
  br i1 %i.bh, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %.01517.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bi = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !225
  store i32 %i.bi, ptr %.01517.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !225
  %i.bj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !225
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !225
  store i32 0, ptr %i.bl, align 4, !tbaa !225
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !225
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !225
  store i32 0, ptr %i.bp, align 4, !tbaa !225
  %i.bs = add i32 %i.bj, 3
  store i32 %i.bs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.bt = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 12
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !225
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !225
  store i32 0, ptr %i.bt, align 4, !tbaa !225
  %i.bw = add i32 %i.bj, 4
  store i32 %i.bw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq ptr %i.bx, %i.ay
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i
  %.not.i.i = icmp eq ptr %i.aw, null
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = icmp eq ptr %i.bz, %i.aw
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %i.ca
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %bb.k

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.not.i5.i = icmp eq ptr %i.aw, null
  br i1 %.not.i5.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i
  %xtraiter44 = and i64 %i.ax, 3                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.prol ], [ %i.ax, %.lr.ph.i.i.i.preheader ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i.prol ], [ %i.aw, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cb = add i64 %.05.i.i.i.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !225
  %i.cc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cd = add i32 %i.cc, -1
  store i32 %i.cd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3216

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.05.i.i.i.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.prol ]
  %i.cf = icmp ult i64 %i.ax, 4
  br i1 %i.cf, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !225
  %i.cg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !225
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !225
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.cn = add i64 %.05.i.i.i, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !225
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old6.i = icmp eq ptr %.old.i, %i.aw
  br i1 %.old6.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !222
  %i.cr = shl i64 %i.cq, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cr) #22
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %bb.k
  %i.cs = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i ], [ %.pre.i.i, %bb.k ], [ %i.ax, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i ], [ %i.ax, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i ]
  store ptr %i.av, ptr %0, align 8, !tbaa !223
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !221
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.sink = phi i64 [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.e, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ], [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29 ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !230  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !222
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !223, !nonnull !76, !noundef !76
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !225
  store i32 %i.g, ptr %i.f, align 4, !tbaa !225
  store i32 0, ptr %1, align 4, !tbaa !225
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !230
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = load ptr, ptr %0, align 8, !tbaa !223
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !271    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !230  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !223    ; 7 uses
  %5 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  store i32 %i.k, ptr %i.h, align 4, !tbaa !225
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.n = load ptr, ptr %4, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  store i32 %i.s, ptr %.01417.i.i.i.i, align 4, !tbaa !225
  %i.t = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.v = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  store i32 %i.y, ptr %i.w, align 4, !tbaa !225
  %i.z = add i32 %i.t, 2
  store i32 %i.z, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.h to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.h, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !225
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !225
  store i32 0, ptr %i.ai, align 4, !tbaa !225
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !225
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !225
  store i32 0, ptr %i.at, align 4, !tbaa !225
  %i.ax = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !33

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bb = shl nuw nsw i64 %i.e, 2
  %i.bc = shl i64 %3, 2
  %i.bd = add i64 %i.bb, %5
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.bc, %i.ae
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bj = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bk = shl i64 %3, 2                           ; 2 uses
  %i.bl = add i64 %i.bj, %5
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.ae
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add nsw i64 %i.bj, -4                   ; 2 uses
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %i.bt = add i64 %i.bk, %i.bp
  %i.bu = sub i64 %i.bq, %i.bt
  %i.bv = getelementptr i8, ptr %i.g, i64 %i.bu
  %bound0 = icmp ult ptr %i.bs, %i.ai
  %bound1 = icmp ult ptr %i.bv, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.h, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ai, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bz ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ai, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !225, !alias.scope !3225
  %wide.load24 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !225, !alias.scope !3225
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !225, !alias.scope !3226, !noalias !3225
  store <4 x i32> %wide.load24, ptr %i.cd, align 4, !tbaa !225, !alias.scope !3226, !noalias !3225
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !225, !alias.scope !3225
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !225, !alias.scope !3225
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !3220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !225
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !225
  store i32 0, ptr %i.cf, align 4, !tbaa !225
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3221

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ci = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  store i32 %i.ck, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !225
  %i.cl = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3222

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.prol ]
  %i.cn = icmp ult i64 %3, 4
  br i1 %i.cn, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %.048.i.i.i.i.i, align 4, !tbaa !225
  %i.cq = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !225
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !67
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !225
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !187 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.da = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !67
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !225
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !187
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3223

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.df, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  %i.dh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dj, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !31

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.do, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dl = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !67
  store i32 %i.dn, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !225
  %i.do = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3224

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dq = icmp ult i64 %i.ag, 4
  br i1 %i.dq, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !67
  store i32 %i.ds, ptr %.048.i.i54.i.i.i, align 4, !tbaa !225
  %i.dt = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !67
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !225
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !67
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !225
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !187 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ed = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !67
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20test_range_insertionINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEbv:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.jk = load ptr, ptr %i.ci, align 8, !tbaa !200 ; 2 uses
  %i.jl = load ptr, ptr %i.ch, align 8, !tbaa !201 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = icmp ult ptr %i.jk, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i.i32, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31

.lr.ph.i.i.i32:                                   ; preds = %bb.cc, %.lr.ph.i.i.i32
  %.06.i.i.i33 = phi ptr [ %i.jp, %.lr.ph.i.i.i32 ], [ %i.jk, %bb.cc ] ; 3 uses
  %i.jo = load ptr, ptr %.06.i.i.i33, align 8, !tbaa !78
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef 512) #26
  %i.jp = getelementptr inbounds nuw i8, ptr %.06.i.i.i33, i64 8
  %i.jq = icmp ult ptr %.06.i.i.i33, %i.jl
  br i1 %i.jq, label %.lr.ph.i.i.i32, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34, !llvm.loop !6

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34: ; preds = %.lr.ph.i.i.i32
  %.pre.i.i35 = load ptr, ptr %1, align 8, !tbaa !199
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34, %bb.cc
  %i.jr = phi ptr [ %.pre.i.i35, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i34 ], [ %i.jj, %bb.cc ]
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !198
  %i.ju = shl i64 %i.jt, 3
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #26
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit36

_ZNSt5dequeIiSaIiEED2Ev.exit36:                   ; preds = %bb.cb, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i31
  %i.jv = icmp eq i32 %i.b, %i.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %i.jv

bb.cd:                                            ; preds = %bb.ar
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %bb.ap
  %.pn21 = phi { ptr, i32 } [ %i.cu, %bb.ap ], [ %.pn.pn.pn.pn, %bb.ca ], [ %i.jw, %bb.cd ]
  call void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !242  ; 8 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %.lr.ph.i.preheader.i.i, label %bb.b

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1                     ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !235
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.g = sub i64 0, %i.d
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %xtraiter5 = and i64 %i.d, 3                    ; 2 uses
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.i, %.lr.ph.i.i.i.prol ], [ %i.d, %.lr.ph.i.preheader.i.i ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %i.h, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter7 = phi i64 [ %prol.iter7.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.i = add i64 %.05.i.i.i.prol, -1              ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !237
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter7.next = add i64 %prol.iter7, 1       ; 2 uses
  %prol.iter7.cmp.not = icmp eq i64 %prol.iter7.next, %xtraiter5
  br i1 %prol.iter7.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3404

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.05.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader.i.i ], [ %i.i, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.preheader.i.i ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %i.m = sub i64 %1, %i.b
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !237
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.q, align 4, !tbaa !237
  %i.r = add i32 %i.o, -2
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.s, align 4, !tbaa !237
  %i.t = add i32 %i.o, -3
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.v = add i64 %.05.i.i.i, -4                   ; 2 uses
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !237
  %i.w = add i32 %i.o, -4
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  store i64 %1, ptr %i.a, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !235
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.b ; 3 uses
  %i.aa = sub nuw i64 %1, %i.b                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !234, !noalias !3408
  %i.ad = sub i64 %i.ac, %i.b
  %.not.i.i = icmp ugt i64 %i.aa, %i.ad
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %.not14.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.016.i.i.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.01315.i.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ae = add i64 %.016.i.i.i.i.i.i.prol, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.prol, align 4, !tbaa !237, !noalias !3408
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3408
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3408
  %i.ah = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3407

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.016.i.i.i.i.i.i.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01315.i.i.i.i.i.i.unr = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ai = sub i64 %i.b, %1
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.01315.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i, align 4, !tbaa !237, !noalias !3408
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3408 ; 4 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3408
  %i.am = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !237, !noalias !3408
  %i.an = add i32 %i.ak, 2
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3408
  %i.ao = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ao, align 4, !tbaa !237, !noalias !3408
  %i.ap = add i32 %i.ak, 3
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3408
  %i.aq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 12
  %i.ar = add i64 %.016.i.i.i.i.i.i, -4           ; 2 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !237, !noalias !3408
  %i.as = add i32 %i.ak, 4
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3408
  %i.at = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !36

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.c
  store i64 %1, ptr %i.a, align 8, !tbaa !233, !noalias !3408
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.z, i64 noundef %i.aa)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i: ; preds = %bb.d, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !278    ; 9 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !278    ; 9 uses
  %4 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !235    ; 2 uses
  %5 = ptrtoaddr ptr %i.c to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !242  ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %.not8.i = icmp eq ptr %i.b, %i.f
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.e, 2
  %i.h = add i64 %i.g, %5
  %i.i = add i64 %i.h, -4
  %i.j = sub i64 %i.i, %4                         ; 2 uses
  %i.k = lshr i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 92
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.m = shl nuw nsw i64 %i.e, 2
  %i.n = add i64 %i.m, %5
  %i.o = add i64 %i.n, -4
  %i.p = sub i64 %i.o, %4
  %i.q = and i64 %i.p, -4
  %i.r = add i64 %i.q, 4                          ; 2 uses
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  %i.t = getelementptr i8, ptr %i.b, i64 %i.r
  %bound0 = icmp ult ptr %i.a, %i.t
  %bound1 = icmp ult ptr %i.b, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u     ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.x ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.b, i64 %i.x ; 3 uses
  %i.y = getelementptr i8, ptr %next.gep13, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !237, !alias.scope !3415
  %wide.load14 = load <4 x i32>, ptr %i.y, align 4, !tbaa !237, !alias.scope !3415
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !237, !alias.scope !3416, !noalias !3415
  store <4 x i32> %wide.load14, ptr %i.z, align 4, !tbaa !237, !alias.scope !3416, !noalias !3415
  store <4 x i32> zeroinitializer, ptr %next.gep13, align 4, !tbaa !237, !alias.scope !3415
  store <4 x i32> zeroinitializer, ptr %i.y, align 4, !tbaa !237, !alias.scope !3415
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !3412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.v, %middle.block ]
  %.079.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader16 ] ; 3 uses
  %i.ab = load i32, ptr %.079.i, align 4, !tbaa !237
  store i32 %i.ab, ptr %.010.i, align 4, !tbaa !237
  store i32 0, ptr %.079.i, align 4, !tbaa !237
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.f
  br i1 %.not.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i, !llvm.loop !3413

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.b
  %.0.lcssa.i = phi ptr [ %i.a, %bb.b ], [ %i.v, %middle.block ], [ %i.ad, %.lr.ph.i ] ; 4 uses
  %i.ae = ptrtoint ptr %i.f to i64
  %i.af = ptrtoint ptr %.0.lcssa.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 5 uses
  %.not3.i = icmp eq ptr %i.f, %.0.lcssa.i
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i8.prol.loopexit, label %.lr.ph.i8.prol

.lr.ph.i8.prol:                                   ; preds = %.lr.ph.i8.preheader, %.lr.ph.i8.prol
  %.05.i.prol = phi i64 [ %i.ai, %.lr.ph.i8.prol ], [ %i.ah, %.lr.ph.i8.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.al, %.lr.ph.i8.prol ], [ %.0.lcssa.i, %.lr.ph.i8.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.prol ], [ 0, %.lr.ph.i8.preheader ]
  %i.ai = add i64 %.05.i.prol, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !237
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.prol.loopexit, label %.lr.ph.i8.prol, !llvm.loop !3414

.lr.ph.i8.prol.loopexit:                          ; preds = %.lr.ph.i8.prol, %.lr.ph.i8.preheader
  %.05.i.unr = phi i64 [ %i.ah, %.lr.ph.i8.preheader ], [ %i.ai, %.lr.ph.i8.prol ]
  %storemerge4.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i8.preheader ], [ %i.al, %.lr.ph.i8.prol ]
  %i.am = icmp ult i64 %i.ah, 4
  br i1 %i.am, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.prol.loopexit, %.lr.ph.i8
  %.05.i = phi i64 [ %i.au, %.lr.ph.i8 ], [ %.05.i.unr, %.lr.ph.i8.prol.loopexit ]
  %storemerge4.i = phi ptr [ %i.aw, %.lr.ph.i8 ], [ %storemerge4.i.unr, %.lr.ph.i8.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !237
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !237
  %i.aq = add i32 %i.an, -2
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !237
  %i.as = add i32 %i.an, -3
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 12
  %i.au = add i64 %.05.i, -4                      ; 2 uses
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !237
  %i.av = add i32 %i.an, -4
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %.not.i9.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i9.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i8, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit: ; preds = %.lr.ph.i8.prol.loopexit, %.lr.ph.i8, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %i.ax = sub i64 %i.e, %i.ah
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !233
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_12vec_iteratorISC_Lb0EEENSF_ISC_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl21is_not_input_iteratorISI_EENSJ_5bool_ILb0EEESR_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !235, !noalias !3425 ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !278    ; 2 uses
  %.not8 = icmp eq ptr %3, %4
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit
  %.sroa.05.010 = phi ptr [ %3, %.lr.ph ], [ %i.as, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit ] ; 6 uses
  %.sroa.01.09 = phi ptr [ %i.b, %.lr.ph ], [ %i.ar, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.e = load i64, ptr %i.c, align 8, !tbaa !234, !noalias !3426
  %i.f = load i64, ptr %i.d, align 8, !tbaa !242, !noalias !3426 ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.f, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !235, !noalias !3426 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.h, %.sroa.01.09
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.i = load i32, ptr %.sroa.05.010, align 4, !tbaa !237, !noalias !3426
  store i32 %i.i, ptr %i.h, align 4, !tbaa !237, !noalias !3426
  store i32 0, ptr %.sroa.05.010, align 4, !tbaa !237, !noalias !3426
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3426
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3426
  %i.l = add i64 %i.f, 1
  store i64 %i.l, ptr %i.d, align 8, !tbaa !242, !noalias !3426
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %.sroa.01.09 to i64
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !237, !noalias !3426
  store i32 %i.r, ptr %i.h, align 4, !tbaa !237, !noalias !3426
  store i32 0, ptr %i.q, align 4, !tbaa !237, !noalias !3426
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3426
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3426
  %i.u = add i64 %i.f, 1
  store i64 %i.u, ptr %i.d, align 8, !tbaa !242, !noalias !3426
  %i.v = add nsw i64 %i.p, -1                     ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.w = add nsw i64 %i.p, -2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.x = add i64 %.0610.i.i.i.i.prol, -1          ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !237, !noalias !3426
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !237, !noalias !3426
  store i32 0, ptr %i.y, align 4, !tbaa !237, !noalias !3426
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_:bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef 1, ptr nonnull %3)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !234  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !233  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !235    ; 9 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !242  ; 8 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !237
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !237
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !39

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.aa, ptr %.015.lcssa.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %4, align 4, !tbaa !237
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !237
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !237
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !39

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3791

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !237
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !237
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !237
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !234
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bb) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.bc = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.s to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.r, ptr %1, align 8, !tbaa !235
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !233
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !279    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !242  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !235    ; 7 uses
  %5 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.j, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %4, align 4, !tbaa !237
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !237
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !237
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !237
  store i32 %i.v, ptr %i.u, align 4, !tbaa !237
  store i32 0, ptr %i.t, align 4, !tbaa !237
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !42

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i64 0, %3
  %i.af = getelementptr [4 x i8], ptr %i.h, i64 %i.ae ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ag = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !237
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %i.af, align 4, !tbaa !237
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !237
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !237
  store i32 0, ptr %i.aq, align 4, !tbaa !237
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.ay = shl nuw nsw i64 %i.e, 2
  %i.az = shl i64 %3, 2
  %i.ba = add i64 %i.ay, %5
  %i.bb = add i64 %i.ba, -4
  %i.bc = add i64 %i.az, %i.ab
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bg = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bh = shl i64 %3, 2                           ; 2 uses
  %i.bi = add i64 %i.bg, %5
  %i.bj = add i64 %i.bi, -4
  %i.bk = add i64 %i.bh, %i.ab
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = add nsw i64 %i.bg, -4                   ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr i8, ptr %i.g, i64 %i.bo
  %i.bq = add i64 %i.bh, %i.bm
  %i.br = sub i64 %i.bn, %i.bq
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %bound0 = icmp ult ptr %i.bp, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !237, !alias.scope !3809
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !237, !alias.scope !3809
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !237, !alias.scope !3810, !noalias !3809
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !237, !alias.scope !3810, !noalias !3809
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !237, !alias.scope !3809
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !237, !alias.scope !3809
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !3795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !237
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !237
  store i32 0, ptr %i.cc, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3796

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  %bound034 = icmp ult ptr %i.a, %i.ch
  %bound135 = icmp ult ptr %4, %i.cg
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.ci = and i64 %3, 7
  %i.cj = shl i64 %n.vec38, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.cj
  %i.cl = getelementptr i8, ptr %4, i64 %i.cj
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cm = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !237, !alias.scope !3811
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !237, !alias.scope !3811
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !237, !alias.scope !3812, !noalias !3811
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !237, !alias.scope !3812, !noalias !3811
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !237, !alias.scope !3811
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !237, !alias.scope !3811
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !3800

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ck, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %i.cq = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !237
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3801

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !237
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !237
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !237
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !237
  store i32 0, ptr %i.cx, align 4, !tbaa !237
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !237
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !237
  store i32 0, ptr %i.da, align 4, !tbaa !237
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !237
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !237
  store i32 0, ptr %i.dd, align 4, !tbaa !237
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3802

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !39

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m:bb.a

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.05.i.i.i.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.prol ]
  %i.cf = icmp ult i64 %i.ax, 4
  br i1 %i.cf, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !237
  %i.cg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !237
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !237
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.cn = add i64 %.05.i.i.i, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !237
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old6.i = icmp eq ptr %.old.i, %i.aw
  br i1 %.old6.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !234
  %i.cr = shl i64 %i.cq, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cr) #22
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %bb.k
  %i.cs = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i ], [ %.pre.i.i, %bb.k ], [ %i.ax, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i ], [ %i.ax, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i ]
  store ptr %i.av, ptr %0, align 8, !tbaa !235
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !233
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.sink = phi i64 [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.e, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ], [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29 ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !242  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !234
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !235, !nonnull !76, !noundef !76
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.g, ptr %i.f, align 4, !tbaa !237
  store i32 0, ptr %1, align 4, !tbaa !237
  %i.h = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !242
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = load ptr, ptr %0, align 8, !tbaa !235
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb0EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !279    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !279    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !234  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !235    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !242  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter132 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3819

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !237
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !237
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !237
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !242
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !235
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !279   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !279   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check87, label %.lr.ph.i.i13.preheader111, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %i.ar = getelementptr i8, ptr %i.k, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ar, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.k, %i.as
  %bound190 = icmp ult ptr %i.ah, %i.ar
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ugt ptr %i.as, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound193 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph.i.i13.preheader111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec97 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec97, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.k, i64 %i.at   ; 2 uses
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next105, %vector.body98 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph96 ], [ %i.ba, %vector.body98 ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph96 ], [ %i.bb, %vector.body98 ]
  %i.ax = shl i64 %index99, 2                     ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.k, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load103 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !237, !alias.scope !3837
  %wide.load104 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !237, !alias.scope !3837
  %i.az = getelementptr i8, ptr %next.gep102, i64 16
  store <4 x i32> %wide.load103, ptr %next.gep102, align 4, !tbaa !237, !alias.scope !3838, !noalias !3839
  store <4 x i32> %wide.load104, ptr %i.az, align 4, !tbaa !237, !alias.scope !3838, !noalias !3839
  %i.ba = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bb = add <4 x i32> %vec.phi100, splat (i32 1) ; 2 uses
  %index.next105 = add nuw i64 %index99, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next105, %n.vec97
  br i1 %i.bc, label %middle.block106, label %vector.body98, !llvm.loop !3824

middle.block106:                                  ; preds = %vector.body98
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !alias.scope !3840, !noalias !3837
  %cmp.n107 = icmp eq i64 %i.ao, %n.vec97
  br i1 %cmp.n107, label %.loopexit, label %.lr.ph.i.i13.preheader111

.lr.ph.i.i13.preheader111:                        ; preds = %vector.memcheck88, %.lr.ph.i.i13.preheader, %middle.block106
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck88 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bd, %middle.block106 ]
  %.ph112 = phi ptr [ %i.ah, %vector.memcheck88 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block106 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck88 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.av, %middle.block106 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader111, %.lr.ph.i.i13
  %i.be = phi i32 [ %i.bh, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader111 ]
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.ph112, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bj, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !237
  store i32 %i.bg, ptr %.011.i.i, align 4, !tbaa !237
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !3825

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block106, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.av, %middle.block106 ], [ %i.bj, %.lr.ph.i.i13 ]
  %i.bk = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bl = ptrtoint ptr %i.k to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !233
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !235   ; 9 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !242 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.f
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.br, 8
  %i.bt = sub i64 %i.d, %i.bp
  %diff.check60 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check60
  br i1 %or.cond, label %.lr.ph.i.i19.preheader115, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec64 = and i64 %i.br, -8                    ; 3 uses
  %i.bu = shl i64 %n.vec64, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bu  ; 2 uses
  %i.bx = and i64 %i.br, 7
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.by = shl i64 %index66, 2                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.a, i64 %i.by ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !237, !noalias !3841
  %wide.load70 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !237, !noalias !3841
  %i.ca = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load69, ptr %next.gep68, align 4, !tbaa !237, !noalias !3841
  store <4 x i32> %wide.load70, ptr %i.ca, align 4, !tbaa !237, !noalias !3841
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.cb, label %middle.block72, label %vector.body65, !llvm.loop !3828

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.br, %n.vec64
  br i1 %cmp.n73, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader115

.lr.ph.i.i19.preheader115:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block72
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block72 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block72 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block72 ] ; 4 uses
  %i.cc = add i64 %.04.i.i.ph, -1
  %xtraiter125 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader115, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ]
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader115 ]
  %i.cd = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.ce = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !237, !noalias !3841
  store i32 %i.ce, ptr %.0.i.prol, align 4, !tbaa !237, !noalias !3841
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !3829

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader115
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cd, %.lr.ph.i.i19.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.dg, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dd, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ci = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !237, !noalias !3841
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !237, !noalias !3841
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !237, !noalias !3841
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !237, !noalias !3841
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !237, !noalias !3841
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !237, !noalias !3841
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !237, !noalias !3841
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !237, !noalias !3841
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !237, !noalias !3841
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !237, !noalias !3841
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !237, !noalias !3841
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !237, !noalias !3841
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !237, !noalias !3841
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !237, !noalias !3841
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dd = add i64 %.04.i.i, -8                    ; 2 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !237, !noalias !3841
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !237, !noalias !3841
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.sroa.16.1126 = phi ptr [ %.sroa.16.5, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49 ], [ %spec.select, %.lr.ph129.preheader ] ; 3 uses
  %.sroa.058.1125 = phi ptr [ %.sroa.058.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49 ], [ %.sroa.058.0.lcssa, %.lr.ph129.preheader ] ; 5 uses
  %i.br = trunc i64 %.0128 to i32                 ; 3 uses
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bs = load ptr, ptr %2, align 8, !tbaa !235, !nonnull !76, !noundef !76
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !242 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !237
  %i.bv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bx = add i64 %i.bt, 1
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !242
  %.not.i.i40 = icmp eq ptr %.sroa.16.1126, %.sroa.29.1127
  br i1 %.not.i.i40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph129
  store i32 %i.br, ptr %.sroa.16.1126, align 4, !tbaa !67
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49

bb.j:                                             ; preds = %.lr.ph129
  %i.by = ptrtoint ptr %.sroa.29.1127 to i64
  %i.bz = ptrtoint ptr %.sroa.058.1125 to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41: ; preds = %bb.j
  %i.cc = ashr exact i64 %i.ca, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i42, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 2305843009213693951)
  %i.cg = select i1 %i.ce, i64 2305843009213693951, i64 %i.cf ; 3 uses
  %.not.i.i.i.i43 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43)
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #24
          to label %.noexc48 unwind label %.loopexit ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store i32 %i.br, ptr %i.cj, align 4, !tbaa !67
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.l, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46

bb.l:                                             ; preds = %.noexc48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr align 4 %.sroa.058.1125, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46: ; preds = %bb.l, %.noexc48
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.1125, i64 noundef %i.ca) #26
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49

_ZNSt6vectorIiSaIiEE9push_backEOi.exit49:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46, %bb.i
  %.sroa.058.6 = phi ptr [ %i.ci, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46 ], [ %.sroa.058.1125, %bb.i ] ; 6 uses
  %.pn = phi ptr [ %i.cj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46 ], [ %.sroa.16.1126, %bb.i ]
  %.sroa.29.6 = phi ptr [ %i.cl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46 ], [ %.sroa.29.1127, %bb.i ] ; 4 uses
  %.sroa.16.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.co = add nuw i64 %.0128, 1                   ; 2 uses
  %exitcond146.not = icmp eq i64 %i.co, %i.be
  br i1 %exitcond146.not, label %._crit_edge130, label %.lr.ph129, !llvm.loop !3877

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  br label %.thread88

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.lr.ph.i, %.lr.ph.i35, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit, %._crit_edge130, %bb.h, %._crit_edge
  %.sroa.058.2 = phi ptr [ %.sroa.058.0.lcssa, %._crit_edge ], [ %.sroa.058.6, %.lr.ph.i35 ], [ %.sroa.058.6, %bb.h ], [ %.sroa.058.6, %._crit_edge130 ], [ %.sroa.058.0.lcssa, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit ], [ %.sroa.058.0.lcssa, %.lr.ph.i ] ; 2 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.0.lcssa, %._crit_edge ], [ %.sroa.29.6, %.lr.ph.i35 ], [ %.sroa.29.6, %bb.h ], [ %.sroa.29.6, %._crit_edge130 ], [ %.sroa.29.0.lcssa, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit ], [ %.sroa.29.0.lcssa, %.lr.ph.i ]
  %.017 = phi i1 [ false, %._crit_edge ], [ %i.bn, %.lr.ph.i35 ], [ true, %bb.h ], [ false, %._crit_edge130 ], [ true, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit ], [ false, %.lr.ph.i ]
  %i.cr = ptrtoint ptr %.sroa.29.2 to i64
  %i.cs = ptrtoint ptr %.sroa.058.2 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.2, i64 noundef %i.ct) #26
  %.pre148 = load i64, ptr %i.b, align 8, !tbaa !242 ; 5 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !235   ; 4 uses
  %.not3.i.i = icmp eq i64 %.pre148, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %xtraiter209 = and i64 %.pre148, 3              ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i.i.prol ], [ %.pre148, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.prol ], [ %i.cu, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter211 = phi i64 [ %prol.iter211.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cv = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cx = add i32 %i.cw, -1
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter211.next = add i64 %prol.iter211, 1   ; 2 uses
  %prol.iter211.cmp.not = icmp eq i64 %prol.iter211.next, %xtraiter209
  br i1 %prol.iter211.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3878

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %.pre148, %.lr.ph.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.cu, %.lr.ph.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.prol ]
  %i.cz = icmp ult i64 %.pre148, 4
  br i1 %i.cz, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dh, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dc, align 4, !tbaa !237
  %i.dd = add i32 %i.da, -2
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.de, align 4, !tbaa !237
  %i.df = add i32 %i.da, -3
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.dh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dg, align 4, !tbaa !237
  %i.di = add i32 %i.da, -4
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !234 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.dk, 0
  %i.dl = icmp eq ptr %i.a, %i.cu
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dm = shl i64 %i.dk, 2
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.dm) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.017

.thread88:                                        ; preds = %bb.m, %.loopexit.split-lp99, %.loopexit98
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %bb.m ], [ %.sroa.058.0119, %.loopexit98 ], [ %.sroa.058.0119, %.loopexit.split-lp99 ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %bb.m ], [ %.sroa.29.0121, %.loopexit98 ], [ %.sroa.29.0121, %.loopexit.split-lp99 ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.phi, %bb.m ], [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  %i.dn = ptrtoint ptr %.sroa.29.3 to i64
  %i.do = ptrtoint ptr %.sroa.058.3 to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.x, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !279    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !242  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !235    ; 5 uses
  %5 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 16 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.j = add i64 %3, -1
  %xtraiter57 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.k = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.l = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.l, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !237
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3881

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp ult i64 %i.j, 3
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.q = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.q, ptr %.01416.i.i.i.i, align 4, !tbaa !237
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.u = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.u, ptr %i.t, align 4, !tbaa !237
  %i.v = add i32 %i.r, 2
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.x = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.x, ptr %i.w, align 4, !tbaa !237
  %i.y = add i32 %i.r, 3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.aa = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !237
  %i.ac = add i32 %i.r, 4
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3882

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.h to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.h, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !237
  store i32 %i.al, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %i.aj, align 4, !tbaa !237
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !237
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !237
  store i32 0, ptr %i.au, align 4, !tbaa !237
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bc = shl nuw nsw i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %5
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %5
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add nsw i64 %i.bk, -4                   ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.h, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3893
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3893
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !237, !alias.scope !3894, !noalias !3893
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !237, !alias.scope !3894, !noalias !3893
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3893
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3893
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3886

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !237
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !237
  store i32 0, ptr %i.cg, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3887

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !237 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec29, 2
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cm = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4, !tbaa !237
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.co = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.co, label %middle.block34, label %vector.body30, !llvm.loop !3888

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.cj, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.cl, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cp, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cq, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cp = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !237
  %i.cq = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !3889

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i50.i.i.i ], [ %i.cr, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cs = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !237
  store i32 %i.cs, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !237
  %i.ct = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cv, %i.h
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !39

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !237 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ah, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ah, -8                    ; 3 uses
  %i.cx = and i64 %i.ah, 7
  %i.cy = shl nsw i64 %n.vec41, 2
  %i.cz = getelementptr i8, ptr %i.a, i64 %i.cy
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.da = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat43, ptr %i.db, align 4, !tbaa !237
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.dc = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.dc, label %middle.block48, label %vector.body44, !llvm.loop !3890

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ah, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ah, %.lr.ph.i53.i.i.i ], [ %i.cx, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.cz, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.dd, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.de, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.dd = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !237
  %i.de = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !3891

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.df = sub i64 %3, %i.ah                       ; 3 uses
  %xtraiter55 = and i64 %i.df, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %i.df, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %i.dg = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.dh = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.dh, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !237
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !237
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !39

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3923

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !237
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !237
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !237
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !234
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bb) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.bc = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.s to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.r, ptr %1, align 8, !tbaa !235
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !233
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !279    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !279    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !234  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !235    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !242  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter132 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3924

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !237
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !237
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !237
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !242
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !235
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !279   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !279   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check87, label %.lr.ph.i.i13.preheader111, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %i.ar = getelementptr i8, ptr %i.k, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ar, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.k, %i.as
  %bound190 = icmp ult ptr %i.ah, %i.ar
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ugt ptr %i.as, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound193 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph.i.i13.preheader111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec97 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec97, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.k, i64 %i.at   ; 2 uses
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next105, %vector.body98 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph96 ], [ %i.ba, %vector.body98 ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph96 ], [ %i.bb, %vector.body98 ]
  %i.ax = shl i64 %index99, 2                     ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.k, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load103 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !237, !alias.scope !3942
  %wide.load104 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !237, !alias.scope !3942
  %i.az = getelementptr i8, ptr %next.gep102, i64 16
  store <4 x i32> %wide.load103, ptr %next.gep102, align 4, !tbaa !237, !alias.scope !3943, !noalias !3944
  store <4 x i32> %wide.load104, ptr %i.az, align 4, !tbaa !237, !alias.scope !3943, !noalias !3944
  %i.ba = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bb = add <4 x i32> %vec.phi100, splat (i32 1) ; 2 uses
  %index.next105 = add nuw i64 %index99, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next105, %n.vec97
  br i1 %i.bc, label %middle.block106, label %vector.body98, !llvm.loop !3929

middle.block106:                                  ; preds = %vector.body98
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !alias.scope !3945, !noalias !3942
  %cmp.n107 = icmp eq i64 %i.ao, %n.vec97
  br i1 %cmp.n107, label %.loopexit, label %.lr.ph.i.i13.preheader111

.lr.ph.i.i13.preheader111:                        ; preds = %vector.memcheck88, %.lr.ph.i.i13.preheader, %middle.block106
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck88 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bd, %middle.block106 ]
  %.ph112 = phi ptr [ %i.ah, %vector.memcheck88 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block106 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck88 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.av, %middle.block106 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader111, %.lr.ph.i.i13
  %i.be = phi i32 [ %i.bh, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader111 ]
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.ph112, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bj, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !237
  store i32 %i.bg, ptr %.011.i.i, align 4, !tbaa !237
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !3930

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block106, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.av, %middle.block106 ], [ %i.bj, %.lr.ph.i.i13 ]
  %i.bk = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bl = ptrtoint ptr %i.k to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !233
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !235   ; 9 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !242 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.f
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.br, 8
  %i.bt = sub i64 %i.d, %i.bp
  %diff.check60 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check60
  br i1 %or.cond, label %.lr.ph.i.i19.preheader115, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec64 = and i64 %i.br, -8                    ; 3 uses
  %i.bu = shl i64 %n.vec64, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bu  ; 2 uses
  %i.bx = and i64 %i.br, 7
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.by = shl i64 %index66, 2                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.a, i64 %i.by ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !237, !noalias !3946
  %wide.load70 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !237, !noalias !3946
  %i.ca = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load69, ptr %next.gep68, align 4, !tbaa !237, !noalias !3946
  store <4 x i32> %wide.load70, ptr %i.ca, align 4, !tbaa !237, !noalias !3946
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.cb, label %middle.block72, label %vector.body65, !llvm.loop !3933

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.br, %n.vec64
  br i1 %cmp.n73, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader115

.lr.ph.i.i19.preheader115:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block72
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block72 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block72 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block72 ] ; 4 uses
  %i.cc = add i64 %.04.i.i.ph, -1
  %xtraiter125 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader115, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ]
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader115 ]
  %i.cd = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.ce = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !237, !noalias !3946
  store i32 %i.ce, ptr %.0.i.prol, align 4, !tbaa !237, !noalias !3946
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !3934

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader115
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cd, %.lr.ph.i.i19.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.dg, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dd, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ci = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !237, !noalias !3946
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !237, !noalias !3946
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !237, !noalias !3946
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !237, !noalias !3946
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !237, !noalias !3946
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !237, !noalias !3946
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !237, !noalias !3946
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !237, !noalias !3946
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !237, !noalias !3946
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !237, !noalias !3946
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !237, !noalias !3946
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !237, !noalias !3946
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !237, !noalias !3946
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !237, !noalias !3946
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dd = add i64 %.04.i.i, -8                    ; 2 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !237, !noalias !3946
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !237, !noalias !3946
end_hunk_7
begin_hunk_8_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE:bb.a
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.dx = add i64 %.020.i.i, -4                   ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !237
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !237
  %i.dz = add i32 %i.dl, 4
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i15.i.3 = icmp eq i64 %i.dx, 0
  br i1 %.not.i15.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i, !llvm.loop !3976

bb.i:                                             ; preds = %bb.g
  %.not8.i.i = icmp eq ptr %2, %1
  br i1 %.not8.i.i, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.ec = sub i64 %i.b, %i.bh
  %diff.check = icmp ugt i64 %i.ec, -32
  %or.cond93 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond93, label %.lr.ph.i17.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  %i.ed = shl nsw i64 %n.vec, 2                   ; 2 uses
  %i.ee = getelementptr i8, ptr %i.bg, i64 %i.ed  ; 2 uses
  %i.ef = and i64 %i.d, 7
  %i.eg = getelementptr i8, ptr %1, i64 %i.ed
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.eh ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !237
  %wide.load54 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !237
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !237
  store <4 x i32> %wide.load54, ptr %i.ej, align 4, !tbaa !237
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !3977

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i.preheader102

.lr.ph.i17.i.preheader102:                        ; preds = %.lr.ph.i17.i.preheader, %middle.block
  %.011.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i17.i.preheader ], [ %i.ee, %middle.block ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.d, %.lr.ph.i17.i.preheader ], [ %i.ef, %middle.block ] ; 4 uses
  %.079.i.i.ph = phi ptr [ %1, %.lr.ph.i17.i.preheader ], [ %i.eg, %middle.block ] ; 2 uses
  %i.el = add nsw i64 %.0610.i.i.ph, -1
  %xtraiter = and i64 %.0610.i.i.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol

.lr.ph.i17.i.prol:                                ; preds = %.lr.ph.i17.i.preheader102, %.lr.ph.i17.i.prol
  %.011.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i17.i.prol ], [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.em, %.lr.ph.i17.i.prol ], [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ]
  %.079.i.i.prol = phi ptr [ %i.eo, %.lr.ph.i17.i.prol ], [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.prol ], [ 0, %.lr.ph.i17.i.preheader102 ]
  %i.em = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.en = load i32, ptr %.079.i.i.prol, align 4, !tbaa !237
  store i32 %i.en, ptr %.011.i.i.prol, align 4, !tbaa !237
  %i.eo = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol, !llvm.loop !3978

.lr.ph.i17.i.prol.loopexit:                       ; preds = %.lr.ph.i17.i.prol, %.lr.ph.i17.i.preheader102
  %.lcssa103.unr = phi ptr [ poison, %.lr.ph.i17.i.preheader102 ], [ %i.ep, %.lr.ph.i17.i.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.ep, %.lr.ph.i17.i.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.em, %.lr.ph.i17.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.eo, %.lr.ph.i17.i.prol ]
  %i.eq = icmp ult i64 %i.el, 7
  br i1 %i.eq, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i
  %.011.i.i = phi ptr [ %i.fp, %.lr.ph.i17.i ], [ %.011.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.fm, %.lr.ph.i17.i ], [ %.0610.i.i.unr, %.lr.ph.i17.i.prol.loopexit ]
  %.079.i.i = phi ptr [ %i.fo, %.lr.ph.i17.i ], [ %.079.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %i.er = load i32, ptr %.079.i.i, align 4, !tbaa !237
  store i32 %i.er, ptr %.011.i.i, align 4, !tbaa !237
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !237
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !237
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !237
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !237
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !237
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !237
  %i.fb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !237
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !237
  %i.fe = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !237
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !237
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !237
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !237
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28
  %i.fl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.fm = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !237
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !237
  %i.fo = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i18.i.7 = icmp eq i64 %i.fm, 0
  br i1 %.not.i18.i.7, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i, !llvm.loop !3979

_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i: ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i, %middle.block, %bb.i
  %.0.lcssa.i20.i = phi ptr [ %i.bg, %bb.i ], [ %i.ee, %middle.block ], [ %.lcssa103.unr, %.lr.ph.i17.i.prol.loopexit ], [ %i.fp, %.lr.ph.i17.i ] ; 2 uses
  %i.fq = sub nuw i64 %i.bj, %i.d                 ; 4 uses
  %.not3.i.i20 = icmp eq i64 %i.fq, 0
  br i1 %.not3.i.i20, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  %xtraiter104 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i21.prol = phi i64 [ %i.fr, %.lr.ph.i21.i.prol ], [ %i.fq, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i22.prol = phi ptr [ %i.fu, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fr = add i64 %.05.i.i21.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i22.prol, align 4, !tbaa !237
  %i.fs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !3980

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fq, %.lr.ph.i21.i.preheader ], [ %i.fr, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %i.fv = sub i64 %i.d, %i.bj
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.ge, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.gg, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !237
  %i.fx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !237
  %i.ga = add i32 %i.fx, -2
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !237
  %i.gc = add i32 %i.fx, -3
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.ge = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !237
  %i.gf = add i32 %i.fx, -4
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !24

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bi, align 8, !tbaa !233
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !279    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !242  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !235    ; 7 uses
  %5 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  store i32 %i.k, ptr %i.h, align 4, !tbaa !237
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.n = load ptr, ptr %4, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  store i32 %i.s, ptr %.01417.i.i.i.i, align 4, !tbaa !237
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  store i32 %i.y, ptr %i.w, align 4, !tbaa !237
  %i.z = add i32 %i.t, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !43

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.h to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.h, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !237
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %i.ai, align 4, !tbaa !237
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !237
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !237
  store i32 0, ptr %i.at, align 4, !tbaa !237
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bb = shl nuw nsw i64 %i.e, 2
  %i.bc = shl i64 %3, 2
  %i.bd = add i64 %i.bb, %5
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.bc, %i.ae
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bj = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bk = shl i64 %3, 2                           ; 2 uses
  %i.bl = add i64 %i.bj, %5
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.ae
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add nsw i64 %i.bj, -4                   ; 2 uses
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %i.bt = add i64 %i.bk, %i.bp
  %i.bu = sub i64 %i.bq, %i.bt
  %i.bv = getelementptr i8, ptr %i.g, i64 %i.bu
  %bound0 = icmp ult ptr %i.bs, %i.ai
  %bound1 = icmp ult ptr %i.bv, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.h, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ai, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bz ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ai, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !237, !alias.scope !3991
  %wide.load24 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3991
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3992, !noalias !3991
  store <4 x i32> %wide.load24, ptr %i.cd, align 4, !tbaa !237, !alias.scope !3992, !noalias !3991
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !237, !alias.scope !3991
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3991
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !3986

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !237
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !237
  store i32 0, ptr %i.cf, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3987

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ci = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  store i32 %i.ck, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.cl = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3988

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.prol ]
  %i.cn = icmp ult i64 %3, 4
  br i1 %i.cn, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %.048.i.i.i.i.i, align 4, !tbaa !237
  %i.cq = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !237
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !67
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !237
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !187 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.da = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !67
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !237
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !187
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3989

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.df, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dj, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !39

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.do, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dl = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !67
  store i32 %i.dn, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !237
  %i.do = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3990

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dq = icmp ult i64 %i.ag, 4
  br i1 %i.dq, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !67
  store i32 %i.ds, ptr %.048.i.i54.i.i.i, align 4, !tbaa !237
  %i.dt = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !67
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !237
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !67
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !237
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !187 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ed = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !67
end_hunk_8
begin_hunk_9_@_ZN5boost9container4test17test_insert_rangeINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  %i.dl = load i32, ptr %i.cf, align 4, !tbaa !67, !noalias !4494
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !249, !noalias !4494
  %i.dm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4494
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4494
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ch
  br i1 %i.dp, label %bb.l, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.prol
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !78, !noalias !4494 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol: ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.11.1.i.i.i.i.i.prol = phi ptr [ %i.dq, %bb.l ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dt = phi ptr [ %i.ds, %bb.l ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.du = phi ptr [ %i.dr, %bb.l ], [ %i.do, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dw = add nsw i64 %i.dc, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.11.0.i.i.i.i.i.unr = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.11.1.i.i.i.i.i.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dt, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol ]
  %.unr68 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.du, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.unr = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dv, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.prol ]
  %i.dx = icmp eq i64 %i.dk, 1
  br i1 %i.dx, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1
  %.sroa.11.0.i.i.i.i.i = phi ptr [ %.sroa.11.1.i.i.i.i.i.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.11.0.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.dy = phi ptr [ %i.et, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.dz = phi ptr [ %i.eu, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1 ], [ %.unr68, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.ew, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1 ], [ %.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.ev, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1 ], [ %.01214.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !67, !noalias !4494
  store i32 %i.ea, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !249, !noalias !4494
  %i.eb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4494
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4494
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dy
  br i1 %i.ee, label %bb.m, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i.i.i.i, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !78, !noalias !4494 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i
  %.sroa.11.1.i.i.i.i.i = phi ptr [ %i.ef, %bb.m ], [ %.sroa.11.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ei = phi ptr [ %i.eh, %bb.m ], [ %i.dy, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ej = phi ptr [ %i.eg, %bb.m ], [ %i.ed, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !67, !noalias !4494
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !249, !noalias !4494
  %i.em = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4494
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4494
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ei
  br i1 %i.ep, label %bb.n, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1

bb.n:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i.i.i, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !78, !noalias !4494 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1: ; preds = %bb.n, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i
  %.sroa.11.1.i.i.i.i.i.1 = phi ptr [ %i.eq, %bb.n ], [ %.sroa.11.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i ]
  %i.et = phi ptr [ %i.es, %bb.n ], [ %i.ei, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i ]
  %i.eu = phi ptr [ %i.er, %bb.n ], [ %i.eo, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.ew = add i64 %.015.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !48

bb.o:                                             ; preds = %bb.j
  br i1 %.not13.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.p, !prof !74

bb.p:                                             ; preds = %bb.o
  store ptr %i.cf, ptr %4, align 8, !tbaa !209, !noalias !4493
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cg, ptr %i.ex, align 8, !tbaa !210, !noalias !4493
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ch, ptr %i.ey, align 8, !tbaa !206, !noalias !4493
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ci, ptr %i.ez, align 8, !tbaa !207, !noalias !4493
  call void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SO_mSJ_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ce, ptr noundef %i.dh, i64 noundef %i.dc, ptr noundef nonnull align 8 dead_on_return %4), !noalias !4493
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !245, !noalias !4493
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1, %bb.p, %bb.o, %bb.k
  %i.fa = phi i64 [ %.pre.i.i.i, %bb.p ], [ %3, %bb.k ], [ %i.df, %bb.o ], [ %3, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.i.i.1 ], [ %3, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !4493
  %i.fb = add i64 %i.fa, %i.dc                    ; 2 uses
  store i64 %i.fb, ptr %i.ad, align 8, !tbaa !245, !noalias !4493
  store ptr %i.ce, ptr %9, align 8, !tbaa !289, !alias.scope !4493
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertISt15_Deque_iteratorIiRKiPSB_EEENS0_12vec_iteratorIPS3_Lb0EEENSF_ISG_Lb1EEET_SJ_PNS_11move_detail13disable_if_orIvNSK_14is_convertibleISJ_mEENS0_3dtl17is_input_iteratorISJ_Xsr21has_iterator_categoryISJ_EE5valueEEENSK_5bool_ILb0EEESS_E4typeE.exit

bb.q:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit
  store ptr %i.cf, ptr %5, align 8, !tbaa !209, !noalias !4493
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cg, ptr %i.fc, align 8, !tbaa !210, !noalias !4493
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ch, ptr %i.fd, align 8, !tbaa !206, !noalias !4493
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ci, ptr %i.fe, align 8, !tbaa !207, !noalias !4493
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEENS0_12vec_iteratorIPS3_Lb0EEESJ_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.140") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ce, i64 noundef %i.dc, ptr noundef nonnull align 8 dead_on_return %5)
  %.pre55 = load i64, ptr %i.ad, align 8, !tbaa !254
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertISt15_Deque_iteratorIiRKiPSB_EEENS0_12vec_iteratorIPS3_Lb0EEENSF_ISG_Lb1EEET_SJ_PNS_11move_detail13disable_if_orIvNSK_14is_convertibleISJ_mEENS0_3dtl17is_input_iteratorISJ_Xsr21has_iterator_categoryISJ_EE5valueEEENSK_5bool_ILb0EEESS_E4typeE.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertISt15_Deque_iteratorIiRKiPSB_EEENS0_12vec_iteratorIPS3_Lb0EEENSF_ISG_Lb1EEET_SJ_PNS_11move_detail13disable_if_orIvNSK_14is_convertibleISJ_mEENS0_3dtl17is_input_iteratorISJ_Xsr21has_iterator_categoryISJ_EE5valueEEENSK_5bool_ILb0EEESS_E4typeE.exit: ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.q
  %i.ff = phi i64 [ %i.fb, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre55, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !4491
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !194 ; 2 uses
  %i.fh = load ptr, ptr %i.e, align 8, !tbaa !194 ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = icmp ne ptr %i.fg, null
  %.neg.i.i.i13 = sext i1 %i.fm to i64
  %i.fn = add nsw i64 %i.fl, %.neg.i.i.i13
  %i.fo = shl nsw i64 %i.fn, 7
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !195 ; 3 uses
  %i.fq = load ptr, ptr %i.o, align 8, !tbaa !196
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 2
  %i.fv = add nsw i64 %i.fo, %i.fu
  %i.fw = load ptr, ptr %i.v, align 8, !tbaa !197 ; 2 uses
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !195 ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 2
  %i.gc = add nsw i64 %i.fv, %i.gb
  %.not.i14 = icmp eq i64 %i.gc, %i.ff
  br i1 %.not.i14, label %bb.r, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit28

bb.r:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertISt15_Deque_iteratorIiRKiPSB_EEENS0_12vec_iteratorIPS3_Lb0EEENSF_ISG_Lb1EEET_SJ_PNS_11move_detail13disable_if_orIvNSK_14is_convertibleISJ_mEENS0_3dtl17is_input_iteratorISJ_Xsr21has_iterator_categoryISJ_EE5valueEEENSK_5bool_ILb0EEESS_E4typeE.exit
  %.not3233.i16 = icmp eq ptr %i.fx, %i.fp
  br i1 %.not3233.i16, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit28, label %.lr.ph.preheader.i17

.lr.ph.preheader.i17:                             ; preds = %bb.r
  %i.gd = load ptr, ptr %1, align 8, !tbaa !247, !noalias !4495
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23, %.lr.ph.preheader.i17
  %.sroa.16.037.i19 = phi ptr [ %.sroa.16.1.i26, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23 ], [ %i.fh, %.lr.ph.preheader.i17 ] ; 2 uses
  %.sroa.12.036.i20 = phi ptr [ %.sroa.12.1.i25, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23 ], [ %i.fw, %.lr.ph.preheader.i17 ] ; 2 uses
  %.sroa.025.035.i21 = phi ptr [ %.sroa.025.1.i24, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23 ], [ %i.fx, %.lr.ph.preheader.i17 ] ; 2 uses
  %.sroa.019.034.i22 = phi ptr [ %i.gm, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23 ], [ %i.gd, %.lr.ph.preheader.i17 ] ; 2 uses
  %i.ge = load i32, ptr %.sroa.025.035.i21, align 4, !tbaa !67
  %i.gf = load i32, ptr %.sroa.019.034.i22, align 4, !tbaa !249
  %i.gg = icmp eq i32 %i.ge, %i.gf                ; 3 uses
  br i1 %i.gg, label %bb.s, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit28

bb.s:                                             ; preds = %.lr.ph.i18
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i21, i64 4 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %.sroa.12.036.i20
  br i1 %i.gi, label %bb.t, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23

bb.t:                                             ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i19, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !78 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23:    ; preds = %bb.t, %bb.s
  %.sroa.025.1.i24 = phi ptr [ %i.gk, %bb.t ], [ %i.gh, %bb.s ] ; 2 uses
  %.sroa.12.1.i25 = phi ptr [ %i.gl, %bb.t ], [ %.sroa.12.036.i20, %bb.s ]
  %.sroa.16.1.i26 = phi ptr [ %i.gj, %bb.t ], [ %.sroa.16.037.i19, %bb.s ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i22, i64 4
  %.not32.i27 = icmp eq ptr %.sroa.025.1.i24, %i.fp
  br i1 %.not32.i27, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit28, label %.lr.ph.i18, !llvm.loop !4453

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit28: ; preds = %.lr.ph.i18, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertISt15_Deque_iteratorIiRKiPSB_EEENS0_12vec_iteratorIPS3_Lb0EEENSF_ISG_Lb1EEET_SJ_PNS_11move_detail13disable_if_orIvNSK_14is_convertibleISJ_mEENS0_3dtl17is_input_iteratorISJ_Xsr21has_iterator_categoryISJ_EE5valueEEENSK_5bool_ILb0EEESS_E4typeE.exit, %bb.r
  %.2.i15 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertISt15_Deque_iteratorIiRKiPSB_EEENS0_12vec_iteratorIPS3_Lb0EEENSF_ISG_Lb1EEET_SJ_PNS_11move_detail13disable_if_orIvNSK_14is_convertibleISJ_mEENS0_3dtl17is_input_iteratorISJ_Xsr21has_iterator_categoryISJ_EE5valueEEENSK_5bool_ILb0EEESS_E4typeE.exit ], [ true, %bb.r ], [ %i.gg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i23 ], [ %i.gg, %.lr.ph.i18 ]
  %i.gn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 39, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i15) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEENS0_12vec_iteratorIPS3_Lb0EEESJ_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !209    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !206  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !207  ; 3 uses
  %i.y = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.aa = add i64 %5, -4
  %i.ab = sub i64 %i.aa, %6                       ; 3 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ae = and i64 %i.ab, -4
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %bound0 = icmp ugt ptr %i.ag, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.ah   ; 2 uses
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.al = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.al ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.r, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4510
  %wide.load20 = load <4 x i32>, ptr %i.am, align 4, !tbaa !249, !alias.scope !4510
  %i.an = getelementptr i8, ptr %next.gep19, i64 16
  store <4 x i32> %wide.load, ptr %next.gep19, align 4, !tbaa !249
  store <4 x i32> %wide.load20, ptr %i.an, align 4, !tbaa !249
  %i.ao = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ap = add <4 x i32> %vec.phi18, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !4498

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4511, !noalias !4510
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader72

.lr.ph.i.i.i.preheader72:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph73 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader72, %.lr.ph.i.i.i
  %i.as = phi i32 [ %i.au, %.lr.ph.i.i.i ], [ %.ph73, %.lr.ph.i.i.i.preheader72 ]
  %.018.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader72 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader72 ] ; 2 uses
  %i.at = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.at, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.au = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4500

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.aj, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 6 uses
  %.not13.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not13.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4512 ; 2 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i.i) ]
  %i.ax = load i32, ptr %i.t, align 4, !tbaa !67, !noalias !4512
  store i32 %i.ax, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249, !noalias !4512
  %i.ay = add i32 %.pre, 1                        ; 2 uses
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4512
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.v
  br i1 %i.ba, label %bb.g, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.prol
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78, !noalias !4512 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol: ; preds = %bb.g, %.lr.ph.i.i.i.i.prol
  %.sroa.11.1.i.i.i.prol = phi ptr [ %i.bb, %bb.g ], [ %i.x, %.lr.ph.i.i.i.i.prol ]
  %i.be = phi ptr [ %i.bd, %bb.g ], [ %i.v, %.lr.ph.i.i.i.i.prol ]
  %i.bf = phi ptr [ %i.bc, %bb.g ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i, i64 4
  %i.bh = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi i32 [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.sroa.11.0.i.i.i.unr = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.11.1.i.i.i.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.unr77 = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.unr78 = phi ptr [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.bh, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %i.bi = icmp eq i64 %3, 1
  br i1 %i.bi, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1
  %i.bj = phi i32 [ %i.bx, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.11.0.i.i.i = phi ptr [ %.sroa.11.1.i.i.i.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.sroa.11.0.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bk = phi ptr [ %i.cd, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.unr77, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bl = phi ptr [ %i.ce, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.unr78, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i.i.i = phi i64 [ %i.cg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.cf, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !67, !noalias !4512
  store i32 %i.bm, ptr %.01214.i.i.i.i, align 4, !tbaa !249, !noalias !4512
  %i.bn = add i32 %i.bj, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4512
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bk
  br i1 %i.bp, label %bb.h, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i.i, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !78, !noalias !4512 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.11.1.i.i.i = phi ptr [ %i.bq, %bb.h ], [ %.sroa.11.0.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bt = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %bb.h ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !67, !noalias !4512
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !249, !noalias !4512
  %i.bx = add i32 %i.bj, 2                        ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4512
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bt
  br i1 %i.bz, label %bb.i, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1

bb.i:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !78, !noalias !4512 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1: ; preds = %bb.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i
  %.sroa.11.1.i.i.i.1 = phi ptr [ %i.ca, %bb.i ], [ %.sroa.11.1.i.i.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i ]
  %i.cd = phi ptr [ %i.cc, %bb.i ], [ %i.bt, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i ]
  %i.ce = phi ptr [ %i.cb, %bb.i ], [ %i.by, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.cg = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.z
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ch = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre8 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.ci = shl i64 %i.y, 2
  %i.cj = add i64 %i.ci, %6
  %i.ck = add i64 %i.cj, -4
  %i.cl = sub i64 %i.ck, %5                       ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check35 = icmp ult i64 %i.cl, 156
  br i1 %min.iters.check35, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.co = shl i64 %3, 2
  %i.cp = shl i64 %i.y, 2
  %i.cq = add i64 %i.cp, %6
  %i.cr = add i64 %i.cq, -4
  %i.cs = sub i64 %i.cr, %5
  %i.ct = and i64 %i.cs, -4                       ; 2 uses
  %i.cu = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.co
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ct
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 2 uses
  %i.cx = getelementptr i8, ptr %2, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %bound037 = icmp ult ptr %i.ch, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound138 = icmp ugt ptr %i.cw, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict39 = and i1 %bound037, %bound138
  %bound040 = icmp ult ptr %i.ch, %i.cy
  %bound141 = icmp ult ptr %2, %i.cw
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict39, %found.conflict42
  %bound043 = icmp ugt ptr %i.cy, @_ZN5boost9container4test12copyable_int5countE
  %bound144 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %conflict.rdx, %found.conflict45
  br i1 %conflict.rdx46, label %.lr.ph.i20.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck36
  %n.vec48 = and i64 %i.cn, 9223372036854775800   ; 3 uses
  %i.cz = shl i64 %n.vec48, 2                     ; 2 uses
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.ch, i64 %i.cz
  %i.dc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre8, i64 0
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next64, %vector.body49 ] ; 2 uses
  %vec.phi51 = phi <4 x i32> [ %i.dc, %vector.ph47 ], [ %i.dg, %vector.body49 ]
  %vec.phi52 = phi <4 x i32> [ zeroinitializer, %vector.ph47 ], [ %i.dh, %vector.body49 ]
  %i.dd = shl i64 %index50, 2                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %2, i64 %i.dd ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.ch, i64 %i.dd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep54) ]
  %i.de = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load62 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !249, !alias.scope !4513
  %wide.load63 = load <4 x i32>, ptr %i.de, align 4, !tbaa !249, !alias.scope !4513
  %i.df = getelementptr i8, ptr %next.gep54, i64 16
  store <4 x i32> %wide.load62, ptr %next.gep54, align 4, !tbaa !249, !alias.scope !4514, !noalias !4515
  store <4 x i32> %wide.load63, ptr %i.df, align 4, !tbaa !249, !alias.scope !4514, !noalias !4515
  %i.dg = add <4 x i32> %vec.phi51, splat (i32 1) ; 2 uses
  %i.dh = add <4 x i32> %vec.phi52, splat (i32 1) ; 2 uses
  %index.next64 = add nuw i64 %index50, 8         ; 2 uses
  %i.di = icmp eq i64 %index.next64, %n.vec48
  br i1 %i.di, label %middle.block65, label %vector.body49, !llvm.loop !4507

middle.block65:                                   ; preds = %vector.body49
  %bin.rdx66 = add <4 x i32> %i.dh, %i.dg
  %i.dj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66) ; 2 uses
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4516, !noalias !4513
  %cmp.n67 = icmp eq i64 %i.cn, %n.vec48
  br i1 %cmp.n67, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck36, %.lr.ph.i20.preheader.i.i, %middle.block65
  %.ph = phi i32 [ %.pre8, %vector.memcheck36 ], [ %.pre8, %.lr.ph.i20.preheader.i.i ], [ %i.dj, %middle.block65 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck36 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.da, %middle.block65 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ch, %vector.memcheck36 ], [ %i.ch, %.lr.ph.i20.preheader.i.i ], [ %i.db, %middle.block65 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dk = phi i32 [ %i.dm, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dn, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.do, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.dl = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.dl, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.dm = add i32 %i.dk, 1                        ; 2 uses
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4508

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block65, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.y, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %xtraiter79 = and i64 %i.y, 3                   ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.dp, %.lr.ph.i.i.prol ], [ %i.y, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ds, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dp = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = add i32 %i.dq, -1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter79
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4509

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.y, %.lr.ph.i.i.preheader ], [ %i.dp, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.ds, %.lr.ph.i.i.prol ]
  %i.dt = icmp ult i64 %i.y, 4
  br i1 %i.dt, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.eb, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !249
  %i.dx = add i32 %i.du, -2
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !249
  %i.dz = add i32 %i.du, -3
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.eb = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ea, align 4, !tbaa !249
  %i.ec = add i32 %i.du, -4
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.j
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = icmp eq ptr %i.ee, %i.s
  br i1 %i.ef, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !246
  %i.eh = shl i64 %i.eg, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.eh) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.k
  %i.ei = phi i64 [ %i.y, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i ], [ %.pre.i, %bb.k ], [ %i.y, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ej = ptrtoint ptr %2 to i64
  %i.ek = ptrtoint ptr %i.s to i64
  %i.el = sub i64 %i.ej, %i.ek
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.em = add i64 %i.ei, %3
  store i64 %i.em, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.en = getelementptr inbounds i8, ptr %i.r, i64 %i.el
  store ptr %i.en, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SO_mSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %.not = icmp ult i64 %i.d, %3
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %3
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 6 uses
  %.not17.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.g, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %.0819.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.g = add i64 %.020.i.prol, -1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.h = load i32, ptr %.0819.i.prol, align 4, !tbaa !249
  store i32 %i.h, ptr %.01618.i.prol, align 4, !tbaa !249
  %i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4517

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
end_hunk_9
begin_hunk_10_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE:bb.a
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.dw = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.dx = add i64 %.018.i.i, -4                   ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !249
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !249
  %i.dz = add i32 %i.dl, 4
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %.not.i16.i.3 = icmp eq i64 %i.dx, 0
  br i1 %.not.i16.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i, !llvm.loop !4546

bb.i:                                             ; preds = %bb.g
  %.not6.i.i = icmp eq ptr %2, %1
  br i1 %.not6.i.i, label %_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.ec = sub i64 %i.b, %i.bh
  %diff.check = icmp ugt i64 %i.ec, -32
  %or.cond95 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond95, label %.lr.ph.i18.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i18.i.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  %i.ed = shl nsw i64 %n.vec, 2                   ; 2 uses
  %i.ee = getelementptr i8, ptr %i.bg, i64 %i.ed  ; 2 uses
  %i.ef = and i64 %i.d, 7
  %i.eg = getelementptr i8, ptr %1, i64 %i.ed
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.eh ; 2 uses
  %next.gep55 = getelementptr i8, ptr %1, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !249
  %wide.load56 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !249
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !249
  store <4 x i32> %wide.load56, ptr %i.ej, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !4547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i.preheader104

.lr.ph.i18.i.preheader104:                        ; preds = %.lr.ph.i18.i.preheader, %middle.block
  %.09.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i18.i.preheader ], [ %i.ee, %middle.block ] ; 2 uses
  %.048.i.i.ph = phi i64 [ %i.d, %.lr.ph.i18.i.preheader ], [ %i.ef, %middle.block ] ; 4 uses
  %.sroa.0.07.i.i.ph = phi ptr [ %1, %.lr.ph.i18.i.preheader ], [ %i.eg, %middle.block ] ; 2 uses
  %i.el = add nsw i64 %.048.i.i.ph, -1
  %xtraiter = and i64 %.048.i.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol

.lr.ph.i18.i.prol:                                ; preds = %.lr.ph.i18.i.preheader104, %.lr.ph.i18.i.prol
  %.09.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i18.i.prol ], [ %.09.i.i.ph, %.lr.ph.i18.i.preheader104 ] ; 2 uses
  %.048.i.i.prol = phi i64 [ %i.em, %.lr.ph.i18.i.prol ], [ %.048.i.i.ph, %.lr.ph.i18.i.preheader104 ]
  %.sroa.0.07.i.i.prol = phi ptr [ %i.eo, %.lr.ph.i18.i.prol ], [ %.sroa.0.07.i.i.ph, %.lr.ph.i18.i.preheader104 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i18.i.prol ], [ 0, %.lr.ph.i18.i.preheader104 ]
  %i.em = add i64 %.048.i.i.prol, -1              ; 2 uses
  %i.en = load i32, ptr %.sroa.0.07.i.i.prol, align 4, !tbaa !249
  store i32 %i.en, ptr %.09.i.i.prol, align 4, !tbaa !249
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol, !llvm.loop !4548

.lr.ph.i18.i.prol.loopexit:                       ; preds = %.lr.ph.i18.i.prol, %.lr.ph.i18.i.preheader104
  %.lcssa105.unr = phi ptr [ poison, %.lr.ph.i18.i.preheader104 ], [ %i.ep, %.lr.ph.i18.i.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i18.i.preheader104 ], [ %i.ep, %.lr.ph.i18.i.prol ]
  %.048.i.i.unr = phi i64 [ %.048.i.i.ph, %.lr.ph.i18.i.preheader104 ], [ %i.em, %.lr.ph.i18.i.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %.sroa.0.07.i.i.ph, %.lr.ph.i18.i.preheader104 ], [ %i.eo, %.lr.ph.i18.i.prol ]
  %i.eq = icmp ult i64 %i.el, 7
  br i1 %i.eq, label %_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i
  %.09.i.i = phi ptr [ %i.fp, %.lr.ph.i18.i ], [ %.09.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 9 uses
  %.048.i.i = phi i64 [ %i.fm, %.lr.ph.i18.i ], [ %.048.i.i.unr, %.lr.ph.i18.i.prol.loopexit ]
  %.sroa.0.07.i.i = phi ptr [ %i.fo, %.lr.ph.i18.i ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 9 uses
  %i.er = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !249
  store i32 %i.er, ptr %.09.i.i, align 4, !tbaa !249
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !249
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !249
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !249
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !249
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !249
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !249
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !249
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !249
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !249
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !249
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !249
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !249
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 28
  %i.fl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 28
  %i.fm = add i64 %.048.i.i, -8                   ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !249
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !249
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i19.i.7 = icmp eq i64 %i.fm, 0
  br i1 %.not.i19.i.7, label %_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i, !llvm.loop !4549

_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %middle.block, %bb.i
  %.0.lcssa.i.i21 = phi ptr [ %i.bg, %bb.i ], [ %i.ee, %middle.block ], [ %.lcssa105.unr, %.lr.ph.i18.i.prol.loopexit ], [ %i.fp, %.lr.ph.i18.i ] ; 2 uses
  %i.fq = sub nuw i64 %i.bj, %i.d                 ; 4 uses
  %.not3.i.i22 = icmp eq i64 %i.fq, 0
  br i1 %.not3.i.i22, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter106 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i23.prol = phi i64 [ %i.fr, %.lr.ph.i21.i.prol ], [ %i.fq, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i24.prol = phi ptr [ %i.fu, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i.i21, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fr = add i64 %.05.i.i23.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i24.prol, align 4, !tbaa !249
  %i.fs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24.prol, i64 4 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !4550

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i23.unr = phi i64 [ %i.fq, %.lr.ph.i21.i.preheader ], [ %i.fr, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i24.unr = phi ptr [ %.0.lcssa.i.i21, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %i.fv = sub i64 %i.d, %i.bj
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i23 = phi i64 [ %i.ge, %.lr.ph.i21.i ], [ %.05.i.i23.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i24 = phi ptr [ %i.gg, %.lr.ph.i21.i ], [ %storemerge4.i.i24.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i24, align 4, !tbaa !249
  %i.fx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 4
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !249
  %i.ga = add i32 %i.fx, -2
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 8
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !249
  %i.gc = add i32 %i.fx, -3
  store i32 %i.gc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 12
  %i.ge = add i64 %.05.i.i23, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !249
  %i.gf = add i32 %i.fx, -4
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i, %_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.d, ptr %i.bi, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !285    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  %4 = ptrtoaddr ptr %i.g to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not14.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter42 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.016.i.i.i.i.prol = phi i64 [ %i.j, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter44 = phi i64 [ %prol.iter44.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.j = add i64 %.016.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !249
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4553

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.n = icmp ult i64 %3, 4
  br i1 %i.n, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !249
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !249
  %i.r = add i32 %i.o, 2
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.s, align 4, !tbaa !249
  %i.t = add i32 %i.o, 3
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.v = add i64 %.016.i.i.i.i, -4                ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !249
  %i.w = add i32 %i.o, 4
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4554

bb.d:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.h to i64
  %i.z = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ab, %3
  br i1 %.not.i.i.i, label %.lr.ph.i53.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = sub i64 0, %3
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ac ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i10.i.i.prol ], [ %i.ad, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i10.i.i.prol ], [ %i.h, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.ae = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.af = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.af, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.ag = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4555

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.lcssa31.unr = phi i32 [ poison, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ae, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ad, %bb.f ], [ %i.ai, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %i.ak = icmp ult i64 %3, 4
  br i1 %i.ak, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.al = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.al, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.am = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !249
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !249
  %i.ar = add i32 %i.am, 2
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.au = load i32, ptr %i.as, align 4, !tbaa !249
  store i32 %i.au, ptr %i.at, align 4, !tbaa !249
  %i.av = add i32 %i.am, 3
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.ay = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !249
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !249
  %i.ba = add i32 %i.am, 4                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.lcssa31 = phi i32 [ %.lcssa31.unr, %.lr.ph.i.i10.i.i.prol.loopexit ], [ %i.ba, %.lr.ph.i.i10.i.i ]
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ad
  br i1 %.not8.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bd = shl nuw nsw i64 %i.e, 2
  %i.be = shl i64 %3, 2
  %i.bf = add i64 %i.bd, %4
  %i.bg = add i64 %i.bf, -4
  %i.bh = add i64 %i.be, %i.z
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 60
  %i.bl = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.bm = mul i64 %n.vec, -4                      ; 2 uses
  %i.bn = getelementptr i8, ptr %i.h, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.ad, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bp ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.ad, i64 %i.bp ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %next.gep25, i64 -16
  %i.br = getelementptr inbounds i8, ptr %next.gep25, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bq, align 4, !tbaa !249
  %wide.load26 = load <4 x i32>, ptr %i.br, align 4, !tbaa !249
  %i.bs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bs, align 4, !tbaa !249
  store <4 x i32> %wide.load26, ptr %i.bt, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !4556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i.preheader30

.lr.ph.i40.i.i.i.preheader30:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i40.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader30, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %.079.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %i.bv = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !249
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.bv
  br i1 %.not.i41.i.i.i, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !4557

.lr.ph.preheader.i.i.loopexit.i.i:                ; preds = %.lr.ph.i40.i.i.i, %middle.block
  %.pre.i.i.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.preheader.i.i.loopexit.i.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %.pre.i.i.i.i = phi i32 [ %.pre.i.i.pre.i.i, %.lr.ph.preheader.i.i.loopexit.i.i ], [ %.lcssa31, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i ]
  %i.by = add i32 %.pre.i.i.i.i, 1                ; 2 uses
  %xtraiter32 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol

.lr.ph.i43.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i43.i.i.i.prol
  %i.bz = phi i32 [ %i.cc, %.lr.ph.i43.i.i.i.prol ], [ %i.by, %.lr.ph.preheader.i.i.i.i ]
  %.010.i44.i.i.i.prol = phi ptr [ %i.cb, %.lr.ph.i43.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.079.i45.i.i.i.prol = phi i64 [ %i.ca, %.lr.ph.i43.i.i.i.prol ], [ %3, %.lr.ph.preheader.i.i.i.i ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i43.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.ca = add i64 %.079.i45.i.i.i.prol, -1        ; 2 uses
  store i32 %i.bz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i44.i.i.i.prol, align 4, !tbaa !249
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i.prol, i64 4 ; 2 uses
  %i.cc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.cd = add i32 %i.cc, -1
  store i32 %i.cd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol, !llvm.loop !4558

.lr.ph.i43.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i43.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.unr = phi i32 [ %i.by, %.lr.ph.preheader.i.i.i.i ], [ %i.cc, %.lr.ph.i43.i.i.i.prol ]
  %.010.i44.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i.i ], [ %i.cb, %.lr.ph.i43.i.i.i.prol ]
  %.079.i45.i.i.i.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.ca, %.lr.ph.i43.i.i.i.prol ]
  %i.ce = icmp ult i64 %3, 4
  br i1 %i.ce, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i
  %i.cf = phi i32 [ %i.cl, %.lr.ph.i43.i.i.i ], [ %.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  %.010.i44.i.i.i = phi ptr [ %i.ck, %.lr.ph.i43.i.i.i ], [ %.010.i44.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i45.i.i.i = phi i64 [ %i.cj, %.lr.ph.i43.i.i.i ], [ %.079.i45.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i44.i.i.i, align 4, !tbaa !249
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 4
  store i32 0, ptr %i.cg, align 4, !tbaa !249
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 8
  store i32 0, ptr %i.ch, align 4, !tbaa !249
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 12
  %i.cj = add i64 %.079.i45.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.ci, align 4, !tbaa !249
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 16
  %i.cl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not.i46.i.i.i.3 = icmp eq i64 %i.cj, 0
  br i1 %.not.i46.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i, !llvm.loop !4559

.lr.ph.i53.preheader.i.i.i:                       ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i53.i.i.i

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i53.i.i.i, %.lr.ph.i53.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i53.i.i.i ], [ %i.a, %.lr.ph.i53.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i53.i.i.i ], [ %i.cn, %.lr.ph.i53.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.co = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !249
  store i32 %i.co, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.cp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i54.i.i.i = icmp eq ptr %i.cr, %i.h
  br i1 %.not.i54.i.i.i, label %.lr.ph.preheader.i56.i.i.i, label %.lr.ph.i53.i.i.i, !llvm.loop !45

.lr.ph.preheader.i56.i.i.i:                       ; preds = %.lr.ph.i53.i.i.i
  %i.ct = add i32 %i.cp, 2                        ; 2 uses
  %xtraiter35 = and i64 %i.ab, 3                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol

.lr.ph.i58.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i56.i.i.i, %.lr.ph.i58.i.i.i.prol
  %i.cu = phi i32 [ %i.cx, %.lr.ph.i58.i.i.i.prol ], [ %i.ct, %.lr.ph.preheader.i56.i.i.i ]
  %.010.i59.i.i.i.prol = phi ptr [ %i.cw, %.lr.ph.i58.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i56.i.i.i ] ; 2 uses
  %.079.i60.i.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i58.i.i.i.prol ], [ %i.ab, %.lr.ph.preheader.i56.i.i.i ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i58.i.i.i.prol ], [ 0, %.lr.ph.preheader.i56.i.i.i ]
  %i.cv = add i64 %.079.i60.i.i.i.prol, -1        ; 2 uses
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i59.i.i.i.prol, align 4, !tbaa !249
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i.prol, i64 4 ; 2 uses
  %i.cx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol, !llvm.loop !4560

.lr.ph.i58.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i58.i.i.i.prol, %.lr.ph.preheader.i56.i.i.i
  %.unr38 = phi i32 [ %i.ct, %.lr.ph.preheader.i56.i.i.i ], [ %i.cx, %.lr.ph.i58.i.i.i.prol ]
  %.010.i59.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i56.i.i.i ], [ %i.cw, %.lr.ph.i58.i.i.i.prol ]
  %.079.i60.i.i.i.unr = phi i64 [ %i.ab, %.lr.ph.preheader.i56.i.i.i ], [ %i.cv, %.lr.ph.i58.i.i.i.prol ]
  %i.cz = icmp ult i64 %i.ab, 4
  br i1 %i.cz, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %.lr.ph.i58.i.i.i.prol.loopexit, %.lr.ph.i58.i.i.i
  %i.da = phi i32 [ %i.dg, %.lr.ph.i58.i.i.i ], [ %.unr38, %.lr.ph.i58.i.i.i.prol.loopexit ]
  %.010.i59.i.i.i = phi ptr [ %i.df, %.lr.ph.i58.i.i.i ], [ %.010.i59.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i60.i.i.i = phi i64 [ %i.de, %.lr.ph.i58.i.i.i ], [ %.079.i60.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ]
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i59.i.i.i, align 4, !tbaa !249
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 4
  store i32 0, ptr %i.db, align 4, !tbaa !249
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 8
  store i32 0, ptr %i.dc, align 4, !tbaa !249
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 12
  %i.de = add i64 %.079.i60.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.dd, align 4, !tbaa !249
  %i.df = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 16
  %i.dg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not.i61.i.i.i.3 = icmp eq i64 %i.de, 0
  br i1 %.not.i61.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i, !llvm.loop !4559

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i: ; preds = %.lr.ph.i58.i.i.i, %.lr.ph.i58.i.i.i.prol.loopexit
  %i.di = sub i64 %3, %i.ab                       ; 3 uses
  %xtraiter39 = and i64 %i.di, 3                  ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.016.i.i.i.i.i.prol = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i.prol ], [ %i.di, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ]
  %.01315.i.i.i.i.i.prol = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ]
  %i.dj = add i64 %.016.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4561

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i
  %.016.i.i.i.i.i.unr = phi i64 [ %i.di, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.prol ]
  %.01315.i.i.i.i.i.unr = phi ptr [ %i.h, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ], [ %i.dm, %.lr.ph.i.i.i.i.i.prol ]
  %i.dn = sub i64 %i.ab, %3
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.016.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.016.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.01315.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i.i, align 4, !tbaa !249
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 4
  store i32 0, ptr %i.dr, align 4, !tbaa !249
  %i.ds = add i32 %i.dp, 2
  store i32 %i.ds, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 8
  store i32 0, ptr %i.dt, align 4, !tbaa !249
  %i.du = add i32 %i.dp, 3
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 12
  %i.dw = add i64 %.016.i.i.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.dv, align 4, !tbaa !249
  %i.dx = add i32 %i.dp, 4
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4554

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i43.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %i.dz = add i64 %i.e, %3
  store i64 %i.dz, ptr %i.d, align 8, !tbaa !245
  store ptr %i.a, ptr %0, align 8, !tbaa !289
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %5 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.v = add i64 %4, -4
  %i.w = sub i64 %i.v, %5                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4580
  %wide.load17 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4580
  %i.ai = getelementptr i8, ptr %next.gep16, i64 16
  store <4 x i32> %wide.load, ptr %next.gep16, align 4, !tbaa !249
  store <4 x i32> %wide.load17, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi15, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4564

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4581, !noalias !4580
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader104

.lr.ph.i.i.i.preheader104:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph105 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader104, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph105, %.lr.ph.i.i.i.preheader104 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader104 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader104 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4566

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 8 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check24 = icmp ult i64 %3, 8
  br i1 %min.iters.check24, label %.lr.ph.i.i.i.i.preheader100, label %vector.memcheck25

vector.memcheck25:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.as = shl i64 %3, 2
  %i.at = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.as
  %bound026 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound127 = icmp ugt ptr %i.at, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict28 = and i1 %bound026, %bound127
  br i1 %found.conflict28, label %.lr.ph.i.i.i.i.preheader100, label %vector.ph29

vector.ph29:                                      ; preds = %vector.memcheck25
  %n.vec30 = and i64 %3, -8                       ; 3 uses
  %i.au = and i64 %3, 7
  %i.av = shl i64 %n.vec30, 2
  %i.aw = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.av
  %i.ax = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next43, %vector.body31 ] ; 2 uses
  %vec.phi33 = phi <4 x i32> [ %i.ax, %vector.ph29 ], [ %i.ba, %vector.body31 ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph29 ], [ %i.bb, %vector.body31 ]
  %i.ay = shl i64 %index32, 2
  %next.gep35 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ay ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep35) ]
  %i.az = getelementptr i8, ptr %next.gep35, i64 16
  store <4 x i32> zeroinitializer, ptr %next.gep35, align 4, !tbaa !249, !alias.scope !4582, !noalias !4583
  store <4 x i32> zeroinitializer, ptr %i.az, align 4, !tbaa !249, !alias.scope !4582, !noalias !4583
  %i.ba = add <4 x i32> %vec.phi33, splat (i32 1) ; 2 uses
  %i.bb = add <4 x i32> %vec.phi34, splat (i32 1) ; 2 uses
  %index.next43 = add nuw i64 %index32, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next43, %n.vec30
  br i1 %i.bc, label %middle.block44, label %vector.body31, !llvm.loop !4570

middle.block44:                                   ; preds = %vector.body31
  %bin.rdx45 = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4583
  %cmp.n46 = icmp eq i64 %3, %n.vec30
  br i1 %cmp.n46, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader100

.lr.ph.i.i.i.i.preheader100:                      ; preds = %vector.memcheck25, %.lr.ph.i.i.i.i.preheader, %middle.block44
  %.ph101 = phi i32 [ %.pre, %vector.memcheck25 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block44 ] ; 2 uses
  %.016.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck25 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block44 ] ; 4 uses
  %.01315.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck25 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block44 ] ; 2 uses
  %i.be = add i64 %.016.i.i.i.i.ph, -1
  %xtraiter = and i64 %.016.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader100, %.lr.ph.i.i.i.i.prol
  %i.bf = phi i32 [ %i.bh, %.lr.ph.i.i.i.i.prol ], [ %.ph101, %.lr.ph.i.i.i.i.preheader100 ]
  %.016.i.i.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.prol ], [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.prol ], [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader100 ]
  %i.bg = add i64 %.016.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !249
  %i.bh = add i32 %i.bf, 1                        ; 3 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4571

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader100
  %.unr = phi i32 [ %.ph101, %.lr.ph.i.i.i.i.preheader100 ], [ %i.bh, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ], [ %i.bi, %.lr.ph.i.i.i.i.prol ]
  %i.bj = icmp ult i64 %i.be, 3
  br i1 %i.bj, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bk = phi i32 [ %i.bs, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.016.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !249
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.bm, align 4, !tbaa !249
  %i.bn = add i32 %i.bk, 2
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.bo, align 4, !tbaa !249
  %i.bp = add i32 %i.bk, 3
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.br = add i64 %.016.i.i.i.i, -4               ; 2 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !249
  %i.bs = add i32 %i.bk, 4                        ; 2 uses
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bt = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4572

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block44, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.bu = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre8 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.bv = shl i64 %i.t, 2
  %i.bw = add i64 %i.bv, %5
  %i.bx = add i64 %i.bw, -4
  %i.by = sub i64 %i.bx, %4                       ; 2 uses
  %i.bz = lshr i64 %i.by, 2
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check63 = icmp ult i64 %i.by, 156
  br i1 %min.iters.check63, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cb = shl i64 %3, 2
  %i.cc = shl i64 %i.t, 2
  %i.cd = add i64 %i.cc, %5
  %i.ce = add i64 %i.cd, -4
  %i.cf = sub i64 %i.ce, %4
  %i.cg = and i64 %i.cf, -4                       ; 2 uses
  %i.ch = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cb
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cg
  %i.cj = getelementptr i8, ptr %i.ci, i64 4      ; 2 uses
  %i.ck = getelementptr i8, ptr %2, i64 %i.cg
  %i.cl = getelementptr i8, ptr %i.ck, i64 4      ; 2 uses
  %bound065 = icmp ult ptr %i.bu, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound166 = icmp ugt ptr %i.cj, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict67 = and i1 %bound065, %bound166
  %bound068 = icmp ult ptr %i.bu, %i.cl
  %bound169 = icmp ult ptr %2, %i.cj
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict67, %found.conflict70
  %bound071 = icmp ugt ptr %i.cl, @_ZN5boost9container4test12copyable_int5countE
  %bound172 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
  br i1 %conflict.rdx74, label %.lr.ph.i20.i.i.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck64
  %n.vec76 = and i64 %i.ca, 9223372036854775800   ; 3 uses
  %i.cm = shl i64 %n.vec76, 2                     ; 2 uses
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bu, i64 %i.cm
  %i.cp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre8, i64 0
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next92, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ %i.cp, %vector.ph75 ], [ %i.ct, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %i.cu, %vector.body77 ]
  %i.cq = shl i64 %index78, 2                     ; 2 uses
  %next.gep81 = getelementptr i8, ptr %2, i64 %i.cq ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.bu, i64 %i.cq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep82) ]
  %i.cr = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load90 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !249, !alias.scope !4584
  %wide.load91 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !249, !alias.scope !4584
  %i.cs = getelementptr i8, ptr %next.gep82, i64 16
  store <4 x i32> %wide.load90, ptr %next.gep82, align 4, !tbaa !249, !alias.scope !4585, !noalias !4586
  store <4 x i32> %wide.load91, ptr %i.cs, align 4, !tbaa !249, !alias.scope !4585, !noalias !4586
  %i.ct = add <4 x i32> %vec.phi79, splat (i32 1) ; 2 uses
  %i.cu = add <4 x i32> %vec.phi80, splat (i32 1) ; 2 uses
  %index.next92 = add nuw i64 %index78, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next92, %n.vec76
  br i1 %i.cv, label %middle.block93, label %vector.body77, !llvm.loop !4577

middle.block93:                                   ; preds = %vector.body77
  %bin.rdx94 = add <4 x i32> %i.cu, %i.ct
  %i.cw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx94) ; 2 uses
  store i32 %i.cw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4587, !noalias !4584
  %cmp.n95 = icmp eq i64 %i.ca, %n.vec76
  br i1 %cmp.n95, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck64, %.lr.ph.i20.preheader.i.i, %middle.block93
  %.ph = phi i32 [ %.pre8, %vector.memcheck64 ], [ %.pre8, %.lr.ph.i20.preheader.i.i ], [ %i.cw, %middle.block93 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck64 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.cn, %middle.block93 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.bu, %vector.memcheck64 ], [ %i.bu, %.lr.ph.i20.preheader.i.i ], [ %i.co, %middle.block93 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.cx = phi i32 [ %i.cz, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.da, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.db, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.cy = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.cy, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.cz = add i32 %i.cx, 1                        ; 2 uses
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.da = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.da, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4578

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block93, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter109 = and i64 %i.t, 3                  ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dc = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.df = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4579

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.df, %.lr.ph.i.i.prol ]
  %i.dg = icmp ult i64 %i.t, 4
  br i1 %i.dg, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.do, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !249
  %i.dk = add i32 %i.dh, -2
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !249
  %i.dm = add i32 %i.dh, -3
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.do = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !249
  %i.dp = add i32 %i.dh, -4
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ds = icmp eq ptr %i.dr, %i.s
  br i1 %i.ds, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !246
  %i.du = shl i64 %i.dt, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.du) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.dv = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.dw = ptrtoint ptr %2 to i64
  %i.dx = ptrtoint ptr %i.s to i64
  %i.dy = sub i64 %i.dw, %i.dx
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.dz = add i64 %i.dv, %3
  store i64 %i.dz, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.ea = getelementptr inbounds i8, ptr %i.r, i64 %i.dy
  store ptr %i.ea, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4590)
  %i.a = load ptr, ptr %2, align 8, !tbaa !285, !noalias !4590 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246, !noalias !4590
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254, !noalias !4590 ; 5 uses
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !247, !noalias !4590 ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %.not.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = load i32, ptr %3, align 4, !tbaa !249, !noalias !4590
  store i32 %i.h, ptr %i.g, align 4, !tbaa !249, !noalias !4590
  %i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4590
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4590
  %i.k = add i64 %i.e, 1
  store i64 %i.k, ptr %i.d, align 8, !tbaa !254, !noalias !4590
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.m, %i.l                       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !249, !noalias !4590
  store i32 %i.p, ptr %i.g, align 4, !tbaa !249, !noalias !4590
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4590
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4590
  %i.s = add i64 %i.e, 1
  store i64 %i.s, ptr %i.d, align 8, !tbaa !254, !noalias !4590
  %i.t = icmp eq i64 %i.n, 4
  br i1 %i.t, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d
  %i.u = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.v = add nuw i64 %i.u, 4
  %i.w = sub i64 %i.v, %i.n
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.w
  %i.x = sub i64 %i.u, %i.n
  %scevgep15.i.i = getelementptr i8, ptr %i.f, i64 %i.x
  %i.y = add i64 %i.n, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i.i, ptr align 4 %scevgep15.i.i, i64 %i.y, i1 false), !tbaa !249, !noalias !4590
  br label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i, %bb.d
  %i.z = load i32, ptr %3, align 4, !tbaa !249, !noalias !4590
  store i32 %i.z, ptr %i.a, align 4, !tbaa !249, !noalias !4590
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i, %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !289, !alias.scope !4590
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef 1, ptr nonnull %3)
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.v = add i64 %5, -4
  %i.w = sub i64 %i.v, %6                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4603
  %wide.load18 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4603
  %i.ai = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4593

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4604, !noalias !4603
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 3 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4595

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.as = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.am, %middle.block ], [ %i.ap, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 3 uses
  %i.at = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.at, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.au = add i32 %i.as, 1                        ; 4 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.av = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.aw = shl i64 %i.t, 2
  %i.ax = add i64 %i.aw, %6
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %5                       ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.az, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.bc = shl i64 %3, 2
  %i.bd = shl i64 %i.t, 2
  %i.be = add i64 %i.bd, %6
  %i.bf = add i64 %i.be, -4
  %i.bg = sub i64 %i.bf, %5
  %i.bh = and i64 %i.bg, -4                       ; 2 uses
  %i.bi = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bc
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 4      ; 2 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %bound035 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bk, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.av, %i.bm
  %bound139 = icmp ult ptr %2, %i.bk
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.au, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4605
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4605
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4606, !noalias !4607
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4606, !noalias !4607
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4600

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4608, !noalias !4605
  %cmp.n58 = icmp eq i64 %i.bb, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.au, %vector.memcheck34 ], [ %i.au, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.av, %vector.memcheck34 ], [ %i.av, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4601

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4602

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.t, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.s
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.s to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.r, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !285    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !254  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  %5 = ptrtoaddr ptr %i.h to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter78 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.l = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.l, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !249
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4609

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.k, 3
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.s = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !249
  store i32 %i.s, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.x = load i32, ptr %i.v, align 4, !tbaa !249
  store i32 %i.x, ptr %i.w, align 4, !tbaa !249
  %i.y = add i32 %i.t, 2
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !249
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !249
  %i.ac = add i32 %i.t, 3
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !249
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !249
  %i.ag = add i32 %i.t, 4
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.aj = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4610

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ak = ptrtoint ptr %i.i to i64
  %i.al = ptrtoint ptr %i.b to i64                ; 4 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.an, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sub i64 0, %3
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ao ; 6 uses
  %i.aq = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i10.i.i.prol ], [ %i.ap, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.ar = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.as = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.as, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4611

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ar, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ap, %bb.f ], [ %i.av, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.aw, %.lr.ph.i.i10.i.i.prol ]
  %i.ax = icmp ult i64 %i.aq, 3
  br i1 %i.ax, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ay = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.ay, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !249
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !249
  %i.be = add i32 %i.az, 2
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !249
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !249
  %i.bi = add i32 %i.az, 3
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bl = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !249
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !249
  %i.bn = add i32 %i.az, 4
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.ap
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bq = shl nuw nsw i64 %i.f, 2
  %i.br = shl i64 %3, 2
  %i.bs = add i64 %i.bq, %5
  %i.bt = add i64 %i.bs, -4
  %i.bu = add i64 %i.br, %i.al
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 60
  %i.by = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  %i.bz = mul i64 %n.vec, -4                      ; 2 uses
  %i.ca = getelementptr i8, ptr %i.i, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ap, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cc ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ap, i64 %i.cc ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cd, align 4, !tbaa !249
  %wide.load24 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !249
  %i.cf = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cf, align 4, !tbaa !249
  store <4 x i32> %wide.load24, ptr %i.cg, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !4612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader68

.lr.ph.i40.i.i.i.preheader68:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.ca, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i40.i.i.i.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader68, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %.079.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %i.ci = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !249
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.ci
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !4613

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check29 = icmp ult i64 %3, 8
  %i.cl = sub i64 %i.a, %i.al
  %diff.check27 = icmp ugt i64 %i.cl, -32
  %or.cond62 = select i1 %min.iters.check29, i1 true, i1 %diff.check27
  br i1 %or.cond62, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec31 = and i64 %3, -8                       ; 3 uses
  %i.cm = and i64 %3, 7
  %i.cn = shl i64 %n.vec31, 2                     ; 2 uses
  %i.co = getelementptr i8, ptr %i.b, i64 %i.cn
  %i.cp = getelementptr i8, ptr %4, i64 %i.cn
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.cq = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.b, i64 %i.cq ; 2 uses
  %next.gep35 = getelementptr i8, ptr %4, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !249
  %wide.load37 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !249
  %i.cs = getelementptr i8, ptr %next.gep34, i64 16
  store <4 x i32> %wide.load36, ptr %next.gep34, align 4, !tbaa !249
  store <4 x i32> %wide.load37, ptr %i.cs, align 4, !tbaa !249
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.ct, label %middle.block39, label %vector.body32, !llvm.loop !4614

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %3, %n.vec31
  br i1 %cmp.n40, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block39
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block39 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.co, %middle.block39 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block39 ] ; 2 uses
  %i.cu = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter69 = and i64 %.09.i.i.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter71 = phi i64 [ %prol.iter71.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cv = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.cw, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4615

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = icmp ult i64 %i.cu, 7
  br i1 %i.cz, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.da = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !249
  store i32 %i.da, ptr %.048.i.i.i.i.i, align 4, !tbaa !249
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !249
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !249
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !249
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !249
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !249
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !249
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !249
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !249
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.do = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !249
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !249
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !249
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !249
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.dv = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !249
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !249
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4616

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ed, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i48.i.i.i ], [ %i.dz, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ea = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !249
  store i32 %i.ea, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.eb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ed, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !45

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check47 = icmp ult i64 %i.an, 8
  %i.ef = sub i64 %i.a, %i.al
  %diff.check45 = icmp ugt i64 %i.ef, -32
  %or.cond63 = select i1 %min.iters.check47, i1 true, i1 %diff.check45
  br i1 %or.cond63, label %.lr.ph.i.i52.i.i.i.preheader65, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec49 = and i64 %i.an, -8                    ; 3 uses
  %i.eg = and i64 %i.an, 7
  %i.eh = shl nsw i64 %n.vec49, 2                 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.b, i64 %i.eh
  %i.ej = getelementptr i8, ptr %4, i64 %i.eh     ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ek = shl i64 %index51, 2                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.b, i64 %i.ek ; 2 uses
  %next.gep53 = getelementptr i8, ptr %4, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !249
  %wide.load55 = load <4 x i32>, ptr %i.el, align 4, !tbaa !249
  %i.em = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load54, ptr %next.gep52, align 4, !tbaa !249
  store <4 x i32> %wide.load55, ptr %i.em, align 4, !tbaa !249
  %index.next56 = add nuw i64 %index51, 8         ; 2 uses
  %i.en = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.en, label %middle.block57, label %vector.body50, !llvm.loop !4617

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.an, %n.vec49
  br i1 %cmp.n58, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader65

.lr.ph.i.i52.i.i.i.preheader65:                   ; preds = %.lr.ph.i.i52.i.i.i.preheader, %middle.block57
  %.09.i.i53.i.i.i.ph = phi i64 [ %i.an, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.eg, %middle.block57 ] ; 4 uses
  %.048.i.i54.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.ei, %middle.block57 ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.ej, %middle.block57 ] ; 2 uses
  %i.eo = add nsw i64 %.09.i.i53.i.i.i.ph, -1
  %xtraiter72 = and i64 %.09.i.i53.i.i.i.ph, 7    ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader65, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i52.i.i.i.prol ], [ %.09.i.i53.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader65 ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.es, %.lr.ph.i.i52.i.i.i.prol ], [ %.048.i.i54.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader65 ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i52.i.i.i.prol ], [ %.sroa.0.07.i.i55.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader65 ] ; 2 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader65 ]
  %i.ep = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.eq = load i32, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.eq, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !249
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 4 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !4618

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader65
  %.lcssa66.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader65 ], [ %i.er, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %.09.i.i53.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader65 ], [ %i.ep, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %.048.i.i54.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader65 ], [ %i.es, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i55.i.i.i.ph, %.lr.ph.i.i52.i.i.i.preheader65 ], [ %i.er, %.lr.ph.i.i52.i.i.i.prol ]
  %i.et = icmp ult i64 %i.eo, 7
  br i1 %i.et, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 9 uses
  %i.eu = load i32, ptr %.sroa.0.07.i.i55.i.i.i, align 4, !tbaa !249
  store i32 %i.eu, ptr %.048.i.i54.i.i.i, align 4, !tbaa !249
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !249
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !249
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !249
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !249
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 12
  %i.fc = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !249
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !249
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !249
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !249
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 20
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !249
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !249
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 24
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !249
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !249
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 28
  %i.fo = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 28
  %i.fp = add i64 %.09.i.i53.i.i.i, -8            ; 2 uses
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !249
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !249
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 32 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 32
  %.not.i.i56.i.i.i.7 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i56.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !4619

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i, %middle.block57
  %.lcssa = phi ptr [ %i.ej, %middle.block57 ], [ %.lcssa66.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.fr, %.lr.ph.i.i52.i.i.i ] ; 2 uses
  %i.ft = sub i64 %3, %i.an                       ; 3 uses
  %xtraiter75 = and i64 %i.ft, 3                  ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i, %.lr.ph.i.i60.i.i.i.prol
  %.018.i.i.i.i.i.prol = phi i64 [ %i.fz, %.lr.ph.i.i60.i.i.i.prol ], [ %i.ft, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ]
  %.01417.i.i.i.i.i.prol = phi ptr [ %i.fy, %.lr.ph.i.i60.i.i.i.prol ], [ %i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ] ; 3 uses
  %.sroa.0.016.i.i.i.i.i.prol = phi ptr [ %i.fx, %.lr.ph.i.i60.i.i.i.prol ], [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ] ; 2 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i60.i.i.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.prol) ]
  %i.fu = load i32, ptr %.sroa.0.016.i.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.fu, ptr %.01417.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.fv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.fz = add i64 %.018.i.i.i.i.i.prol, -1        ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol, !llvm.loop !4620

.lr.ph.i.i60.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i60.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i
  %.018.i.i.i.i.i.unr = phi i64 [ %i.ft, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ], [ %i.fz, %.lr.ph.i.i60.i.i.i.prol ]
  %.01417.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ], [ %i.fy, %.lr.ph.i.i60.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ], [ %i.fx, %.lr.ph.i.i60.i.i.i.prol ]
  %i.ga = sub i64 %i.an, %3
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i

.lr.ph.i.i60.i.i.i:                               ; preds = %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i
  %.018.i.i.i.i.i = phi i64 [ %i.gt, %.lr.ph.i.i60.i.i.i ], [ %.018.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i60.i.i.i ], [ %.01417.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i60.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i) ]
  %i.gc = load i32, ptr %.sroa.0.016.i.i.i.i.i, align 4, !tbaa !249
  store i32 %i.gc, ptr %.01417.i.i.i.i.i, align 4, !tbaa !249
  %i.gd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 4
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !249
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !249
  %i.gi = add i32 %i.gd, 2
  store i32 %i.gi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 8
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !249
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !249
  %i.gm = add i32 %i.gd, 3
  store i32 %i.gm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 12
  %i.go = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 12
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !249
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !249
  %i.gq = add i32 %i.gd, 4
  store i32 %i.gq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 16
  %i.gt = add i64 %.018.i.i.i.i.i, -4             ; 2 uses
  %.not.i.i61.i.i.i.3 = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i61.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i, !llvm.loop !4610

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block39, %bb.c, %bb.d
  %i.gu = add i64 %i.f, %3
  store i64 %i.gu, ptr %i.e, align 8, !tbaa !245
  store ptr %i.b, ptr %0, align 8, !tbaa !289
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.b, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.v = add i64 %5, -4
  %i.w = sub i64 %i.v, %6                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4640
  %wide.load18 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4640
  %i.ai = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4623

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4641, !noalias !4640
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader126

.lr.ph.i.i.i.preheader126:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph127 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader126, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph127, %.lr.ph.i.i.i.preheader126 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4625

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 9 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check33 = icmp ult i64 %3, 20
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.preheader122, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.as = shl i64 %3, 2                           ; 2 uses
  %i.at = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %4, i64 %i.as     ; 2 uses
  %bound035 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.at, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %.015.lcssa.i.i.i, %i.au
  %bound139 = icmp ult ptr %4, %i.at
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.au, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %3, -8                       ; 3 uses
  %i.av = and i64 %3, 7
  %i.aw = shl i64 %n.vec46, 2                     ; 2 uses
  %i.ax = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %4, i64 %i.aw
  %i.az = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next62, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.az, %vector.ph45 ], [ %i.bd, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.be, %vector.body47 ]
  %i.ba = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba ; 3 uses
  %next.gep59 = getelementptr i8, ptr %4, i64 %i.ba ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep51) ]
  %i.bb = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load60 = load <4 x i32>, ptr %next.gep59, align 4, !tbaa !249, !alias.scope !4642
  %wide.load61 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !249, !alias.scope !4642
  %i.bc = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %wide.load60, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4643, !noalias !4644
  store <4 x i32> %wide.load61, ptr %i.bc, align 4, !tbaa !249, !alias.scope !4643, !noalias !4644
  %i.bd = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.be = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next62 = add nuw i64 %index48, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next62, %n.vec46
  br i1 %i.bf, label %middle.block63, label %vector.body47, !llvm.loop !4630

middle.block63:                                   ; preds = %vector.body47
  %bin.rdx64 = add <4 x i32> %i.be, %i.bd
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx64) ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4645, !noalias !4642
  %cmp.n65 = icmp eq i64 %3, %n.vec46
  br i1 %cmp.n65, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %vector.memcheck34, %.lr.ph.i.i.i.i.preheader, %middle.block63
  %.ph123 = phi i32 [ %.pre, %vector.memcheck34 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %middle.block63 ] ; 2 uses
  %.018.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck34 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block63 ] ; 4 uses
  %.01417.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck34 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block63 ] ; 2 uses
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck34 ], [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block63 ] ; 2 uses
  %i.bh = add i64 %.018.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i.prol
  %i.bi = phi i32 [ %i.bk, %.lr.ph.i.i.i.i.prol ], [ %.ph123, %.lr.ph.i.i.i.i.preheader122 ]
  %.018.i.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.prol ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.prol ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader122 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.bj = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.bj, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !249
  %i.bk = add i32 %i.bi, 1                        ; 3 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bn = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4631

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader122
  %.unr = phi i32 [ %.ph123, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bk, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bn, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bm, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bl, %.lr.ph.i.i.i.i.prol ]
  %i.bo = icmp ult i64 %i.bh, 3
  br i1 %i.bo, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bp = phi i32 [ %i.cd, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.018.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.bq = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !249
  store i32 %i.bq, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.br = add i32 %i.bp, 1
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !249
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !249
  %i.bv = add i32 %i.bp, 2
  store i32 %i.bv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !249
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !249
  %i.bz = add i32 %i.bp, 3
  store i32 %i.bz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !249
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !249
  %i.cd = add i32 %i.bp, 4                        ; 2 uses
  store i32 %i.cd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.cg = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4632

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block63, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i
  %i.ch = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.ci = shl i64 %i.t, 2
  %i.cj = add i64 %i.ci, %6
  %i.ck = add i64 %i.cj, -4
  %i.cl = sub i64 %i.ck, %5                       ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.cl, 156
  br i1 %min.iters.check84, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.co = shl i64 %3, 2
  %i.cp = shl i64 %i.t, 2
  %i.cq = add i64 %i.cp, %6
  %i.cr = add i64 %i.cq, -4
  %i.cs = sub i64 %i.cr, %5
  %i.ct = and i64 %i.cs, -4                       ; 2 uses
  %i.cu = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.co
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ct
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 2 uses
  %i.cx = getelementptr i8, ptr %2, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %bound086 = icmp ult ptr %i.ch, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound187 = icmp ugt ptr %i.cw, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %i.ch, %i.cy
  %bound190 = icmp ult ptr %2, %i.cw
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %found.conflict88, %found.conflict91
  %bound093 = icmp ugt ptr %i.cy, @_ZN5boost9container4test12copyable_int5countE
  %bound194 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx92, %found.conflict95
  br i1 %conflict.rdx96, label %.lr.ph.i20.i.i.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck85
  %n.vec98 = and i64 %i.cn, 9223372036854775800   ; 3 uses
  %i.cz = shl i64 %n.vec98, 2                     ; 2 uses
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.ch, i64 %i.cz
  %i.dc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre9, i64 0
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next114, %vector.body99 ] ; 2 uses
  %vec.phi101 = phi <4 x i32> [ %i.dc, %vector.ph97 ], [ %i.dg, %vector.body99 ]
  %vec.phi102 = phi <4 x i32> [ zeroinitializer, %vector.ph97 ], [ %i.dh, %vector.body99 ]
  %i.dd = shl i64 %index100, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %2, i64 %i.dd ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.ch, i64 %i.dd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep104) ]
  %i.de = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load112 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !249, !alias.scope !4646
  %wide.load113 = load <4 x i32>, ptr %i.de, align 4, !tbaa !249, !alias.scope !4646
  %i.df = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %wide.load112, ptr %next.gep104, align 4, !tbaa !249, !alias.scope !4647, !noalias !4648
  store <4 x i32> %wide.load113, ptr %i.df, align 4, !tbaa !249, !alias.scope !4647, !noalias !4648
  %i.dg = add <4 x i32> %vec.phi101, splat (i32 1) ; 2 uses
  %i.dh = add <4 x i32> %vec.phi102, splat (i32 1) ; 2 uses
  %index.next114 = add nuw i64 %index100, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next114, %n.vec98
  br i1 %i.di, label %middle.block115, label %vector.body99, !llvm.loop !4637

middle.block115:                                  ; preds = %vector.body99
  %bin.rdx116 = add <4 x i32> %i.dh, %i.dg
  %i.dj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx116) ; 2 uses
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4649, !noalias !4646
  %cmp.n117 = icmp eq i64 %i.cn, %n.vec98
  br i1 %cmp.n117, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck85, %.lr.ph.i20.preheader.i.i, %middle.block115
  %.ph = phi i32 [ %.pre9, %vector.memcheck85 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.dj, %middle.block115 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck85 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.da, %middle.block115 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ch, %vector.memcheck85 ], [ %i.ch, %.lr.ph.i20.preheader.i.i ], [ %i.db, %middle.block115 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dk = phi i32 [ %i.dm, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dn, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.do, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.dl = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.dl, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.dm = add i32 %i.dk, 1                        ; 2 uses
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dn, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4638

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block115, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter131 = and i64 %i.t, 3                  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.dp, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ds, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dp = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = add i32 %i.dq, -1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4639

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.dp, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.ds, %.lr.ph.i.i.prol ]
  %i.dt = icmp ult i64 %i.t, 4
  br i1 %i.dt, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.eb, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !249
  %i.dx = add i32 %i.du, -2
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !249
  %i.dz = add i32 %i.du, -3
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.eb = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ea, align 4, !tbaa !249
  %i.ec = add i32 %i.du, -4
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = icmp eq ptr %i.ee, %i.s
  br i1 %i.ef, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !246
  %i.eh = shl i64 %i.eg, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.eh) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.ei = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ej = ptrtoint ptr %2 to i64
  %i.ek = ptrtoint ptr %i.s to i64
  %i.el = sub i64 %i.ej, %i.ek
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.em = add i64 %i.ei, %3
  store i64 %i.em, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.en = getelementptr inbounds i8, ptr %i.r, i64 %i.el
  store ptr %i.en, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !290    ; 11 uses
  %.not22 = icmp eq ptr %i.c, %1
  br i1 %.not22, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 14 uses
  %.not23 = icmp eq i64 %i.e, 0
  br i1 %.not23, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp eq ptr %i.c, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.f, %i.c
  %or.cond = select i1 %.not24, i1 true, i1 %i.g, !prof !83
  br i1 %or.cond, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.h = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !290
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %.not25 = icmp ugt i64 %i.e, %2
  br i1 %.not25, label %bb.h, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol
end_hunk_10
begin_hunk_11_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m:bb.a
  br i1 %prol.iter49.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !4657

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.05.i.i.i.unr = phi i64 [ %i.be, %.lr.ph.i.i.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.bd, %.lr.ph.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.prol ]
  %i.cf = icmp ult i64 %i.be, 4
  br i1 %i.cf, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !249
  %i.cg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !249
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.cn = add i64 %.05.i.i.i, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old6.i = icmp eq ptr %.old.i, %i.bd
  br i1 %.old6.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !246
  %i.cr = shl i64 %i.cq, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.cr) #22
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %bb.k
  %i.cs = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i ], [ %.pre.i.i, %bb.k ], [ %i.be, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i ], [ %i.be, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i ]
  store ptr %i.bc, ptr %0, align 8, !tbaa !247
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !245
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.sink = phi i64 [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.e, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ], [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29 ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.140", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !254  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !247, !nonnull !76, !noundef !76
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.g, ptr %i.f, align 4, !tbaa !249
  %i.h = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !254
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = load ptr, ptr %0, align 8, !tbaa !247
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.140") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb0EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !285    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !285    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !246  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter132 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4660

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !249
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !249
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !249
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !254
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !247
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !285   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !285   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check87, label %.lr.ph.i.i13.preheader111, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %i.ar = getelementptr i8, ptr %i.k, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ar, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.k, %i.as
  %bound190 = icmp ult ptr %i.ah, %i.ar
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ugt ptr %i.as, @_ZN5boost9container4test12copyable_int5countE
  %bound193 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph.i.i13.preheader111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec97 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec97, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.k, i64 %i.at   ; 2 uses
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next105, %vector.body98 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph96 ], [ %i.ba, %vector.body98 ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph96 ], [ %i.bb, %vector.body98 ]
  %i.ax = shl i64 %index99, 2                     ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.k, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load103 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !249, !alias.scope !4678
  %wide.load104 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !249, !alias.scope !4678
  %i.az = getelementptr i8, ptr %next.gep102, i64 16
  store <4 x i32> %wide.load103, ptr %next.gep102, align 4, !tbaa !249, !alias.scope !4679, !noalias !4680
  store <4 x i32> %wide.load104, ptr %i.az, align 4, !tbaa !249, !alias.scope !4679, !noalias !4680
  %i.ba = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bb = add <4 x i32> %vec.phi100, splat (i32 1) ; 2 uses
  %index.next105 = add nuw i64 %index99, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next105, %n.vec97
  br i1 %i.bc, label %middle.block106, label %vector.body98, !llvm.loop !4665

middle.block106:                                  ; preds = %vector.body98
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4681, !noalias !4678
  %cmp.n107 = icmp eq i64 %i.ao, %n.vec97
  br i1 %cmp.n107, label %.loopexit, label %.lr.ph.i.i13.preheader111

.lr.ph.i.i13.preheader111:                        ; preds = %vector.memcheck88, %.lr.ph.i.i13.preheader, %middle.block106
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck88 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bd, %middle.block106 ]
  %.ph112 = phi ptr [ %i.ah, %vector.memcheck88 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block106 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck88 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.av, %middle.block106 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader111, %.lr.ph.i.i13
  %i.be = phi i32 [ %i.bh, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader111 ]
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.ph112, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bj, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !249
  store i32 %i.bg, ptr %.011.i.i, align 4, !tbaa !249
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !4666

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block106, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.av, %middle.block106 ], [ %i.bj, %.lr.ph.i.i13 ]
  %i.bk = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bl = ptrtoint ptr %i.k to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !245
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !247   ; 9 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !254 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.f
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.br, 8
  %i.bt = sub i64 %i.d, %i.bp
  %diff.check60 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check60
  br i1 %or.cond, label %.lr.ph.i.i19.preheader115, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec64 = and i64 %i.br, -8                    ; 3 uses
  %i.bu = shl i64 %n.vec64, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bu  ; 2 uses
  %i.bx = and i64 %i.br, 7
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.by = shl i64 %index66, 2                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.a, i64 %i.by ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !249, !noalias !4682
  %wide.load70 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !249, !noalias !4682
  %i.ca = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load69, ptr %next.gep68, align 4, !tbaa !249, !noalias !4682
  store <4 x i32> %wide.load70, ptr %i.ca, align 4, !tbaa !249, !noalias !4682
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.cb, label %middle.block72, label %vector.body65, !llvm.loop !4669

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.br, %n.vec64
  br i1 %cmp.n73, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader115

.lr.ph.i.i19.preheader115:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block72
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block72 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block72 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block72 ] ; 4 uses
  %i.cc = add i64 %.04.i.i.ph, -1
  %xtraiter125 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader115, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ]
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader115 ]
  %i.cd = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.ce = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !249, !noalias !4682
  store i32 %i.ce, ptr %.0.i.prol, align 4, !tbaa !249, !noalias !4682
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !4670

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader115
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cd, %.lr.ph.i.i19.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.dg, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dd, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ci = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !249, !noalias !4682
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !249, !noalias !4682
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !249, !noalias !4682
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !249, !noalias !4682
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !249, !noalias !4682
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !249, !noalias !4682
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !249, !noalias !4682
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !249, !noalias !4682
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !249, !noalias !4682
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !249, !noalias !4682
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !249, !noalias !4682
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !249, !noalias !4682
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !249, !noalias !4682
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !249, !noalias !4682
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dd = add i64 %.04.i.i, -8                    ; 2 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !249, !noalias !4682
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !249, !noalias !4682
end_hunk_11
begin_hunk_12_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.sroa.16.1126 = phi ptr [ %.sroa.16.5, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49 ], [ %spec.select, %.lr.ph129.preheader ] ; 3 uses
  %.sroa.058.1125 = phi ptr [ %.sroa.058.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49 ], [ %.sroa.058.0.lcssa, %.lr.ph129.preheader ] ; 5 uses
  %i.br = trunc i64 %.0128 to i32                 ; 3 uses
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bs = load ptr, ptr %2, align 8, !tbaa !247, !nonnull !76, !noundef !76
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !254 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !249
  %i.bv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bx = add i64 %i.bt, 1
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !254
  %.not.i.i40 = icmp eq ptr %.sroa.16.1126, %.sroa.29.1127
  br i1 %.not.i.i40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph129
  store i32 %i.br, ptr %.sroa.16.1126, align 4, !tbaa !67
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49

bb.j:                                             ; preds = %.lr.ph129
  %i.by = ptrtoint ptr %.sroa.29.1127 to i64
  %i.bz = ptrtoint ptr %.sroa.058.1125 to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41: ; preds = %bb.j
  %i.cc = ashr exact i64 %i.ca, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i42, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 2305843009213693951)
  %i.cg = select i1 %i.ce, i64 2305843009213693951, i64 %i.cf ; 3 uses
  %.not.i.i.i.i43 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43)
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #24
          to label %.noexc48 unwind label %.loopexit ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store i32 %i.br, ptr %i.cj, align 4, !tbaa !67
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.l, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46

bb.l:                                             ; preds = %.noexc48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr align 4 %.sroa.058.1125, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46: ; preds = %bb.l, %.noexc48
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.1125, i64 noundef %i.ca) #26
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit49

_ZNSt6vectorIiSaIiEE9push_backEOi.exit49:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46, %bb.i
  %.sroa.058.6 = phi ptr [ %i.ci, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46 ], [ %.sroa.058.1125, %bb.i ] ; 6 uses
  %.pn = phi ptr [ %i.cj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46 ], [ %.sroa.16.1126, %bb.i ]
  %.sroa.29.6 = phi ptr [ %i.cl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i46 ], [ %.sroa.29.1127, %bb.i ] ; 4 uses
  %.sroa.16.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = add nuw i64 %.0128, 1                   ; 2 uses
  %exitcond146.not = icmp eq i64 %i.co, %i.be
  br i1 %exitcond146.not, label %._crit_edge130, label %.lr.ph129, !llvm.loop !4718

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i41
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  br label %.thread88

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.lr.ph.i, %.lr.ph.i35, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit, %._crit_edge130, %bb.h, %._crit_edge
  %.sroa.058.2 = phi ptr [ %.sroa.058.0.lcssa, %._crit_edge ], [ %.sroa.058.6, %.lr.ph.i35 ], [ %.sroa.058.6, %bb.h ], [ %.sroa.058.6, %._crit_edge130 ], [ %.sroa.058.0.lcssa, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit ], [ %.sroa.058.0.lcssa, %.lr.ph.i ] ; 2 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.0.lcssa, %._crit_edge ], [ %.sroa.29.6, %.lr.ph.i35 ], [ %.sroa.29.6, %bb.h ], [ %.sroa.29.6, %._crit_edge130 ], [ %.sroa.29.0.lcssa, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit ], [ %.sroa.29.0.lcssa, %.lr.ph.i ]
  %.017 = phi i1 [ false, %._crit_edge ], [ %i.bn, %.lr.ph.i35 ], [ true, %bb.h ], [ false, %._crit_edge130 ], [ true, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit ], [ false, %.lr.ph.i ]
  %i.cr = ptrtoint ptr %.sroa.29.2 to i64
  %i.cs = ptrtoint ptr %.sroa.058.2 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.2, i64 noundef %i.ct) #26
  %.pre148 = load i64, ptr %i.b, align 8, !tbaa !254 ; 5 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !247   ; 4 uses
  %.not3.i.i = icmp eq i64 %.pre148, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %xtraiter209 = and i64 %.pre148, 3              ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i.i.prol ], [ %.pre148, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.prol ], [ %i.cu, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter211 = phi i64 [ %prol.iter211.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cv = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.cw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cx = add i32 %i.cw, -1
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter211.next = add i64 %prol.iter211, 1   ; 2 uses
  %prol.iter211.cmp.not = icmp eq i64 %prol.iter211.next, %xtraiter209
  br i1 %prol.iter211.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4719

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %.pre148, %.lr.ph.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.cu, %.lr.ph.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.prol ]
  %i.cz = icmp ult i64 %.pre148, 4
  br i1 %i.cz, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dh, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.da = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dc, align 4, !tbaa !249
  %i.dd = add i32 %i.da, -2
  store i32 %i.dd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.de, align 4, !tbaa !249
  %i.df = add i32 %i.da, -3
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.dh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dg, align 4, !tbaa !249
  %i.di = add i32 %i.da, -4
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !246 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.dk, 0
  %i.dl = icmp eq ptr %i.a, %i.cu
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dm = shl i64 %i.dk, 2
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.dm) #22
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.017

.thread88:                                        ; preds = %bb.m, %.loopexit.split-lp99, %.loopexit98
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %bb.m ], [ %.sroa.058.0119, %.loopexit98 ], [ %.sroa.058.0119, %.loopexit.split-lp99 ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %bb.m ], [ %.sroa.29.0121, %.loopexit98 ], [ %.sroa.29.0121, %.loopexit.split-lp99 ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.phi, %bb.m ], [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  %i.dn = ptrtoint ptr %.sroa.29.3 to i64
  %i.do = ptrtoint ptr %.sroa.058.3 to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.x, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !285    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  %5 = ptrtoaddr ptr %i.g to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.j = add i64 %3, -1
  %xtraiter58 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.k = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.l = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.l, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !249
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4722

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp ult i64 %i.j, 3
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.q = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.q, ptr %.01416.i.i.i.i, align 4, !tbaa !249
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.u = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.u, ptr %i.t, align 4, !tbaa !249
  %i.v = add i32 %i.r, 2
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.x = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.x, ptr %i.w, align 4, !tbaa !249
  %i.y = add i32 %i.r, 3
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.aa = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !249
  %i.ac = add i32 %i.r, 4
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !46

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.h to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ai ; 6 uses
  %i.ak = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i10.i.i.prol ], [ %i.aj, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i10.i.i.prol ], [ %i.h, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.al = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.am = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.am, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.an = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4723

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %i.ar = icmp ult i64 %i.ak, 3
  br i1 %i.ar, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.as = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.as, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !249
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !249
  %i.ay = add i32 %i.at, 2
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !249
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !249
  %i.bc = add i32 %i.at, 3
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bf = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !249
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !249
  %i.bh = add i32 %i.at, 4
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bk = shl nuw nsw i64 %i.e, 2
  %i.bl = shl i64 %3, 2
  %i.bm = add i64 %i.bk, %5
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 60
  %i.bs = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.aj, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !249
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !249
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !249
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !4724

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !249
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !4725

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !249 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cf = and i64 %3, 7
  %i.cg = shl i64 %n.vec29, 2
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.ci = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4, !tbaa !249
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.ck, label %middle.block34, label %vector.body30, !llvm.loop !4726

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.cf, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.ch, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cl, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cm, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cl = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !249
  %i.cm = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !4727

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i50.i.i.i ], [ %i.cn, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.co = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !249
  store i32 %i.co, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.cp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cr, %i.h
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !45

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !249 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ah, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ah, -8                    ; 3 uses
  %i.ct = and i64 %i.ah, 7
  %i.cu = shl nsw i64 %n.vec41, 2
  %i.cv = getelementptr i8, ptr %i.a, i64 %i.cu
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.cw = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat43, ptr %i.cx, align 4, !tbaa !249
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.cy, label %middle.block48, label %vector.body44, !llvm.loop !4728

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ah, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ah, %.lr.ph.i53.i.i.i ], [ %i.ct, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.cv, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.cz, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.da, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.cz = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !249
  %i.da = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !4729

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.db = sub i64 %3, %i.ah                       ; 3 uses
  %xtraiter55 = and i64 %i.db, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %i.db, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %i.dc = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.dd = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dd, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.de = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4730

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.db, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %i.dh = sub i64 %i.ah, %3
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.dj = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dj, ptr %.01416.i.i.i.i.i, align 4, !tbaa !249
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.dn = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !249
  %i.do = add i32 %i.dk, 2
  store i32 %i.do, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dp = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 8
  %i.dq = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !249
  %i.dr = add i32 %i.dk, 3
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 12
  %i.dt = add i64 %.017.i.i.i.i.i, -4             ; 2 uses
  %i.du = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !249
  %i.dv = add i32 %i.dk, 4
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %scalar.ph26, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block34, %bb.c, %bb.d
  %i.dx = add i64 %i.e, %3
  store i64 %i.dx, ptr %i.d, align 8, !tbaa !245
  store ptr %i.a, ptr %0, align 8, !tbaa !289
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.v = add i64 %5, -4
  %i.w = sub i64 %i.v, %6                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4750
  %wide.load18 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4750
  %i.ai = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4733

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4751, !noalias !4750
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader122

.lr.ph.i.i.i.preheader122:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph123 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader122, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph123, %.lr.ph.i.i.i.preheader122 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4735

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 9 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check33 = icmp ult i64 %3, 20
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.preheader118, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.as = shl i64 %3, 2
  %i.at = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %bound035 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.at, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %.015.lcssa.i.i.i, %i.au
  %bound139 = icmp ult ptr %4, %i.at
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.au, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %3, -8                       ; 3 uses
  %i.av = and i64 %3, 7
  %i.aw = shl i64 %n.vec46, 2
  %i.ax = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aw
  %i.ay = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.az = load i32, ptr %4, align 4, !tbaa !249, !alias.scope !4752
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next59, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.ay, %vector.ph45 ], [ %i.bc, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bd, %vector.body47 ]
  %i.ba = shl i64 %index48, 2
  %next.gep51 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep51) ]
  %i.bb = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4753, !noalias !4754
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !249, !alias.scope !4753, !noalias !4754
  %i.bc = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bd = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next59 = add nuw i64 %index48, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next59, %n.vec46
  br i1 %i.be, label %middle.block60, label %vector.body47, !llvm.loop !4740

middle.block60:                                   ; preds = %vector.body47
  %bin.rdx61 = add <4 x i32> %i.bd, %i.bc
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx61) ; 2 uses
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4755, !noalias !4752
  %cmp.n62 = icmp eq i64 %3, %n.vec46
  br i1 %cmp.n62, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %vector.memcheck34, %.lr.ph.i.i.i.i.preheader, %middle.block60
  %.ph119 = phi i32 [ %.pre, %vector.memcheck34 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %middle.block60 ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck34 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block60 ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck34 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block60 ] ; 2 uses
  %i.bg = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i.prol
  %i.bh = phi i32 [ %i.bk, %.lr.ph.i.i.i.i.prol ], [ %.ph119, %.lr.ph.i.i.i.i.preheader118 ]
  %.017.i.i.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader118 ]
  %i.bi = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.bj = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bj, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !249
  %i.bk = add i32 %i.bh, 1                        ; 3 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4741

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader118
  %.unr = phi i32 [ %.ph119, %.lr.ph.i.i.i.i.preheader118 ], [ %i.bk, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ], [ %i.bi, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ], [ %i.bl, %.lr.ph.i.i.i.i.prol ]
  %i.bm = icmp ult i64 %i.bg, 3
  br i1 %i.bm, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bn = phi i32 [ %i.bz, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.bo = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bo, ptr %.01416.i.i.i.i, align 4, !tbaa !249
  %i.bp = add i32 %i.bn, 1
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.br = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !249
  %i.bs = add i32 %i.bn, 2
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bt = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.bu = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !249
  %i.bv = add i32 %i.bn, 3
  store i32 %i.bv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.bx = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.by = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !249
  %i.bz = add i32 %i.bn, 4                        ; 2 uses
  store i32 %i.bz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4742

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block60, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.cb = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.cc = shl i64 %i.t, 2
  %i.cd = add i64 %i.cc, %6
  %i.ce = add i64 %i.cd, -4
  %i.cf = sub i64 %i.ce, %5                       ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check80 = icmp ult i64 %i.cf, 156
  br i1 %min.iters.check80, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.ci = shl i64 %3, 2
  %i.cj = shl i64 %i.t, 2
  %i.ck = add i64 %i.cj, %6
  %i.cl = add i64 %i.ck, -4
  %i.cm = sub i64 %i.cl, %5
  %i.cn = and i64 %i.cm, -4                       ; 2 uses
  %i.co = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ci
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cn
  %i.cq = getelementptr i8, ptr %i.cp, i64 4      ; 2 uses
  %i.cr = getelementptr i8, ptr %2, i64 %i.cn
  %i.cs = getelementptr i8, ptr %i.cr, i64 4      ; 2 uses
  %bound082 = icmp ult ptr %i.cb, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound183 = icmp ugt ptr %i.cq, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.cb, %i.cs
  %bound186 = icmp ult ptr %2, %i.cq
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ugt ptr %i.cs, @_ZN5boost9container4test12copyable_int5countE
  %bound190 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph.i20.i.i.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.ch, 9223372036854775800   ; 3 uses
  %i.ct = shl i64 %n.vec94, 2                     ; 2 uses
  %i.cu = getelementptr i8, ptr %2, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cb, i64 %i.ct
  %i.cw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre9, i64 0
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next110, %vector.body95 ] ; 2 uses
  %vec.phi97 = phi <4 x i32> [ %i.cw, %vector.ph93 ], [ %i.da, %vector.body95 ]
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph93 ], [ %i.db, %vector.body95 ]
  %i.cx = shl i64 %index96, 2                     ; 2 uses
  %next.gep99 = getelementptr i8, ptr %2, i64 %i.cx ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.cb, i64 %i.cx ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep100) ]
  %i.cy = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load108 = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !249, !alias.scope !4756
  %wide.load109 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !249, !alias.scope !4756
  %i.cz = getelementptr i8, ptr %next.gep100, i64 16
  store <4 x i32> %wide.load108, ptr %next.gep100, align 4, !tbaa !249, !alias.scope !4757, !noalias !4758
  store <4 x i32> %wide.load109, ptr %i.cz, align 4, !tbaa !249, !alias.scope !4757, !noalias !4758
  %i.da = add <4 x i32> %vec.phi97, splat (i32 1) ; 2 uses
  %i.db = add <4 x i32> %vec.phi98, splat (i32 1) ; 2 uses
  %index.next110 = add nuw i64 %index96, 8        ; 2 uses
  %i.dc = icmp eq i64 %index.next110, %n.vec94
  br i1 %i.dc, label %middle.block111, label %vector.body95, !llvm.loop !4747

middle.block111:                                  ; preds = %vector.body95
  %bin.rdx112 = add <4 x i32> %i.db, %i.da
  %i.dd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx112) ; 2 uses
  store i32 %i.dd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4759, !noalias !4756
  %cmp.n113 = icmp eq i64 %i.ch, %n.vec94
  br i1 %cmp.n113, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck81, %.lr.ph.i20.preheader.i.i, %middle.block111
  %.ph = phi i32 [ %.pre9, %vector.memcheck81 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.dd, %middle.block111 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck81 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.cu, %middle.block111 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.cb, %vector.memcheck81 ], [ %i.cb, %.lr.ph.i20.preheader.i.i ], [ %i.cv, %middle.block111 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.de = phi i32 [ %i.dg, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dh, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.di, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.df = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.df, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.dg = add i32 %i.de, 1                        ; 2 uses
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dh, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4748

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block111, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter127 = and i64 %i.t, 3                  ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.dj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.dm, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4749

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.dm, %.lr.ph.i.i.prol ]
  %i.dn = icmp ult i64 %i.t, 4
  br i1 %i.dn, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dv, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.do = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dq, align 4, !tbaa !249
  %i.dr = add i32 %i.do, -2
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.ds, align 4, !tbaa !249
  %i.dt = add i32 %i.do, -3
  store i32 %i.dt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.dv = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.du, align 4, !tbaa !249
  %i.dw = add i32 %i.do, -4
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = icmp eq ptr %i.dy, %i.s
  br i1 %i.dz, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !246
  %i.eb = shl i64 %i.ea, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.eb) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.ec = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ed = ptrtoint ptr %2 to i64
  %i.ee = ptrtoint ptr %i.s to i64
  %i.ef = sub i64 %i.ed, %i.ee
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.eg = add i64 %i.ec, %3
  store i64 %i.eg, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.eh = getelementptr inbounds i8, ptr %i.r, i64 %i.ef
  store ptr %i.eh, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.e, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.a, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 7 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter98 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %i.h, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.k = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, -1
end_hunk_12
begin_hunk_13_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE:bb.a
  %i.bx = getelementptr i8, ptr %next.gep67, i64 16
  store <4 x i32> %broadcast.splat64, ptr %next.gep67, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat64, ptr %i.bx, align 4, !tbaa !249
  %index.next68 = add nuw i64 %index66, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.by, label %middle.block69, label %vector.body65, !llvm.loop !4767

middle.block69:                                   ; preds = %vector.body65
  %cmp.n70 = icmp eq i64 %i.br, %n.vec62
  br i1 %cmp.n70, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.lr.ph.i.i32, %middle.block69
  %.ph91 = phi ptr [ %i.bp, %.lr.ph.i.i32 ], [ %i.bu, %middle.block69 ]
  %.06.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i32 ], [ %i.bv, %middle.block69 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %i.bz = phi ptr [ %i.cb, %scalar.ph59 ], [ %.ph91, %scalar.ph59.preheader ] ; 2 uses
  %.06.i.i = phi i64 [ %i.ca, %scalar.ph59 ], [ %.06.i.i.ph, %scalar.ph59.preheader ]
  %i.ca = add i64 %.06.i.i, -1                    ; 2 uses
  store i32 %.pre.i.i, ptr %i.bz, align 4, !tbaa !249
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %.not.i.i33 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i33, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph59, !llvm.loop !4768

_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %scalar.ph59, %middle.block69, %bb.h
  %.0.i = phi ptr [ %i.bp, %bb.h ], [ %i.bu, %middle.block69 ], [ %i.cb, %scalar.ph59 ] ; 2 uses
  %i.cc = sub i64 %i.a, %i.br                     ; 3 uses
  %xtraiter95 = and i64 %i.cc, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol

.lr.ph.i19.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i19.i.prol
  %.016.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i19.i.prol ], [ %i.cc, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i19.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.lr.ph.i19.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.cd = add i64 %.016.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
  %i.ce = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.ce, ptr %.01315.i.i.prol, align 4, !tbaa !249
  %i.cf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %.01315.i.i.prol, i64 4 ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol, !llvm.loop !4769

.lr.ph.i19.i.prol.loopexit:                       ; preds = %.lr.ph.i19.i.prol, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.016.i.i.unr = phi i64 [ %i.cc, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cd, %.lr.ph.i19.i.prol ]
  %.01315.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.ch, %.lr.ph.i19.i.prol ]
  %i.ci = sub i64 %i.br, %2
  %i.cj = add i64 %i.ci, %4
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i
  %.016.i.i = phi i64 [ %i.cv, %.lr.ph.i19.i ], [ %.016.i.i.unr, %.lr.ph.i19.i.prol.loopexit ]
  %.01315.i.i = phi ptr [ %i.cy, %.lr.ph.i19.i ], [ %.01315.i.i.unr, %.lr.ph.i19.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  %i.cl = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cl, ptr %.01315.i.i, align 4, !tbaa !249
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  %i.cp = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.cm, 2
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  %i.cs = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !249
  %i.ct = add i32 %i.cm, 3
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cu = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.cv = add i64 %.016.i.i, -4                   ; 2 uses
  %i.cw = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !249
  %i.cx = add i32 %i.cm, 4
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i20.i.3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i20.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i, !llvm.loop !4770

bb.i:                                             ; preds = %bb.g
  %.not5.i.i = icmp eq i64 %i.a, 0
  br i1 %.not5.i.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.pre.i22.i = load i32, ptr %1, align 4, !tbaa !249 ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i23.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.a, -8                       ; 3 uses
  %i.cz = shl i64 %n.vec, 2
  %i.da = getelementptr i8, ptr %i.bp, i64 %i.cz  ; 2 uses
  %i.db = and i64 %i.a, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i22.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !4771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.07.i.i.ph = phi ptr [ %i.bp, %.lr.ph.preheader.i.i ], [ %i.da, %middle.block ]
  %.046.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i ], [ %i.db, %middle.block ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader, %.lr.ph.i23.i
  %.07.i.i = phi ptr [ %i.dg, %.lr.ph.i23.i ], [ %.07.i.i.ph, %.lr.ph.i23.i.preheader ] ; 2 uses
  %.046.i.i = phi i64 [ %i.df, %.lr.ph.i23.i ], [ %.046.i.i.ph, %.lr.ph.i23.i.preheader ]
  %i.df = add i64 %.046.i.i, -1                   ; 2 uses
  store i32 %.pre.i22.i, ptr %.07.i.i, align 4, !tbaa !249
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4 ; 2 uses
  %.not.i24.i = icmp eq i64 %i.df, 0
  br i1 %.not.i24.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i, !llvm.loop !4772

_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i23.i, %middle.block, %bb.i
  %.0.lcssa.i.i28 = phi ptr [ %i.bp, %bb.i ], [ %i.da, %middle.block ], [ %i.dg, %.lr.ph.i23.i ] ; 2 uses
  %i.dh = sub nuw i64 %i.br, %i.a                 ; 4 uses
  %.not3.i.i29 = icmp eq i64 %i.dh, 0
  br i1 %.not3.i.i29, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.di = add i64 %i.br, %4
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol

.lr.ph.i26.i.prol:                                ; preds = %.lr.ph.i26.i.preheader, %.lr.ph.i26.i.prol
  %.05.i.i30.prol = phi i64 [ %i.dj, %.lr.ph.i26.i.prol ], [ %i.dh, %.lr.ph.i26.i.preheader ]
  %storemerge4.i.i31.prol = phi ptr [ %i.dm, %.lr.ph.i26.i.prol ], [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i26.i.prol ], [ 0, %.lr.ph.i26.i.preheader ]
  %i.dj = add i64 %.05.i.i30.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i31.prol, align 4, !tbaa !249
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol, !llvm.loop !4773

.lr.ph.i26.i.prol.loopexit:                       ; preds = %.lr.ph.i26.i.prol, %.lr.ph.i26.i.preheader
  %.05.i.i30.unr = phi i64 [ %i.dh, %.lr.ph.i26.i.preheader ], [ %i.dj, %.lr.ph.i26.i.prol ]
  %storemerge4.i.i31.unr = phi ptr [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ], [ %i.dm, %.lr.ph.i26.i.prol ]
  %i.dn = sub i64 %2, %i.di
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i
  %.05.i.i30 = phi i64 [ %i.dw, %.lr.ph.i26.i ], [ %.05.i.i30.unr, %.lr.ph.i26.i.prol.loopexit ]
  %storemerge4.i.i31 = phi ptr [ %i.dy, %.lr.ph.i26.i ], [ %storemerge4.i.i31.unr, %.lr.ph.i26.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i31, align 4, !tbaa !249
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 4
  store i32 -2147483648, ptr %i.dr, align 4, !tbaa !249
  %i.ds = add i32 %i.dp, -2
  store i32 %i.ds, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 8
  store i32 -2147483648, ptr %i.dt, align 4, !tbaa !249
  %i.du = add i32 %i.dp, -3
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 12
  %i.dw = add i64 %.05.i.i30, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.dv, align 4, !tbaa !249
  %i.dx = add i32 %i.dp, -4
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 16
  %.not.i27.i.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i27.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i, %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i, %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.a, ptr %i.bq, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.v = add i64 %5, -4
  %i.w = sub i64 %i.v, %6                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4788
  %wide.load18 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4788
  %i.ai = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4778

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4789, !noalias !4788
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 3 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4780

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.as = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.am, %middle.block ], [ %i.ap, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 3 uses
  %i.at = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.at, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.au = add i32 %i.as, 1                        ; 4 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.av = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.aw = shl i64 %i.t, 2
  %i.ax = add i64 %i.aw, %6
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %5                       ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.az, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.bc = shl i64 %3, 2
  %i.bd = shl i64 %i.t, 2
  %i.be = add i64 %i.bd, %6
  %i.bf = add i64 %i.be, -4
  %i.bg = sub i64 %i.bf, %5
  %i.bh = and i64 %i.bg, -4                       ; 2 uses
  %i.bi = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bc
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 4      ; 2 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %bound035 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bk, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.av, %i.bm
  %bound139 = icmp ult ptr %2, %i.bk
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.au, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4790
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4790
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4791, !noalias !4792
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4791, !noalias !4792
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4785

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4793, !noalias !4790
  %cmp.n58 = icmp eq i64 %i.bb, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.au, %vector.memcheck34 ], [ %i.au, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.av, %vector.memcheck34 ], [ %i.av, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4786

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4787

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.t, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.s
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.s to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.r, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !285    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !285    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !246  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter132 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4794

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !249
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !249
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !249
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !254
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !247
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !285   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !285   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check87, label %.lr.ph.i.i13.preheader111, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %i.ar = getelementptr i8, ptr %i.k, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ar, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.k, %i.as
  %bound190 = icmp ult ptr %i.ah, %i.ar
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ugt ptr %i.as, @_ZN5boost9container4test12copyable_int5countE
  %bound193 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph.i.i13.preheader111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec97 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec97, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.k, i64 %i.at   ; 2 uses
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next105, %vector.body98 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph96 ], [ %i.ba, %vector.body98 ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph96 ], [ %i.bb, %vector.body98 ]
  %i.ax = shl i64 %index99, 2                     ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.k, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load103 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !249, !alias.scope !4812
  %wide.load104 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !249, !alias.scope !4812
  %i.az = getelementptr i8, ptr %next.gep102, i64 16
  store <4 x i32> %wide.load103, ptr %next.gep102, align 4, !tbaa !249, !alias.scope !4813, !noalias !4814
  store <4 x i32> %wide.load104, ptr %i.az, align 4, !tbaa !249, !alias.scope !4813, !noalias !4814
  %i.ba = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bb = add <4 x i32> %vec.phi100, splat (i32 1) ; 2 uses
  %index.next105 = add nuw i64 %index99, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next105, %n.vec97
  br i1 %i.bc, label %middle.block106, label %vector.body98, !llvm.loop !4799

middle.block106:                                  ; preds = %vector.body98
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4815, !noalias !4812
  %cmp.n107 = icmp eq i64 %i.ao, %n.vec97
  br i1 %cmp.n107, label %.loopexit, label %.lr.ph.i.i13.preheader111

.lr.ph.i.i13.preheader111:                        ; preds = %vector.memcheck88, %.lr.ph.i.i13.preheader, %middle.block106
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck88 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bd, %middle.block106 ]
  %.ph112 = phi ptr [ %i.ah, %vector.memcheck88 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block106 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck88 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.av, %middle.block106 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader111, %.lr.ph.i.i13
  %i.be = phi i32 [ %i.bh, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader111 ]
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.ph112, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bj, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader111 ] ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !249
  store i32 %i.bg, ptr %.011.i.i, align 4, !tbaa !249
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !4800

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block106, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.av, %middle.block106 ], [ %i.bj, %.lr.ph.i.i13 ]
  %i.bk = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bl = ptrtoint ptr %i.k to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !245
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !247   ; 9 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !254 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.f
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.br, 8
  %i.bt = sub i64 %i.d, %i.bp
  %diff.check60 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check60
  br i1 %or.cond, label %.lr.ph.i.i19.preheader115, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec64 = and i64 %i.br, -8                    ; 3 uses
  %i.bu = shl i64 %n.vec64, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bu  ; 2 uses
  %i.bx = and i64 %i.br, 7
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.by = shl i64 %index66, 2                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.a, i64 %i.by ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !249, !noalias !4816
  %wide.load70 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !249, !noalias !4816
  %i.ca = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load69, ptr %next.gep68, align 4, !tbaa !249, !noalias !4816
  store <4 x i32> %wide.load70, ptr %i.ca, align 4, !tbaa !249, !noalias !4816
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.cb, label %middle.block72, label %vector.body65, !llvm.loop !4803

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.br, %n.vec64
  br i1 %cmp.n73, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader115

.lr.ph.i.i19.preheader115:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block72
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block72 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block72 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block72 ] ; 4 uses
  %i.cc = add i64 %.04.i.i.ph, -1
  %xtraiter125 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader115, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ]
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader115 ]
  %i.cd = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.ce = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !249, !noalias !4816
  store i32 %i.ce, ptr %.0.i.prol, align 4, !tbaa !249, !noalias !4816
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !4804

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader115
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader115 ], [ %i.cd, %.lr.ph.i.i19.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.dg, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dd, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ci = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !249, !noalias !4816
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !249, !noalias !4816
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !249, !noalias !4816
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !249, !noalias !4816
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !249, !noalias !4816
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !249, !noalias !4816
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !249, !noalias !4816
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !249, !noalias !4816
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !249, !noalias !4816
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !249, !noalias !4816
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !249, !noalias !4816
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !249, !noalias !4816
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !249, !noalias !4816
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !249, !noalias !4816
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dd = add i64 %.04.i.i, -8                    ; 2 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !249, !noalias !4816
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !249, !noalias !4816
end_hunk_13
begin_hunk_14_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE:bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i17, i64 12
  %i.go = add i64 %.05.i.i16, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gn, align 4, !tbaa !249
  %i.gp = add i32 %i.gh, -4
  store i32 %i.gp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i17, i64 16
  %.not.i18.i.3 = icmp eq i64 %i.go, 0
  br i1 %.not.i18.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i17.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i, %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i, %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.f, ptr %i.bq, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEEvT_SF_PNS_11move_detail13disable_if_orIvNSG_14is_convertibleISF_mEENSG_4and_INSG_12is_differentINSG_17integral_constantIjLj1EEENSM_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISF_EENSG_5bool_ILb1EEESU_EENST_ILb0EEESW_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.140", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !247, !noalias !4830 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !254, !noalias !4831 ; 3 uses
  %.idx = shl nsw i64 %i.c, 2
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !289    ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !289    ; 2 uses
  %i.g = icmp ne ptr %i.e, %i.f
  %i.h = icmp ne i64 %i.c, 0
  %or.cond12 = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond12, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.07.013 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !249
  store i32 %i.j, ptr %.sroa.07.013, align 4, !tbaa !249
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !289
  %i.m = load ptr, ptr %2, align 8, !tbaa !289    ; 2 uses
  %i.n = icmp ne ptr %i.l, %i.m
  %i.o = icmp ne ptr %i.k, %i.d
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !4821

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %.lcssa11 = phi ptr [ %i.e, %bb.a ], [ %i.l, %.lr.ph ] ; 2 uses
  %.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.p = icmp eq ptr %.lcssa11, %.lcssa
  br i1 %i.p, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %.critedge
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = ptrtoint ptr %.sroa.07.0.lcssa to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2                   ; 6 uses
  %.not3.i.i = icmp eq ptr %i.d, %.sroa.07.0.lcssa
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.preheader.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  %i.w = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4822

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.preheader.i ], [ %i.w, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.preheader.i ], [ %i.z, %.lr.ph.i.i.prol ]
  %i.aa = icmp ult i64 %i.t, 4
  br i1 %i.aa, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ab = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ad, align 4, !tbaa !249
  %i.ae = add i32 %i.ab, -2
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.af, align 4, !tbaa !249
  %i.ag = add i32 %i.ab, -3
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ai = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !249
  %i.aj = add i32 %i.ab, -4
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.al = sub i64 %i.c, %i.t
  store i64 %i.al, ptr %i.b, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl21is_not_input_iteratorISG_EENSH_5bool_ILb0EEESP_E4typeE.exit

.lr.ph.i:                                         ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i, %.lr.ph.i
  %.sroa.04.0 = phi ptr [ %.lcssa11, %.lr.ph.i ], [ %i.bm, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i ] ; 4 uses
  %.sroa.01.05.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.bl, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !4832
  %i.an = load i64, ptr %i.am, align 8, !tbaa !246, !noalias !4833
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !254, !noalias !4833 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.an, %i.ao
  br i1 %.not.i.i.i, label %bb.g, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %0, align 8, !tbaa !247, !noalias !4833 ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %.sroa.01.05.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.ar = load i32, ptr %.sroa.04.0, align 4, !tbaa !249, !noalias !4833
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !249, !noalias !4833
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4833
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4833
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.b, align 8, !tbaa !254, !noalias !4833
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.av = ptrtoint ptr %.sroa.01.05.i to i64
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.aw, %i.av                    ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aq, i64 -4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !249, !noalias !4833
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !249, !noalias !4833
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4833
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4833
  %i.bc = add i64 %i.ao, 1
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !254, !noalias !4833
  %i.bd = icmp eq i64 %i.ax, 4
  br i1 %i.bd, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.f
  %i.be = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.bf = add nuw i64 %i.be, 4
  %i.bg = sub i64 %i.bf, %i.ax
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ap, i64 %i.bg
  %i.bh = sub i64 %i.be, %i.ax
  %scevgep15.i.i.i.i = getelementptr i8, ptr %i.ap, i64 %i.bh
  %i.bi = add i64 %i.ax, -4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i.i.i.i, ptr align 4 %scevgep15.i.i.i.i, i64 %i.bi, i1 false), !tbaa !249, !noalias !4833
  br label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i, %bb.f
  %i.bj = load i32, ptr %.sroa.04.0, align 4, !tbaa !249, !noalias !4833
  store i32 %i.bj, ptr %.sroa.01.05.i, align 4, !tbaa !249, !noalias !4833
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i

bb.g:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.140") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.sroa.01.05.i, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %.sroa.04.0), !noalias !4832
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !285, !noalias !4832
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i: ; preds = %bb.g, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, %bb.e
  %i.bk = phi ptr [ %.pre.i, %bb.g ], [ %.sroa.01.05.i, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i ], [ %.sroa.01.05.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !4832
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %.lcssa
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl21is_not_input_iteratorISG_EENSH_5bool_ILb0EEESP_E4typeE.exit, label %bb.c, !llvm.loop !4829

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl21is_not_input_iteratorISG_EENSH_5bool_ILb0EEESP_E4typeE.exit: ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.v = add i64 %5, -4
  %i.w = sub i64 %i.v, %6                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4846
  %wide.load18 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4846
  %i.ai = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4836

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4847, !noalias !4846
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 3 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4838

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.as = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.am, %middle.block ], [ %i.ap, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 3 uses
  %i.at = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.at, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.au = add i32 %i.as, 1                        ; 4 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.av = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.aw = shl i64 %i.t, 2
  %i.ax = add i64 %i.aw, %6
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %5                       ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.az, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.bc = shl i64 %3, 2
  %i.bd = shl i64 %i.t, 2
  %i.be = add i64 %i.bd, %6
  %i.bf = add i64 %i.be, -4
  %i.bg = sub i64 %i.bf, %5
  %i.bh = and i64 %i.bg, -4                       ; 2 uses
  %i.bi = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bc
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 4      ; 2 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %bound035 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bk, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.av, %i.bm
  %bound139 = icmp ult ptr %2, %i.bk
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.au, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4848
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4848
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4849, !noalias !4850
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4849, !noalias !4850
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4843

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4851, !noalias !4848
  %cmp.n58 = icmp eq i64 %i.bb, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.au, %vector.memcheck34 ], [ %i.au, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.av, %vector.memcheck34 ], [ %i.av, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4844

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4845

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.t, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.s
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.s to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.r, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !246  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter113 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter115 = phi i64 [ %prol.iter115.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = add i32 %i.n, -1
end_hunk_14
begin_hunk_15_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE:bb.a
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.dx = add i64 %.020.i.i, -4                   ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !249
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !249
  %i.dz = add i32 %i.dl, 4
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i15.i.3 = icmp eq i64 %i.dx, 0
  br i1 %.not.i15.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i, !llvm.loop !4862

bb.i:                                             ; preds = %bb.g
  %.not8.i.i = icmp eq ptr %2, %1
  br i1 %.not8.i.i, label %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.ec = sub i64 %i.b, %i.bh
  %diff.check = icmp ugt i64 %i.ec, -32
  %or.cond93 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond93, label %.lr.ph.i17.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  %i.ed = shl nsw i64 %n.vec, 2                   ; 2 uses
  %i.ee = getelementptr i8, ptr %i.bg, i64 %i.ed  ; 2 uses
  %i.ef = and i64 %i.d, 7
  %i.eg = getelementptr i8, ptr %1, i64 %i.ed
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.eh ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !249
  %wide.load54 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !249
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !249
  store <4 x i32> %wide.load54, ptr %i.ej, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !4863

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i.preheader102

.lr.ph.i17.i.preheader102:                        ; preds = %.lr.ph.i17.i.preheader, %middle.block
  %.011.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i17.i.preheader ], [ %i.ee, %middle.block ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.d, %.lr.ph.i17.i.preheader ], [ %i.ef, %middle.block ] ; 4 uses
  %.079.i.i.ph = phi ptr [ %1, %.lr.ph.i17.i.preheader ], [ %i.eg, %middle.block ] ; 2 uses
  %i.el = add nsw i64 %.0610.i.i.ph, -1
  %xtraiter = and i64 %.0610.i.i.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol

.lr.ph.i17.i.prol:                                ; preds = %.lr.ph.i17.i.preheader102, %.lr.ph.i17.i.prol
  %.011.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i17.i.prol ], [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.em, %.lr.ph.i17.i.prol ], [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ]
  %.079.i.i.prol = phi ptr [ %i.eo, %.lr.ph.i17.i.prol ], [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.prol ], [ 0, %.lr.ph.i17.i.preheader102 ]
  %i.em = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.en = load i32, ptr %.079.i.i.prol, align 4, !tbaa !249
  store i32 %i.en, ptr %.011.i.i.prol, align 4, !tbaa !249
  %i.eo = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol, !llvm.loop !4864

.lr.ph.i17.i.prol.loopexit:                       ; preds = %.lr.ph.i17.i.prol, %.lr.ph.i17.i.preheader102
  %.lcssa103.unr = phi ptr [ poison, %.lr.ph.i17.i.preheader102 ], [ %i.ep, %.lr.ph.i17.i.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.ep, %.lr.ph.i17.i.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.em, %.lr.ph.i17.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.eo, %.lr.ph.i17.i.prol ]
  %i.eq = icmp ult i64 %i.el, 7
  br i1 %i.eq, label %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i
  %.011.i.i = phi ptr [ %i.fp, %.lr.ph.i17.i ], [ %.011.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.fm, %.lr.ph.i17.i ], [ %.0610.i.i.unr, %.lr.ph.i17.i.prol.loopexit ]
  %.079.i.i = phi ptr [ %i.fo, %.lr.ph.i17.i ], [ %.079.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %i.er = load i32, ptr %.079.i.i, align 4, !tbaa !249
  store i32 %i.er, ptr %.011.i.i, align 4, !tbaa !249
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !249
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !249
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !249
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !249
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !249
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !249
  %i.fb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !249
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !249
  %i.fe = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !249
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !249
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !249
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !249
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28
  %i.fl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.fm = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !249
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !249
  %i.fo = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i18.i.7 = icmp eq i64 %i.fm, 0
  br i1 %.not.i18.i.7, label %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i, !llvm.loop !4865

_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i: ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i, %middle.block, %bb.i
  %.0.lcssa.i20.i = phi ptr [ %i.bg, %bb.i ], [ %i.ee, %middle.block ], [ %.lcssa103.unr, %.lr.ph.i17.i.prol.loopexit ], [ %i.fp, %.lr.ph.i17.i ] ; 2 uses
  %i.fq = sub nuw i64 %i.bj, %i.d                 ; 4 uses
  %.not3.i.i20 = icmp eq i64 %i.fq, 0
  br i1 %.not3.i.i20, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  %xtraiter104 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i21.prol = phi i64 [ %i.fr, %.lr.ph.i21.i.prol ], [ %i.fq, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i22.prol = phi ptr [ %i.fu, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fr = add i64 %.05.i.i21.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i22.prol, align 4, !tbaa !249
  %i.fs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !4866

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fq, %.lr.ph.i21.i.preheader ], [ %i.fr, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %i.fv = sub i64 %i.d, %i.bj
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.ge, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.gg, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !249
  %i.fx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !249
  %i.ga = add i32 %i.fx, -2
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !249
  %i.gc = add i32 %i.fx, -3
  store i32 %i.gc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.ge = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !249
  %i.gf = add i32 %i.fx, -4
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bi, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !285    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !247    ; 4 uses
  %5 = ptrtoaddr ptr %i.g to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 15 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter38 = and i64 %3, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  store i32 %i.k, ptr %i.h, align 4, !tbaa !249
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.n = load ptr, ptr %4, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  store i32 %i.s, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  store i32 %i.y, ptr %i.w, align 4, !tbaa !249
  %i.z = add i32 %i.t, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !49

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.h to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ah ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i10.i.i.prol ], [ %i.ai, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i10.i.i.prol ], [ %i.h, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.aj = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.ak = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.ak, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4869

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp ult i64 %3, 4
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = load i32, ptr %i.at, align 4, !tbaa !249
  store i32 %i.av, ptr %i.au, align 4, !tbaa !249
  %i.aw = add i32 %i.ar, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !249
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !249
  %i.ba = add i32 %i.ar, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bd = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !249
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !249
  %i.bf = add i32 %i.ar, 4
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bi = shl nuw nsw i64 %i.e, 2
  %i.bj = shl i64 %3, 2
  %i.bk = add i64 %i.bi, %5
  %i.bl = add i64 %i.bk, -4
  %i.bm = add i64 %i.bj, %i.ae
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 60
  %i.bq = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.h, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ai, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bu ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ai, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !249
  %wide.load24 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !249
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !249
  store <4 x i32> %wide.load24, ptr %i.by, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !4870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !249
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ca
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !4871

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cd = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !67
  store i32 %i.cf, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.cg = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4872

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.prol ]
  %i.ci = icmp ult i64 %3, 4
  br i1 %i.ci, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  store i32 %i.ck, ptr %.048.i.i.i.i.i, align 4, !tbaa !249
  %i.cl = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !67
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !249
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !187 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !67
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !249
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !187 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.cv = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !67
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !249
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !187
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4873

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.de, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i48.i.i.i ], [ %i.da, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.db = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !249
  store i32 %i.db, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.dc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.de, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !45

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter32 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dg = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67
  store i32 %i.di, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !249
  %i.dj = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !4874

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dl = icmp ult i64 %i.ag, 4
  br i1 %i.dl, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !67
  store i32 %i.dn, ptr %.048.i.i54.i.i.i, align 4, !tbaa !249
  %i.do = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !67
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !249
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !187 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !67
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !249
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !187 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.dy = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !67
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !249
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !187 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !4873

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eb, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ed = sub i64 %3, %i.ag                       ; 3 uses
  %.neg = add nsw i64 %i.ag, 1
  %xtraiter35 = and i64 %i.ed, 1
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !67
  store i32 %i.ef, ptr %i.h, align 4, !tbaa !249
  %i.eg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ei = load ptr, ptr %.lcssa, align 8, !tbaa !187
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ek = add nsw i64 %i.ed, -1
  br label %.lr.ph.i.i60.i.i.i.prol.loopexit

.lr.ph.i.i60.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i60.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %.018.i.i.i.i.i.unr = phi i64 [ %i.ed, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.ek, %.lr.ph.i.i60.i.i.i.prol ]
  %.01417.i.i.i.i.i.unr = phi ptr [ %i.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.ej, %.lr.ph.i.i60.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.ei, %.lr.ph.i.i60.i.i.i.prol ]
  %i.el = icmp eq i64 %3, %.neg
  br i1 %i.el, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i

.lr.ph.i.i60.i.i.i:                               ; preds = %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i
  %.018.i.i.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i60.i.i.i ], [ %.018.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i60.i.i.i ], [ %.01417.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i60.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i) ]
  %i.en = load i32, ptr %i.em, align 4, !tbaa !67
  store i32 %i.en, ptr %.01417.i.i.i.i.i, align 4, !tbaa !249
  %i.eo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.eq = load ptr, ptr %.sroa.0.016.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !67
  store i32 %i.et, ptr %i.er, align 4, !tbaa !249
  %i.eu = add i32 %i.eo, 2
  store i32 %i.eu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !187
  %i.ew = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 8
  %i.ex = add i64 %.018.i.i.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.i.i.1 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i61.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i, !llvm.loop !49

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %i.ey = add i64 %i.e, %3
  store i64 %i.ey, ptr %i.d, align 8, !tbaa !245
  store ptr %i.a, ptr %0, align 8, !tbaa !289
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.v = add i64 %5, -4
  %i.w = sub i64 %i.v, %6                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4888
  %wide.load18 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4888
  %i.ai = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4877

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4889, !noalias !4888
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader70

.lr.ph.i.i.i.preheader70:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph71 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader70, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph71, %.lr.ph.i.i.i.preheader70 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader70 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader70 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4879

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 4 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.as = phi i32 [ %i.av, %.lr.ph.i.i.i.i.prol ], [ %.pre, %.lr.ph.i.i.i.i.preheader ]
  %.018.i.i.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.prol ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.au = load i32, ptr %i.at, align 4, !tbaa !67
  store i32 %i.au, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !249
  %i.av = add i32 %i.as, 1                        ; 3 uses
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aw = load ptr, ptr %.sroa.0.016.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ay = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4880

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi i32 [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %i.az = icmp ult i64 %3, 4
  br i1 %i.az, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.ba = phi i32 [ %i.bs, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.018.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67
  store i32 %i.bc, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.bd = add i32 %i.ba, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.be = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !67
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !249
  %i.bi = add i32 %i.ba, 2
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !187 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !67
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !249
  %i.bn = add i32 %i.ba, 3
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !187 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !67
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !249
  %i.bs = add i32 %i.ba, 4                        ; 2 uses
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !187
  %i.bu = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.bv = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !49

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.bw = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.bx = shl i64 %i.t, 2
  %i.by = add i64 %i.bx, %6
  %i.bz = add i64 %i.by, -4
  %i.ca = sub i64 %i.bz, %5                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.ca, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cd = shl i64 %3, 2
  %i.ce = shl i64 %i.t, 2
  %i.cf = add i64 %i.ce, %6
  %i.cg = add i64 %i.cf, -4
  %i.ch = sub i64 %i.cg, %5
  %i.ci = and i64 %i.ch, -4                       ; 2 uses
  %i.cj = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cd
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 4      ; 2 uses
  %i.cm = getelementptr i8, ptr %2, i64 %i.ci
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %bound035 = icmp ult ptr %i.bw, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.cl, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.bw, %i.cn
  %bound139 = icmp ult ptr %2, %i.cl
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.cn, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.cc, 9223372036854775800   ; 3 uses
  %i.co = shl i64 %n.vec46, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %2, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.bw, i64 %i.co
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre9, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next62, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.cr, %vector.ph45 ], [ %i.cv, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.cw, %vector.body47 ]
  %i.cs = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.cs ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.bw, i64 %i.cs ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep52) ]
  %i.ct = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load60 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4890
  %wide.load61 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !249, !alias.scope !4890
  %i.cu = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load60, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4891, !noalias !4892
  store <4 x i32> %wide.load61, ptr %i.cu, align 4, !tbaa !249, !alias.scope !4891, !noalias !4892
  %i.cv = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.cw = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next62 = add nuw i64 %index48, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next62, %n.vec46
  br i1 %i.cx, label %middle.block63, label %vector.body47, !llvm.loop !4885

middle.block63:                                   ; preds = %vector.body47
  %bin.rdx64 = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx64) ; 2 uses
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4893, !noalias !4890
  %cmp.n65 = icmp eq i64 %i.cc, %n.vec46
  br i1 %cmp.n65, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block63
  %.ph = phi i32 [ %.pre9, %vector.memcheck34 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.cy, %middle.block63 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.cp, %middle.block63 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.bw, %vector.memcheck34 ], [ %i.bw, %.lr.ph.i20.preheader.i.i ], [ %i.cq, %middle.block63 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.cz = phi i32 [ %i.db, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dc, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dd, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.da = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.da, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.db = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dc, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4886

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block63, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter75 = and i64 %i.t, 3                   ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.de = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4887

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.de, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.prol ]
  %i.di = icmp ult i64 %i.t, 4
  br i1 %i.di, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dq, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.dj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !249
  %i.dm = add i32 %i.dj, -2
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !249
  %i.do = add i32 %i.dj, -3
  store i32 %i.do, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.dq = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dp, align 4, !tbaa !249
  %i.dr = add i32 %i.dj, -4
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = icmp eq ptr %i.dt, %i.s
  br i1 %i.du, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !246
  %i.dw = shl i64 %i.dv, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.dw) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.dx = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.dy = ptrtoint ptr %2 to i64
  %i.dz = ptrtoint ptr %i.s to i64
  %i.ea = sub i64 %i.dy, %i.dz
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.eb = add i64 %i.dx, %3
  store i64 %i.eb, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.ec = getelementptr inbounds i8, ptr %i.r, i64 %i.ea
  store ptr %i.ec, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %6 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.v = add i64 %5, -4
  %i.w = sub i64 %i.v, %6                         ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %bound0 = icmp ugt ptr %i.ab, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ag ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4906
  %wide.load18 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4906
  %i.ai = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ai, align 4, !tbaa !249
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4896

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4907, !noalias !4906
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.ao = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ao, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ap = add i32 %i.an, 1                        ; 3 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4898

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.as = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.am, %middle.block ], [ %i.ap, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 3 uses
  %i.at = load i32, ptr %4, align 4, !tbaa !67
  store i32 %i.at, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.au = add i32 %i.as, 1                        ; 4 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.av = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.aw = shl i64 %i.t, 2
  %i.ax = add i64 %i.aw, %6
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %5                       ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.az, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.bc = shl i64 %3, 2
  %i.bd = shl i64 %i.t, 2
  %i.be = add i64 %i.bd, %6
  %i.bf = add i64 %i.be, -4
  %i.bg = sub i64 %i.bf, %5
  %i.bh = and i64 %i.bg, -4                       ; 2 uses
  %i.bi = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bc
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 4      ; 2 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %bound035 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bk, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.av, %i.bm
  %bound139 = icmp ult ptr %2, %i.bk
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.au, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4908
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4908
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4909, !noalias !4910
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4909, !noalias !4910
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4903

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4911, !noalias !4908
  %cmp.n58 = icmp eq i64 %i.bb, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.au, %vector.memcheck34 ], [ %i.au, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.av, %vector.memcheck34 ], [ %i.av, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4904

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4905

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.t, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.s
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.s to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.r, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.139", align 8 ; 2 uses
  %4 = alloca %"class.boost::container::vec_iterator.140", align 8 ; 3 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !247    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = icmp ne ptr %i.d, %i.b                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = icmp ne ptr %i.f, %i.c                   ; 2 uses
  %or.cond.i.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.c

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !285
  store ptr %i.b, ptr %1, align 8, !tbaa !285
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !84
  %i.k = load i64, ptr %i.i, align 8, !tbaa !84
  store i64 %i.k, ptr %i.h, align 8, !tbaa !84
  store i64 %i.j, ptr %i.i, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !84
  %i.o = load i64, ptr %i.m, align 8, !tbaa !84
  store i64 %i.o, ptr %i.l, align 8, !tbaa !84
  store i64 %i.n, ptr %i.m, align 8, !tbaa !84
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i64 %2, 0
  %or.cond = or i1 %i.e, %i.g
  %or.cond80 = and i1 %.not, %or.cond
  br i1 %or.cond80, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = select i1 %i.e, ptr %0, ptr %1           ; 5 uses
  %i.q = select i1 %i.e, ptr %1, ptr %0           ; 3 uses
  %i.r = select i1 %i.e, ptr %i.b, ptr %i.c
end_hunk_15
