inline.NumInlined: 455
inline.NumDeleted: 183
begin_hunk_0_@_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE6resizeEm:bb.a
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = icmp ult ptr %.06.i.i.i, %i.l
  br i1 %i.aa, label %.lr.ph.i.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i, !llvm.loop !80

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i
  %.pre.i = load i8, ptr %i.a, align 2, !tbaa !76
  br label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i, %.split.i.i
  %i.ab = phi i8 [ %.pre.i, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i ], [ %i.b, %.split.i.i ]
  %i.ac = trunc i64 %i.i to i8
  %i.ad = sub i8 %i.ab, %i.ac
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE17priv_erase_last_nEm.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ae = sub nuw i64 %1, %i.g                    ; 6 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !66, !noalias !114
  %.not.i.i.i = icmp eq ptr %i.af, null           ; 2 uses
  %i.ag = and i8 %i.b, 31
  %i.ah = xor i8 %i.ag, 31
  %i.ai = zext nneg i8 %i.ah to i64               ; 2 uses
  %i.aj = select i1 %.not.i.i.i, i64 0, i64 %i.ai
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sub i64 %i.ae, %i.ai
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEES9_mb(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.al, i1 noundef zeroext false), !noalias !114
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ae), !noalias !114
  %i.am = load i8, ptr %i.d, align 1, !tbaa !74, !noalias !114
  store i8 %i.am, ptr %i.a, align 2, !tbaa !76, !noalias !114
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.an = load ptr, ptr %0, align 8, !tbaa !66, !noalias !117 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i7, label %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE14prot_off_to_itEm.exit.i9, label %.split.i.i8

.split.i.i8:                                      ; preds = %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i
  %i.ao = load i8, ptr %i.a, align 2, !tbaa !76, !noalias !120
  %i.ap = zext i8 %i.ao to i64                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61, !noalias !117
  %i.at = and i64 %i.ap, 31
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  br label %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE14prot_off_to_itEm.exit.i9

_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE14prot_off_to_itEm.exit.i9: ; preds = %.split.i.i8, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i
  %.sink4.i = phi ptr [ %i.au, %.split.i.i8 ], [ null, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ar, %.split.i.i8 ], [ null, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE29priv_reserve_elements_at_backEm.exit.i ] ; 2 uses
  %.not.i.i3.i = icmp eq i64 %1, %i.g
  br i1 %.not.i.i3.i, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EhEEmT_.exit, label %bb.h, !prof !93

bb.h:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE14prot_off_to_itEm.exit.i9
  %i.av = load ptr, ptr %.sink.i, align 8, !tbaa !61, !noalias !114
  %i.aw = ptrtoint ptr %.sink4.i to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %.neg.i.i.i = sub i64 %i.ax, %i.aw
  %i.ay = add i64 %.neg.i.i.i, 32                 ; 2 uses
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ay) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i, label %bb.i, !prof !93

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sink4.i, i8 0, i64 %i.az, i1 false), !noalias !114
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.ba = sub i64 %i.ae, %i.az                    ; 2 uses
  %.not2833.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not2833.i.i.i, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EhEEmT_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i, %.lr.ph.i.i.i10
  %.035.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i10 ], [ %i.ba, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i ] ; 2 uses
  %.02634.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i10 ], [ %.sink.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.02634.i.i.i, i64 8 ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %.035.i.i.i, i64 32) ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !61, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, i8 0, i64 %i.bc, i1 false), !noalias !114
  %i.be = sub i64 %.035.i.i.i, %i.bc              ; 2 uses
  %.not28.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not28.i.i.i, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EhEEmT_.exit, label %.lr.ph.i.i.i10, !llvm.loop !123

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EhEEmT_.exit: ; preds = %.lr.ph.i.i.i10, %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE14prot_off_to_itEm.exit.i9, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i
  %i.bf = load i8, ptr %i.a, align 2, !tbaa !76, !noalias !114
  %i.bg = trunc i64 %i.ae to i8
  %i.bh = add i8 %i.bf, %i.bg
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE17priv_erase_last_nEm.exit.sink.split

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE17priv_erase_last_nEm.exit.sink.split: ; preds = %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EhEEmT_.exit, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i
  %.sink = phi i8 [ %i.ad, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i ], [ %i.bh, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EhEEmT_.exit ]
  store i8 %.sink, ptr %i.a, align 2, !tbaa !76
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE17priv_erase_last_nEm.exit

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE17priv_erase_last_nEm.exit: ; preds = %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEE17priv_erase_last_nEm.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EhLb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66, !noalias !124 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !74, !noalias !129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 2, !tbaa !76, !noalias !130
  %i.f = lshr i8 %i.c, 2
  %i.g = and i8 %i.f, 56                          ; 2 uses
  %i.h = lshr i8 %i.e, 2
  %i.i = and i8 %i.h, 56                          ; 2 uses
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %.not.i.i2 = icmp samesign ugt i8 %i.g, %i.i
  br i1 %.not.i.i2, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %.idx.i.i = zext nneg i8 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.p, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i ], [ %i.l, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.m = load ptr, ptr %.06.i.i.i, align 8, !tbaa !61
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.m)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.q = icmp ult ptr %.06.i.i.i, %i.k
  br i1 %i.q, label %.lr.ph.i.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i, !llvm.loop !80

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !66
  br label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i, %bb.b
  %i.r = phi ptr [ %.pre.i, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i ], [ %i.a, %bb.b ]
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.r)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EED2Ev.exit: ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i
  ret void
}

