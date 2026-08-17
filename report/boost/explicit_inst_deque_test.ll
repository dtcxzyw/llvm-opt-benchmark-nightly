inline.NumInlined: 1924
inline.NumDeleted: 692
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE17priv_erase_last_nEt:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !636  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !574
  %.not = icmp eq i16 %i.b, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !566, !noalias !1012 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.thread, label %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit

_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit: ; preds = %bb.b
  %i.f = zext i16 %i.b to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77, !noalias !1012
  %i.j = and i64 %i.f, 255
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 7 uses
  %i.l = sext i16 %1 to i64                       ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %.not.i.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i.i, label %.preheader.i, label %bb.c

_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.thread: ; preds = %bb.b
  %.not.i.i.i27 = icmp eq i16 %1, 0
  tail call void @llvm.assume(i1 %.not.i.i.i27)
  br label %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit

bb.c:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !77, !noalias !1015
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = sub nsw i64 %i.r, %i.l                   ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.s, 256
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m
  br label %.preheader.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp sgt i64 %i.s, 0
  %i.v = lshr i64 %i.s, 8                         ; 2 uses
  %i.w = or disjoint i64 %i.v, -72057594037927936
  %i.x = select i1 %i.u, i64 %i.v, i64 %i.w       ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77, !noalias !1015
  %i.aa = shl nsw i64 %i.x, 8
  %i.ab = sub nsw i64 %i.s, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit, %bb.e, %bb.d
  %.sroa.0.0.i18 = phi ptr [ %i.t, %bb.d ], [ %i.ac, %bb.e ], [ %i.k, %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit ] ; 4 uses
  %.sroa.6.1.i16 = phi ptr [ %i.h, %bb.d ], [ %i.y, %bb.e ], [ %i.h, %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit ] ; 5 uses
  %.029.i = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i16, i64 8 ; 2 uses
  %i.ad = icmp ult ptr %.029.i, %i.h
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit.i, %.preheader.i
  %.not12.i = icmp eq ptr %.sroa.6.1.i16, %i.h
  br i1 %.not12.i, label %bb.g, label %bb.f

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit.i
  %.030.i = phi ptr [ %.0.i, %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit.i ], [ %.029.i, %.preheader.i ] ; 2 uses
  %i.ae = load ptr, ptr %.030.i, align 8, !tbaa !77 ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i
  %storemerge4.i.idx.i = phi i64 [ 0, %.lr.ph.i ], [ %storemerge4.i.add.i.3, %.lr.ph.i.i ] ; 5 uses
  %storemerge4.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 %storemerge4.i.idx.i
  store i32 -2147483648, ptr %storemerge4.i.ptr.i, align 4, !tbaa !79
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %storemerge4.i.idx.i
  %storemerge4.i.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 -2147483648, ptr %storemerge4.i.ptr.i.1, align 4, !tbaa !79
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %storemerge4.i.idx.i
  %storemerge4.i.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 -2147483648, ptr %storemerge4.i.ptr.i.2, align 4, !tbaa !79
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %storemerge4.i.idx.i
  %storemerge4.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 -2147483648, ptr %storemerge4.i.ptr.i.3, align 4, !tbaa !79
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %storemerge4.i.add.i.3 = add nuw nsw i64 %storemerge4.i.idx.i, 16 ; 2 uses
  %.not.i.i.3 = icmp eq i64 %storemerge4.i.add.i.3, 1024
  br i1 %.not.i.i.3, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !693

