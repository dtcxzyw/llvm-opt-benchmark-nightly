Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10ENS0_9allocatorIS4_Lj2ELj0EEEvEEE4DataD2Ev:bb.a
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.k, align 4, !tbaa !287
  %i.l = add i32 %i.i, -2
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.m, align 4, !tbaa !287
  %i.n = add i32 %i.i, -3
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.p = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.o, align 4, !tbaa !287
  %i.q = add i32 %i.i, -4
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !293

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !276
  %.not.i1.i = icmp eq i64 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = icmp eq ptr %i.u, %i.a
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.a)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !305    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !276
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !285  ; 5 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !272    ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 16 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not17.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter75 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.0919.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.m = load i32, ptr %.0919.i.i.i.i.prol, align 4, !tbaa !287
  store i32 %i.m, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !287
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.p = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.020.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1381

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.020.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.0919.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.l, 3
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0919.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.t = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !287
  store i32 %i.t, ptr %.01618.i.i.i.i, align 4, !tbaa !287
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !287
  store i32 %i.y, ptr %i.x, align 4, !tbaa !287
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.aa = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !287
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !287
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ae = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !287
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !287
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %i.ak = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1382

bb.d:                                             ; preds = %bb.b
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %i.b to i64                ; 5 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sub i64 0, %3
  %i.aq = getelementptr [4 x i8], ptr %i.j, i64 %i.ap ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol

.lr.ph.i.i11.i.i.prol:                            ; preds = %bb.f
  %i.ar = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !287
  store i32 %i.as, ptr %i.j, align 4, !tbaa !287
  store i32 0, ptr %i.aq, align 4, !tbaa !287
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i11.i.i.prol.loopexit

.lr.ph.i.i11.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i11.i.i.prol, %bb.f
  %.020.i.i12.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ar, %.lr.ph.i.i11.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aq, %bb.f ], [ %i.av, %.lr.ph.i.i11.i.i.prol ]
  %.01618.i.i13.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.aw, %.lr.ph.i.i11.i.i.prol ]
  %i.ax = icmp eq i64 %3, 1
  br i1 %i.ax, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %.lr.ph.i.i11.i.i.prol.loopexit, %.lr.ph.i.i11.i.i
  %.020.i.i12.i.i = phi i64 [ %i.bd, %.lr.ph.i.i11.i.i ], [ %.020.i.i12.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i11.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i13.i.i = phi ptr [ %i.bi, %.lr.ph.i.i11.i.i ], [ %.01618.i.i13.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i13.i.i) ]
  %i.ay = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !287
  store i32 %i.ay, ptr %.01618.i.i13.i.i, align 4, !tbaa !287
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !287
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i13.i.i, i64 4
  %i.bd = add i64 %.020.i.i12.i.i, -2             ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !287
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !287
  store i32 0, ptr %i.bb, align 4, !tbaa !287
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i13.i.i, i64 8
  %.not.i.i14.i.i.1 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i14.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i11.i.i, !llvm.loop !1383

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i11.i.i, %.lr.ph.i.i11.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.aq
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bj = shl nuw nsw i64 %i.f, 2
  %5 = add i64 %i.bj, %i.i
  %i.bk = add i64 %5, -4
  %6 = shl i64 %3, 2
  %i.bl = add i64 %6, %i.am
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bp = shl nuw nsw i64 %i.f, 2                 ; 3 uses
  %i.bq = add nsw i64 %i.bp, -4
  %i.br = add i64 %i.bp, %i.i
  %i.bs = add i64 %i.br, -4
  %i.bt = shl i64 %3, 2                           ; 2 uses
  %i.bu = add i64 %i.bt, %i.am
  %i.bv = sub i64 %i.bs, %i.bu
  %i.bw = and i64 %i.bv, -4                       ; 2 uses
  %i.bx = sub i64 %i.bq, %i.bw
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bx
  %i.by = add nsw i64 %i.bp, -4
  %i.bz = add i64 %i.bt, %i.bw
  %i.ca = sub i64 %i.by, %i.bz
  %scevgep22 = getelementptr i8, ptr %i.h, i64 %i.ca
  %bound0 = icmp ult ptr %scevgep, %i.aq
  %bound1 = icmp ult ptr %scevgep22, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.cb = mul i64 %n.vec, -4                      ; 2 uses
  %i.cc = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.aq, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ce ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aq, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !287, !alias.scope !1384
  %wide.load24 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !287, !alias.scope !1384
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ch, align 4, !tbaa !287, !alias.scope !1387, !noalias !1384
  store <4 x i32> %wide.load24, ptr %i.ci, align 4, !tbaa !287, !alias.scope !1387, !noalias !1384
  store <4 x i32> zeroinitializer, ptr %i.cf, align 4, !tbaa !287, !alias.scope !1384
  store <4 x i32> zeroinitializer, ptr %i.cg, align 4, !tbaa !287, !alias.scope !1384
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader66