declare void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEES9_mb(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = lshr i64 %i.a, 5                         ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !74    ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !66     ; 7 uses
  %i.g = lshr i8 %i.e, 5
  %i.h = zext nneg i8 %i.g to i64                 ; 2 uses
  %.idx68 = shl nuw nsw i64 %i.h, 3               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !76    ; 2 uses
  %i.l = lshr i8 %i.k, 5
  %i.m = zext nneg i8 %i.l to i64                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !133
  %i.p = zext i8 %i.o to i64                      ; 4 uses
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %i.q, %i.p
  %i.s = select i1 %2, i64 %i.h, i64 %i.r
  %.not67 = icmp ult i64 %i.b, %i.s
  br i1 %.not67, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.m, 3
  %i.t = add nuw nsw i64 %.idx, 8                 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t
  %gepdiff = sub nsw i64 %i.t, %.idx68            ; 6 uses
  %i.v = ashr exact i64 %gepdiff, 3               ; 2 uses
  %i.w = add nsw i64 %i.v, %i.c                   ; 4 uses
  %i.x = lshr i64 %i.p, 1
  %.not = icmp ult i64 %i.x, %i.w
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sub nuw nsw i64 %i.p, %i.w
  %i.z = shl nuw nsw i64 %i.y, 2
  %.idx69 = and i64 %i.z, 1016
  %i.aa = shl nuw nsw i64 %i.c, 3
  %.idx70 = select i1 %2, i64 %i.aa, i64 0
  %i.ab = add nuw nsw i64 %.idx69, %.idx70        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 6 uses
  %i.ad = icmp samesign ult i64 %i.ab, %.idx68
  %.not.i.i = icmp eq i64 %i.t, %.idx68           ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, label %bb.e, !prof !93

bb.e:                                             ; preds = %bb.d
  %.not71 = icmp eq ptr %i.f, null
  br i1 %.not71, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.i, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, label %bb.h, !prof !93

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %gepdiff
  %i.af = sub nsw i64 0, %i.v                     ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.ah, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit

bb.i:                                             ; preds = %bb.b
  %i.ai = shl nuw nsw i64 %i.p, 1
  %i.aj = add nsw i64 %i.w, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj) ; 5 uses
  %i.ak = shl i64 %.sroa.speculated, 5
  %i.al = add i64 %i.ak, -288
  %i.am = icmp ult i64 %i.al, -256
  br i1 %i.am, label %bb.j, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit, !prof !93

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit: ; preds = %bb.i
  %i.an = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit
  %i.ao = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ap = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ao, i64 noundef 8) ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i58, label %bb.m, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit: ; preds = %bb.l
  %i.aq = sub nsw i64 %.sroa.speculated, %i.w
  %i.ar = lshr i64 %i.aq, 1
  %i.as = select i1 %2, i64 %i.c, i64 0
  %i.at = getelementptr [8 x i8], ptr %i.ap, i64 %i.ar
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %.not.i.i59 = icmp ne i64 %i.t, %.idx68
  %i.av = icmp ne ptr %i.f, null
  %or.cond = select i1 %.not.i.i59, i1 %i.av, i1 false, !prof !105
  br i1 %or.cond, label %bb.n, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62, !prof !105

