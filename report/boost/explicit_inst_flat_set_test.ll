Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10ENS0_9allocatorIS4_Lj2ELj0EEEvEEE4DataD2Ev:bb.a
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.k, align 4, !tbaa !247
  %i.l = add i32 %i.i, -2
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.m, align 4, !tbaa !247
  %i.n = add i32 %i.i, -3
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.p = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.o, align 4, !tbaa !247
  %i.q = add i32 %i.i, -4
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !241
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
  %i.b = load ptr, ptr %2, align 8, !tbaa !250    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 5 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !239    ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 16 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not17.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter78 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.0919.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.m = load i32, ptr %.0919.i.i.i.i.prol, align 4, !tbaa !247
  store i32 %i.m, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !247
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.p = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.020.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1589

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
  %i.t = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !247
  store i32 %i.t, ptr %.01618.i.i.i.i, align 4, !tbaa !247
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !247
  store i32 %i.y, ptr %i.x, align 4, !tbaa !247
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aa = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !247
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !247
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ae = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !247
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !247
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %i.ak = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !32

bb.d:                                             ; preds = %bb.b
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !222

bb.e:                                             ; preds = %bb.d
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %i.b to i64                ; 5 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sub i64 0, %3
  %i.aq = getelementptr [4 x i8], ptr %i.j, i64 %i.ap ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol

.lr.ph.i.i11.i.i.prol:                            ; preds = %bb.f
  %i.ar = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !247
  store i32 %i.as, ptr %i.j, align 4, !tbaa !247
  store i32 0, ptr %i.aq, align 4, !tbaa !247
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
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
  %i.ay = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !247
  store i32 %i.ay, ptr %.01618.i.i13.i.i, align 4, !tbaa !247
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !247
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i13.i.i, i64 4
  %i.bd = add i64 %.020.i.i12.i.i, -2             ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !247
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !247
  store i32 0, ptr %i.bb, align 4, !tbaa !247
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i13.i.i, i64 8
  %.not.i.i14.i.i.1 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i14.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i11.i.i, !llvm.loop !1590

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i11.i.i, %.lr.ph.i.i11.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.aq
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bj = shl nuw nsw i64 %i.f, 2
  %i.bk = shl i64 %3, 2
  %i.bl = add i64 %i.bj, %i.i
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.am
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.br = shl nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bs = shl i64 %3, 2                           ; 2 uses
  %i.bt = add i64 %i.br, %i.i
  %i.bu = add i64 %i.bt, -4
  %i.bv = add i64 %i.bs, %i.am
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = and i64 %i.bw, -4                       ; 2 uses
  %i.by = add nsw i64 %i.br, -4                   ; 2 uses
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = getelementptr i8, ptr %i.h, i64 %i.bz
  %i.cb = add i64 %i.bs, %i.bx
  %i.cc = sub i64 %i.by, %i.cb
  %i.cd = getelementptr i8, ptr %i.h, i64 %i.cc
  %bound0 = icmp ult ptr %i.ca, %i.aq
  %bound1 = icmp ult ptr %i.cd, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 3 uses
  %i.ce = mul i64 %n.vec, -4                      ; 2 uses
  %i.cf = getelementptr i8, ptr %i.j, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.aq, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ch ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aq, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !247, !alias.scope !1603
  %wide.load24 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !247, !alias.scope !1603
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ck, align 4, !tbaa !247, !alias.scope !1604, !noalias !1603
  store <4 x i32> %wide.load24, ptr %i.cl, align 4, !tbaa !247, !alias.scope !1604, !noalias !1603
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !247, !alias.scope !1603
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !247, !alias.scope !1603
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !1594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader69

.lr.ph.i40.i.i.i.preheader69:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i40.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader69, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader69 ]
  %.079.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader69 ]
  %i.cn = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !247
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !247
  store i32 0, ptr %i.cn, align 4, !tbaa !247
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.cn
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !1595

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check28 = icmp ult i64 %3, 8
  %i.cq = sub i64 %i.a, %i.am
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond = select i1 %min.iters.check28, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec31 = and i64 %3, -8                       ; 3 uses
  %i.cr = shl i64 %n.vec31, 2                     ; 2 uses
  %i.cs = getelementptr i8, ptr %i.b, i64 %i.cr
  %i.ct = and i64 %3, 7
  %i.cu = getelementptr i8, ptr %4, i64 %i.cr
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.cv = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.b, i64 %i.cv ; 2 uses
  %next.gep35 = getelementptr i8, ptr %4, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !247
  %wide.load37 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !247
  %i.cx = getelementptr i8, ptr %next.gep34, i64 16
  store <4 x i32> %wide.load36, ptr %next.gep34, align 4, !tbaa !247
  store <4 x i32> %wide.load37, ptr %i.cx, align 4, !tbaa !247
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.cy, label %middle.block39, label %vector.body32, !llvm.loop !1596

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %3, %n.vec31
  br i1 %cmp.n40, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block39
  %.011.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cs, %middle.block39 ] ; 2 uses
  %.0610.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ct, %middle.block39 ] ; 4 uses
  %.079.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cu, %middle.block39 ] ; 2 uses
  %i.cz = add i64 %.0610.i.i.i.i.i.ph, -1
  %xtraiter70 = and i64 %.0610.i.i.i.i.i.ph, 7    ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.011.i.i.i.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0610.i.i.i.i.i.prol = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.0610.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.da = add i64 %.0610.i.i.i.i.i.prol, -1       ; 2 uses
  %i.db = load i32, ptr %.079.i.i.i.i.i.prol, align 4, !tbaa !247
  store i32 %i.db, ptr %.011.i.i.i.i.i.prol, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter70
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1597

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %i.de = icmp ult i64 %i.cz, 7
  br i1 %i.de, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %.0610.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.079.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.df = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.df, ptr %.011.i.i.i.i.i, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !247
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !247
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 12
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 12
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !247
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !247
  %i.dp = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !247
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 20
  %i.dt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 20
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !247
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !247
  %i.dv = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !247
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !247
  %i.dy = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 28
  %i.dz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 28
  %i.ea = add i64 %.0610.i.i.i.i.i, -8            ; 2 uses
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !247
  %i.ec = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1598

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i48.i.i.i ], [ %i.ee, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ef = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !247
  store i32 %i.ef, ptr %.01517.i.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !247
  %i.eg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ei = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ei, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !33

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check47 = icmp ult i64 %i.ao, 8
  %i.ek = sub i64 %i.a, %i.am
  %diff.check49 = icmp ugt i64 %i.ek, -32
  %or.cond64 = select i1 %min.iters.check47, i1 true, i1 %diff.check49
  br i1 %or.cond64, label %.lr.ph.i.i51.i.i.i.preheader66, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %n.vec51 = and i64 %i.ao, -8                    ; 3 uses
  %i.el = shl nsw i64 %n.vec51, 2                 ; 2 uses
  %i.em = getelementptr i8, ptr %i.b, i64 %i.el
  %i.en = and i64 %i.ao, 7
  %i.eo = getelementptr i8, ptr %4, i64 %i.el     ; 2 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.ep = shl i64 %index53, 2                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.b, i64 %i.ep ; 2 uses
  %next.gep55 = getelementptr i8, ptr %4, i64 %i.ep ; 2 uses
  %i.eq = getelementptr i8, ptr %next.gep55, i64 16
end_hunk_0