.lr.ph.i40.i.i.i.preheader66:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i40.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader66, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader66 ]
  %.079.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader66 ]
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !287
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !287
  store i32 0, ptr %i.ck, align 4, !tbaa !287
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.ck
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !1390

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check28 = icmp ult i64 %3, 8
  %i.cn = sub i64 %i.a, %i.am
  %diff.check = icmp ugt i64 %i.cn, -32
  %or.cond = select i1 %min.iters.check28, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec30 = and i64 %3, -8                       ; 3 uses
  %i.co = shl i64 %n.vec30, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.b, i64 %i.co
  %i.cq = and i64 %3, 7
  %i.cr = getelementptr i8, ptr %4, i64 %i.co
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next37, %vector.body31 ] ; 2 uses
  %i.cs = shl i64 %index32, 2                     ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.b, i64 %i.cs ; 2 uses
  %next.gep34 = getelementptr i8, ptr %4, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load35 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !287
  %wide.load36 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !287
  %i.cu = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load35, ptr %next.gep33, align 4, !tbaa !287
  store <4 x i32> %wide.load36, ptr %i.cu, align 4, !tbaa !287
  %index.next37 = add nuw i64 %index32, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.cv, label %middle.block38, label %vector.body31, !llvm.loop !1391

middle.block38:                                   ; preds = %vector.body31
  %cmp.n39 = icmp eq i64 %3, %n.vec30
  br i1 %cmp.n39, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block38
  %.011.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block38 ] ; 2 uses
  %.0610.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block38 ] ; 4 uses
  %.079.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block38 ] ; 2 uses
  %i.cw = add i64 %.0610.i.i.i.i.i.ph, -1
  %xtraiter67 = and i64 %.0610.i.i.i.i.i.ph, 7    ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.011.i.i.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0610.i.i.i.i.i.prol = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.prol ], [ %.0610.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.prol ], [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cx = add i64 %.0610.i.i.i.i.i.prol, -1       ; 2 uses
  %i.cy = load i32, ptr %.079.i.i.i.i.i.prol, align 4, !tbaa !287
  store i32 %i.cy, ptr %.011.i.i.i.i.i.prol, align 4, !tbaa !287
  %i.cz = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter67
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1392

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %i.db = icmp ult i64 %i.cw, 7
  br i1 %i.db, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.0610.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.079.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dc = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !287
  store i32 %i.dc, ptr %.011.i.i.i.i.i, align 4, !tbaa !287
  %i.dd = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !287
  store i32 %i.df, ptr %i.de, align 4, !tbaa !287
  %i.dg = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !287
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !287
  %i.dj = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 12
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !287
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !287
  %i.dm = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !287
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !287
  %i.dp = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 20
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !287
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !287
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !287
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !287
  %i.dv = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 28
  %i.dx = add i64 %.0610.i.i.i.i.i, -8            ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !287
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !287
  %i.dz = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1393

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i49.i.i.i ], [ %i.b, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i49.i.i.i ], [ %i.eb, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ec = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !287
  store i32 %i.ec, ptr %.01517.i.i.i.i, align 4, !tbaa !287
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !287
  %i.ed = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ef = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.ef, %i.j
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !1394

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check46 = icmp ult i64 %i.ao, 8
  %i.eh = sub i64 %i.a, %i.am
  %diff.check44 = icmp ugt i64 %i.eh, -32
  %or.cond61 = select i1 %min.iters.check46, i1 true, i1 %diff.check44
  br i1 %or.cond61, label %.lr.ph.i.i52.i.i.i.preheader63, label %vector.ph47
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeET0_RT1_:bb.a
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !287
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !287
  store i32 0, ptr %.pn36.i, align 4, !tbaa !287
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !287  ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !287
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !287
  store i32 0, ptr %i.m, align 4, !tbaa !287
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1401

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !1402

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub i64 %1, %i.r                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1403
  %.not = icmp ugt i64 %i.s, %i.u
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.w = load ptr, ptr %2, align 8, !tbaa !328
  tail call void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef %i.w)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !36
  %i.x = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.x, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !1403
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !326 ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %.not.i31 = icmp ult i64 %i.ac, %i.s
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !328
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  call void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef %i.ae)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef nonnull %i.y)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.b, align 8, !tbaa !36
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !36
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !36  ; 3 uses
  %i.ak = sub i64 0, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = sub i64 %1, %i.ah
  %i.an = add i64 %i.am, %i.aj
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ap = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_(ptr noundef %i.al, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = sub i64 %1, %i.aq
  %i.at = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.au = load i64, ptr %i.b, align 8, !tbaa !36
  %i.av = load i64, ptr %i.c, align 8, !tbaa !36
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %i.at, ptr noundef %0, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.034.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.b, %bb.e
  %.037.i = phi ptr [ %.0.i, %bb.e ], [ %.034.i, %bb.b ] ; 5 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.e ], [ %0, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.037.i, align 4, !tbaa !287 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !287
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i, align 4, !tbaa !287
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !287
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !287
  store i32 0, ptr %.pn36.i, align 4, !tbaa !287
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !287  ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !287
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !287
  store i32 0, ptr %i.m, align 4, !tbaa !287
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1401

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %1
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !1402

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %i.e, 1                         ; 6 uses
  %i.s = sub i64 %i.e, %i.r                       ; 10 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.t, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.u)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %cond = icmp eq i64 %i.s, 0
  br i1 %cond, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.027.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %2, %bb.g ] ; 11 uses
  %.01626.i.i = phi ptr [ %i.ay, %bb.k ], [ %0, %bb.g ] ; 8 uses
  %.01725.i.i = phi ptr [ %.118.i.i, %bb.k ], [ %i.u, %bb.g ] ; 5 uses
  %i.w = icmp eq ptr %.01725.i.i, %1
  br i1 %i.w, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i65.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = add i64 %i.d, %i.a
  %i.x = add i64 %3, -4
  %4 = shl i64 %i.r, 2
  %i.y = add i64 %4, %.027.i.i65.le
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = shl i64 %indvar, 2
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = add i64 %i.d, %i.a
  %i.af = add i64 %i.ae, -4
  %i.ag = shl i64 %i.r, 2
  %i.ah = add i64 %i.ag, %.027.i.i65.le
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %scevgep66 = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep67 = getelementptr i8, ptr %.027.i.i, i64 4
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.aj
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep68
  %bound1 = icmp ult ptr %.027.i.i, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %.01626.i.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.027.i.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.an ; 2 uses
  %next.gep69 = getelementptr i8, ptr %.027.i.i, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep69, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !287, !alias.scope !1404
  %wide.load70 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !287, !alias.scope !1404
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1407, !noalias !1404
  store <4 x i32> %wide.load70, ptr %i.ap, align 4, !tbaa !287, !alias.scope !1407, !noalias !1404
  store <4 x i32> zeroinitializer, ptr %next.gep69, align 4, !tbaa !287, !alias.scope !1404
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !287, !alias.scope !1404
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i.preheader73