bb.n:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.i, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62

_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62: ; preds = %bb.n, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.f)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit: ; preds = %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62
  store ptr %i.ap, ptr %0, align 8, !tbaa !66
  %i.ay = trunc i64 %.sroa.speculated to i8
  store i8 %i.ay, ptr %i.n, align 8, !tbaa !133
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit

_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit: ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.e, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit
  %.0 = phi ptr [ %i.au, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit ], [ %i.ac, %bb.d ], [ null, %bb.e ], [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.ba = ptrtoint ptr %.0 to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb
  %.tr.i.i = trunc i64 %i.bc to i8
  %i.bd = shl i8 %.tr.i.i, 2
  %i.be = load i8, ptr %i.d, align 1, !tbaa !74
  %i.bf = and i8 %i.be, 31
  %i.bg = add i8 %i.bd, %i.bf                     ; 2 uses
  store i8 %i.bg, ptr %i.d, align 1, !tbaa !74
  %i.bh = getelementptr i8, ptr %.0, i64 %gepdiff
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.bb
  %.tr.i.i63 = trunc i64 %i.bk to i8
  %i.bl = shl i8 %.tr.i.i63, 2
  %i.bm = load i8, ptr %i.j, align 2, !tbaa !76
  %i.bn = and i8 %i.bm, 31
  %i.bo = add i8 %i.bl, %i.bn                     ; 2 uses
  store i8 %i.bo, ptr %i.j, align 2, !tbaa !76
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, %bb.a
  %3 = phi i8 [ %i.bg, %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit ], [ %i.e, %bb.a ]
  %4 = phi ptr [ %i.az, %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %5 = phi i8 [ %i.bo, %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit ], [ %i.k, %bb.a ]
  %6 = lshr i8 %5, 5
  %7 = zext nneg i8 %6 to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = lshr i8 %3, 5
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bq
  %i.bs = xor i64 %i.b, -1
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %.sink = select i1 %2, ptr %i.bt, ptr %9
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_allocate_nodesEPPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.sink, i64 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 4 uses
  %i.d = sub nsw i64 %.sroa.speculated, %i.b
  %i.e = lshr i64 %i.d, 1                         ; 2 uses
  %i.f = shl i64 %.sroa.speculated, 5
  %i.g = add i64 %i.f, -288
  %i.h = icmp ult i64 %i.g, -256
  br i1 %i.h, label %bb.b, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit, !prof !93

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit: ; preds = %bb.a
  %i.i = shl nuw nsw i64 %.sroa.speculated, 3
  %i.j = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.i, i64 noundef 8) ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit

bb.c:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE21test_size_against_maxEm.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !66
  %i.k = trunc i64 %.sroa.speculated to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 %i.k, ptr %i.l, align 8, !tbaa !133
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  invoke void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_allocate_nodesEPPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.m, i64 noundef %i.b)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #22 ; 0 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.q)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit: ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !66
  store i8 0, ptr %i.l, align 8, !tbaa !133
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t

bb.h:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE17prot_allocate_mapEm.exit
  %i.u = shl i64 %i.e, 5
  %i.v = trunc i64 %i.u to i8                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.v, ptr %i.w, align 1, !tbaa !74
  %i.x = trunc i64 %1 to i8
  %i.y = add i8 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.y, ptr %i.z, align 2, !tbaa !76
  ret void