_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit.i: ; preds = %.lr.ph.i.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 8 ; 2 uses
  %i.aq = icmp ult ptr %.0.i, %i.h
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !694

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = load ptr, ptr %.sroa.6.1.i16, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1024 ; 2 uses
  %.not3.i13.i = icmp eq ptr %.sroa.0.0.i18, %i.as
  br i1 %.not3.i13.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit17.i, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %bb.f, %.lr.ph.i14.i
  %storemerge4.i15.i = phi ptr [ %i.av, %.lr.ph.i14.i ], [ %.sroa.0.0.i18, %bb.f ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i15.i, align 4, !tbaa !79
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i15.i, i64 4 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.av, %i.as
  br i1 %.not.i16.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit17.i, label %.lr.ph.i14.i, !llvm.loop !693

_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit17.i: ; preds = %.lr.ph.i14.i, %bb.f
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !77  ; 2 uses
  %.not3.i18.i = icmp eq ptr %i.aw, %i.k
  br i1 %.not3.i18.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit17.i, %.lr.ph.i19.i
  %storemerge4.i20.i = phi ptr [ %i.az, %.lr.ph.i19.i ], [ %i.aw, %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit17.i ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i20.i, align 4, !tbaa !79
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i20.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.az, %i.k
  br i1 %.not.i21.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit, label %.lr.ph.i19.i, !llvm.loop !693

bb.g:                                             ; preds = %._crit_edge.i
  %.not3.i23.i = icmp eq ptr %.sroa.0.0.i18, %i.k
  br i1 %.not3.i23.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %bb.g, %.lr.ph.i24.i
  %storemerge4.i25.i = phi ptr [ %i.bc, %.lr.ph.i24.i ], [ %.sroa.0.0.i18, %bb.g ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i25.i, align 4, !tbaa !79
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !81
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i25.i, i64 4 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.bc, %i.k
  br i1 %.not.i26.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit, label %.lr.ph.i24.i, !llvm.loop !693

_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit: ; preds = %.lr.ph.i19.i, %.lr.ph.i24.i, %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeEPS3_S7_.exit17.i, %bb.g
  %i.bd = icmp ult ptr %.sroa.6.1.i16, %i.h
  br i1 %i.bd, label %.lr.ph.i.i4, label %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit

.lr.ph.i.i4:                                      ; preds = %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit, %.lr.ph.i.i4
  %.06.i.i.pn = phi ptr [ %.06.i.i, %.lr.ph.i.i4 ], [ %.sroa.6.1.i16, %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.pn, i64 8 ; 3 uses
  %i.be = load ptr, ptr %.06.i.i, align 8, !tbaa !77
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef 1024) #20
  %i.bf = icmp ult ptr %.06.i.i, %i.h
  br i1 %i.bf, label %.lr.ph.i.i4, label %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit, !llvm.loop !695

_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit: ; preds = %.lr.ph.i.i4
  %.pre = load i16, ptr %i.a, align 4, !tbaa !636
  br label %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit

_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit: ; preds = %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.thread, %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit, %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit
  %i.bg = phi i16 [ %.pre, %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit ], [ %i.b, %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEES9_.exit ], [ %i.b, %_ZNK5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE14prot_off_to_itEm.exit.thread ]
  %i.bh = sub i16 %i.bg, %1
  store i16 %i.bh, ptr %i.a, align 4, !tbaa !636
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEESB_tb(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i16 %1 to i32
  %i.b = add nuw nsw i32 %i.a, 16777215
  %i.c = lshr i32 %i.b, 8
  %i.d = trunc i32 %i.c to i16
  %i.e = add nsw i16 %i.d, 1                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !574  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !566    ; 7 uses
  %i.i = lshr i16 %i.g, 8                         ; 2 uses
  %i.j = shl nuw nsw i16 %i.i, 3
  %.idx66 = zext nneg i16 %i.j to i64             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx66 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i16, ptr %i.l, align 4, !tbaa !636  ; 2 uses
  %i.n = lshr i16 %i.m, 8                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !696  ; 5 uses
  %i.q = xor i16 %i.n, -1
  %i.r = add i16 %i.p, %i.q
  %i.s = select i1 %2, i16 %i.i, i16 %i.r
  %i.t = icmp ugt i16 %i.e, %i.s
  br i1 %i.t, label %bb.b, label %3

bb.b:                                             ; preds = %bb.a
  %i.u = shl nuw nsw i16 %i.n, 3
  %narrow = add nuw nsw i16 %i.u, 8
  %i.v = zext nneg i16 %narrow to i64             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v
  %gepdiff = sub nsw i64 %i.v, %.idx66            ; 2 uses
  %i.x = lshr exact i64 %gepdiff, 3               ; 4 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = trunc i64 %i.x to i16
  %i.aa = add i16 %i.e, %i.z                      ; 4 uses
  %i.ab = lshr i16 %i.p, 1
  %.not = icmp ult i16 %i.ab, %i.aa
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = sub nuw i16 %i.p, %i.aa
  %i.ad = lshr i16 %i.ac, 1
  %i.ae = select i1 %2, i16 %i.e, i16 0
  %i.af = add nuw i16 %i.ad, %i.ae
  %i.ag = sext i16 %i.af to i64
  %.idx = shl nsw i64 %i.ag, 3                    ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 6 uses
  %i.ai = icmp slt i64 %.idx, %.idx66
  %i.aj = and i64 %i.x, 65535                     ; 4 uses
  %.not.i.i = icmp eq i64 %i.aj, 0                ; 2 uses
  br i1 %i.ai, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.k, i64 %i.ak, i1 false)
  br label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, label %bb.h, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %gepdiff
  %i.am = sub nsw i64 0, %i.aj                    ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.am
  %i.ap = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ao, i64 %i.ap, i1 false)
  br label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

bb.i:                                             ; preds = %bb.b
  %i.aq = shl i16 %i.p, 1
  %i.ar = add i16 %i.aa, 1
  %.sroa.speculated = tail call i16 @llvm.umax.i16(i16 %i.aq, i16 %i.ar) ; 4 uses
  %i.as = shl i16 %.sroa.speculated, 8
  %i.at = add i16 %i.as, -16640
  %i.au = icmp ult i16 %i.at, -16384
  br i1 %i.au, label %bb.j, label %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEt.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEt.exit: ; preds = %bb.i
  %i.av = zext i16 %.sroa.speculated to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #23 ; 2 uses
  %i.ay = sub i16 %.sroa.speculated, %i.aa
  %i.az = lshr i16 %i.ay, 1
  %i.ba = select i1 %2, i16 %i.e, i16 0
  %i.bb = add nuw i16 %i.az, %i.ba
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = and i64 %i.x, 65535                     ; 2 uses
  %.not.i.i58 = icmp ne i64 %i.be, 0
  %i.bf = icmp ne ptr %i.h, null
  %or.cond = select i1 %.not.i.i58, i1 %i.bf, i1 false, !prof !749
  br i1 %or.cond, label %bb.k, label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit61, !prof !749

bb.k:                                             ; preds = %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEt.exit
  %i.bg = shl nuw nsw i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 1 %i.k, i64 %i.bg, i1 false)
  br label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit61

_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit61: ; preds = %bb.k, %_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE21test_size_against_maxEt.exit
  %i.bh = zext i16 %i.p to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.bi) #20
  store ptr %i.ax, ptr %0, align 8, !tbaa !566
  store i16 %.sroa.speculated, ptr %i.o, align 8, !tbaa !696
  br label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit: ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.e, %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit61
  %.0 = phi ptr [ %i.bd, %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit61 ], [ %i.ah, %bb.d ], [ null, %bb.e ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !566   ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = shl i32 %i.y, 16
  %sext57 = add i32 %i.bl, -65536
  %i.bm = ashr exact i32 %sext57, 16
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.bn
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.0 to i64
  %i.br = sub i64 %i.bp, %i.bk
  %i.bs = sub i64 %i.bq, %i.bk
  %.tr.i.i62 = trunc i64 %i.br to i16
  %.tr.i.i = trunc i64 %i.bs to i16
  %i.bt = insertelement <2 x i16> poison, i16 %.tr.i.i, i64 0
  %i.bu = insertelement <2 x i16> %i.bt, i16 %.tr.i.i62, i64 1
  %i.bv = shl <2 x i16> %i.bu, splat (i16 5)
  %i.bw = load <2 x i16>, ptr %i.f, align 2, !tbaa !509
  %i.bx = and <2 x i16> %i.bw, splat (i16 255)
  %i.by = add <2 x i16> %i.bv, %i.bx              ; 3 uses
  store <2 x i16> %i.by, ptr %i.f, align 2, !tbaa !509
  %i.bz = extractelement <2 x i16> %i.by, i64 0
  %i.ca = extractelement <2 x i16> %i.by, i64 1
  br label %3

3:                                                ; preds = %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, %bb.a
  %4 = phi i16 [ %i.bz, %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit ], [ %i.g, %bb.a ]
  %5 = phi ptr [ %i.bj, %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %6 = phi i16 [ %i.ca, %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit ], [ %i.m, %bb.a ]
  br i1 %2, label %bb.l, label %7

bb.l:                                             ; preds = %3
  %i.cb = lshr i16 %4, 8
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cc
  %i.ce = zext nneg i16 %i.e to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cf
  br label %12

7:                                                ; preds = %3
  %8 = lshr i16 %6, 8
  %9 = zext nneg i16 %8 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %12

12:                                               ; preds = %7, %bb.l
  %.sink = phi ptr [ %11, %7 ], [ %i.cg, %bb.l ]
  tail call void @_ZN5boost9container10deque_baseINS0_4test25small_size_type_allocatorINS2_24movable_and_copyable_intEEENS0_9deque_optILm0ELm0EtLb0EEELb0EE19prot_allocate_nodesEPPS4_t(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.sink, i16 noundef zeroext %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE11priv_assignINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvtT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %3 = alloca %"class.boost::container::deque_iterator.44", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i16, ptr %i.b, align 4, !tbaa !636
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !574  ; 2 uses
  %i.f = sub i16 %i.c, %i.e                       ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !566, !noalias !1018 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE5beginEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.h = zext i16 %i.e to i64                     ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77, !noalias !1018
  %i.l = and i64 %i.h, 255
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  br label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE5beginEv.exit

_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE5beginEv.exit: ; preds = %bb.a, %.split.i.i
  %.sink1.i = phi ptr [ %i.m, %.split.i.i ], [ null, %bb.a ] ; 4 uses
  %.sink.i = phi ptr [ %i.j, %.split.i.i ], [ null, %bb.a ] ; 2 uses
  %i.n = icmp ult i16 %i.f, %1
  %i.o = tail call i16 @llvm.umin.i16(i16 %i.f, i16 %1) ; 3 uses
  %.not.i = icmp eq i16 %i.o, 0
  br i1 %.not.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEEtRT_.exit, label %bb.b, !prof !27

bb.b:                                             ; preds = %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE5beginEv.exit
  %i.p = load ptr, ptr %.sink.i, align 8, !tbaa !77
  %i.q = ptrtoint ptr %.sink1.i to i64            ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr i64 %i.s, 2
  %i.u = trunc i64 %i.t to i16                    ; 2 uses
  %i.v = sub i16 256, %i.u
  %i.w = tail call i16 @llvm.umin.i16(i16 %i.o, i16 %i.v) ; 3 uses
  %.not8.i.i.i = icmp eq i16 %i.u, 256
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.x = zext i16 %i.w to i64                     ; 4 uses
  %min.iters.check = icmp ult i16 %i.w, 8
  %i.y = sub i64 %i.a, %i.q
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader.i
  %n.vec = and i64 %i.x, 65528                    ; 3 uses
  %i.z = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.aa = getelementptr i8, ptr %.sink1.i, i64 %i.z
  %i.ab = and i64 %i.x, 7
  %i.ac = getelementptr i8, ptr %2, i64 %i.z      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sink1.i, i64 %i.ad ; 2 uses
  %next.gep23 = getelementptr i8, ptr %2, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !79
  %wide.load24 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !79
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !79
  store <4 x i32> %wide.load24, ptr %i.af, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1023

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i, %middle.block
  %.011.i.i.i.ph = phi ptr [ %.sink1.i, %.lr.ph.i.i.preheader.i ], [ %i.aa, %middle.block ] ; 2 uses
  %.0610.i.i.i.ph = phi i64 [ %i.x, %.lr.ph.i.i.preheader.i ], [ %i.ab, %middle.block ] ; 4 uses
  %.079.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.preheader.i ], [ %i.ac, %middle.block ] ; 2 uses
  %i.ah = add nsw i64 %.0610.i.i.i.ph, -1
  %xtraiter = and i64 %.0610.i.i.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0610.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.prol ], [ %.0610.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.079.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.prol ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ai = add nsw i64 %.0610.i.i.i.prol, -1       ; 2 uses
  %i.aj = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.aj, ptr %.011.i.i.i.prol, align 4, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1024

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa49.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.prol ]
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %.0610.i.i.i.unr = phi i64 [ %.0610.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.prol ]
  %i.am = icmp ult i64 %i.ah, 7
  br i1 %i.am, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i ], [ %.0610.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.079.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.an = load i32, ptr %.079.i.i.i, align 4, !tbaa !79
  store i32 %i.an, ptr %.011.i.i.i, align 4, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !79
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !79
  store i32 %i.at, ptr %i.as, align 4, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 12
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !79
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !79
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !79
  %i.ba = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 20
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !79
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 24
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !79
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !79
  %i.bg = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 28
  %i.bi = add nsw i64 %.0610.i.i.i, -8            ; 2 uses
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !79
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !79
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1025

_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.b
  %.promoted.i = phi ptr [ %2, %bb.b ], [ %i.ac, %middle.block ], [ %.lcssa49.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bk, %.lr.ph.i.i.i ] ; 2 uses
  %i.bm = sub i16 %i.o, %i.w                      ; 2 uses
  %.not2333.i = icmp eq i16 %i.bm, 0
  br i1 %.not2333.i, label %_ZN5boost9container10deque_implINS0_4test24movable_and_copyable_intENS2_25small_size_type_allocatorIS3_EELb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EtEEtRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit31.i
  %.lcssa36.i = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit31.i ], [ %.promoted.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i ] ; 4 uses
  %.035.i = phi i16 [ %i.dg, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit31.i ], [ %i.bm, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i ] ; 3 uses
  %.02134.i = phi ptr [ %i.bn, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit31.i ], [ %.sink.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.02134.i, i64 8 ; 2 uses
  %i.bo = tail call i16 @llvm.umin.i16(i16 %.035.i, i16 256) ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !77 ; 4 uses
  %i.bq = zext nneg i16 %i.bo to i64              ; 4 uses
  %min.iters.check31 = icmp ult i16 %.035.i, 8
  %i.br = ptrtoaddr ptr %i.bp to i64
  %.lcssa36.i28 = ptrtoaddr ptr %.lcssa36.i to i64
  %i.bs = sub i64 %.lcssa36.i28, %i.br
  %diff.check29 = icmp ugt i64 %i.bs, -32
  %or.cond47 = select i1 %min.iters.check31, i1 true, i1 %diff.check29
  br i1 %or.cond47, label %.lr.ph.i.i25.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i
  %n.vec33 = and i64 %i.bq, 504                   ; 3 uses
  %i.bt = shl nuw nsw i64 %n.vec33, 2             ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bp, i64 %i.bt
  %i.bv = and i64 %i.bq, 7
  %i.bw = getelementptr i8, ptr %.lcssa36.i, i64 %i.bt ; 2 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.bx = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.bp, i64 %i.bx ; 2 uses
  %next.gep37 = getelementptr i8, ptr %.lcssa36.i, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep37, align 4, !tbaa !79
  %wide.load39 = load <4 x i32>, ptr %i.by, align 4, !tbaa !79
  %i.bz = getelementptr i8, ptr %next.gep36, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep36, align 4, !tbaa !79
  store <4 x i32> %wide.load39, ptr %i.bz, align 4, !tbaa !79
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.ca, label %middle.block41, label %vector.body34, !llvm.loop !1026

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %n.vec33, %i.bq
end_hunk_0