.lr.ph.i.i.i.i.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader73, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 3 uses
  %i.ar = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !287
  store i32 %i.ar, ptr %.010.i.i.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !287
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.v
  br i1 %.not.i.i.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !1410

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.au = load i32, ptr %.027.i.i, align 4, !tbaa !287 ; 2 uses
  %i.av = load i32, ptr %.01725.i.i, align 4, !tbaa !287 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.au, %i.av
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.av, ptr %.01626.i.i, align 4, !tbaa !287
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !287
  %i.aw = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.au, ptr %.01626.i.i, align 4, !tbaa !287
  store i32 0, ptr %.027.i.i, align 4, !tbaa !287
  %i.ax = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.aw, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.ax, %bb.j ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.01626.i.i, i64 4
  %.not.i.i = icmp eq ptr %.1.i.i, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i, !llvm.loop !1411

.lr.ph.i27.preheader:                             ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %xtraiter79 = and i64 %i.s, 3                   ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol

.lr.ph.i27.prol:                                  ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27.prol
  %.in.i.prol = phi i64 [ %i.az, %.lr.ph.i27.prol ], [ %i.s, %.lr.ph.i27.preheader ]
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i27.prol ], [ 0, %.lr.ph.i27.preheader ]
  %i.az = add i64 %.in.i.prol, -1                 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !287
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol, !llvm.loop !1412

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol, %.lr.ph.i27.preheader
  %.in.i.unr = phi i64 [ %i.s, %.lr.ph.i27.preheader ], [ %i.az, %.lr.ph.i27.prol ]
  %i.bd = sub i64 %i.r, %i.e
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.prol.loopexit, %.lr.ph.i27
  %.in.i = phi i64 [ %i.br, %.lr.ph.i27 ], [ %.in.i.unr, %.lr.ph.i27.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !287
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bj = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !287
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -12
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !287
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.br = add i64 %.in.i, -4                      ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !287
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %.not.i28.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i28.3, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27, !llvm.loop !1413

bb.l:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.not1.i30 = icmp eq i64 %i.s, 0
  br i1 %.not1.i30, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.l
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.in.i32.prol = phi i64 [ %i.bw, %.lr.ph.i31.prol ], [ %i.s, %.lr.ph.i31.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.bw = add i64 %.in.i32.prol, -1               ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !287
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !1414

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.in.i32.unr = phi i64 [ %i.s, %.lr.ph.i31.preheader ], [ %i.bw, %.lr.ph.i31.prol ]
  %i.ca = sub i64 %i.r, %i.e
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.in.i32 = phi i64 [ %i.co, %.lr.ph.i31 ], [ %.in.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 4 uses
  %i.cc = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  store i32 -2147483648, ptr %i.cd, align 4, !tbaa !287
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !287
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cl = getelementptr i8, ptr %i.ck, i64 -12
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !287
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.co = add i64 %.in.i32, -4                    ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.co
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !287
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_:bb.a
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ak, %.lr.ph.i.i29.i ], [ %.023.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 3 uses
  %.079.i.i31.i = phi ptr [ %i.aj, %.lr.ph.i.i29.i ], [ %.024.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i31.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !287
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ag = load i32, ptr %.010.i.i30.i, align 4, !tbaa !287
  store i32 %i.ag, ptr %.079.i.i31.i, align 4, !tbaa !287
  store i32 %i.ad, ptr %.010.i.i30.i, align 4, !tbaa !287
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %.not.i.i32.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i32.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !1488

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i29.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.al = add i64 %.03981, %i.d                   ; 4 uses
  %.0.idx = shl nuw nsw i64 %i.al, 2              ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.04188, i64 %.0.idx ; 2 uses
  %i.am = sub i64 %1, %i.al                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.d
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !1622

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.al, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04188, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 6 uses
  %.lcssa77 = phi i64 [ %1, %.preheader ], [ %i.am, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.ao = icmp ugt i64 %.lcssa77, %.04287
  br i1 %i.ao, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ap = sub i64 0, %.04287                      ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.ap ; 2 uses
  %.idx = shl nuw nsw i64 %.04287, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04188, i64 %.idx70 ; 2 uses
  %i.at = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.at, %.idx70
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ar, %bb.g ] ; 6 uses
  %.02345.i48 = phi ptr [ %i.bn, %bb.k ], [ %i.aq, %bb.g ] ; 6 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.au = icmp eq ptr %.02444.i49, %i.ar
  br i1 %i.au, label %.lr.ph.i.i.i65, label %bb.h

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i46, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.bc, %.lr.ph.i.i.i65 ], [ %.02345.i48, %.lr.ph.i46 ] ; 3 uses
  %.079.i.i.i67 = phi ptr [ %i.bb, %.lr.ph.i.i.i65 ], [ %.02246.i47, %.lr.ph.i46 ] ; 4 uses
  %i.av = load i32, ptr %.079.i.i.i67, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i67, align 4, !tbaa !287
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ay = load i32, ptr %.010.i.i.i66, align 4, !tbaa !287
  store i32 %i.ay, ptr %.079.i.i.i67, align 4, !tbaa !287
  store i32 %i.av, ptr %.010.i.i.i66, align 4, !tbaa !287
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i67, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i66, i64 4
  %.not.i.i.i68 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.i65, !llvm.loop !1488

bb.h:                                             ; preds = %.lr.ph.i46
  %i.bd = load i32, ptr %.02246.i47, align 4, !tbaa !287
  %i.be = load i32, ptr %.02444.i49, align 4, !tbaa !287
  %i.bf = icmp slt i32 %i.bd, %i.be
  %i.bg = load i32, ptr %.02345.i48, align 4, !tbaa !287 ; 2 uses
  store i32 0, ptr %.02345.i48, align 4, !tbaa !287
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.02246.i47, align 4, !tbaa !287
  store i32 %i.bj, ptr %.02345.i48, align 4, !tbaa !287
  store i32 %i.bg, ptr %.02246.i47, align 4, !tbaa !287
  %i.bk = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %.02444.i49, align 4, !tbaa !287
  store i32 %i.bl, ptr %.02345.i48, align 4, !tbaa !287
  store i32 %i.bg, ptr %.02444.i49, align 4, !tbaa !287
  %i.bm = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.bk, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %.sink.in.i52 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %.sink.i53 = add i32 %.sink.in.i52, -1
  store i32 %.sink.i53, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bn = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %.1.i51, %i.as
  br i1 %.not.i54, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46, !llvm.loop !1621

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55: ; preds = %bb.k, %bb.g
  %.024.lcssa.i56 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 3 uses
  %.023.lcssa.i57 = phi ptr [ %i.aq, %bb.g ], [ %i.bn, %bb.k ] ; 2 uses
  %.not27.i58 = icmp eq ptr %.023.lcssa.i57, %.024.lcssa.i56
  %.not8.i.i28.i59 = icmp eq ptr %.024.lcssa.i56, %i.ar
  %or.cond38.i60 = or i1 %.not8.i.i28.i59, %.not27.i58
  br i1 %or.cond38.i60, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61

.lr.ph.i.i29.i61:                                 ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, %.lr.ph.i.i29.i61
  %.010.i.i30.i62 = phi ptr [ %i.bv, %.lr.ph.i.i29.i61 ], [ %.023.lcssa.i57, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 3 uses
  %.079.i.i31.i63 = phi ptr [ %i.bu, %.lr.ph.i.i29.i61 ], [ %.024.lcssa.i56, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 4 uses
  %i.bo = load i32, ptr %.079.i.i31.i63, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i31.i63, align 4, !tbaa !287
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.br = load i32, ptr %.010.i.i30.i62, align 4, !tbaa !287
  store i32 %i.br, ptr %.079.i.i31.i63, align 4, !tbaa !287
  store i32 %i.bo, ptr %.010.i.i30.i62, align 4, !tbaa !287
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i63, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i62, i64 4
  %.not.i.i32.i64 = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i32.i64, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61, !llvm.loop !1488

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.04188, i64 %1
  %i.bx = sub i64 0, %.04287                      ; 3 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.by, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.bz = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cc = load i32, ptr %.010.i.i, align 4, !tbaa !287
  store i32 %i.cc, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.bz, ptr %.010.i.i, align 4, !tbaa !287
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cf, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i, !llvm.loop !1488

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i65, %.lr.ph.i.i29.i61, %bb.l, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre-phi = phi i64 [ %i.ap, %.lr.ph.i.i.i65 ], [ %i.ap, %.lr.ph.i.i29.i61 ], [ %i.ap, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ], [ %i.bx, %bb.l ], [ %i.bx, %.lr.ph.i.i ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %.04188, i64 %.pre-phi
  %i.ci = sub i64 %.04089, %.04287                ; 2 uses
  %i.cj = icmp ult i64 %i.d, %3
  %i.ck = icmp uge i64 %i.ci, %i.d
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader, label %._crit_edge90, !llvm.loop !1623

._crit_edge90:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 13 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %3 = add i64 %i.i, -4
  %4 = shl i64 %i.k, 3
  %i.l = sub i64 %3, %4                           ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader292, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = udiv i64 %1, %i.b
  %i.p = shl i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, 4
  %i.r = mul i64 %2, %i.q
  %scevgep = getelementptr i8, ptr %0, i64 %i.r
  %bound0 = icmp ult ptr %scevgep, %i.g
  %bound1 = icmp ult ptr %i.f, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader292, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.s = mul i64 %n.vec, -4                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.g, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.v ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %next.gep138, i64 -16 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %next.gep138, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !287, !alias.scope !1624
  %wide.load139 = load <4 x i32>, ptr %i.x, align 4, !tbaa !287, !alias.scope !1624
  %i.y = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.z = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !287, !alias.scope !1627, !noalias !1624
  store <4 x i32> %wide.load139, ptr %i.z, align 4, !tbaa !287, !alias.scope !1627, !noalias !1624
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !287, !alias.scope !1624
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !287, !alias.scope !1624
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1629

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader292

.lr.ph.i.i.preheader292:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader292, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %.079.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !287
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !287
  store i32 0, ptr %i.ab, align 4, !tbaa !287
  %.not.i.i = icmp eq ptr %i.f, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1630

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bn, %bb.g ], [ %i.ag, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.af, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.ae, %bb.c ] ; 9 uses
  %i.ah = icmp eq ptr %.02442.i, %i.ae
  br i1 %i.ah, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i143.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.ai = udiv i64 %1, %i.b
  %i.aj = mul i64 %2, %i.ai
  %5 = add i64 %.02541.i143.le, -4
  %6 = shl i64 %i.aj, 3
  %i.ak = add i64 %6, %i.a
  %i.al = sub i64 %5, %i.ak                       ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.al, 188
  br i1 %min.iters.check151, label %.lr.ph.i.i.i.preheader285, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph.i.i.i.preheader
  %.idx67267 = add i64 %2, %1
  %i.ao = shl i64 %.idx67267, 2
  %i.ap = add i64 %i.ao, -4
  %i.aq = shl i64 %indvar, 2
  %i.ar = sub i64 %i.ap, %i.aq
  %scevgep142 = getelementptr i8, ptr %0, i64 %i.ar
  %i.as = udiv i64 %1, %i.b
  %i.at = mul i64 %2, %i.as
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, %i.a
  %reass.sub = sub i64 %.02541.i143.le, %i.av
  %i.aw = add i64 %reass.sub, -4
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = mul i64 %i.ax, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep142, i64 %i.ay
  %scevgep145 = getelementptr i8, ptr %.02541.i, i64 -4
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.ay
  %bound0147 = icmp ult ptr %scevgep144, %.02541.i
  %bound1148 = icmp ult ptr %scevgep146, %.043.i
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i.preheader285, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck141
  %n.vec153 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %i.az = mul i64 %n.vec153, -4                   ; 2 uses
  %i.ba = getelementptr i8, ptr %.043.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.02541.i, i64 %i.az
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %i.bc = mul i64 %index155, -4                   ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.043.i, i64 %i.bc ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.02541.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %next.gep157, i64 -32 ; 2 uses
  %wide.load158 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !287, !alias.scope !1631
  %wide.load159 = load <4 x i32>, ptr %i.be, align 4, !tbaa !287, !alias.scope !1631
  %i.bf = getelementptr inbounds i8, ptr %next.gep156, i64 -16
  %i.bg = getelementptr inbounds i8, ptr %next.gep156, i64 -32
  store <4 x i32> %wide.load158, ptr %i.bf, align 4, !tbaa !287, !alias.scope !1634, !noalias !1631
  store <4 x i32> %wide.load159, ptr %i.bg, align 4, !tbaa !287, !alias.scope !1634, !noalias !1631
  store <4 x i32> zeroinitializer, ptr %i.bd, align 4, !tbaa !287, !alias.scope !1631
  store <4 x i32> zeroinitializer, ptr %i.be, align 4, !tbaa !287, !alias.scope !1631
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.bh, label %middle.block161, label %vector.body154, !llvm.loop !1636

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.an, %n.vec153
  br i1 %cmp.n162, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i.preheader285

.lr.ph.i.i.i.preheader285:                        ; preds = %vector.memcheck141, %.lr.ph.i.i.i.preheader, %middle.block161
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck141 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block161 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck141 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block161 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader285, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %.079.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %i.bi = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !287
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !287
  store i32 0, ptr %i.bi, align 4, !tbaa !287
  %.not.i.i.i = icmp eq ptr %i.f, %i.bi
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !1637

bb.d:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bn = getelementptr i8, ptr %.043.i, i64 -4   ; 4 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !287 ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !287 ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !287
  store i32 0, ptr %i.bm, align 4, !tbaa !287
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !287
  store i32 0, ptr %i.bl, align 4, !tbaa !287
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.bm, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bl, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1638

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.af, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.ag, %bb.c ], [ %i.bn, %bb.g ] ; 7 uses
  %.024.lcssa.i166 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ae, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %i.br = udiv i64 %1, %i.b
  %i.bs = shl i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, 4
  %i.bu = mul i64 %2, %i.bt
  %i.bv = add i64 %.024.lcssa.i166, -4
  %i.bw = add i64 %i.bu, %i.a
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.bx, 140
  br i1 %min.iters.check173, label %.lr.ph.i.i30.i.preheader284, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i.i30.i.preheader
  %i.ca = udiv i64 %1, %i.b
  %i.cb = shl i64 %i.ca, 3
  %i.cc = or disjoint i64 %i.cb, 4
  %i.cd = mul i64 %2, %i.cc
  %i.ce = add i64 %i.cd, %i.a
  %reass.sub269 = sub i64 %i.ce, %.024.lcssa.i166
  %.not268 = add i64 %reass.sub269, 3
  %i.cf = and i64 %.not268, -4                    ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cf
  %scevgep168 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cf
  %bound0169 = icmp ult ptr %scevgep167, %.024.lcssa.i
  %bound1170 = icmp ult ptr %scevgep168, %.0.lcssa.i
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i.i30.i.preheader284, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck165
  %n.vec175 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cg = mul i64 %n.vec175, -4                   ; 2 uses
  %i.ch = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cg
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.cj = mul i64 %index177, -4                   ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep179, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep179, i64 -32 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !287, !alias.scope !1639
  %wide.load181 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !287, !alias.scope !1639
  %i.cm = getelementptr inbounds i8, ptr %next.gep178, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep178, i64 -32
  store <4 x i32> %wide.load180, ptr %i.cm, align 4, !tbaa !287, !alias.scope !1642, !noalias !1639
  store <4 x i32> %wide.load181, ptr %i.cn, align 4, !tbaa !287, !alias.scope !1642, !noalias !1639
  store <4 x i32> zeroinitializer, ptr %i.ck, align 4, !tbaa !287, !alias.scope !1639
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !287, !alias.scope !1639
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.co, label %middle.block183, label %vector.body176, !llvm.loop !1644

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.bz, %n.vec175
  br i1 %cmp.n184, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader284

.lr.ph.i.i30.i.preheader284:                      ; preds = %vector.memcheck165, %.lr.ph.i.i30.i.preheader, %middle.block183
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck165 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ch, %middle.block183 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck165 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ci, %middle.block183 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader284, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cq, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %.079.i.i32.i = phi ptr [ %i.cp, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !287
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !287
  store i32 0, ptr %i.cp, align 4, !tbaa !287
  %.not.i.i33.i = icmp eq ptr %i.ae, %i.cp
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i, !llvm.loop !1645

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block161, %middle.block183, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  %i.cs = mul i64 %2, -8                          ; 2 uses
  br i1 %.not40.i44, label %._crit_edge.i52.us, label %.lr.ph.i45.preheader.preheader

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.ct = shl i64 %2, 3
  %i.cu = shl i64 %2, 3
  %i.cv = mul i64 %2, -8
  %i.cw = shl i64 %2, 3
end_hunk_2