bb.i:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #24
  unreachable

bb.j:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_deallocate_mapEPPhm.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE19prot_allocate_nodesEPPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE18prot_allocate_nodeEv.exit
  %.01318 = phi i64 [ %i.c, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE18prot_allocate_nodeEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.a = invoke noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef 32, i64 noundef 1)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE18prot_allocate_nodeEv.exit

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN5boost9container15throw_bad_allocEv() #23
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.b
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE18prot_allocate_nodeEv.exit: ; preds = %.noexc
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %.01318
  store ptr %i.a, ptr %i.b, align 8, !tbaa !61
  %i.c = add nuw i64 %.01318, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.d = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #22 ; 0 uses
  %.not23 = icmp eq i64 %.01318, 0
  br i1 %.not23, label %._crit_edge22, label %.lr.ph21

._crit_edge22:                                    ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.e

.lr.ph21:                                         ; preds = %bb.c, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit
  %.019 = phi i64 [ %i.j, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit ], [ 0, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %1, i64 %.019
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.g)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph21
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE20prot_deallocate_nodeEPh.exit: ; preds = %.lr.ph21
  %i.j = add nuw i64 %.019, 1                     ; 2 uses
  %exitcond27.not = icmp eq i64 %i.j, %.01318
  br i1 %exitcond27.not, label %._crit_edge22, label %.lr.ph21, !llvm.loop !135

bb.e:                                             ; preds = %._crit_edge22
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k

._crit_edge:                                      ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EhLb0EEELb0EE18prot_allocate_nodeEv.exit, %bb.a
  ret void

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

bb.h:                                             ; preds = %._crit_edge22
  unreachable
}

declare noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z26test_stored_size_type_implItN5boost9container5dequeIhNS1_13new_allocatorIhEENS1_9deque_optILm0ELm0EtLb0EEEEEEvv() local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::deque.12", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 14, i1 false)
  invoke void @_ZN5boost9container10deque_implIhNS0_13new_allocatorIhEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container10deque_implIhNS0_13new_allocatorIhEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 65536)
          to label %bb.c unwind label %bb.e
end_hunk_0
begin_hunk_1_@_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE6resizeEm:bb.a
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = icmp ult ptr %.06.i.i.i, %i.l
  br i1 %i.aa, label %.lr.ph.i.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i, !llvm.loop !156

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i
  %.pre.i = load i16, ptr %i.a, align 4, !tbaa !179
  br label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i, %.split.i.i
  %i.ab = phi i16 [ %.pre.i, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.loopexit.i ], [ %i.b, %.split.i.i ]
  %i.ac = trunc i64 %i.i to i16
  %i.ad = sub i16 %i.ab, %i.ac
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE17priv_erase_last_nEm.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ae = sub nuw i64 %1, %i.g                    ; 6 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !148, !noalias !184
  %.not.i.i.i = icmp eq ptr %i.af, null           ; 2 uses
  %i.ag = and i16 %i.b, 1023
  %i.ah = xor i16 %i.ag, 1023
  %i.ai = zext nneg i16 %i.ah to i64              ; 2 uses
  %i.aj = select i1 %.not.i.i.i, i64 0, i64 %i.ai
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sub i64 %i.ae, %i.ai
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEES9_mb(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.al, i1 noundef zeroext false), !noalias !184
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ae), !noalias !184
  %i.am = load i16, ptr %i.d, align 2, !tbaa !180, !noalias !184
  store i16 %i.am, ptr %i.a, align 4, !tbaa !179, !noalias !184
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.an = load ptr, ptr %0, align 8, !tbaa !148, !noalias !187 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i7, label %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.i9, label %.split.i.i8

.split.i.i8:                                      ; preds = %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i
  %i.ao = load i16, ptr %i.a, align 4, !tbaa !179, !noalias !190
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61, !noalias !187
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  br label %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.i9

_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.i9: ; preds = %.split.i.i8, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i
  %.sink4.i = phi ptr [ %i.au, %.split.i.i8 ], [ null, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ar, %.split.i.i8 ], [ null, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE29priv_reserve_elements_at_backEm.exit.i ] ; 2 uses
  %.not.i.i3.i = icmp eq i64 %1, %i.g
  br i1 %.not.i.i3.i, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EtEEmT_.exit, label %bb.h, !prof !93

bb.h:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.i9
  %i.av = load ptr, ptr %.sink.i, align 8, !tbaa !61, !noalias !184
  %i.aw = ptrtoint ptr %.sink4.i to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %.neg.i.i.i = sub i64 %i.ax, %i.aw
  %i.ay = add i64 %.neg.i.i.i, 1024               ; 2 uses
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ay) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i, label %bb.i, !prof !93

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sink4.i, i8 0, i64 %i.az, i1 false), !noalias !184
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.ba = sub i64 %i.ae, %i.az                    ; 2 uses
  %.not2833.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not2833.i.i.i, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EtEEmT_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i, %.lr.ph.i.i.i10
  %.035.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i10 ], [ %i.ba, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i ] ; 2 uses
  %.02634.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i10 ], [ %.sink.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.02634.i.i.i, i64 8 ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %.035.i.i.i, i64 1024) ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !61, !noalias !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, i8 0, i64 %i.bc, i1 false), !noalias !184
  %i.be = sub i64 %.035.i.i.i, %i.bc              ; 2 uses
  %.not28.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not28.i.i.i, label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EtEEmT_.exit, label %.lr.ph.i.i.i10, !llvm.loop !193

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EtEEmT_.exit: ; preds = %.lr.ph.i.i.i10, %_ZNK5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.i9, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIhLj2ELj0EEEE31uninitialized_copy_n_and_updateIPhEEvRS4_T_m.exit.i.i.i
  %i.bf = load i16, ptr %i.a, align 4, !tbaa !179, !noalias !184
  %i.bg = trunc i64 %i.ae to i16
  %i.bh = add i16 %i.bf, %i.bg
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE17priv_erase_last_nEm.exit.sink.split

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE17priv_erase_last_nEm.exit.sink.split: ; preds = %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EtEEmT_.exit, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i
  %.sink = phi i16 [ %i.ad, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPhS8_.exit.i ], [ %i.bh, %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPhLb0ELj0ELj0EtEEmT_.exit ]
  store i16 %.sink, ptr %i.a, align 4, !tbaa !179
  br label %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE17priv_erase_last_nEm.exit

_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE17priv_erase_last_nEm.exit: ; preds = %_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEE17priv_erase_last_nEm.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIhNS0_9allocatorIhLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EtLb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !148, !noalias !194 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load <2 x i16>, ptr %i.b, align 2, !tbaa !145, !noalias !43
  %i.d = lshr <2 x i16> %i.c, splat (i16 7)
  %i.e = and <2 x i16> %i.d, splat (i16 504)      ; 2 uses
  %i.f = extractelement <2 x i16> %i.e, i64 1     ; 2 uses
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = extractelement <2 x i16> %i.e, i64 0     ; 2 uses
  %.not.i.i2 = icmp samesign ugt i16 %i.i, %i.f
  br i1 %.not.i.i2, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %.idx.i.i = zext nneg i16 %i.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.n, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i ], [ %i.j, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.k = load ptr, ptr %.06.i.i.i, align 8, !tbaa !61
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.k)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.o = icmp ult ptr %.06.i.i.i, %i.h
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i, !llvm.loop !156

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !148
  br label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i, %bb.b
  %i.p = phi ptr [ %.pre.i, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i ], [ %i.a, %bb.b ]
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.p)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EED2Ev.exit: ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEES9_mb(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = lshr i64 %i.a, 10                        ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !180  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !148    ; 7 uses
  %i.g = lshr i16 %i.e, 10
  %i.h = zext nneg i16 %i.g to i64                ; 2 uses
  %.idx68 = shl nuw nsw i64 %i.h, 3               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !179  ; 2 uses
  %i.l = lshr i16 %i.k, 10
  %i.m = zext nneg i16 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !199
  %i.p = zext i16 %i.o to i64                     ; 4 uses
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %i.q, %i.p
  %i.s = select i1 %2, i64 %i.h, i64 %i.r
  %.not67 = icmp ult i64 %i.b, %i.s
  br i1 %.not67, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.m, 3
  %i.t = add nuw nsw i64 %.idx, 8                 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t
  %gepdiff = sub nsw i64 %i.t, %.idx68            ; 6 uses
  %i.v = ashr exact i64 %gepdiff, 3               ; 2 uses
  %i.w = add nsw i64 %i.v, %i.c                   ; 4 uses
  %i.x = lshr i64 %i.p, 1
  %.not = icmp ult i64 %i.x, %i.w
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sub nuw nsw i64 %i.p, %i.w
  %i.z = shl nuw nsw i64 %i.y, 2
  %.idx69 = and i64 %i.z, 262136
  %i.aa = shl nuw nsw i64 %i.c, 3
  %.idx70 = select i1 %2, i64 %i.aa, i64 0
  %i.ab = add nuw nsw i64 %.idx69, %.idx70        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 6 uses
  %i.ad = icmp samesign ult i64 %i.ab, %.idx68
  %.not.i.i = icmp eq i64 %i.t, %.idx68           ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, label %bb.e, !prof !93

bb.e:                                             ; preds = %bb.d
  %.not71 = icmp eq ptr %i.f, null
  br i1 %.not71, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.i, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, label %bb.h, !prof !93

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %gepdiff
  %i.af = sub nsw i64 0, %i.v                     ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.ah, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit

bb.i:                                             ; preds = %bb.b
  %i.ai = shl nuw nsw i64 %i.p, 1
  %i.aj = add nsw i64 %i.w, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj) ; 5 uses
  %i.ak = shl i64 %.sroa.speculated, 10
  %i.al = add i64 %i.ak, -66560
  %i.am = icmp ult i64 %i.al, -65536
  br i1 %i.am, label %bb.j, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit, !prof !93

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit: ; preds = %bb.i
  %i.an = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit
  %i.ao = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ap = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ao, i64 noundef 8) ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i58, label %bb.m, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit: ; preds = %bb.l
  %i.aq = sub nsw i64 %.sroa.speculated, %i.w
  %i.ar = lshr i64 %i.aq, 1
  %i.as = select i1 %2, i64 %i.c, i64 0
  %i.at = getelementptr [8 x i8], ptr %i.ap, i64 %i.ar
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %.not.i.i59 = icmp ne i64 %i.t, %.idx68
  %i.av = icmp ne ptr %i.f, null
  %or.cond = select i1 %.not.i.i59, i1 %i.av, i1 false, !prof !105
  br i1 %or.cond, label %bb.n, label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62, !prof !105

bb.n:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.i, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62

_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62: ; preds = %bb.n, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.f)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit: ; preds = %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit62
  store ptr %i.ap, ptr %0, align 8, !tbaa !148
  %i.ay = trunc i64 %.sroa.speculated to i16
  store i16 %i.ay, ptr %i.n, align 8, !tbaa !199
  br label %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit

_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit: ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.e, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit
  %.0 = phi ptr [ %i.au, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit ], [ %i.ac, %bb.d ], [ null, %bb.e ], [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !148   ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = getelementptr i8, ptr %.0, i64 %gepdiff
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %.0 to i64
  %i.bf = sub i64 %i.bd, %i.ba
  %i.bg = sub i64 %i.be, %i.ba
  %.tr.i.i63 = trunc i64 %i.bf to i16
  %.tr.i.i = trunc i64 %i.bg to i16
  %i.bh = insertelement <2 x i16> poison, i16 %.tr.i.i, i64 0
  %i.bi = insertelement <2 x i16> %i.bh, i16 %.tr.i.i63, i64 1
  %i.bj = shl <2 x i16> %i.bi, splat (i16 7)
  %i.bk = load <2 x i16>, ptr %i.d, align 2, !tbaa !145
  %i.bl = and <2 x i16> %i.bk, splat (i16 1023)
  %i.bm = add <2 x i16> %i.bj, %i.bl              ; 3 uses
  store <2 x i16> %i.bm, ptr %i.d, align 2, !tbaa !145
  %i.bn = extractelement <2 x i16> %i.bm, i64 0
  %i.bo = extractelement <2 x i16> %i.bm, i64 1
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, %bb.a
  %3 = phi i16 [ %i.bn, %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit ], [ %i.e, %bb.a ]
  %4 = phi ptr [ %i.az, %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %5 = phi i16 [ %i.bo, %_ZN5boost9container6move_nIPPhS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit ], [ %i.k, %bb.a ]
  %6 = lshr i16 %5, 10
  %7 = zext nneg i16 %6 to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = lshr i16 %3, 10
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bq
  %i.bs = xor i64 %i.b, -1
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %.sink = select i1 %2, ptr %i.bt, ptr %9
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_allocate_nodesEPPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.sink, i64 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 10                          ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 4 uses
  %i.d = sub nsw i64 %.sroa.speculated, %i.b
  %i.e = lshr i64 %i.d, 1                         ; 2 uses
  %i.f = shl i64 %.sroa.speculated, 10
  %i.g = add i64 %i.f, -66560
  %i.h = icmp ult i64 %i.g, -65536
  br i1 %i.h, label %bb.b, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit, !prof !93

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit: ; preds = %bb.a
  %i.i = shl nuw nsw i64 %.sroa.speculated, 3
  %i.j = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.i, i64 noundef 8) ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit

bb.c:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEm.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !148
  %i.k = trunc i64 %.sroa.speculated to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 %i.k, ptr %i.l, align 8, !tbaa !199
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  invoke void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_allocate_nodesEPPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.m, i64 noundef %i.b)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #22 ; 0 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !148
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.q)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit: ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !148
  store i16 0, ptr %i.l, align 8, !tbaa !199
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t

bb.h:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE17prot_allocate_mapEm.exit
  %i.u = shl i64 %i.e, 10
  %i.v = trunc i64 %i.u to i16                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.v, ptr %i.w, align 2, !tbaa !180
  %i.x = trunc i64 %1 to i16
  %i.y = add i16 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.y, ptr %i.z, align 4, !tbaa !179
  ret void

bb.i:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #24
  unreachable

bb.j:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_deallocate_mapEPPhm.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_allocate_nodesEPPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE18prot_allocate_nodeEv.exit
  %.01318 = phi i64 [ %i.c, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE18prot_allocate_nodeEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.a = invoke noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef 1024, i64 noundef 1)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE18prot_allocate_nodeEv.exit

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN5boost9container15throw_bad_allocEv() #23
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.b
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE18prot_allocate_nodeEv.exit: ; preds = %.noexc
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %.01318
  store ptr %i.a, ptr %i.b, align 8, !tbaa !61
  %i.c = add nuw i64 %.01318, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.d = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #22 ; 0 uses
  %.not23 = icmp eq i64 %.01318, 0
  br i1 %.not23, label %._crit_edge22, label %.lr.ph21

._crit_edge22:                                    ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.e

.lr.ph21:                                         ; preds = %bb.c, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit
  %.019 = phi i64 [ %i.j, %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit ], [ 0, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %1, i64 %.019
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.g)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph21
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE20prot_deallocate_nodeEPh.exit: ; preds = %.lr.ph21
  %i.j = add nuw i64 %.019, 1                     ; 2 uses
  %exitcond27.not = icmp eq i64 %i.j, %.01318
  br i1 %exitcond27.not, label %._crit_edge22, label %.lr.ph21, !llvm.loop !201

bb.e:                                             ; preds = %._crit_edge22
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k

._crit_edge:                                      ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIhLj2ELj0EEENS0_9deque_optILm0ELm0EtLb0EEELb0EE18prot_allocate_nodeEv.exit, %bb.a
  ret void

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

bb.h:                                             ; preds = %._crit_edge22
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
