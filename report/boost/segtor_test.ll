Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/segtor_test?download=true
inline.NumInlined: 19147
inline.NumDeleted: 3749
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 812
loop-unroll.NumUnrolled: 1099
begin_hunk_0_@_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE25priv_insert_back_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_:bb.a
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEESB_mb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !456, !noalias !3461
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !453, !noalias !3462 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit
  %i.n = lshr i64 %i.l, 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !458, !noalias !3462
  %i.q = and i64 %i.l, 255
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %i.s = phi ptr [ %i.r, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 4 uses
  %.sink = phi ptr [ %i.o, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !531
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.t, align 8, !tbaa !532
  %.not.i.i4 = icmp eq i64 %2, 0
  br i1 %.not.i.i4, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !365

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit
  %i.u = load ptr, ptr %.sink, align 8, !tbaa !458
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 2
  %i.z = sub nsw i64 256, %i.y
  %i.aa = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.z) ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %i.x, 1024
  br i1 %.not15.i.i.i.i, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.ab = add i64 %i.aa, -1
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.prol ], [ %i.s, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.ac = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !455
  store i32 %i.ac, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !455
  %i.ad = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ah = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3459

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa14.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ab, 3
  br i1 %i.ai, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.aj = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !455
  store i32 %i.aj, ptr %.01417.i.i.i.i, align 4, !tbaa !455
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363 ; 4 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !455
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !455
  %i.ap = add i32 %i.ak, 2
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !455
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !455
  %i.at = add i32 %i.ak, 3
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !455
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !455
  %i.ax = add i32 %i.ak, 4
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ba = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.3, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !87

.loopexit38.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %.promoted.i.i = phi ptr [ %3, %bb.e ], [ %.lcssa14.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %i.bb = sub i64 %2, %i.aa                       ; 2 uses
  %.not2840.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not2840.i.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit38.i.i, %.unr-lcssa
  %.lcssa43.i.i = phi ptr [ %.lcssa, %.unr-lcssa ], [ %.promoted.i.i, %.loopexit38.i.i ] ; 2 uses
  %.042.i.i = phi ptr [ %i.bc, %.unr-lcssa ], [ %.sink, %.loopexit38.i.i ]
  %.02641.i.i = phi i64 [ %i.ce, %.unr-lcssa ], [ %i.bb, %.loopexit38.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 8 ; 2 uses
  %i.bd = tail call i64 @llvm.umin.i64(i64 %.02641.i.i, i64 256) ; 4 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !458 ; 2 uses
  %xtraiter15 = and i64 %i.bd, 3                  ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol

.lr.ph.i.i31.i.i.prol:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i31.i.i.prol
  %.018.i.i32.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i31.i.i.prol ], [ %i.bd, %.lr.ph.i.i ]
  %.01417.i.i33.i.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i31.i.i.prol ], [ %i.be, %.lr.ph.i.i ] ; 3 uses
  %.sroa.0.016.i.i34.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i31.i.i.prol ], [ %.lcssa43.i.i, %.lr.ph.i.i ] ; 2 uses
  %prol.iter17 = phi i64 [ %prol.iter17.next, %.lr.ph.i.i31.i.i.prol ], [ 0, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i.prol) ]
  %i.bf = load i32, ptr %.sroa.0.016.i.i34.i.i.prol, align 4, !tbaa !455
  store i32 %i.bf, ptr %.01417.i.i33.i.i.prol, align 4, !tbaa !455
  %i.bg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 4 ; 2 uses
  %i.bk = add i64 %.018.i.i32.i.i.prol, -1        ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol, !llvm.loop !3460

.lr.ph.i.i31.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i31.i.i.prol, %.lr.ph.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.i31.i.i.prol ]
  %.018.i.i32.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %i.bk, %.lr.ph.i.i31.i.i.prol ]
  %.01417.i.i33.i.i.unr = phi ptr [ %i.be, %.lr.ph.i.i ], [ %i.bj, %.lr.ph.i.i31.i.i.prol ]
  %.sroa.0.016.i.i34.i.i.unr = phi ptr [ %.lcssa43.i.i, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.i31.i.i.prol ]
  %i.bl = icmp ult i64 %.02641.i.i, 4
  br i1 %i.bl, label %.unr-lcssa, label %.lr.ph.i.i31.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %.lr.ph.i.i31.i.i.prol.loopexit, %.lr.ph.i.i31.i.i
  %.018.i.i32.i.i = phi i64 [ %i.cd, %.lr.ph.i.i31.i.i ], [ %.018.i.i32.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ]
  %.01417.i.i33.i.i = phi ptr [ %i.cc, %.lr.ph.i.i31.i.i ], [ %.01417.i.i33.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i34.i.i = phi ptr [ %i.cb, %.lr.ph.i.i31.i.i ], [ %.sroa.0.016.i.i34.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i) ]
  %i.bm = load i32, ptr %.sroa.0.016.i.i34.i.i, align 4, !tbaa !455
  store i32 %i.bm, ptr %.01417.i.i33.i.i, align 4, !tbaa !455
  %i.bn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363 ; 4 uses
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !455
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !455
  %i.bs = add i32 %i.bn, 2
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 8
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !455
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !455
  %i.bw = add i32 %i.bn, 3
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 12
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !455
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !455
  %i.ca = add i32 %i.bn, 4
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 16
  %i.cd = add i64 %.018.i.i32.i.i, -4             ; 2 uses
  %.not.i.i35.i.i.3 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i35.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i31.i.i, !llvm.loop !87

.unr-lcssa:                                       ; preds = %.lr.ph.i.i31.i.i, %.lr.ph.i.i31.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i31.i.i.prol.loopexit ], [ %i.cb, %.lr.ph.i.i31.i.i ]
  %i.ce = sub nuw i64 %.02641.i.i, %i.bd          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not28.i.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !88

_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit: ; preds = %.unr-lcssa, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit, %.loopexit38.i.i
  %i.cf = add i64 %i.l, %2
  store i64 %i.cf, ptr %i.f, align 8, !tbaa !456
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.90") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %4 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !456  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !533
  %i.e = shl i64 %i.d, 8
  %i.f = load ptr, ptr %1, align 8, !tbaa !453
  %i.g = icmp ne ptr %i.f, null                   ; 2 uses
  %.neg.i.i = sext i1 %i.g to i64
  %i.h = sub i64 %i.e, %i.b
  %i.i = add i64 %i.h, %.neg.i.i                  ; 2 uses
  %i.j = icmp ugt i64 %3, %i.i
  br i1 %i.j, label %bb.b, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i64 %3, %i.i
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEESB_mb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !456, !noalias !3500
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !453, !noalias !3501 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit
  %i.n = lshr i64 %i.l, 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !458, !noalias !3501
  %i.q = and i64 %i.l, 255
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %i.s = phi ptr [ %i.r, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 18 uses
  %i.t = phi ptr [ %i.o, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 22 uses
  %i.u = sub i64 %i.b, %2                         ; 8 uses
  %.not = icmp ult i64 %i.u, %3
  br i1 %.not, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit
  store ptr %i.s, ptr %0, align 8, !tbaa !531
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !532
  %i.w = sub nsw i64 0, %3
  %.not.i.i36 = icmp eq i64 %3, 0                 ; 2 uses
  %.pre207 = load ptr, ptr %i.t, align 8, !tbaa !458 ; 9 uses
  %.pre218 = ptrtoint ptr %i.s to i64
  %.pre219 = ptrtoint ptr %.pre207 to i64
  %.pre221 = sub i64 %.pre218, %.pre219
  %.pre223 = ashr exact i64 %.pre221, 2           ; 2 uses
  br i1 %.not.i.i36, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_NS_11move_detail5bool_ILb0EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = sub nsw i64 %.pre223, %3                 ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.x, 256
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.x, 0
  %i.aa = lshr i64 %i.x, 8                        ; 2 uses
  %i.ab = or disjoint i64 %i.aa, -72057594037927936
  %i.ac = select i1 %i.z, i64 %i.aa, i64 %i.ab    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ac ; 3 uses
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !532
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !458
  %i.af = shl nsw i64 %i.ac, 8
  %i.ag = sub nsw i64 %i.x, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.t, %bb.g ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.ah, %bb.h ], [ %i.y, %bb.g ] ; 7 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !531
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !458
  %i.ak = ptrtoint ptr %storemerge.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 2                 ; 3 uses
  %i.ao = sub nsw i64 256, %i.an
  %i.ap = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.ao) ; 5 uses
  %.not12.i.i = icmp eq i64 %i.am, 1024
  br i1 %.not12.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aq = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ar = load i32, ptr %storemerge.i.i, align 4, !tbaa !455, !noalias !3502
  store i32 %i.ar, ptr %i.s, align 4, !tbaa !455, !noalias !3502
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3502
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3502
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre207, i64 1024
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %.lr.ph.i.i.prol.loopexit, !prof !365

bb.j:                                             ; preds = %.lr.ph.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !458, !noalias !3502 ; 4 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.j, %.lr.ph.i.i.preheader
  %.lcssa383.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.pre207, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.lcssa382.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ], [ %i.ay, %bb.j ]
  %.lcssa381.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.unr = phi ptr [ %.pre207, %.lr.ph.i.i.preheader ], [ %.pre207, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.unr384 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ], [ %i.ay, %bb.j ]
  %.unr385 = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.014.i.i.unr = phi ptr [ %storemerge.i.i, %.lr.ph.i.i.preheader ], [ %i.au, %bb.j ], [ %i.au, %.lr.ph.i.i.prol ]
  %.0813.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i.preheader ], [ %i.aq, %bb.j ], [ %i.aq, %.lr.ph.i.i.prol ]
  %i.ba = icmp eq i64 %i.ap, 1
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1
  %i.bb = phi ptr [ %i.ca, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bc = phi ptr [ %i.cb, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr384, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bd = phi ptr [ %i.cc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr385, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.014.i.i = phi ptr [ %i.bu, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.0813.i.i = phi i64 [ %i.bq, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.0813.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.be = load i32, ptr %.014.i.i, align 4, !tbaa !455, !noalias !3502
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !455, !noalias !3502
  %i.bf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3502
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3502
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1024
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i, !prof !365

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !458, !noalias !3502 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i
  %i.bn = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bo = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bp = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bq = add i64 %.0813.i.i, -2                  ; 2 uses
  %i.br = load i32, ptr %i.bh, align 4, !tbaa !455, !noalias !3502
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !455, !noalias !3502
  %i.bs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3502
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3502
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 1024
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.l, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1, !prof !365

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !458, !noalias !3502 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1: ; preds = %bb.l, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i
  %i.ca = phi ptr [ %i.bn, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bz, %bb.l ] ; 2 uses
  %i.cb = phi ptr [ %i.bo, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.by, %bb.l ] ; 2 uses
  %i.cc = phi ptr [ %i.bv, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bz, %bb.l ] ; 2 uses
  %.not.i.i37.1 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i37.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, label %.lr.ph.i.i, !llvm.loop !89

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1, %bb.i
  %.pre54.i206 = phi ptr [ %.pre207, %bb.i ], [ %.lcssa383.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.ca, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %.promoted49.i = phi ptr [ %i.t, %bb.i ], [ %.lcssa382.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.cb, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %.promoted.i = phi ptr [ %i.s, %bb.i ], [ %.lcssa381.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.cc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %i.cd = sub i64 %3, %i.ap                       ; 2 uses
  %.not2745.i = icmp eq i64 %i.cd, 0
  br i1 %.not2745.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_NS_11move_detail5bool_ILb0EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i
  %.pre54.i = phi ptr [ %.pre54.i203.lcssa, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %.pre54.i206, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 4 uses
  %.lcssa4250.i = phi ptr [ %.lcssa380, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %.promoted49.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 4 uses
  %.lcssa48.i = phi ptr [ %.lcssa379, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %.promoted.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 3 uses
  %.02447.i = phi ptr [ %i.ce, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %i.ai, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ]
  %.02546.i = phi i64 [ %i.du, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %i.cd, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02447.i, i64 8 ; 2 uses
  %i.cf = tail call i64 @llvm.umin.i64(i64 %.02546.i, i64 256) ; 4 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !458 ; 3 uses
  %xtraiter386 = and i64 %i.cf, 1
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
end_hunk_0
begin_hunk_1_@_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmmT_:bb.a
  %storemerge.i.i.i = phi ptr [ %i.es, %bb.s ], [ %i.er, %bb.r ] ; 3 uses
  %i.ev = load i32, ptr %i.en, align 4, !tbaa !455, !noalias !3504
  store i32 %i.ev, ptr %storemerge.i.i.i, align 4, !tbaa !455, !noalias !3504
  %i.ew = add i64 %.035.i.i, -2                   ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.06.i.i, i64 -8 ; 2 uses
  %i.ey = icmp eq ptr %storemerge.i.i.i, %i.et
  br i1 %i.ey, label %bb.u, label %bb.t, !prof !365

bb.t:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.ez = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1

bb.u:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.fa = getelementptr inbounds i8, ptr %i.eu, i64 -8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !458, !noalias !3504 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1: ; preds = %bb.u, %bb.t
  %i.fd = phi ptr [ %i.et, %bb.t ], [ %i.fb, %bb.u ]
  %i.fe = phi ptr [ %i.eu, %bb.t ], [ %i.fa, %bb.u ] ; 2 uses
  %storemerge.i.i.i.1 = phi ptr [ %i.ez, %bb.t ], [ %i.fc, %bb.u ] ; 3 uses
  %i.ff = load i32, ptr %i.ex, align 4, !tbaa !455, !noalias !3504
  store i32 %i.ff, ptr %storemerge.i.i.i.1, align 4, !tbaa !455, !noalias !3504
  %.not.i.i43.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i43.1, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i.i42, !llvm.loop !83

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i.i42.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_NS_11move_detail5bool_ILb0EEE.exit
  %.promoted40.i = phi ptr [ %i.t, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_NS_11move_detail5bool_ILb0EEE.exit ], [ %.lcssa378.unr.a, %.lr.ph.i.i42.prol.loopexit ], [ %i.fe, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1 ] ; 2 uses
  %.promoted.i44 = phi ptr [ %i.s, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_NS_11move_detail5bool_ILb0EEE.exit ], [ %storemerge.i.i.i.lcssa.unr, %.lr.ph.i.i42.prol.loopexit ], [ %storemerge.i.i.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1 ]
  %i.fg = sub nuw i64 %i.dy, %i.dz                ; 2 uses
  %.not36.i = icmp eq i64 %i.fg, 0
  br i1 %.not36.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %.pre43.i.pre = load ptr, ptr %.promoted40.i, align 8, !tbaa !458, !noalias !3505
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i
  %.pre43.i = phi ptr [ %.pre43.i209.lcssa, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.pre43.i.pre, %.lr.ph.i45.preheader ] ; 3 uses
  %.lcssa41.i = phi ptr [ %.lcssa377, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.promoted40.i, %.lr.ph.i45.preheader ] ; 3 uses
  %storemerge.i.i27.lcssa39.i = phi ptr [ %storemerge.i.i27.i.lcssa, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.promoted.i44, %.lr.ph.i45.preheader ] ; 3 uses
  %.038.i = phi ptr [ %i.fh, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %i.dv, %.lr.ph.i45.preheader ]
  %.01737.i = phi i64 [ %i.gr, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %i.fg, %.lr.ph.i45.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %.038.i, i64 -8 ; 2 uses
  %i.fi = tail call i64 @llvm.umin.i64(i64 %.01737.i, i64 256) ; 4 uses
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !458, !noalias !3506 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1024
  %xtraiter395 = and i64 %i.fi, 1
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol

.lr.ph.i22.i.prol:                                ; preds = %.lr.ph.i45
  %i.fl = add nsw i64 %i.fi, -1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1020 ; 2 uses
  %i.fn = icmp eq ptr %storemerge.i.i27.lcssa39.i, %.pre43.i
  br i1 %i.fn, label %bb.w, label %bb.v, !prof !365

bb.v:                                             ; preds = %.lr.ph.i22.i.prol
  %i.fo = getelementptr inbounds i8, ptr %storemerge.i.i27.lcssa39.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

bb.w:                                             ; preds = %.lr.ph.i22.i.prol
  %i.fp = getelementptr inbounds i8, ptr %.lcssa41.i, i64 -8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !458, !noalias !3505 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol: ; preds = %bb.w, %bb.v
  %i.fs = phi ptr [ %.pre43.i, %bb.v ], [ %i.fq, %bb.w ] ; 2 uses
  %i.ft = phi ptr [ %.lcssa41.i, %bb.v ], [ %i.fp, %bb.w ] ; 2 uses
  %storemerge.i.i27.i.prol = phi ptr [ %i.fo, %bb.v ], [ %i.fr, %bb.w ] ; 3 uses
  %i.fu = load i32, ptr %i.fm, align 4, !tbaa !455, !noalias !3505
  store i32 %i.fu, ptr %storemerge.i.i27.i.prol, align 4, !tbaa !455, !noalias !3505
  br label %.lr.ph.i22.i.prol.loopexit

.lr.ph.i22.i.prol.loopexit:                       ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol, %.lr.ph.i45
  %.pre43.i209.lcssa.unr = phi ptr [ poison, %.lr.ph.i45 ], [ %i.fs, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.lcssa377.unr.a = phi ptr [ poison, %.lr.ph.i45 ], [ %i.ft, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i.i27.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i45 ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.unr397 = phi ptr [ %.pre43.i, %.lr.ph.i45 ], [ %i.fs, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ] ; 2 uses
  %.unr398 = phi ptr [ %.lcssa41.i, %.lr.ph.i45 ], [ %i.ft, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i7.i23.i.unr = phi ptr [ %storemerge.i.i27.lcssa39.i, %.lr.ph.i45 ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.06.i24.i.unr = phi ptr [ %i.fk, %.lr.ph.i45 ], [ %i.fm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.035.i25.i.unr = phi i64 [ %i.fi, %.lr.ph.i45 ], [ %i.fl, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %i.fv = icmp eq i64 %.01737.i, 1
  br i1 %i.fv, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1
  %.pre43.i210 = phi ptr [ %.pre43.i209.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr397, %.lr.ph.i22.i.prol.loopexit ]
  %i.fw = phi ptr [ %i.go, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr397, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %i.fx = phi ptr [ %i.gp, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr398, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %storemerge.i7.i23.i = phi ptr [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %storemerge.i7.i23.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.06.i24.i = phi ptr [ %i.gi, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.06.i24.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.035.i25.i = phi i64 [ %i.gh, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.035.i25.i.unr, %.lr.ph.i22.i.prol.loopexit ]
  %i.fy = getelementptr inbounds i8, ptr %.06.i24.i, i64 -4
  %i.fz = icmp eq ptr %storemerge.i7.i23.i, %i.fw
  br i1 %i.fz, label %bb.x, label %bb.y, !prof !365

bb.x:                                             ; preds = %.lr.ph.i22.i
  %i.ga = getelementptr inbounds i8, ptr %i.fx, i64 -8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !458, !noalias !3505 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i

bb.y:                                             ; preds = %.lr.ph.i22.i
  %i.gd = getelementptr inbounds i8, ptr %storemerge.i7.i23.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i: ; preds = %bb.y, %bb.x
  %.pre43.i209 = phi ptr [ %.pre43.i210, %bb.y ], [ %i.gb, %bb.x ]
  %i.ge = phi ptr [ %i.fw, %bb.y ], [ %i.gb, %bb.x ] ; 2 uses
  %i.gf = phi ptr [ %i.fx, %bb.y ], [ %i.ga, %bb.x ] ; 2 uses
  %storemerge.i.i27.i = phi ptr [ %i.gd, %bb.y ], [ %i.gc, %bb.x ] ; 3 uses
  %i.gg = load i32, ptr %i.fy, align 4, !tbaa !455, !noalias !3505
  store i32 %i.gg, ptr %storemerge.i.i27.i, align 4, !tbaa !455, !noalias !3505
  %i.gh = add nsw i64 %.035.i25.i, -2             ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.06.i24.i, i64 -8 ; 2 uses
  %i.gj = icmp eq ptr %storemerge.i.i27.i, %i.ge
  br i1 %i.gj, label %bb.aa, label %bb.z, !prof !365

bb.z:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.gk = getelementptr inbounds i8, ptr %storemerge.i.i27.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1

bb.aa:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.gl = getelementptr inbounds i8, ptr %i.gf, i64 -8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !458, !noalias !3505 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1: ; preds = %bb.aa, %bb.z
  %.pre43.i209.1 = phi ptr [ %.pre43.i209, %bb.z ], [ %i.gm, %bb.aa ] ; 2 uses
  %i.go = phi ptr [ %i.ge, %bb.z ], [ %i.gm, %bb.aa ]
  %i.gp = phi ptr [ %i.gf, %bb.z ], [ %i.gl, %bb.aa ] ; 2 uses
  %storemerge.i.i27.i.1 = phi ptr [ %i.gk, %bb.z ], [ %i.gn, %bb.aa ] ; 3 uses
  %i.gq = load i32, ptr %i.gi, align 4, !tbaa !455, !noalias !3505
  store i32 %i.gq, ptr %storemerge.i.i27.i.1, align 4, !tbaa !455, !noalias !3505
  %.not.i28.i.1 = icmp eq i64 %i.gh, 0
  br i1 %.not.i28.i.1, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i, !llvm.loop !83

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1, %.lr.ph.i22.i.prol.loopexit
  %.pre43.i209.lcssa = phi ptr [ %.pre43.i209.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %.pre43.i209.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %.lcssa377 = phi ptr [ %.lcssa377.unr.a, %.lr.ph.i22.i.prol.loopexit ], [ %i.gp, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %storemerge.i.i27.i.lcssa = phi ptr [ %storemerge.i.i27.i.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %i.gr = sub nuw i64 %.01737.i, %i.fi            ; 2 uses
  %.not.i46 = icmp eq i64 %i.gr, 0
  br i1 %.not.i46, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit, label %.lr.ph.i45, !llvm.loop !84

_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.gs = sub nsw i64 0, %i.dy
  %.not.i.i47 = icmp eq i64 %i.u, %3
  br i1 %.not.i.i47, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit
  %i.gt = sub nsw i64 %.pre-phi224, %i.dy         ; 4 uses
  %or.cond.i.i48 = icmp ult i64 %i.gt, 256
  br i1 %or.cond.i.i48, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.gs
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.gv = icmp sgt i64 %i.gt, 0
  %i.gw = lshr i64 %i.gt, 8                       ; 2 uses
  %i.gx = or disjoint i64 %i.gw, -72057594037927936
  %i.gy = select i1 %i.gv, i64 %i.gw, i64 %i.gx   ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.gy ; 3 uses
  store ptr %i.gz, ptr %i.v, align 8, !tbaa !532
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !458
  %i.hb = shl nsw i64 %i.gy, 8
  %i.hc = sub nsw i64 %i.gt, %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hc
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.he = phi ptr [ %i.gz, %bb.ad ], [ %i.dv, %bb.ac ]
  %storemerge.i.i49 = phi ptr [ %i.hd, %bb.ad ], [ %i.gu, %bb.ac ] ; 2 uses
  store ptr %storemerge.i.i49, ptr %0, align 8, !tbaa !531
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit, %bb.ae
  %i.hf = phi ptr [ %i.dw, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit ], [ %storemerge.i.i49, %bb.ae ] ; 4 uses
  %i.hg = phi ptr [ %i.dv, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit ], [ %i.he, %bb.ae ] ; 2 uses
  br i1 %.not.i.i36, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmRT_.exit, label %bb.af, !prof !365

bb.af:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !458
  %i.hi = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj                    ; 2 uses
  %i.hl = ashr exact i64 %i.hk, 2
  %i.hm = sub nsw i64 256, %i.hl
  %i.hn = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.hm) ; 6 uses
  %.not6.i.i.i = icmp eq i64 %i.hk, 1024
  br i1 %.not6.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.af
  %min.iters.check = icmp ult i64 %i.hn, 8
  %i.ho = sub i64 %5, %i.hi
  %diff.check = icmp ugt i64 %i.ho, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader375, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.hn, -8                      ; 3 uses
  %i.hp = and i64 %i.hn, 7
  %i.hq = shl i64 %n.vec, 2                       ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hf, i64 %i.hq
  %i.hs = getelementptr i8, ptr %4, i64 %i.hq     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ht = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hf, i64 %i.ht ; 2 uses
  %next.gep300 = getelementptr i8, ptr %4, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep300, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep300, align 4, !tbaa !455
  %wide.load301 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !455
  %i.hv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !455
  store <4 x i32> %wide.load301, ptr %i.hv, align 4, !tbaa !455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !3477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hn, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader375

.lr.ph.i.i.i.preheader375:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ %i.hn, %.lr.ph.i.i.i.preheader ], [ %i.hp, %middle.block ] ; 4 uses
  %.048.i.i.i.ph = phi ptr [ %i.hf, %.lr.ph.i.i.i.preheader ], [ %i.hr, %middle.block ] ; 2 uses
  %.sroa.0.07.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.preheader ], [ %i.hs, %middle.block ] ; 2 uses
  %i.hx = add i64 %.09.i.i.i.ph, -1
  %xtraiter399 = and i64 %.09.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader375, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.hy, %.lr.ph.i.i.i.prol ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ]
  %.048.i.i.i.prol = phi ptr [ %i.ib, %.lr.ph.i.i.i.prol ], [ %.048.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.ia, %.lr.ph.i.i.i.prol ], [ %.sroa.0.07.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader375 ]
  %i.hy = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.hz = load i32, ptr %.sroa.0.07.i.i.i.prol, align 4, !tbaa !455
  store i32 %i.hz, ptr %.048.i.i.i.prol, align 4, !tbaa !455
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 4 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter399
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3478

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader375
  %.lcssa376.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.preheader375 ], [ %i.ia, %.lr.ph.i.i.i.prol ]
  %.09.i.i.i.unr = phi i64 [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ], [ %i.hy, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %.048.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ], [ %i.ib, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ], [ %i.ia, %.lr.ph.i.i.i.prol ]
  %i.ic = icmp ult i64 %i.hx, 7
  br i1 %i.ic, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.iy, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.id = load i32, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !455
  store i32 %i.id, ptr %.048.i.i.i, align 4, !tbaa !455
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !455
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !455
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !455
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !455
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 12
  %i.il = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !455
  store i32 %i.im, ptr %i.il, align 4, !tbaa !455
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %i.ip = load i32, ptr %i.in, align 4, !tbaa !455
  store i32 %i.ip, ptr %i.io, align 4, !tbaa !455
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 20
  %i.ir = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 20
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !455
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !455
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 24
  %i.iu = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 24
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !455
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !455
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 28
  %i.ix = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 28
  %i.iy = add i64 %.09.i.i.i, -8                  ; 2 uses
  %i.iz = load i32, ptr %i.iw, align 4, !tbaa !455
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !455
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 32 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3479

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.af
  %.promoted.i52 = phi ptr [ %4, %bb.af ], [ %i.hs, %middle.block ], [ %.lcssa376.unr.a, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ja, %.lr.ph.i.i.i ]
  %i.jc = sub i64 %3, %i.hn                       ; 2 uses
  %.not2334.i = icmp eq i64 %i.jc, 0
  br i1 %.not2334.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmRT_.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i
  %.lcssa37.i = phi ptr [ %.lcssa291, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i ], [ %.promoted.i52, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i ] ; 4 uses
  %.036.i = phi ptr [ %i.jd, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i ], [ %i.hg, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i ]
  %.02135.i = phi i64 [ %i.kv, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i ], [ %i.jc, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 2 uses
  %i.je = tail call i64 @llvm.umin.i64(i64 %.02135.i, i64 256) ; 5 uses
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !458 ; 4 uses
  %min.iters.check308 = icmp ult i64 %.02135.i, 8
  %i.jg = ptrtoaddr ptr %i.jf to i64
  %.lcssa37.i305 = ptrtoaddr ptr %.lcssa37.i to i64
  %i.jh = sub i64 %.lcssa37.i305, %i.jg
  %diff.check306 = icmp ugt i64 %i.jh, -32
  %or.cond361 = select i1 %min.iters.check308, i1 true, i1 %diff.check306
  br i1 %or.cond361, label %.lr.ph.i.i26.i.preheader, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph.i53
  %n.vec310 = and i64 %i.je, 504                  ; 3 uses
  %i.ji = and i64 %i.je, 7
  %i.jj = shl nuw nsw i64 %n.vec310, 2            ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jf, i64 %i.jj
  %i.jl = getelementptr i8, ptr %.lcssa37.i, i64 %i.jj ; 2 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next317, %vector.body311 ] ; 2 uses
  %i.jm = shl i64 %index312, 2                    ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.jf, i64 %i.jm ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.lcssa37.i, i64 %i.jm ; 2 uses
  %i.jn = getelementptr i8, ptr %next.gep314, i64 16
  %wide.load315 = load <4 x i32>, ptr %next.gep314, align 4, !tbaa !455
  %wide.load316 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !455
  %i.jo = getelementptr i8, ptr %next.gep313, i64 16
  store <4 x i32> %wide.load315, ptr %next.gep313, align 4, !tbaa !455
  store <4 x i32> %wide.load316, ptr %i.jo, align 4, !tbaa !455
  %index.next317 = add nuw i64 %index312, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next317, %n.vec310
  br i1 %i.jp, label %middle.block318, label %vector.body311, !llvm.loop !3480

middle.block318:                                  ; preds = %vector.body311
  %cmp.n319 = icmp eq i64 %i.je, %n.vec310
  br i1 %cmp.n319, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i, label %.lr.ph.i.i26.i.preheader

.lr.ph.i.i26.i.preheader:                         ; preds = %.lr.ph.i53, %middle.block318
  %.09.i.i27.i.ph = phi i64 [ %i.je, %.lr.ph.i53 ], [ %i.ji, %middle.block318 ] ; 4 uses
  %.048.i.i28.i.ph = phi ptr [ %i.jf, %.lr.ph.i53 ], [ %i.jk, %middle.block318 ] ; 2 uses
  %.sroa.0.07.i.i29.i.ph = phi ptr [ %.lcssa37.i, %.lr.ph.i53 ], [ %i.jl, %middle.block318 ] ; 2 uses
  %i.jq = add nsw i64 %.09.i.i27.i.ph, -1
  %xtraiter401 = and i64 %.09.i.i27.i.ph, 7       ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol

.lr.ph.i.i26.i.prol:                              ; preds = %.lr.ph.i.i26.i.preheader, %.lr.ph.i.i26.i.prol
  %.09.i.i27.i.prol = phi i64 [ %i.jr, %.lr.ph.i.i26.i.prol ], [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ]
  %.048.i.i28.i.prol = phi ptr [ %i.ju, %.lr.ph.i.i26.i.prol ], [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i29.i.prol = phi ptr [ %i.jt, %.lr.ph.i.i26.i.prol ], [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ] ; 2 uses
  %prol.iter403 = phi i64 [ %prol.iter403.next, %.lr.ph.i.i26.i.prol ], [ 0, %.lr.ph.i.i26.i.preheader ]
  %i.jr = add i64 %.09.i.i27.i.prol, -1           ; 2 uses
  %i.js = load i32, ptr %.sroa.0.07.i.i29.i.prol, align 4, !tbaa !455
  store i32 %i.js, ptr %.048.i.i28.i.prol, align 4, !tbaa !455
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i.prol, i64 4 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.048.i.i28.i.prol, i64 4 ; 2 uses
  %prol.iter403.next = add i64 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i64 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol, !llvm.loop !3481

.lr.ph.i.i26.i.prol.loopexit:                     ; preds = %.lr.ph.i.i26.i.prol, %.lr.ph.i.i26.i.preheader
  %.lcssa374.unr.a = phi ptr [ poison, %.lr.ph.i.i26.i.preheader ], [ %i.jt, %.lr.ph.i.i26.i.prol ]
  %.09.i.i27.i.unr = phi i64 [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.jr, %.lr.ph.i.i26.i.prol ]
  %.048.i.i28.i.unr = phi ptr [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.ju, %.lr.ph.i.i26.i.prol ]
  %.sroa.0.07.i.i29.i.unr = phi ptr [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.jt, %.lr.ph.i.i26.i.prol ]
  %i.jv = icmp ult i64 %i.jq, 7
  br i1 %i.jv, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i, label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.prol.loopexit, %.lr.ph.i.i26.i
  %.09.i.i27.i = phi i64 [ %i.kr, %.lr.ph.i.i26.i ], [ %.09.i.i27.i.unr, %.lr.ph.i.i26.i.prol.loopexit ]
  %.048.i.i28.i = phi ptr [ %i.ku, %.lr.ph.i.i26.i ], [ %.048.i.i28.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i = phi ptr [ %i.kt, %.lr.ph.i.i26.i ], [ %.sroa.0.07.i.i29.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %i.jw = load i32, ptr %.sroa.0.07.i.i29.i, align 4, !tbaa !455
  store i32 %i.jw, ptr %.048.i.i28.i, align 4, !tbaa !455
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 4
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 4
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !455
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !455
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 8
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !455
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !455
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 12
  %i.ke = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 12
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !455
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !455
end_hunk_1
begin_hunk_2_@_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmmT_:bb.a
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %.lr.ph.i.i66.prol.loopexit, label %.lr.ph.i.i66.prol

.lr.ph.i.i66.prol:                                ; preds = %.lr.ph.i.i66.preheader
  %i.mc = add nsw i64 %i.mb, -1                   ; 2 uses
  %i.md = load i32, ptr %.sroa.0.0.i56, align 4, !tbaa !455, !noalias !3509
  store i32 %i.md, ptr %.sroa.0.0.i60, align 4, !tbaa !455, !noalias !3509
  %i.me = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3509
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3509
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56, i64 4 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 4 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.pre.i65, i64 1024
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %bb.an, label %.lr.ph.i.i66.prol.loopexit, !prof !365

bb.an:                                            ; preds = %.lr.ph.i.i66.prol
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i59, i64 8 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !458, !noalias !3509 ; 4 uses
  br label %.lr.ph.i.i66.prol.loopexit

.lr.ph.i.i66.prol.loopexit:                       ; preds = %.lr.ph.i.i66.prol, %bb.an, %.lr.ph.i.i66.preheader
  %.lcssa373.unr.a = phi ptr [ poison, %.lr.ph.i.i66.preheader ], [ %.pre.i65, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.lcssa372.unr.a = phi ptr [ poison, %.lr.ph.i.i66.preheader ], [ %.sroa.6.1.i59, %.lr.ph.i.i66.prol ], [ %i.mk, %bb.an ]
  %.lcssa371.unr = phi ptr [ poison, %.lr.ph.i.i66.preheader ], [ %i.mh, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.unr407 = phi ptr [ %.pre.i65, %.lr.ph.i.i66.preheader ], [ %.pre.i65, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.unr408 = phi ptr [ %.sroa.6.1.i59, %.lr.ph.i.i66.preheader ], [ %.sroa.6.1.i59, %.lr.ph.i.i66.prol ], [ %i.mk, %bb.an ]
  %.unr409 = phi ptr [ %.sroa.0.0.i60, %.lr.ph.i.i66.preheader ], [ %i.mh, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.014.i.i67.unr = phi ptr [ %.sroa.0.0.i56, %.lr.ph.i.i66.preheader ], [ %i.mg, %bb.an ], [ %i.mg, %.lr.ph.i.i66.prol ]
  %.0813.i.i68.unr = phi i64 [ %i.mb, %.lr.ph.i.i66.preheader ], [ %i.mc, %bb.an ], [ %i.mc, %.lr.ph.i.i66.prol ]
  %i.mm = icmp eq i64 %i.mb, 1
  br i1 %i.mm, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %.lr.ph.i.i66.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1
  %i.mn = phi ptr [ %i.nm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.unr407, %.lr.ph.i.i66.prol.loopexit ] ; 2 uses
  %i.mo = phi ptr [ %i.nn, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.unr408, %.lr.ph.i.i66.prol.loopexit ] ; 2 uses
  %i.mp = phi ptr [ %i.no, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.unr409, %.lr.ph.i.i66.prol.loopexit ] ; 2 uses
  %.014.i.i67 = phi ptr [ %i.ng, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.014.i.i67.unr, %.lr.ph.i.i66.prol.loopexit ] ; 3 uses
  %.0813.i.i68 = phi i64 [ %i.nc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.0813.i.i68.unr, %.lr.ph.i.i66.prol.loopexit ]
  %i.mq = load i32, ptr %.014.i.i67, align 4, !tbaa !455, !noalias !3509
  store i32 %i.mq, ptr %i.mp, align 4, !tbaa !455, !noalias !3509
  %i.mr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3509
  %i.ms = add i32 %i.mr, 1
  store i32 %i.ms, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3509
  %i.mt = getelementptr inbounds nuw i8, ptr %.014.i.i67, i64 4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 1024
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %bb.ao, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69, !prof !365

bb.ao:                                            ; preds = %.lr.ph.i.i66
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !458, !noalias !3509 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69: ; preds = %bb.ao, %.lr.ph.i.i66
  %i.mz = phi ptr [ %i.mn, %.lr.ph.i.i66 ], [ %i.my, %bb.ao ] ; 2 uses
  %i.na = phi ptr [ %i.mo, %.lr.ph.i.i66 ], [ %i.mx, %bb.ao ] ; 2 uses
  %i.nb = phi ptr [ %i.mu, %.lr.ph.i.i66 ], [ %i.my, %bb.ao ] ; 2 uses
  %i.nc = add i64 %.0813.i.i68, -2                ; 2 uses
  %i.nd = load i32, ptr %i.mt, align 4, !tbaa !455, !noalias !3509
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !455, !noalias !3509
  %i.ne = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3509
  %i.nf = add i32 %i.ne, 1
  store i32 %i.nf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3509
  %i.ng = getelementptr inbounds nuw i8, ptr %.014.i.i67, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 1024
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %bb.ap, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1, !prof !365

bb.ap:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !458, !noalias !3509 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1: ; preds = %bb.ap, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69
  %i.nm = phi ptr [ %i.mz, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69 ], [ %i.nl, %bb.ap ] ; 2 uses
  %i.nn = phi ptr [ %i.na, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69 ], [ %i.nk, %bb.ap ] ; 2 uses
  %i.no = phi ptr [ %i.nh, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69 ], [ %i.nl, %bb.ap ] ; 2 uses
  %.not.i.i70.1 = icmp eq i64 %i.nc, 0
  br i1 %.not.i.i70.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71, label %.lr.ph.i.i66, !llvm.loop !89

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71: ; preds = %.lr.ph.i.i66.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1, %bb.am
  %.pre54.i80217 = phi ptr [ %.pre.i65, %bb.am ], [ %.lcssa373.unr.a, %.lr.ph.i.i66.prol.loopexit ], [ %i.nm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ]
  %.promoted49.i72 = phi ptr [ %.sroa.6.1.i59, %bb.am ], [ %.lcssa372.unr.a, %.lr.ph.i.i66.prol.loopexit ], [ %i.nn, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ]
  %.promoted.i73 = phi ptr [ %.sroa.0.0.i60, %bb.am ], [ %.lcssa371.unr, %.lr.ph.i.i66.prol.loopexit ], [ %i.no, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ]
  %i.np = sub i64 %i.u, %i.mb                     ; 3 uses
  %.not2745.i74 = icmp eq i64 %i.np, 0            ; 2 uses
  br i1 %.not2745.i74, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86
  %.pre54.i80 = phi ptr [ %.pre54.i80214.lcssa, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.pre54.i80217, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 4 uses
  %.lcssa4250.i76 = phi ptr [ %.lcssa370, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.promoted49.i72, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 4 uses
  %.lcssa48.i77 = phi ptr [ %.lcssa369, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.promoted.i73, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 3 uses
  %.02447.i78 = phi ptr [ %i.nq, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.sroa.6.1.i55, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ]
  %.02546.i79 = phi i64 [ %i.pg, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %i.np, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.02447.i78, i64 8 ; 2 uses
  %i.nr = tail call i64 @llvm.umin.i64(i64 %.02546.i79, i64 256) ; 4 uses
  %i.ns = load ptr, ptr %i.nq, align 8, !tbaa !458 ; 3 uses
  %xtraiter410 = and i64 %i.nr, 1
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.lr.ph.i31.i81.prol.loopexit, label %.lr.ph.i31.i81.prol

.lr.ph.i31.i81.prol:                              ; preds = %.lr.ph.i75
  %i.nt = add nsw i64 %i.nr, -1                   ; 2 uses
  %i.nu = load i32, ptr %i.ns, align 4, !tbaa !455, !noalias !3510
  store i32 %i.nu, ptr %.lcssa48.i77, align 4, !tbaa !455, !noalias !3510
  %i.nv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3510
  %i.nw = add i32 %i.nv, 1
  store i32 %i.nw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3510
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 4 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.lcssa48.i77, i64 4 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.pre54.i80, i64 1024
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %bb.aq, label %.lr.ph.i31.i81.prol.loopexit, !prof !365

bb.aq:                                            ; preds = %.lr.ph.i31.i81.prol
  %i.ob = getelementptr inbounds nuw i8, ptr %.lcssa4250.i76, i64 8 ; 3 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !458, !noalias !3510 ; 4 uses
  br label %.lr.ph.i31.i81.prol.loopexit

.lr.ph.i31.i81.prol.loopexit:                     ; preds = %.lr.ph.i31.i81.prol, %bb.aq, %.lr.ph.i75
  %.pre54.i80214.lcssa.unr = phi ptr [ poison, %.lr.ph.i75 ], [ %.pre54.i80, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ]
  %.lcssa370.unr.a = phi ptr [ poison, %.lr.ph.i75 ], [ %.lcssa4250.i76, %.lr.ph.i31.i81.prol ], [ %i.ob, %bb.aq ]
  %.lcssa369.unr.a = phi ptr [ poison, %.lr.ph.i75 ], [ %i.ny, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ]
  %.unr413 = phi ptr [ %.pre54.i80, %.lr.ph.i75 ], [ %.pre54.i80, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ] ; 2 uses
  %.unr414 = phi ptr [ %.lcssa4250.i76, %.lr.ph.i75 ], [ %.lcssa4250.i76, %.lr.ph.i31.i81.prol ], [ %i.ob, %bb.aq ]
  %.unr415 = phi ptr [ %.lcssa48.i77, %.lr.ph.i75 ], [ %i.ny, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ]
  %.014.i32.i82.unr = phi ptr [ %i.ns, %.lr.ph.i75 ], [ %i.nx, %bb.aq ], [ %i.nx, %.lr.ph.i31.i81.prol ]
  %.0813.i33.i83.unr = phi i64 [ %i.nr, %.lr.ph.i75 ], [ %i.nt, %bb.aq ], [ %i.nt, %.lr.ph.i31.i81.prol ]
  %i.od = icmp eq i64 %.02546.i79, 1
  br i1 %i.od, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86, label %.lr.ph.i31.i81

.lr.ph.i31.i81:                                   ; preds = %.lr.ph.i31.i81.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1
  %.pre54.i80215 = phi ptr [ %.pre54.i80214.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr413, %.lr.ph.i31.i81.prol.loopexit ]
  %i.oe = phi ptr [ %i.pd, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr413, %.lr.ph.i31.i81.prol.loopexit ] ; 2 uses
  %i.of = phi ptr [ %i.pe, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr414, %.lr.ph.i31.i81.prol.loopexit ] ; 2 uses
  %i.og = phi ptr [ %i.pf, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr415, %.lr.ph.i31.i81.prol.loopexit ] ; 2 uses
  %.014.i32.i82 = phi ptr [ %i.ox, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.014.i32.i82.unr, %.lr.ph.i31.i81.prol.loopexit ] ; 3 uses
  %.0813.i33.i83 = phi i64 [ %i.ot, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.0813.i33.i83.unr, %.lr.ph.i31.i81.prol.loopexit ]
  %i.oh = load i32, ptr %.014.i32.i82, align 4, !tbaa !455, !noalias !3510
  store i32 %i.oh, ptr %i.og, align 4, !tbaa !455, !noalias !3510
  %i.oi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3510
  %i.oj = add i32 %i.oi, 1
  store i32 %i.oj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3510
  %i.ok = getelementptr inbounds nuw i8, ptr %.014.i32.i82, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 4 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 1024
  %i.on = icmp eq ptr %i.ol, %i.om
  br i1 %i.on, label %bb.ar, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84, !prof !365

bb.ar:                                            ; preds = %.lr.ph.i31.i81
  %i.oo = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !458, !noalias !3510 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84: ; preds = %bb.ar, %.lr.ph.i31.i81
  %.pre54.i80214 = phi ptr [ %.pre54.i80215, %.lr.ph.i31.i81 ], [ %i.op, %bb.ar ]
  %i.oq = phi ptr [ %i.oe, %.lr.ph.i31.i81 ], [ %i.op, %bb.ar ] ; 2 uses
  %i.or = phi ptr [ %i.of, %.lr.ph.i31.i81 ], [ %i.oo, %bb.ar ] ; 2 uses
  %i.os = phi ptr [ %i.ol, %.lr.ph.i31.i81 ], [ %i.op, %bb.ar ] ; 2 uses
  %i.ot = add nsw i64 %.0813.i33.i83, -2          ; 2 uses
  %i.ou = load i32, ptr %i.ok, align 4, !tbaa !455, !noalias !3510
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !455, !noalias !3510
  %i.ov = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3510
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !3510
  %i.ox = getelementptr inbounds nuw i8, ptr %.014.i32.i82, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 4 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 1024
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %bb.as, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1, !prof !365

bb.as:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !458, !noalias !3510 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1: ; preds = %bb.as, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84
  %.pre54.i80214.1 = phi ptr [ %.pre54.i80214, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pc, %bb.as ] ; 2 uses
  %i.pd = phi ptr [ %i.oq, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pc, %bb.as ]
  %i.pe = phi ptr [ %i.or, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pb, %bb.as ] ; 2 uses
  %i.pf = phi ptr [ %i.oy, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pc, %bb.as ] ; 2 uses
  %.not.i35.i85.1 = icmp eq i64 %i.ot, 0
  br i1 %.not.i35.i85.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86, label %.lr.ph.i31.i81, !llvm.loop !89

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1, %.lr.ph.i31.i81.prol.loopexit
  %.pre54.i80214.lcssa = phi ptr [ %.pre54.i80214.lcssa.unr, %.lr.ph.i31.i81.prol.loopexit ], [ %.pre54.i80214.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ]
  %.lcssa370 = phi ptr [ %.lcssa370.unr.a, %.lr.ph.i31.i81.prol.loopexit ], [ %i.pe, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ]
  %.lcssa369 = phi ptr [ %.lcssa369.unr.a, %.lr.ph.i31.i81.prol.loopexit ], [ %i.pf, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ]
  %i.pg = sub nuw i64 %.02546.i79, %i.nr          ; 2 uses
  %.not27.i87 = icmp eq i64 %i.pg, 0
  br i1 %.not27.i87, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit, label %.lr.ph.i75, !llvm.loop !90

_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71
  br i1 %.not12.i.i63, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92.preheader

.lr.ph.i.i.i92.preheader:                         ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit
  %min.iters.check326 = icmp ult i64 %i.mb, 8
  %i.ph = sub i64 %5, %i.lw
  %diff.check324 = icmp ugt i64 %i.ph, -32
  %or.cond362 = select i1 %min.iters.check326, i1 true, i1 %diff.check324
  br i1 %or.cond362, label %.lr.ph.i.i.i92.preheader367, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph.i.i.i92.preheader
  %n.vec328 = and i64 %i.mb, -8                   ; 3 uses
  %i.pi = and i64 %i.mb, 7
  %i.pj = shl i64 %n.vec328, 2                    ; 2 uses
  %i.pk = getelementptr i8, ptr %.sroa.0.0.i56, i64 %i.pj
  %i.pl = getelementptr i8, ptr %4, i64 %i.pj     ; 2 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.pm = shl i64 %index330, 2                    ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.sroa.0.0.i56, i64 %i.pm ; 2 uses
  %next.gep332 = getelementptr i8, ptr %4, i64 %i.pm ; 2 uses
  %i.pn = getelementptr i8, ptr %next.gep332, i64 16
  %wide.load333 = load <4 x i32>, ptr %next.gep332, align 4, !tbaa !455
  %wide.load334 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !455
  %i.po = getelementptr i8, ptr %next.gep331, i64 16
  store <4 x i32> %wide.load333, ptr %next.gep331, align 4, !tbaa !455
  store <4 x i32> %wide.load334, ptr %i.po, align 4, !tbaa !455
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.pp = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.pp, label %middle.block336, label %vector.body329, !llvm.loop !3492

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.mb, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92.preheader367

.lr.ph.i.i.i92.preheader367:                      ; preds = %.lr.ph.i.i.i92.preheader, %middle.block336
  %.09.i.i.i93.ph = phi i64 [ %i.mb, %.lr.ph.i.i.i92.preheader ], [ %i.pi, %middle.block336 ] ; 4 uses
  %.048.i.i.i94.ph = phi ptr [ %.sroa.0.0.i56, %.lr.ph.i.i.i92.preheader ], [ %i.pk, %middle.block336 ] ; 2 uses
  %.sroa.0.07.i.i.i95.ph = phi ptr [ %4, %.lr.ph.i.i.i92.preheader ], [ %i.pl, %middle.block336 ] ; 2 uses
  %i.pq = add i64 %.09.i.i.i93.ph, -1
  %xtraiter416 = and i64 %.09.i.i.i93.ph, 7       ; 2 uses
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i92.prol

.lr.ph.i.i.i92.prol:                              ; preds = %.lr.ph.i.i.i92.preheader367, %.lr.ph.i.i.i92.prol
  %.09.i.i.i93.prol = phi i64 [ %i.pr, %.lr.ph.i.i.i92.prol ], [ %.09.i.i.i93.ph, %.lr.ph.i.i.i92.preheader367 ]
  %.048.i.i.i94.prol = phi ptr [ %i.pu, %.lr.ph.i.i.i92.prol ], [ %.048.i.i.i94.ph, %.lr.ph.i.i.i92.preheader367 ] ; 2 uses
  %.sroa.0.07.i.i.i95.prol = phi ptr [ %i.pt, %.lr.ph.i.i.i92.prol ], [ %.sroa.0.07.i.i.i95.ph, %.lr.ph.i.i.i92.preheader367 ] ; 2 uses
  %prol.iter418 = phi i64 [ %prol.iter418.next, %.lr.ph.i.i.i92.prol ], [ 0, %.lr.ph.i.i.i92.preheader367 ]
  %i.pr = add i64 %.09.i.i.i93.prol, -1           ; 2 uses
  %i.ps = load i32, ptr %.sroa.0.07.i.i.i95.prol, align 4, !tbaa !455
  store i32 %i.ps, ptr %.048.i.i.i94.prol, align 4, !tbaa !455
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95.prol, i64 4 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.048.i.i.i94.prol, i64 4 ; 2 uses
  %prol.iter418.next = add i64 %prol.iter418, 1   ; 2 uses
  %prol.iter418.cmp.not = icmp eq i64 %prol.iter418.next, %xtraiter416
  br i1 %prol.iter418.cmp.not, label %.lr.ph.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i92.prol, !llvm.loop !3493

.lr.ph.i.i.i92.prol.loopexit:                     ; preds = %.lr.ph.i.i.i92.prol, %.lr.ph.i.i.i92.preheader367
  %.lcssa368.unr = phi ptr [ poison, %.lr.ph.i.i.i92.preheader367 ], [ %i.pt, %.lr.ph.i.i.i92.prol ]
  %.09.i.i.i93.unr = phi i64 [ %.09.i.i.i93.ph, %.lr.ph.i.i.i92.preheader367 ], [ %i.pr, %.lr.ph.i.i.i92.prol ]
  %.048.i.i.i94.unr = phi ptr [ %.048.i.i.i94.ph, %.lr.ph.i.i.i92.preheader367 ], [ %i.pu, %.lr.ph.i.i.i92.prol ]
  %.sroa.0.07.i.i.i95.unr = phi ptr [ %.sroa.0.07.i.i.i95.ph, %.lr.ph.i.i.i92.preheader367 ], [ %i.pt, %.lr.ph.i.i.i92.prol ]
  %i.pv = icmp ult i64 %i.pq, 7
  br i1 %i.pv, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %.lr.ph.i.i.i92.prol.loopexit, %.lr.ph.i.i.i92
  %.09.i.i.i93 = phi i64 [ %i.qr, %.lr.ph.i.i.i92 ], [ %.09.i.i.i93.unr, %.lr.ph.i.i.i92.prol.loopexit ]
  %.048.i.i.i94 = phi ptr [ %i.qu, %.lr.ph.i.i.i92 ], [ %.048.i.i.i94.unr, %.lr.ph.i.i.i92.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i95 = phi ptr [ %i.qt, %.lr.ph.i.i.i92 ], [ %.sroa.0.07.i.i.i95.unr, %.lr.ph.i.i.i92.prol.loopexit ] ; 9 uses
  %i.pw = load i32, ptr %.sroa.0.07.i.i.i95, align 4, !tbaa !455
  store i32 %i.pw, ptr %.048.i.i.i94, align 4, !tbaa !455
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 4
  %i.py = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 4
  %i.pz = load i32, ptr %i.px, align 4, !tbaa !455
  store i32 %i.pz, ptr %i.py, align 4, !tbaa !455
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 8
  %i.qc = load i32, ptr %i.qa, align 4, !tbaa !455
  store i32 %i.qc, ptr %i.qb, align 4, !tbaa !455
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 12
  %i.qe = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 12
  %i.qf = load i32, ptr %i.qd, align 4, !tbaa !455
  store i32 %i.qf, ptr %i.qe, align 4, !tbaa !455
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 16
  %i.qi = load i32, ptr %i.qg, align 4, !tbaa !455
  store i32 %i.qi, ptr %i.qh, align 4, !tbaa !455
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 20
  %i.qk = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 20
  %i.ql = load i32, ptr %i.qj, align 4, !tbaa !455
  store i32 %i.ql, ptr %i.qk, align 4, !tbaa !455
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 24
  %i.qn = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 24
  %i.qo = load i32, ptr %i.qm, align 4, !tbaa !455
  store i32 %i.qo, ptr %i.qn, align 4, !tbaa !455
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 28
  %i.qq = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 28
  %i.qr = add i64 %.09.i.i.i93, -8                ; 2 uses
  %i.qs = load i32, ptr %i.qp, align 4, !tbaa !455
  store i32 %i.qs, ptr %i.qq, align 4, !tbaa !455
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 32 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 32
  %.not.i.i.i96.7 = icmp eq i64 %i.qr, 0
  br i1 %.not.i.i.i96.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92, !llvm.loop !3494

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97: ; preds = %.lr.ph.i.i.i92.prol.loopexit, %.lr.ph.i.i.i92, %middle.block336, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit
  %.promoted.i98 = phi ptr [ %4, %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS9_.exit ], [ %i.pl, %middle.block336 ], [ %.lcssa368.unr, %.lr.ph.i.i.i92.prol.loopexit ], [ %i.qt, %.lr.ph.i.i.i92 ] ; 2 uses
  br i1 %.not2745.i74, label %_ZN5boost9container10deque_implINS0_4test12copyable_intEvLb1ENS0_9deque_optILm0ELm0EvLb1EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmRT_.exit111, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109
  %.lcssa37.i101 = phi ptr [ %.lcssa284, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109 ], [ %.promoted.i98, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97 ] ; 4 uses
  %.036.i102 = phi ptr [ %i.qv, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109 ], [ %.sroa.6.1.i55, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97 ]
  %.02135.i103 = phi i64 [ %i.sn, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109 ], [ %i.np, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.036.i102, i64 8 ; 2 uses
  %i.qw = tail call i64 @llvm.umin.i64(i64 %.02135.i103, i64 256) ; 5 uses
  %i.qx = load ptr, ptr %i.qv, align 8, !tbaa !458 ; 4 uses
  %min.iters.check345 = icmp ult i64 %.02135.i103, 8
  %i.qy = ptrtoaddr ptr %i.qx to i64
  %.lcssa37.i101342 = ptrtoaddr ptr %.lcssa37.i101 to i64
  %i.qz = sub i64 %.lcssa37.i101342, %i.qy
  %diff.check343 = icmp ugt i64 %i.qz, -32
  %or.cond364 = select i1 %min.iters.check345, i1 true, i1 %diff.check343
  br i1 %or.cond364, label %.lr.ph.i.i26.i104.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %.lr.ph.i100
  %n.vec347 = and i64 %i.qw, 504                  ; 3 uses
  %i.ra = and i64 %i.qw, 7
  %i.rb = shl nuw nsw i64 %n.vec347, 2            ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qx, i64 %i.rb
  %i.rd = getelementptr i8, ptr %.lcssa37.i101, i64 %i.rb ; 2 uses
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %i.re = shl i64 %index349, 2                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.qx, i64 %i.re ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.lcssa37.i101, i64 %i.re ; 2 uses
  %i.rf = getelementptr i8, ptr %next.gep351, i64 16
  %wide.load352 = load <4 x i32>, ptr %next.gep351, align 4, !tbaa !455
  %wide.load353 = load <4 x i32>, ptr %i.rf, align 4, !tbaa !455
  %i.rg = getelementptr i8, ptr %next.gep350, i64 16
  store <4 x i32> %wide.load352, ptr %next.gep350, align 4, !tbaa !455
  store <4 x i32> %wide.load353, ptr %i.rg, align 4, !tbaa !455
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.rh = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.rh, label %middle.block355, label %vector.body348, !llvm.loop !3495

middle.block355:                                  ; preds = %vector.body348
  %cmp.n356 = icmp eq i64 %i.qw, %n.vec347
  br i1 %cmp.n356, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109, label %.lr.ph.i.i26.i104.preheader

.lr.ph.i.i26.i104.preheader:                      ; preds = %.lr.ph.i100, %middle.block355
  %.09.i.i27.i105.ph = phi i64 [ %i.qw, %.lr.ph.i100 ], [ %i.ra, %middle.block355 ] ; 4 uses
  %.048.i.i28.i106.ph = phi ptr [ %i.qx, %.lr.ph.i100 ], [ %i.rc, %middle.block355 ] ; 2 uses
  %.sroa.0.07.i.i29.i107.ph = phi ptr [ %.lcssa37.i101, %.lr.ph.i100 ], [ %i.rd, %middle.block355 ] ; 2 uses
  %i.ri = add nsw i64 %.09.i.i27.i105.ph, -1
  %xtraiter419 = and i64 %.09.i.i27.i105.ph, 7    ; 2 uses
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.lr.ph.i.i26.i104.prol.loopexit, label %.lr.ph.i.i26.i104.prol

.lr.ph.i.i26.i104.prol:                           ; preds = %.lr.ph.i.i26.i104.preheader, %.lr.ph.i.i26.i104.prol
  %.09.i.i27.i105.prol = phi i64 [ %i.rj, %.lr.ph.i.i26.i104.prol ], [ %.09.i.i27.i105.ph, %.lr.ph.i.i26.i104.preheader ]
  %.048.i.i28.i106.prol = phi ptr [ %i.rm, %.lr.ph.i.i26.i104.prol ], [ %.048.i.i28.i106.ph, %.lr.ph.i.i26.i104.preheader ] ; 2 uses
  %.sroa.0.07.i.i29.i107.prol = phi ptr [ %i.rl, %.lr.ph.i.i26.i104.prol ], [ %.sroa.0.07.i.i29.i107.ph, %.lr.ph.i.i26.i104.preheader ] ; 2 uses
  %prol.iter421 = phi i64 [ %prol.iter421.next, %.lr.ph.i.i26.i104.prol ], [ 0, %.lr.ph.i.i26.i104.preheader ]
  %i.rj = add i64 %.09.i.i27.i105.prol, -1        ; 2 uses
  %i.rk = load i32, ptr %.sroa.0.07.i.i29.i107.prol, align 4, !tbaa !455
  store i32 %i.rk, ptr %.048.i.i28.i106.prol, align 4, !tbaa !455
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107.prol, i64 4 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106.prol, i64 4 ; 2 uses
  %prol.iter421.next = add i64 %prol.iter421, 1   ; 2 uses
  %prol.iter421.cmp.not = icmp eq i64 %prol.iter421.next, %xtraiter419
  br i1 %prol.iter421.cmp.not, label %.lr.ph.i.i26.i104.prol.loopexit, label %.lr.ph.i.i26.i104.prol, !llvm.loop !3496

.lr.ph.i.i26.i104.prol.loopexit:                  ; preds = %.lr.ph.i.i26.i104.prol, %.lr.ph.i.i26.i104.preheader
  %.lcssa366.unr = phi ptr [ poison, %.lr.ph.i.i26.i104.preheader ], [ %i.rl, %.lr.ph.i.i26.i104.prol ]
  %.09.i.i27.i105.unr = phi i64 [ %.09.i.i27.i105.ph, %.lr.ph.i.i26.i104.preheader ], [ %i.rj, %.lr.ph.i.i26.i104.prol ]
  %.048.i.i28.i106.unr = phi ptr [ %.048.i.i28.i106.ph, %.lr.ph.i.i26.i104.preheader ], [ %i.rm, %.lr.ph.i.i26.i104.prol ]
  %.sroa.0.07.i.i29.i107.unr = phi ptr [ %.sroa.0.07.i.i29.i107.ph, %.lr.ph.i.i26.i104.preheader ], [ %i.rl, %.lr.ph.i.i26.i104.prol ]
  %i.rn = icmp ult i64 %i.ri, 7
  br i1 %i.rn, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test12copyable_intEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109, label %.lr.ph.i.i26.i104

.lr.ph.i.i26.i104:                                ; preds = %.lr.ph.i.i26.i104.prol.loopexit, %.lr.ph.i.i26.i104
  %.09.i.i27.i105 = phi i64 [ %i.sj, %.lr.ph.i.i26.i104 ], [ %.09.i.i27.i105.unr, %.lr.ph.i.i26.i104.prol.loopexit ]
  %.048.i.i28.i106 = phi ptr [ %i.sm, %.lr.ph.i.i26.i104 ], [ %.048.i.i28.i106.unr, %.lr.ph.i.i26.i104.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i107 = phi ptr [ %i.sl, %.lr.ph.i.i26.i104 ], [ %.sroa.0.07.i.i29.i107.unr, %.lr.ph.i.i26.i104.prol.loopexit ] ; 9 uses
  %i.ro = load i32, ptr %.sroa.0.07.i.i29.i107, align 4, !tbaa !455
  store i32 %i.ro, ptr %.048.i.i28.i106, align 4, !tbaa !455
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 4
  %i.rr = load i32, ptr %i.rp, align 4, !tbaa !455
  store i32 %i.rr, ptr %i.rq, align 4, !tbaa !455
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 8
  %i.ru = load i32, ptr %i.rs, align 4, !tbaa !455
  store i32 %i.ru, ptr %i.rt, align 4, !tbaa !455
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 12
  %i.rw = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 12
  %i.rx = load i32, ptr %i.rv, align 4, !tbaa !455
  store i32 %i.rx, ptr %i.rw, align 4, !tbaa !455
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 16
  %i.sa = load i32, ptr %i.ry, align 4, !tbaa !455
end_hunk_2
begin_hunk_3_@_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE25priv_insert_back_aux_implINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmT_:bb.a
  tail call void @_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEENS9_ILb1EEEmb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !557, !noalias !9904
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !556, !noalias !9905 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit
  %i.k = lshr i64 %i.i, 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !458, !noalias !9905
  %i.n = and i64 %i.i, 255
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  br label %_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit

_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %i.p = phi ptr [ %i.o, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 4 uses
  %.sink = phi ptr [ %i.l, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !531
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8, !tbaa !532
  %.not.i.i5 = icmp eq i64 %2, 0
  br i1 %.not.i.i5, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !365

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit
  %i.r = load ptr, ptr %.sink, align 8, !tbaa !458
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub nsw i64 256, %i.v
  %i.x = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.w) ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %i.u, 1024
  br i1 %.not15.i.i.i.i, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.y = add i64 %i.x, -1
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.prol ], [ %i.x, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.z = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !455
  store i32 %i.z, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !455
  %i.aa = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ae = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !9902

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa14.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.y, 3
  br i1 %i.af, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.ag = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !455
  store i32 %i.ag, ptr %.01417.i.i.i.i, align 4, !tbaa !455
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363 ; 4 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !455
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !455
  %i.am = add i32 %i.ah, 2
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !455
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !455
  %i.aq = add i32 %i.ah, 3
  store i32 %i.aq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !455
  store i32 %i.at, ptr %i.as, align 4, !tbaa !455
  %i.au = add i32 %i.ah, 4
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ax = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.3, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !215

.loopexit38.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %.promoted.i.i = phi ptr [ %3, %bb.e ], [ %.lcssa14.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.av, %.lr.ph.i.i.i.i ]
  %i.ay = sub i64 %2, %i.x                        ; 2 uses
  %.not2840.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not2840.i.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit38.i.i, %.unr-lcssa
  %.lcssa43.i.i = phi ptr [ %.lcssa, %.unr-lcssa ], [ %.promoted.i.i, %.loopexit38.i.i ] ; 2 uses
  %.042.i.i = phi ptr [ %i.az, %.unr-lcssa ], [ %.sink, %.loopexit38.i.i ]
  %.02641.i.i = phi i64 [ %i.cb, %.unr-lcssa ], [ %i.ay, %.loopexit38.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 8 ; 2 uses
  %i.ba = tail call i64 @llvm.umin.i64(i64 %.02641.i.i, i64 256) ; 4 uses
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !458 ; 2 uses
  %xtraiter15 = and i64 %i.ba, 3                  ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol

.lr.ph.i.i31.i.i.prol:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i31.i.i.prol
  %.018.i.i32.i.i.prol = phi i64 [ %i.bh, %.lr.ph.i.i31.i.i.prol ], [ %i.ba, %.lr.ph.i.i ]
  %.01417.i.i33.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i31.i.i.prol ], [ %i.bb, %.lr.ph.i.i ] ; 3 uses
  %.sroa.0.016.i.i34.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i31.i.i.prol ], [ %.lcssa43.i.i, %.lr.ph.i.i ] ; 2 uses
  %prol.iter17 = phi i64 [ %prol.iter17.next, %.lr.ph.i.i31.i.i.prol ], [ 0, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i.prol) ]
  %i.bc = load i32, ptr %.sroa.0.016.i.i34.i.i.prol, align 4, !tbaa !455
  store i32 %i.bc, ptr %.01417.i.i33.i.i.prol, align 4, !tbaa !455
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 4 ; 2 uses
  %i.bh = add i64 %.018.i.i32.i.i.prol, -1        ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol, !llvm.loop !9903

.lr.ph.i.i31.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i31.i.i.prol, %.lr.ph.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i ], [ %i.bf, %.lr.ph.i.i31.i.i.prol ]
  %.018.i.i32.i.i.unr = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %i.bh, %.lr.ph.i.i31.i.i.prol ]
  %.01417.i.i33.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.bg, %.lr.ph.i.i31.i.i.prol ]
  %.sroa.0.016.i.i34.i.i.unr = phi ptr [ %.lcssa43.i.i, %.lr.ph.i.i ], [ %i.bf, %.lr.ph.i.i31.i.i.prol ]
  %i.bi = icmp ult i64 %.02641.i.i, 4
  br i1 %i.bi, label %.unr-lcssa, label %.lr.ph.i.i31.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %.lr.ph.i.i31.i.i.prol.loopexit, %.lr.ph.i.i31.i.i
  %.018.i.i32.i.i = phi i64 [ %i.ca, %.lr.ph.i.i31.i.i ], [ %.018.i.i32.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ]
  %.01417.i.i33.i.i = phi ptr [ %i.bz, %.lr.ph.i.i31.i.i ], [ %.01417.i.i33.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i34.i.i = phi ptr [ %i.by, %.lr.ph.i.i31.i.i ], [ %.sroa.0.016.i.i34.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i) ]
  %i.bj = load i32, ptr %.sroa.0.016.i.i34.i.i, align 4, !tbaa !455
  store i32 %i.bj, ptr %.01417.i.i33.i.i, align 4, !tbaa !455
  %i.bk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363 ; 4 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 4
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !455
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !455
  %i.bp = add i32 %i.bk, 2
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 8
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !455
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !455
  %i.bt = add i32 %i.bk, 3
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 12
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !455
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !455
  %i.bx = add i32 %i.bk, 4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 16
  %i.ca = add i64 %.018.i.i32.i.i, -4             ; 2 uses
  %.not.i.i35.i.i.3 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i35.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i31.i.i, !llvm.loop !215

.unr-lcssa:                                       ; preds = %.lr.ph.i.i31.i.i, %.lr.ph.i.i31.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i31.i.i.prol.loopexit ], [ %i.by, %.lr.ph.i.i31.i.i ]
  %i.cb = sub nuw i64 %.02641.i.i, %i.ba          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not28.i.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !216

_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmT_.exit: ; preds = %.unr-lcssa, %_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit, %.loopexit38.i.i
  %i.cc = add i64 %i.i, %2
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !557
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.90") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %4 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !557  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !556
  %.not.i.i36 = icmp eq ptr %i.c, null            ; 2 uses
  %i.d = and i64 %i.b, 255
  %i.e = xor i64 %i.d, 255                        ; 2 uses
  %i.f = select i1 %.not.i.i36, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %3, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %3, %i.e
  tail call void @_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEENS9_ILb1EEEmb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !557, !noalias !9943
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !556, !noalias !9944 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit
  %i.k = lshr i64 %i.i, 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !458, !noalias !9944
  %i.n = and i64 %i.i, 255
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  br label %_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit

_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %i.p = phi ptr [ %i.o, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 18 uses
  %i.q = phi ptr [ %i.l, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 22 uses
  %i.r = sub i64 %i.b, %2                         ; 8 uses
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseISaINS0_4test12copyable_intEENS0_9deque_optILm0ELm0EmLb0EEELb1EE11prot_finishEv.exit
  store ptr %i.p, ptr %0, align 8, !tbaa !531
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !532
  %i.t = sub nsw i64 0, %3
  %.not.i.i37 = icmp eq i64 %3, 0                 ; 2 uses
  %.pre213 = load ptr, ptr %i.q, align 8, !tbaa !458 ; 9 uses
  %.pre224 = ptrtoint ptr %i.p to i64
  %.pre225 = ptrtoint ptr %.pre213 to i64
  %.pre227 = sub i64 %.pre224, %.pre225
  %.pre229 = ashr exact i64 %.pre227, 2           ; 2 uses
  br i1 %.not.i.i37, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_NS_11move_detail5bool_ILb0EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i64 %.pre229, %3                 ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.u, 256
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.t
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = lshr i64 %i.u, 8                         ; 2 uses
  %i.y = or disjoint i64 %i.x, -72057594037927936
  %i.z = select i1 %i.w, i64 %i.x, i64 %i.y       ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.z ; 3 uses
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !532
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !458
  %i.ac = shl nsw i64 %i.z, 8
  %i.ad = sub nsw i64 %i.u, %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %i.aa, %bb.h ], [ %i.q, %bb.g ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.ae, %bb.h ], [ %i.v, %bb.g ] ; 7 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !531
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !458
  %i.ah = ptrtoint ptr %storemerge.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 3 uses
  %i.al = sub nsw i64 256, %i.ak
  %i.am = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.al) ; 5 uses
  %.not12.i.i = icmp eq i64 %i.aj, 1024
  br i1 %.not12.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter = and i64 %i.am, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.an = add nsw i64 %i.am, -1                   ; 2 uses
  %i.ao = load i32, ptr %storemerge.i.i, align 4, !tbaa !455, !noalias !9945
  store i32 %i.ao, ptr %i.p, align 4, !tbaa !455, !noalias !9945
  %i.ap = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9945
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9945
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre213, i64 1024
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %.lr.ph.i.i.prol.loopexit, !prof !365

bb.j:                                             ; preds = %.lr.ph.i.i.prol
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !458, !noalias !9945 ; 4 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.j, %.lr.ph.i.i.preheader
  %.lcssa388.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.pre213, %.lr.ph.i.i.prol ], [ %i.aw, %bb.j ]
  %.lcssa387.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ], [ %i.av, %bb.j ]
  %.lcssa386.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.as, %.lr.ph.i.i.prol ], [ %i.aw, %bb.j ]
  %.unr = phi ptr [ %.pre213, %.lr.ph.i.i.preheader ], [ %.pre213, %.lr.ph.i.i.prol ], [ %i.aw, %bb.j ]
  %.unr389 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ], [ %i.av, %bb.j ]
  %.unr390 = phi ptr [ %i.p, %.lr.ph.i.i.preheader ], [ %i.as, %.lr.ph.i.i.prol ], [ %i.aw, %bb.j ]
  %.014.i.i.unr = phi ptr [ %storemerge.i.i, %.lr.ph.i.i.preheader ], [ %i.ar, %bb.j ], [ %i.ar, %.lr.ph.i.i.prol ]
  %.0813.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i.preheader ], [ %i.an, %bb.j ], [ %i.an, %.lr.ph.i.i.prol ]
  %i.ax = icmp eq i64 %i.am, 1
  br i1 %i.ax, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1
  %i.ay = phi ptr [ %i.bx, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.az = phi ptr [ %i.by, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr389, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ba = phi ptr [ %i.bz, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr390, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.014.i.i = phi ptr [ %i.br, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.0813.i.i = phi i64 [ %i.bn, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.0813.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bb = load i32, ptr %.014.i.i, align 4, !tbaa !455, !noalias !9945
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !455, !noalias !9945
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9945
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9945
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 1024
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i, !prof !365

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !458, !noalias !9945 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i
  %i.bk = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bl = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.bi, %bb.k ] ; 2 uses
  %i.bm = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bn = add i64 %.0813.i.i, -2                  ; 2 uses
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !455, !noalias !9945
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !455, !noalias !9945
  %i.bp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9945
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9945
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 1024
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1, !prof !365

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !458, !noalias !9945 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1: ; preds = %bb.l, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i
  %i.bx = phi ptr [ %i.bk, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bw, %bb.l ] ; 2 uses
  %i.by = phi ptr [ %i.bl, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bv, %bb.l ] ; 2 uses
  %i.bz = phi ptr [ %i.bs, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bw, %bb.l ] ; 2 uses
  %.not.i.i38.1 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i38.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i, label %.lr.ph.i.i, !llvm.loop !211

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1, %bb.i
  %.pre54.i212 = phi ptr [ %.pre213, %bb.i ], [ %.lcssa388.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.bx, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %.promoted49.i = phi ptr [ %i.q, %bb.i ], [ %.lcssa387.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.by, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %.promoted.i = phi ptr [ %i.p, %bb.i ], [ %.lcssa386.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.bz, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %i.ca = sub i64 %3, %i.am                       ; 2 uses
  %.not2745.i = icmp eq i64 %i.ca, 0
  br i1 %.not2745.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_NS_11move_detail5bool_ILb0EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i
  %.pre54.i = phi ptr [ %.pre54.i209.lcssa, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i ], [ %.pre54.i212, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i ] ; 4 uses
  %.lcssa4250.i = phi ptr [ %.lcssa385, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i ], [ %.promoted49.i, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i ] ; 4 uses
  %.lcssa48.i = phi ptr [ %.lcssa384, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i ], [ %.promoted.i, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i ] ; 3 uses
  %.02447.i = phi ptr [ %i.cb, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i ], [ %i.af, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i ]
  %.02546.i = phi i64 [ %i.dr, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i ], [ %i.ca, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02447.i, i64 8 ; 2 uses
  %i.cc = tail call i64 @llvm.umin.i64(i64 %.02546.i, i64 256) ; 4 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !458 ; 3 uses
  %xtraiter391 = and i64 %i.cc, 1
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %.lr.ph.i31.i.prol.loopexit, label %.lr.ph.i31.i.prol

.lr.ph.i31.i.prol:                                ; preds = %.lr.ph.i
end_hunk_3
begin_hunk_4_@_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmmT_:bb.a
  %storemerge.i.i.i = phi ptr [ %i.ep, %bb.s ], [ %i.eo, %bb.r ] ; 3 uses
  %i.es = load i32, ptr %i.ek, align 4, !tbaa !455, !noalias !9947
  store i32 %i.es, ptr %storemerge.i.i.i, align 4, !tbaa !455, !noalias !9947
  %i.et = add i64 %.035.i.i, -2                   ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.06.i.i45, i64 -8 ; 2 uses
  %i.ev = icmp eq ptr %storemerge.i.i.i, %i.eq
  br i1 %i.ev, label %bb.u, label %bb.t, !prof !365

bb.t:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.ew = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1

bb.u:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 -8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !458, !noalias !9947 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1: ; preds = %bb.u, %bb.t
  %i.fa = phi ptr [ %i.eq, %bb.t ], [ %i.ey, %bb.u ]
  %i.fb = phi ptr [ %i.er, %bb.t ], [ %i.ex, %bb.u ] ; 2 uses
  %storemerge.i.i.i.1 = phi ptr [ %i.ew, %bb.t ], [ %i.ez, %bb.u ] ; 3 uses
  %i.fc = load i32, ptr %i.eu, align 4, !tbaa !455, !noalias !9947
  store i32 %i.fc, ptr %storemerge.i.i.i.1, align 4, !tbaa !455, !noalias !9947
  %.not.i.i46.1 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i46.1, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i.i44, !llvm.loop !83

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i.i44.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_NS_11move_detail5bool_ILb0EEE.exit
  %.promoted40.i = phi ptr [ %i.q, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_NS_11move_detail5bool_ILb0EEE.exit ], [ %.lcssa383.unr.a, %.lr.ph.i.i44.prol.loopexit ], [ %i.fb, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1 ] ; 2 uses
  %.promoted.i47 = phi ptr [ %i.p, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_NS_11move_detail5bool_ILb0EEE.exit ], [ %storemerge.i.i.i.lcssa.unr, %.lr.ph.i.i44.prol.loopexit ], [ %storemerge.i.i.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1 ]
  %i.fd = sub nuw i64 %i.dv, %i.dw                ; 2 uses
  %.not36.i = icmp eq i64 %i.fd, 0
  br i1 %.not36.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %.pre43.i.pre = load ptr, ptr %.promoted40.i, align 8, !tbaa !458, !noalias !9948
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i
  %.pre43.i = phi ptr [ %.pre43.i215.lcssa, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.pre43.i.pre, %.lr.ph.i48.preheader ] ; 3 uses
  %.lcssa41.i = phi ptr [ %.lcssa382, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.promoted40.i, %.lr.ph.i48.preheader ] ; 3 uses
  %storemerge.i.i27.lcssa39.i = phi ptr [ %storemerge.i.i27.i.lcssa, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.promoted.i47, %.lr.ph.i48.preheader ] ; 3 uses
  %.038.i = phi ptr [ %i.fe, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %i.ds, %.lr.ph.i48.preheader ]
  %.01737.i = phi i64 [ %i.go, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %i.fd, %.lr.ph.i48.preheader ] ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %.038.i, i64 -8 ; 2 uses
  %i.ff = tail call i64 @llvm.umin.i64(i64 %.01737.i, i64 256) ; 4 uses
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !458, !noalias !9949 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1024
  %xtraiter400 = and i64 %i.ff, 1
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol

.lr.ph.i22.i.prol:                                ; preds = %.lr.ph.i48
  %i.fi = add nsw i64 %i.ff, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1020 ; 2 uses
  %i.fk = icmp eq ptr %storemerge.i.i27.lcssa39.i, %.pre43.i
  br i1 %i.fk, label %bb.w, label %bb.v, !prof !365

bb.v:                                             ; preds = %.lr.ph.i22.i.prol
  %i.fl = getelementptr inbounds i8, ptr %storemerge.i.i27.lcssa39.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

bb.w:                                             ; preds = %.lr.ph.i22.i.prol
  %i.fm = getelementptr inbounds i8, ptr %.lcssa41.i, i64 -8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !458, !noalias !9948 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol: ; preds = %bb.w, %bb.v
  %i.fp = phi ptr [ %.pre43.i, %bb.v ], [ %i.fn, %bb.w ] ; 2 uses
  %i.fq = phi ptr [ %.lcssa41.i, %bb.v ], [ %i.fm, %bb.w ] ; 2 uses
  %storemerge.i.i27.i.prol = phi ptr [ %i.fl, %bb.v ], [ %i.fo, %bb.w ] ; 3 uses
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !455, !noalias !9948
  store i32 %i.fr, ptr %storemerge.i.i27.i.prol, align 4, !tbaa !455, !noalias !9948
  br label %.lr.ph.i22.i.prol.loopexit

.lr.ph.i22.i.prol.loopexit:                       ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol, %.lr.ph.i48
  %.pre43.i215.lcssa.unr = phi ptr [ poison, %.lr.ph.i48 ], [ %i.fp, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.lcssa382.unr.a = phi ptr [ poison, %.lr.ph.i48 ], [ %i.fq, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i.i27.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i48 ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.unr402 = phi ptr [ %.pre43.i, %.lr.ph.i48 ], [ %i.fp, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ] ; 2 uses
  %.unr403 = phi ptr [ %.lcssa41.i, %.lr.ph.i48 ], [ %i.fq, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i7.i23.i.unr = phi ptr [ %storemerge.i.i27.lcssa39.i, %.lr.ph.i48 ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.06.i24.i.unr = phi ptr [ %i.fh, %.lr.ph.i48 ], [ %i.fj, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.035.i25.i.unr = phi i64 [ %i.ff, %.lr.ph.i48 ], [ %i.fi, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %i.fs = icmp eq i64 %.01737.i, 1
  br i1 %i.fs, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1
  %.pre43.i216 = phi ptr [ %.pre43.i215.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr402, %.lr.ph.i22.i.prol.loopexit ]
  %i.ft = phi ptr [ %i.gl, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr402, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %i.fu = phi ptr [ %i.gm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr403, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %storemerge.i7.i23.i = phi ptr [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %storemerge.i7.i23.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.06.i24.i = phi ptr [ %i.gf, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.06.i24.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.035.i25.i = phi i64 [ %i.ge, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.035.i25.i.unr, %.lr.ph.i22.i.prol.loopexit ]
  %i.fv = getelementptr inbounds i8, ptr %.06.i24.i, i64 -4
  %i.fw = icmp eq ptr %storemerge.i7.i23.i, %i.ft
  br i1 %i.fw, label %bb.x, label %bb.y, !prof !365

bb.x:                                             ; preds = %.lr.ph.i22.i
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 -8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !458, !noalias !9948 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i

bb.y:                                             ; preds = %.lr.ph.i22.i
  %i.ga = getelementptr inbounds i8, ptr %storemerge.i7.i23.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i: ; preds = %bb.y, %bb.x
  %.pre43.i215 = phi ptr [ %.pre43.i216, %bb.y ], [ %i.fy, %bb.x ]
  %i.gb = phi ptr [ %i.ft, %bb.y ], [ %i.fy, %bb.x ] ; 2 uses
  %i.gc = phi ptr [ %i.fu, %bb.y ], [ %i.fx, %bb.x ] ; 2 uses
  %storemerge.i.i27.i = phi ptr [ %i.ga, %bb.y ], [ %i.fz, %bb.x ] ; 3 uses
  %i.gd = load i32, ptr %i.fv, align 4, !tbaa !455, !noalias !9948
  store i32 %i.gd, ptr %storemerge.i.i27.i, align 4, !tbaa !455, !noalias !9948
  %i.ge = add nsw i64 %.035.i25.i, -2             ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.06.i24.i, i64 -8 ; 2 uses
  %i.gg = icmp eq ptr %storemerge.i.i27.i, %i.gb
  br i1 %i.gg, label %bb.aa, label %bb.z, !prof !365

bb.z:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.gh = getelementptr inbounds i8, ptr %storemerge.i.i27.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1

bb.aa:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.gi = getelementptr inbounds i8, ptr %i.gc, i64 -8 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !458, !noalias !9948 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1: ; preds = %bb.aa, %bb.z
  %.pre43.i215.1 = phi ptr [ %.pre43.i215, %bb.z ], [ %i.gj, %bb.aa ] ; 2 uses
  %i.gl = phi ptr [ %i.gb, %bb.z ], [ %i.gj, %bb.aa ]
  %i.gm = phi ptr [ %i.gc, %bb.z ], [ %i.gi, %bb.aa ] ; 2 uses
  %storemerge.i.i27.i.1 = phi ptr [ %i.gh, %bb.z ], [ %i.gk, %bb.aa ] ; 3 uses
  %i.gn = load i32, ptr %i.gf, align 4, !tbaa !455, !noalias !9948
  store i32 %i.gn, ptr %storemerge.i.i27.i.1, align 4, !tbaa !455, !noalias !9948
  %.not.i28.i.1 = icmp eq i64 %i.ge, 0
  br i1 %.not.i28.i.1, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i, !llvm.loop !83

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1, %.lr.ph.i22.i.prol.loopexit
  %.pre43.i215.lcssa = phi ptr [ %.pre43.i215.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %.pre43.i215.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %.lcssa382 = phi ptr [ %.lcssa382.unr.a, %.lr.ph.i22.i.prol.loopexit ], [ %i.gm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %storemerge.i.i27.i.lcssa = phi ptr [ %storemerge.i.i27.i.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %i.go = sub nuw i64 %.01737.i, %i.ff            ; 2 uses
  %.not.i49 = icmp eq i64 %i.go, 0
  br i1 %.not.i49, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit, label %.lr.ph.i48, !llvm.loop !213

_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.gp = sub nsw i64 0, %i.dv
  %.not.i.i50 = icmp eq i64 %i.r, %3
  br i1 %.not.i.i50, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit53, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit
  %i.gq = sub nsw i64 %.pre-phi230, %i.dv         ; 4 uses
  %or.cond.i.i51 = icmp ult i64 %i.gq, 256
  br i1 %or.cond.i.i51, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.gp
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.gs = icmp sgt i64 %i.gq, 0
  %i.gt = lshr i64 %i.gq, 8                       ; 2 uses
  %i.gu = or disjoint i64 %i.gt, -72057594037927936
  %i.gv = select i1 %i.gs, i64 %i.gt, i64 %i.gu   ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.gv ; 3 uses
  store ptr %i.gw, ptr %i.s, align 8, !tbaa !532
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !458
  %i.gy = shl nsw i64 %i.gv, 8
  %i.gz = sub nsw i64 %i.gq, %i.gy
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.gz
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hb = phi ptr [ %i.gw, %bb.ad ], [ %i.ds, %bb.ac ]
  %storemerge.i.i52 = phi ptr [ %i.ha, %bb.ad ], [ %i.gr, %bb.ac ] ; 2 uses
  store ptr %storemerge.i.i52, ptr %0, align 8, !tbaa !531
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit53

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit53: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit, %bb.ae
  %i.hc = phi ptr [ %i.dt, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit ], [ %storemerge.i.i52, %bb.ae ] ; 4 uses
  %i.hd = phi ptr [ %i.ds, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit ], [ %i.hb, %bb.ae ] ; 2 uses
  br i1 %.not.i.i37, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmRT_.exit, label %bb.af, !prof !365

bb.af:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit53
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !458
  %i.hf = ptrtoint ptr %i.hc to i64               ; 2 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = ashr exact i64 %i.hh, 2
  %i.hj = sub nsw i64 256, %i.hi
  %i.hk = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.hj) ; 6 uses
  %.not6.i.i.i = icmp eq i64 %i.hh, 1024
  br i1 %.not6.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.af
  %min.iters.check = icmp ult i64 %i.hk, 8
  %i.hl = sub i64 %5, %i.hf
  %diff.check = icmp ugt i64 %i.hl, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader380, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.hk, -8                      ; 3 uses
  %i.hm = and i64 %i.hk, 7
  %i.hn = shl i64 %n.vec, 2                       ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hc, i64 %i.hn
  %i.hp = getelementptr i8, ptr %4, i64 %i.hn     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hc, i64 %i.hq ; 2 uses
  %next.gep305 = getelementptr i8, ptr %4, i64 %i.hq ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep305, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep305, align 4, !tbaa !455
  %wide.load306 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !455
  %i.hs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !455
  store <4 x i32> %wide.load306, ptr %i.hs, align 4, !tbaa !455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !9920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hk, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i.preheader380

.lr.ph.i.i.i.preheader380:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ %i.hk, %.lr.ph.i.i.i.preheader ], [ %i.hm, %middle.block ] ; 4 uses
  %.048.i.i.i.ph = phi ptr [ %i.hc, %.lr.ph.i.i.i.preheader ], [ %i.ho, %middle.block ] ; 2 uses
  %.sroa.0.07.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.preheader ], [ %i.hp, %middle.block ] ; 2 uses
  %i.hu = add i64 %.09.i.i.i.ph, -1
  %xtraiter404 = and i64 %.09.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader380, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.hv, %.lr.ph.i.i.i.prol ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader380 ]
  %.048.i.i.i.prol = phi ptr [ %i.hy, %.lr.ph.i.i.i.prol ], [ %.048.i.i.i.ph, %.lr.ph.i.i.i.preheader380 ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.hx, %.lr.ph.i.i.i.prol ], [ %.sroa.0.07.i.i.i.ph, %.lr.ph.i.i.i.preheader380 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader380 ]
  %i.hv = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.hw = load i32, ptr %.sroa.0.07.i.i.i.prol, align 4, !tbaa !455
  store i32 %i.hw, ptr %.048.i.i.i.prol, align 4, !tbaa !455
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 4 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter404
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !9921

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader380
  %.lcssa381.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.preheader380 ], [ %i.hx, %.lr.ph.i.i.i.prol ]
  %.09.i.i.i.unr = phi i64 [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader380 ], [ %i.hv, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %.048.i.i.i.ph, %.lr.ph.i.i.i.preheader380 ], [ %i.hy, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.ph, %.lr.ph.i.i.i.preheader380 ], [ %i.hx, %.lr.ph.i.i.i.prol ]
  %i.hz = icmp ult i64 %i.hu, 7
  br i1 %i.hz, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.iv, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.iy, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.ix, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ia = load i32, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !455
  store i32 %i.ia, ptr %.048.i.i.i, align 4, !tbaa !455
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !455
  store i32 %i.id, ptr %i.ic, align 4, !tbaa !455
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !455
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !455
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 12
  %i.ii = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !455
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !455
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !455
  store i32 %i.im, ptr %i.il, align 4, !tbaa !455
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 20
  %i.io = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 20
  %i.ip = load i32, ptr %i.in, align 4, !tbaa !455
  store i32 %i.ip, ptr %i.io, align 4, !tbaa !455
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 24
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !455
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !455
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 28
  %i.iu = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 28
  %i.iv = add i64 %.09.i.i.i, -8                  ; 2 uses
  %i.iw = load i32, ptr %i.it, align 4, !tbaa !455
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !455
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 32 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9922

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.af
  %.promoted.i55 = phi ptr [ %4, %bb.af ], [ %i.hp, %middle.block ], [ %.lcssa381.unr.a, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ix, %.lr.ph.i.i.i ]
  %i.iz = sub i64 %3, %i.hk                       ; 2 uses
  %.not2334.i = icmp eq i64 %i.iz, 0
  br i1 %.not2334.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmRT_.exit, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i
  %.lcssa37.i = phi ptr [ %.lcssa296, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i ], [ %.promoted.i55, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i ] ; 4 uses
  %.036.i = phi ptr [ %i.ja, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i ], [ %i.hd, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i ]
  %.02135.i = phi i64 [ %i.ks, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i ], [ %i.iz, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 2 uses
  %i.jb = tail call i64 @llvm.umin.i64(i64 %.02135.i, i64 256) ; 5 uses
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !458 ; 4 uses
  %min.iters.check313 = icmp ult i64 %.02135.i, 8
  %i.jd = ptrtoaddr ptr %i.jc to i64
  %.lcssa37.i310 = ptrtoaddr ptr %.lcssa37.i to i64
  %i.je = sub i64 %.lcssa37.i310, %i.jd
  %diff.check311 = icmp ugt i64 %i.je, -32
  %or.cond366 = select i1 %min.iters.check313, i1 true, i1 %diff.check311
  br i1 %or.cond366, label %.lr.ph.i.i26.i.preheader, label %vector.ph314

vector.ph314:                                     ; preds = %.lr.ph.i56
  %n.vec315 = and i64 %i.jb, 504                  ; 3 uses
  %i.jf = and i64 %i.jb, 7
  %i.jg = shl nuw nsw i64 %n.vec315, 2            ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jc, i64 %i.jg
  %i.ji = getelementptr i8, ptr %.lcssa37.i, i64 %i.jg ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.jj = shl i64 %index317, 2                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.jc, i64 %i.jj ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.lcssa37.i, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep319, i64 16
  %wide.load320 = load <4 x i32>, ptr %next.gep319, align 4, !tbaa !455
  %wide.load321 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !455
  %i.jl = getelementptr i8, ptr %next.gep318, i64 16
  store <4 x i32> %wide.load320, ptr %next.gep318, align 4, !tbaa !455
  store <4 x i32> %wide.load321, ptr %i.jl, align 4, !tbaa !455
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.jm, label %middle.block323, label %vector.body316, !llvm.loop !9923

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.jb, %n.vec315
  br i1 %cmp.n324, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i, label %.lr.ph.i.i26.i.preheader

.lr.ph.i.i26.i.preheader:                         ; preds = %.lr.ph.i56, %middle.block323
  %.09.i.i27.i.ph = phi i64 [ %i.jb, %.lr.ph.i56 ], [ %i.jf, %middle.block323 ] ; 4 uses
  %.048.i.i28.i.ph = phi ptr [ %i.jc, %.lr.ph.i56 ], [ %i.jh, %middle.block323 ] ; 2 uses
  %.sroa.0.07.i.i29.i.ph = phi ptr [ %.lcssa37.i, %.lr.ph.i56 ], [ %i.ji, %middle.block323 ] ; 2 uses
  %i.jn = add nsw i64 %.09.i.i27.i.ph, -1
  %xtraiter406 = and i64 %.09.i.i27.i.ph, 7       ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol

.lr.ph.i.i26.i.prol:                              ; preds = %.lr.ph.i.i26.i.preheader, %.lr.ph.i.i26.i.prol
  %.09.i.i27.i.prol = phi i64 [ %i.jo, %.lr.ph.i.i26.i.prol ], [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ]
  %.048.i.i28.i.prol = phi ptr [ %i.jr, %.lr.ph.i.i26.i.prol ], [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i29.i.prol = phi ptr [ %i.jq, %.lr.ph.i.i26.i.prol ], [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ] ; 2 uses
  %prol.iter408 = phi i64 [ %prol.iter408.next, %.lr.ph.i.i26.i.prol ], [ 0, %.lr.ph.i.i26.i.preheader ]
  %i.jo = add i64 %.09.i.i27.i.prol, -1           ; 2 uses
  %i.jp = load i32, ptr %.sroa.0.07.i.i29.i.prol, align 4, !tbaa !455
  store i32 %i.jp, ptr %.048.i.i28.i.prol, align 4, !tbaa !455
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i.prol, i64 4 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.048.i.i28.i.prol, i64 4 ; 2 uses
  %prol.iter408.next = add i64 %prol.iter408, 1   ; 2 uses
  %prol.iter408.cmp.not = icmp eq i64 %prol.iter408.next, %xtraiter406
  br i1 %prol.iter408.cmp.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol, !llvm.loop !9924

.lr.ph.i.i26.i.prol.loopexit:                     ; preds = %.lr.ph.i.i26.i.prol, %.lr.ph.i.i26.i.preheader
  %.lcssa379.unr.a = phi ptr [ poison, %.lr.ph.i.i26.i.preheader ], [ %i.jq, %.lr.ph.i.i26.i.prol ]
  %.09.i.i27.i.unr = phi i64 [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.jo, %.lr.ph.i.i26.i.prol ]
  %.048.i.i28.i.unr = phi ptr [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.jr, %.lr.ph.i.i26.i.prol ]
  %.sroa.0.07.i.i29.i.unr = phi ptr [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.jq, %.lr.ph.i.i26.i.prol ]
  %i.js = icmp ult i64 %i.jn, 7
  br i1 %i.js, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i, label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.prol.loopexit, %.lr.ph.i.i26.i
  %.09.i.i27.i = phi i64 [ %i.ko, %.lr.ph.i.i26.i ], [ %.09.i.i27.i.unr, %.lr.ph.i.i26.i.prol.loopexit ]
  %.048.i.i28.i = phi ptr [ %i.kr, %.lr.ph.i.i26.i ], [ %.048.i.i28.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i = phi ptr [ %i.kq, %.lr.ph.i.i26.i ], [ %.sroa.0.07.i.i29.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %i.jt = load i32, ptr %.sroa.0.07.i.i29.i, align 4, !tbaa !455
  store i32 %i.jt, ptr %.048.i.i28.i, align 4, !tbaa !455
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 4
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !455
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !455
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 8
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !455
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !455
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 12
  %i.kb = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 12
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !455
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !455
end_hunk_4
begin_hunk_5_@_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmmT_:bb.a
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %.lr.ph.i.i69.prol.loopexit, label %.lr.ph.i.i69.prol

.lr.ph.i.i69.prol:                                ; preds = %.lr.ph.i.i69.preheader
  %i.lz = add nsw i64 %i.ly, -1                   ; 2 uses
  %i.ma = load i32, ptr %.sroa.0.0.i59, align 4, !tbaa !455, !noalias !9952
  store i32 %i.ma, ptr %.sroa.0.0.i63, align 4, !tbaa !455, !noalias !9952
  %i.mb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9952
  %i.mc = add i32 %i.mb, 1
  store i32 %i.mc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9952
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59, i64 4 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i63, i64 4 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.pre.i68, i64 1024
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %bb.an, label %.lr.ph.i.i69.prol.loopexit, !prof !365

bb.an:                                            ; preds = %.lr.ph.i.i69.prol
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i62, i64 8 ; 3 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !458, !noalias !9952 ; 4 uses
  br label %.lr.ph.i.i69.prol.loopexit

.lr.ph.i.i69.prol.loopexit:                       ; preds = %.lr.ph.i.i69.prol, %bb.an, %.lr.ph.i.i69.preheader
  %.lcssa378.unr.a = phi ptr [ poison, %.lr.ph.i.i69.preheader ], [ %.pre.i68, %.lr.ph.i.i69.prol ], [ %i.mi, %bb.an ]
  %.lcssa377.unr.a = phi ptr [ poison, %.lr.ph.i.i69.preheader ], [ %.sroa.6.1.i62, %.lr.ph.i.i69.prol ], [ %i.mh, %bb.an ]
  %.lcssa376.unr = phi ptr [ poison, %.lr.ph.i.i69.preheader ], [ %i.me, %.lr.ph.i.i69.prol ], [ %i.mi, %bb.an ]
  %.unr412 = phi ptr [ %.pre.i68, %.lr.ph.i.i69.preheader ], [ %.pre.i68, %.lr.ph.i.i69.prol ], [ %i.mi, %bb.an ]
  %.unr413 = phi ptr [ %.sroa.6.1.i62, %.lr.ph.i.i69.preheader ], [ %.sroa.6.1.i62, %.lr.ph.i.i69.prol ], [ %i.mh, %bb.an ]
  %.unr414 = phi ptr [ %.sroa.0.0.i63, %.lr.ph.i.i69.preheader ], [ %i.me, %.lr.ph.i.i69.prol ], [ %i.mi, %bb.an ]
  %.014.i.i70.unr = phi ptr [ %.sroa.0.0.i59, %.lr.ph.i.i69.preheader ], [ %i.md, %bb.an ], [ %i.md, %.lr.ph.i.i69.prol ]
  %.0813.i.i71.unr = phi i64 [ %i.ly, %.lr.ph.i.i69.preheader ], [ %i.lz, %bb.an ], [ %i.lz, %.lr.ph.i.i69.prol ]
  %i.mj = icmp eq i64 %i.ly, 1
  br i1 %i.mj, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74, label %.lr.ph.i.i69

.lr.ph.i.i69:                                     ; preds = %.lr.ph.i.i69.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1
  %i.mk = phi ptr [ %i.nj, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ], [ %.unr412, %.lr.ph.i.i69.prol.loopexit ] ; 2 uses
  %i.ml = phi ptr [ %i.nk, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ], [ %.unr413, %.lr.ph.i.i69.prol.loopexit ] ; 2 uses
  %i.mm = phi ptr [ %i.nl, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ], [ %.unr414, %.lr.ph.i.i69.prol.loopexit ] ; 2 uses
  %.014.i.i70 = phi ptr [ %i.nd, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ], [ %.014.i.i70.unr, %.lr.ph.i.i69.prol.loopexit ] ; 3 uses
  %.0813.i.i71 = phi i64 [ %i.mz, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ], [ %.0813.i.i71.unr, %.lr.ph.i.i69.prol.loopexit ]
  %i.mn = load i32, ptr %.014.i.i70, align 4, !tbaa !455, !noalias !9952
  store i32 %i.mn, ptr %i.mm, align 4, !tbaa !455, !noalias !9952
  %i.mo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9952
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9952
  %i.mq = getelementptr inbounds nuw i8, ptr %.014.i.i70, i64 4
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 4 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 1024
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %bb.ao, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72, !prof !365

bb.ao:                                            ; preds = %.lr.ph.i.i69
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !458, !noalias !9952 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72: ; preds = %bb.ao, %.lr.ph.i.i69
  %i.mw = phi ptr [ %i.mk, %.lr.ph.i.i69 ], [ %i.mv, %bb.ao ] ; 2 uses
  %i.mx = phi ptr [ %i.ml, %.lr.ph.i.i69 ], [ %i.mu, %bb.ao ] ; 2 uses
  %i.my = phi ptr [ %i.mr, %.lr.ph.i.i69 ], [ %i.mv, %bb.ao ] ; 2 uses
  %i.mz = add i64 %.0813.i.i71, -2                ; 2 uses
  %i.na = load i32, ptr %i.mq, align 4, !tbaa !455, !noalias !9952
  store i32 %i.na, ptr %i.my, align 4, !tbaa !455, !noalias !9952
  %i.nb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9952
  %i.nc = add i32 %i.nb, 1
  store i32 %i.nc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9952
  %i.nd = getelementptr inbounds nuw i8, ptr %.014.i.i70, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mw, i64 1024
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %bb.ap, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1, !prof !365

bb.ap:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !458, !noalias !9952 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1: ; preds = %bb.ap, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72
  %i.nj = phi ptr [ %i.mw, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72 ], [ %i.ni, %bb.ap ] ; 2 uses
  %i.nk = phi ptr [ %i.mx, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72 ], [ %i.nh, %bb.ap ] ; 2 uses
  %i.nl = phi ptr [ %i.ne, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72 ], [ %i.ni, %bb.ap ] ; 2 uses
  %.not.i.i73.1 = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i73.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74, label %.lr.ph.i.i69, !llvm.loop !211

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74: ; preds = %.lr.ph.i.i69.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1, %bb.am
  %.pre54.i83223 = phi ptr [ %.pre.i68, %bb.am ], [ %.lcssa378.unr.a, %.lr.ph.i.i69.prol.loopexit ], [ %i.nj, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ]
  %.promoted49.i75 = phi ptr [ %.sroa.6.1.i62, %bb.am ], [ %.lcssa377.unr.a, %.lr.ph.i.i69.prol.loopexit ], [ %i.nk, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ]
  %.promoted.i76 = phi ptr [ %.sroa.0.0.i63, %bb.am ], [ %.lcssa376.unr, %.lr.ph.i.i69.prol.loopexit ], [ %i.nl, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i72.1 ]
  %i.nm = sub i64 %i.r, %i.ly                     ; 3 uses
  %.not2745.i77 = icmp eq i64 %i.nm, 0            ; 2 uses
  br i1 %.not2745.i77, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89
  %.pre54.i83 = phi ptr [ %.pre54.i83220.lcssa, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89 ], [ %.pre54.i83223, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74 ] ; 4 uses
  %.lcssa4250.i79 = phi ptr [ %.lcssa375, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89 ], [ %.promoted49.i75, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74 ] ; 4 uses
  %.lcssa48.i80 = phi ptr [ %.lcssa374, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89 ], [ %.promoted.i76, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74 ] ; 3 uses
  %.02447.i81 = phi ptr [ %i.nn, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89 ], [ %.sroa.6.1.i58, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74 ]
  %.02546.i82 = phi i64 [ %i.pd, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89 ], [ %i.nm, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.02447.i81, i64 8 ; 2 uses
  %i.no = tail call i64 @llvm.umin.i64(i64 %.02546.i82, i64 256) ; 4 uses
  %i.np = load ptr, ptr %i.nn, align 8, !tbaa !458 ; 3 uses
  %xtraiter415 = and i64 %i.no, 1
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %.lr.ph.i31.i84.prol.loopexit, label %.lr.ph.i31.i84.prol

.lr.ph.i31.i84.prol:                              ; preds = %.lr.ph.i78
  %i.nq = add nsw i64 %i.no, -1                   ; 2 uses
  %i.nr = load i32, ptr %i.np, align 4, !tbaa !455, !noalias !9953
  store i32 %i.nr, ptr %.lcssa48.i80, align 4, !tbaa !455, !noalias !9953
  %i.ns = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9953
  %i.nt = add i32 %i.ns, 1
  store i32 %i.nt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9953
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.lcssa48.i80, i64 4 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.pre54.i83, i64 1024
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %bb.aq, label %.lr.ph.i31.i84.prol.loopexit, !prof !365

bb.aq:                                            ; preds = %.lr.ph.i31.i84.prol
  %i.ny = getelementptr inbounds nuw i8, ptr %.lcssa4250.i79, i64 8 ; 3 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !458, !noalias !9953 ; 4 uses
  br label %.lr.ph.i31.i84.prol.loopexit

.lr.ph.i31.i84.prol.loopexit:                     ; preds = %.lr.ph.i31.i84.prol, %bb.aq, %.lr.ph.i78
  %.pre54.i83220.lcssa.unr = phi ptr [ poison, %.lr.ph.i78 ], [ %.pre54.i83, %.lr.ph.i31.i84.prol ], [ %i.nz, %bb.aq ]
  %.lcssa375.unr.a = phi ptr [ poison, %.lr.ph.i78 ], [ %.lcssa4250.i79, %.lr.ph.i31.i84.prol ], [ %i.ny, %bb.aq ]
  %.lcssa374.unr.a = phi ptr [ poison, %.lr.ph.i78 ], [ %i.nv, %.lr.ph.i31.i84.prol ], [ %i.nz, %bb.aq ]
  %.unr418 = phi ptr [ %.pre54.i83, %.lr.ph.i78 ], [ %.pre54.i83, %.lr.ph.i31.i84.prol ], [ %i.nz, %bb.aq ] ; 2 uses
  %.unr419 = phi ptr [ %.lcssa4250.i79, %.lr.ph.i78 ], [ %.lcssa4250.i79, %.lr.ph.i31.i84.prol ], [ %i.ny, %bb.aq ]
  %.unr420 = phi ptr [ %.lcssa48.i80, %.lr.ph.i78 ], [ %i.nv, %.lr.ph.i31.i84.prol ], [ %i.nz, %bb.aq ]
  %.014.i32.i85.unr = phi ptr [ %i.np, %.lr.ph.i78 ], [ %i.nu, %bb.aq ], [ %i.nu, %.lr.ph.i31.i84.prol ]
  %.0813.i33.i86.unr = phi i64 [ %i.no, %.lr.ph.i78 ], [ %i.nq, %bb.aq ], [ %i.nq, %.lr.ph.i31.i84.prol ]
  %i.oa = icmp eq i64 %.02546.i82, 1
  br i1 %i.oa, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89, label %.lr.ph.i31.i84

.lr.ph.i31.i84:                                   ; preds = %.lr.ph.i31.i84.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1
  %.pre54.i83221 = phi ptr [ %.pre54.i83220.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ], [ %.unr418, %.lr.ph.i31.i84.prol.loopexit ]
  %i.ob = phi ptr [ %i.pa, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ], [ %.unr418, %.lr.ph.i31.i84.prol.loopexit ] ; 2 uses
  %i.oc = phi ptr [ %i.pb, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ], [ %.unr419, %.lr.ph.i31.i84.prol.loopexit ] ; 2 uses
  %i.od = phi ptr [ %i.pc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ], [ %.unr420, %.lr.ph.i31.i84.prol.loopexit ] ; 2 uses
  %.014.i32.i85 = phi ptr [ %i.ou, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ], [ %.014.i32.i85.unr, %.lr.ph.i31.i84.prol.loopexit ] ; 3 uses
  %.0813.i33.i86 = phi i64 [ %i.oq, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ], [ %.0813.i33.i86.unr, %.lr.ph.i31.i84.prol.loopexit ]
  %i.oe = load i32, ptr %.014.i32.i85, align 4, !tbaa !455, !noalias !9953
  store i32 %i.oe, ptr %i.od, align 4, !tbaa !455, !noalias !9953
  %i.of = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9953
  %i.og = add i32 %i.of, 1
  store i32 %i.og, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9953
  %i.oh = getelementptr inbounds nuw i8, ptr %.014.i32.i85, i64 4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 1024
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %bb.ar, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87, !prof !365

bb.ar:                                            ; preds = %.lr.ph.i31.i84
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !458, !noalias !9953 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87: ; preds = %bb.ar, %.lr.ph.i31.i84
  %.pre54.i83220 = phi ptr [ %.pre54.i83221, %.lr.ph.i31.i84 ], [ %i.om, %bb.ar ]
  %i.on = phi ptr [ %i.ob, %.lr.ph.i31.i84 ], [ %i.om, %bb.ar ] ; 2 uses
  %i.oo = phi ptr [ %i.oc, %.lr.ph.i31.i84 ], [ %i.ol, %bb.ar ] ; 2 uses
  %i.op = phi ptr [ %i.oi, %.lr.ph.i31.i84 ], [ %i.om, %bb.ar ] ; 2 uses
  %i.oq = add nsw i64 %.0813.i33.i86, -2          ; 2 uses
  %i.or = load i32, ptr %i.oh, align 4, !tbaa !455, !noalias !9953
  store i32 %i.or, ptr %i.op, align 4, !tbaa !455, !noalias !9953
  %i.os = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9953
  %i.ot = add i32 %i.os, 1
  store i32 %i.ot, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !9953
  %i.ou = getelementptr inbounds nuw i8, ptr %.014.i32.i85, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 1024
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %bb.as, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1, !prof !365

bb.as:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !458, !noalias !9953 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1: ; preds = %bb.as, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87
  %.pre54.i83220.1 = phi ptr [ %.pre54.i83220, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87 ], [ %i.oz, %bb.as ] ; 2 uses
  %i.pa = phi ptr [ %i.on, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87 ], [ %i.oz, %bb.as ]
  %i.pb = phi ptr [ %i.oo, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87 ], [ %i.oy, %bb.as ] ; 2 uses
  %i.pc = phi ptr [ %i.ov, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87 ], [ %i.oz, %bb.as ] ; 2 uses
  %.not.i35.i88.1 = icmp eq i64 %i.oq, 0
  br i1 %.not.i35.i88.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89, label %.lr.ph.i31.i84, !llvm.loop !211

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1, %.lr.ph.i31.i84.prol.loopexit
  %.pre54.i83220.lcssa = phi ptr [ %.pre54.i83220.lcssa.unr, %.lr.ph.i31.i84.prol.loopexit ], [ %.pre54.i83220.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ]
  %.lcssa375 = phi ptr [ %.lcssa375.unr.a, %.lr.ph.i31.i84.prol.loopexit ], [ %i.pb, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ]
  %.lcssa374 = phi ptr [ %.lcssa374.unr.a, %.lr.ph.i31.i84.prol.loopexit ], [ %i.pc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i87.1 ]
  %i.pd = sub nuw i64 %.02546.i82, %i.no          ; 2 uses
  %.not27.i90 = icmp eq i64 %i.pd, 0
  br i1 %.not27.i90, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit, label %.lr.ph.i78, !llvm.loop !212

_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit36.i89, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_NS0_14deque_iteratorIS5_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_mSB_.exit.i74
  br i1 %.not12.i.i66, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100, label %.lr.ph.i.i.i95.preheader

.lr.ph.i.i.i95.preheader:                         ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit
  %min.iters.check331 = icmp ult i64 %i.ly, 8
  %i.pe = sub i64 %5, %i.lt
  %diff.check329 = icmp ugt i64 %i.pe, -32
  %or.cond367 = select i1 %min.iters.check331, i1 true, i1 %diff.check329
  br i1 %or.cond367, label %.lr.ph.i.i.i95.preheader372, label %vector.ph332

vector.ph332:                                     ; preds = %.lr.ph.i.i.i95.preheader
  %n.vec333 = and i64 %i.ly, -8                   ; 3 uses
  %i.pf = and i64 %i.ly, 7
  %i.pg = shl i64 %n.vec333, 2                    ; 2 uses
  %i.ph = getelementptr i8, ptr %.sroa.0.0.i59, i64 %i.pg
  %i.pi = getelementptr i8, ptr %4, i64 %i.pg     ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.pj = shl i64 %index335, 2                    ; 2 uses
  %next.gep336 = getelementptr i8, ptr %.sroa.0.0.i59, i64 %i.pj ; 2 uses
  %next.gep337 = getelementptr i8, ptr %4, i64 %i.pj ; 2 uses
  %i.pk = getelementptr i8, ptr %next.gep337, i64 16
  %wide.load338 = load <4 x i32>, ptr %next.gep337, align 4, !tbaa !455
  %wide.load339 = load <4 x i32>, ptr %i.pk, align 4, !tbaa !455
  %i.pl = getelementptr i8, ptr %next.gep336, i64 16
  store <4 x i32> %wide.load338, ptr %next.gep336, align 4, !tbaa !455
  store <4 x i32> %wide.load339, ptr %i.pl, align 4, !tbaa !455
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.pm = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.pm, label %middle.block341, label %vector.body334, !llvm.loop !9935

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.ly, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100, label %.lr.ph.i.i.i95.preheader372

.lr.ph.i.i.i95.preheader372:                      ; preds = %.lr.ph.i.i.i95.preheader, %middle.block341
  %.09.i.i.i96.ph = phi i64 [ %i.ly, %.lr.ph.i.i.i95.preheader ], [ %i.pf, %middle.block341 ] ; 4 uses
  %.048.i.i.i97.ph = phi ptr [ %.sroa.0.0.i59, %.lr.ph.i.i.i95.preheader ], [ %i.ph, %middle.block341 ] ; 2 uses
  %.sroa.0.07.i.i.i98.ph = phi ptr [ %4, %.lr.ph.i.i.i95.preheader ], [ %i.pi, %middle.block341 ] ; 2 uses
  %i.pn = add i64 %.09.i.i.i96.ph, -1
  %xtraiter421 = and i64 %.09.i.i.i96.ph, 7       ; 2 uses
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %.lr.ph.i.i.i95.prol.loopexit, label %.lr.ph.i.i.i95.prol

.lr.ph.i.i.i95.prol:                              ; preds = %.lr.ph.i.i.i95.preheader372, %.lr.ph.i.i.i95.prol
  %.09.i.i.i96.prol = phi i64 [ %i.po, %.lr.ph.i.i.i95.prol ], [ %.09.i.i.i96.ph, %.lr.ph.i.i.i95.preheader372 ]
  %.048.i.i.i97.prol = phi ptr [ %i.pr, %.lr.ph.i.i.i95.prol ], [ %.048.i.i.i97.ph, %.lr.ph.i.i.i95.preheader372 ] ; 2 uses
  %.sroa.0.07.i.i.i98.prol = phi ptr [ %i.pq, %.lr.ph.i.i.i95.prol ], [ %.sroa.0.07.i.i.i98.ph, %.lr.ph.i.i.i95.preheader372 ] ; 2 uses
  %prol.iter423 = phi i64 [ %prol.iter423.next, %.lr.ph.i.i.i95.prol ], [ 0, %.lr.ph.i.i.i95.preheader372 ]
  %i.po = add i64 %.09.i.i.i96.prol, -1           ; 2 uses
  %i.pp = load i32, ptr %.sroa.0.07.i.i.i98.prol, align 4, !tbaa !455
  store i32 %i.pp, ptr %.048.i.i.i97.prol, align 4, !tbaa !455
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98.prol, i64 4 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.048.i.i.i97.prol, i64 4 ; 2 uses
  %prol.iter423.next = add i64 %prol.iter423, 1   ; 2 uses
  %prol.iter423.cmp.not = icmp eq i64 %prol.iter423.next, %xtraiter421
  br i1 %prol.iter423.cmp.not, label %.lr.ph.i.i.i95.prol.loopexit, label %.lr.ph.i.i.i95.prol, !llvm.loop !9936

.lr.ph.i.i.i95.prol.loopexit:                     ; preds = %.lr.ph.i.i.i95.prol, %.lr.ph.i.i.i95.preheader372
  %.lcssa373.unr = phi ptr [ poison, %.lr.ph.i.i.i95.preheader372 ], [ %i.pq, %.lr.ph.i.i.i95.prol ]
  %.09.i.i.i96.unr = phi i64 [ %.09.i.i.i96.ph, %.lr.ph.i.i.i95.preheader372 ], [ %i.po, %.lr.ph.i.i.i95.prol ]
  %.048.i.i.i97.unr = phi ptr [ %.048.i.i.i97.ph, %.lr.ph.i.i.i95.preheader372 ], [ %i.pr, %.lr.ph.i.i.i95.prol ]
  %.sroa.0.07.i.i.i98.unr = phi ptr [ %.sroa.0.07.i.i.i98.ph, %.lr.ph.i.i.i95.preheader372 ], [ %i.pq, %.lr.ph.i.i.i95.prol ]
  %i.ps = icmp ult i64 %i.pn, 7
  br i1 %i.ps, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100, label %.lr.ph.i.i.i95

.lr.ph.i.i.i95:                                   ; preds = %.lr.ph.i.i.i95.prol.loopexit, %.lr.ph.i.i.i95
  %.09.i.i.i96 = phi i64 [ %i.qo, %.lr.ph.i.i.i95 ], [ %.09.i.i.i96.unr, %.lr.ph.i.i.i95.prol.loopexit ]
  %.048.i.i.i97 = phi ptr [ %i.qr, %.lr.ph.i.i.i95 ], [ %.048.i.i.i97.unr, %.lr.ph.i.i.i95.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i98 = phi ptr [ %i.qq, %.lr.ph.i.i.i95 ], [ %.sroa.0.07.i.i.i98.unr, %.lr.ph.i.i.i95.prol.loopexit ] ; 9 uses
  %i.pt = load i32, ptr %.sroa.0.07.i.i.i98, align 4, !tbaa !455
  store i32 %i.pt, ptr %.048.i.i.i97, align 4, !tbaa !455
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 4
  %i.pw = load i32, ptr %i.pu, align 4, !tbaa !455
  store i32 %i.pw, ptr %i.pv, align 4, !tbaa !455
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 8
  %i.pz = load i32, ptr %i.px, align 4, !tbaa !455
  store i32 %i.pz, ptr %i.py, align 4, !tbaa !455
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 12
  %i.qb = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 12
  %i.qc = load i32, ptr %i.qa, align 4, !tbaa !455
  store i32 %i.qc, ptr %i.qb, align 4, !tbaa !455
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 16
  %i.qe = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 16
  %i.qf = load i32, ptr %i.qd, align 4, !tbaa !455
  store i32 %i.qf, ptr %i.qe, align 4, !tbaa !455
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 20
  %i.qh = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 20
  %i.qi = load i32, ptr %i.qg, align 4, !tbaa !455
  store i32 %i.qi, ptr %i.qh, align 4, !tbaa !455
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 24
  %i.qk = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 24
  %i.ql = load i32, ptr %i.qj, align 4, !tbaa !455
  store i32 %i.ql, ptr %i.qk, align 4, !tbaa !455
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 28
  %i.qn = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 28
  %i.qo = add i64 %.09.i.i.i96, -8                ; 2 uses
  %i.qp = load i32, ptr %i.qm, align 4, !tbaa !455
  store i32 %i.qp, ptr %i.qn, align 4, !tbaa !455
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i98, i64 32 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.048.i.i.i97, i64 32
  %.not.i.i.i99.7 = icmp eq i64 %i.qo, 0
  br i1 %.not.i.i.i99.7, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100, label %.lr.ph.i.i.i95, !llvm.loop !9937

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100: ; preds = %.lr.ph.i.i.i95.prol.loopexit, %.lr.ph.i.i.i95, %middle.block341, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit
  %.promoted.i101 = phi ptr [ %4, %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSA_.exit ], [ %i.pi, %middle.block341 ], [ %.lcssa373.unr, %.lr.ph.i.i.i95.prol.loopexit ], [ %i.qq, %.lr.ph.i.i.i95 ] ; 2 uses
  br i1 %.not2745.i77, label %_ZN5boost9container10deque_implINS0_4test12copyable_intESaIS3_ELb1ENS0_9deque_optILm0ELm0EvLb0EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISC_Lb0ELj0ELj0EmEEmRT_.exit114, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i112
  %.lcssa37.i104 = phi ptr [ %.lcssa289, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i112 ], [ %.promoted.i101, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100 ] ; 4 uses
  %.036.i105 = phi ptr [ %i.qs, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i112 ], [ %.sroa.6.1.i58, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100 ]
  %.02135.i106 = phi i64 [ %i.sk, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i112 ], [ %i.nm, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit.i100 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.036.i105, i64 8 ; 2 uses
  %i.qt = tail call i64 @llvm.umin.i64(i64 %.02135.i106, i64 256) ; 5 uses
  %i.qu = load ptr, ptr %i.qs, align 8, !tbaa !458 ; 4 uses
  %min.iters.check350 = icmp ult i64 %.02135.i106, 8
  %i.qv = ptrtoaddr ptr %i.qu to i64
  %.lcssa37.i104347 = ptrtoaddr ptr %.lcssa37.i104 to i64
  %i.qw = sub i64 %.lcssa37.i104347, %i.qv
  %diff.check348 = icmp ugt i64 %i.qw, -32
  %or.cond369 = select i1 %min.iters.check350, i1 true, i1 %diff.check348
  br i1 %or.cond369, label %.lr.ph.i.i26.i107.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %.lr.ph.i103
  %n.vec352 = and i64 %i.qt, 504                  ; 3 uses
  %i.qx = and i64 %i.qt, 7
  %i.qy = shl nuw nsw i64 %n.vec352, 2            ; 2 uses
  %i.qz = getelementptr i8, ptr %i.qu, i64 %i.qy
  %i.ra = getelementptr i8, ptr %.lcssa37.i104, i64 %i.qy ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.rb = shl i64 %index354, 2                    ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.qu, i64 %i.rb ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.lcssa37.i104, i64 %i.rb ; 2 uses
  %i.rc = getelementptr i8, ptr %next.gep356, i64 16
  %wide.load357 = load <4 x i32>, ptr %next.gep356, align 4, !tbaa !455
  %wide.load358 = load <4 x i32>, ptr %i.rc, align 4, !tbaa !455
  %i.rd = getelementptr i8, ptr %next.gep355, i64 16
  store <4 x i32> %wide.load357, ptr %next.gep355, align 4, !tbaa !455
  store <4 x i32> %wide.load358, ptr %i.rd, align 4, !tbaa !455
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.re = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.re, label %middle.block360, label %vector.body353, !llvm.loop !9938

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.qt, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i112, label %.lr.ph.i.i26.i107.preheader

.lr.ph.i.i26.i107.preheader:                      ; preds = %.lr.ph.i103, %middle.block360
  %.09.i.i27.i108.ph = phi i64 [ %i.qt, %.lr.ph.i103 ], [ %i.qx, %middle.block360 ] ; 4 uses
  %.048.i.i28.i109.ph = phi ptr [ %i.qu, %.lr.ph.i103 ], [ %i.qz, %middle.block360 ] ; 2 uses
  %.sroa.0.07.i.i29.i110.ph = phi ptr [ %.lcssa37.i104, %.lr.ph.i103 ], [ %i.ra, %middle.block360 ] ; 2 uses
  %i.rf = add nsw i64 %.09.i.i27.i108.ph, -1
  %xtraiter424 = and i64 %.09.i.i27.i108.ph, 7    ; 2 uses
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph.i.i26.i107.prol.loopexit, label %.lr.ph.i.i26.i107.prol

.lr.ph.i.i26.i107.prol:                           ; preds = %.lr.ph.i.i26.i107.preheader, %.lr.ph.i.i26.i107.prol
  %.09.i.i27.i108.prol = phi i64 [ %i.rg, %.lr.ph.i.i26.i107.prol ], [ %.09.i.i27.i108.ph, %.lr.ph.i.i26.i107.preheader ]
  %.048.i.i28.i109.prol = phi ptr [ %i.rj, %.lr.ph.i.i26.i107.prol ], [ %.048.i.i28.i109.ph, %.lr.ph.i.i26.i107.preheader ] ; 2 uses
  %.sroa.0.07.i.i29.i110.prol = phi ptr [ %i.ri, %.lr.ph.i.i26.i107.prol ], [ %.sroa.0.07.i.i29.i110.ph, %.lr.ph.i.i26.i107.preheader ] ; 2 uses
  %prol.iter426 = phi i64 [ %prol.iter426.next, %.lr.ph.i.i26.i107.prol ], [ 0, %.lr.ph.i.i26.i107.preheader ]
  %i.rg = add i64 %.09.i.i27.i108.prol, -1        ; 2 uses
  %i.rh = load i32, ptr %.sroa.0.07.i.i29.i110.prol, align 4, !tbaa !455
  store i32 %i.rh, ptr %.048.i.i28.i109.prol, align 4, !tbaa !455
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i110.prol, i64 4 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.048.i.i28.i109.prol, i64 4 ; 2 uses
  %prol.iter426.next = add i64 %prol.iter426, 1   ; 2 uses
  %prol.iter426.cmp.not = icmp eq i64 %prol.iter426.next, %xtraiter424
  br i1 %prol.iter426.cmp.not, label %.lr.ph.i.i26.i107.prol.loopexit, label %.lr.ph.i.i26.i107.prol, !llvm.loop !9939

.lr.ph.i.i26.i107.prol.loopexit:                  ; preds = %.lr.ph.i.i26.i107.prol, %.lr.ph.i.i26.i107.preheader
  %.lcssa371.unr = phi ptr [ poison, %.lr.ph.i.i26.i107.preheader ], [ %i.ri, %.lr.ph.i.i26.i107.prol ]
  %.09.i.i27.i108.unr = phi i64 [ %.09.i.i27.i108.ph, %.lr.ph.i.i26.i107.preheader ], [ %i.rg, %.lr.ph.i.i26.i107.prol ]
  %.048.i.i28.i109.unr = phi ptr [ %.048.i.i28.i109.ph, %.lr.ph.i.i26.i107.preheader ], [ %i.rj, %.lr.ph.i.i26.i107.prol ]
  %.sroa.0.07.i.i29.i110.unr = phi ptr [ %.sroa.0.07.i.i29.i110.ph, %.lr.ph.i.i26.i107.preheader ], [ %i.ri, %.lr.ph.i.i26.i107.prol ]
  %i.rk = icmp ult i64 %i.rf, 7
  br i1 %i.rk, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE17copy_n_and_updateIS7_EEvRS5_T_m.exit32.i112, label %.lr.ph.i.i26.i107

.lr.ph.i.i26.i107:                                ; preds = %.lr.ph.i.i26.i107.prol.loopexit, %.lr.ph.i.i26.i107
  %.09.i.i27.i108 = phi i64 [ %i.sg, %.lr.ph.i.i26.i107 ], [ %.09.i.i27.i108.unr, %.lr.ph.i.i26.i107.prol.loopexit ]
  %.048.i.i28.i109 = phi ptr [ %i.sj, %.lr.ph.i.i26.i107 ], [ %.048.i.i28.i109.unr, %.lr.ph.i.i26.i107.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i110 = phi ptr [ %i.si, %.lr.ph.i.i26.i107 ], [ %.sroa.0.07.i.i29.i110.unr, %.lr.ph.i.i26.i107.prol.loopexit ] ; 9 uses
  %i.rl = load i32, ptr %.sroa.0.07.i.i29.i110, align 4, !tbaa !455
  store i32 %i.rl, ptr %.048.i.i28.i109, align 4, !tbaa !455
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i110, i64 4
  %i.rn = getelementptr inbounds nuw i8, ptr %.048.i.i28.i109, i64 4
  %i.ro = load i32, ptr %i.rm, align 4, !tbaa !455
  store i32 %i.ro, ptr %i.rn, align 4, !tbaa !455
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i110, i64 8
  %i.rq = getelementptr inbounds nuw i8, ptr %.048.i.i28.i109, i64 8
  %i.rr = load i32, ptr %i.rp, align 4, !tbaa !455
  store i32 %i.rr, ptr %i.rq, align 4, !tbaa !455
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i110, i64 12
  %i.rt = getelementptr inbounds nuw i8, ptr %.048.i.i28.i109, i64 12
  %i.ru = load i32, ptr %i.rs, align 4, !tbaa !455
  store i32 %i.ru, ptr %i.rt, align 4, !tbaa !455
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i110, i64 16
  %i.rw = getelementptr inbounds nuw i8, ptr %.048.i.i28.i109, i64 16
  %i.rx = load i32, ptr %i.rv, align 4, !tbaa !455
end_hunk_5
begin_hunk_6_@_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE25priv_insert_back_aux_implINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_:bb.a
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEESB_mb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !628, !noalias !16090
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !624, !noalias !16091 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit
  %i.n = lshr i64 %i.l, 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !458, !noalias !16091
  %i.q = and i64 %i.l, 255
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  br label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit

_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %i.s = phi ptr [ %i.r, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 4 uses
  %.sink = phi ptr [ %i.o, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !531
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.t, align 8, !tbaa !532
  %.not.i.i4 = icmp eq i64 %2, 0
  br i1 %.not.i.i4, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !365

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit
  %i.u = load ptr, ptr %.sink, align 8, !tbaa !458
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 2
  %i.z = sub nsw i64 256, %i.y
  %i.aa = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.z) ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %i.x, 1024
  br i1 %.not15.i.i.i.i, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.ab = add i64 %i.aa, -1
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.prol ], [ %i.s, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.ac = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !455
  store i32 %i.ac, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !455
  %i.ad = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ah = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !16088

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa14.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ab, 3
  br i1 %i.ai, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.aj = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !455
  store i32 %i.aj, ptr %.01417.i.i.i.i, align 4, !tbaa !455
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363 ; 4 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !455
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !455
  %i.ap = add i32 %i.ak, 2
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !455
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !455
  %i.at = add i32 %i.ak, 3
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !455
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !455
  %i.ax = add i32 %i.ak, 4
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ba = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.3, label %.loopexit38.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !306

.loopexit38.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %.promoted.i.i = phi ptr [ %3, %bb.e ], [ %.lcssa14.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %i.bb = sub i64 %2, %i.aa                       ; 2 uses
  %.not2840.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not2840.i.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit38.i.i, %.unr-lcssa
  %.lcssa43.i.i = phi ptr [ %.lcssa, %.unr-lcssa ], [ %.promoted.i.i, %.loopexit38.i.i ] ; 2 uses
  %.042.i.i = phi ptr [ %i.bc, %.unr-lcssa ], [ %.sink, %.loopexit38.i.i ]
  %.02641.i.i = phi i64 [ %i.ce, %.unr-lcssa ], [ %i.bb, %.loopexit38.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 8 ; 2 uses
  %i.bd = tail call i64 @llvm.umin.i64(i64 %.02641.i.i, i64 256) ; 4 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !458 ; 2 uses
  %xtraiter15 = and i64 %i.bd, 3                  ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol

.lr.ph.i.i31.i.i.prol:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i31.i.i.prol
  %.018.i.i32.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i31.i.i.prol ], [ %i.bd, %.lr.ph.i.i ]
  %.01417.i.i33.i.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i31.i.i.prol ], [ %i.be, %.lr.ph.i.i ] ; 3 uses
  %.sroa.0.016.i.i34.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i31.i.i.prol ], [ %.lcssa43.i.i, %.lr.ph.i.i ] ; 2 uses
  %prol.iter17 = phi i64 [ %prol.iter17.next, %.lr.ph.i.i31.i.i.prol ], [ 0, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i.prol) ]
  %i.bf = load i32, ptr %.sroa.0.016.i.i34.i.i.prol, align 4, !tbaa !455
  store i32 %i.bf, ptr %.01417.i.i33.i.i.prol, align 4, !tbaa !455
  %i.bg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 4 ; 2 uses
  %i.bk = add i64 %.018.i.i32.i.i.prol, -1        ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol, !llvm.loop !16089

.lr.ph.i.i31.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i31.i.i.prol, %.lr.ph.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.i31.i.i.prol ]
  %.018.i.i32.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %i.bk, %.lr.ph.i.i31.i.i.prol ]
  %.01417.i.i33.i.i.unr = phi ptr [ %i.be, %.lr.ph.i.i ], [ %i.bj, %.lr.ph.i.i31.i.i.prol ]
  %.sroa.0.016.i.i34.i.i.unr = phi ptr [ %.lcssa43.i.i, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.i31.i.i.prol ]
  %i.bl = icmp ult i64 %.02641.i.i, 4
  br i1 %i.bl, label %.unr-lcssa, label %.lr.ph.i.i31.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %.lr.ph.i.i31.i.i.prol.loopexit, %.lr.ph.i.i31.i.i
  %.018.i.i32.i.i = phi i64 [ %i.cd, %.lr.ph.i.i31.i.i ], [ %.018.i.i32.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ]
  %.01417.i.i33.i.i = phi ptr [ %i.cc, %.lr.ph.i.i31.i.i ], [ %.01417.i.i33.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i34.i.i = phi ptr [ %i.cb, %.lr.ph.i.i31.i.i ], [ %.sroa.0.016.i.i34.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i) ]
  %i.bm = load i32, ptr %.sroa.0.016.i.i34.i.i, align 4, !tbaa !455
  store i32 %i.bm, ptr %.01417.i.i33.i.i, align 4, !tbaa !455
  %i.bn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363 ; 4 uses
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !455
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !455
  %i.bs = add i32 %i.bn, 2
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 8
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !455
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !455
  %i.bw = add i32 %i.bn, 3
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 12
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !455
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !455
  %i.ca = add i32 %i.bn, 4
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 16
  %i.cd = add i64 %.018.i.i32.i.i, -4             ; 2 uses
  %.not.i.i35.i.i.3 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i35.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i31.i.i, !llvm.loop !306

.unr-lcssa:                                       ; preds = %.lr.ph.i.i31.i.i, %.lr.ph.i.i31.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i31.i.i.prol.loopexit ], [ %i.cb, %.lr.ph.i.i31.i.i ]
  %i.ce = sub nuw i64 %.02641.i.i, %i.bd          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not28.i.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !307

_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmT_.exit: ; preds = %.unr-lcssa, %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit, %.loopexit38.i.i
  %i.cf = add i64 %i.l, %2
  store i64 %i.cf, ptr %i.f, align 8, !tbaa !628
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.90") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %4 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !628  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !646
  %i.e = shl i64 %i.d, 8
  %i.f = load ptr, ptr %1, align 8, !tbaa !624
  %i.g = icmp ne ptr %i.f, null                   ; 2 uses
  %.neg.i.i = sext i1 %i.g to i64
  %i.h = sub i64 %i.e, %i.b
  %i.i = add i64 %i.h, %.neg.i.i                  ; 2 uses
  %i.j = icmp ugt i64 %3, %i.i
  br i1 %i.j, label %bb.b, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i64 %3, %i.i
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEESB_mb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !628, !noalias !16129
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
  br label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !624, !noalias !16130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit
  %i.n = lshr i64 %i.l, 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !458, !noalias !16130
  %i.q = and i64 %i.l, 255
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  br label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit

_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %i.s = phi ptr [ %i.r, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 18 uses
  %i.t = phi ptr [ %i.o, %.split.i.i ], [ null, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE29priv_reserve_elements_at_backEm.exit ] ; 22 uses
  %i.u = sub i64 %i.b, %2                         ; 8 uses
  %.not = icmp ult i64 %i.u, %3
  br i1 %.not, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb1EE11prot_finishEv.exit
  store ptr %i.s, ptr %0, align 8, !tbaa !531
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !532
  %i.w = sub nsw i64 0, %3
  %.not.i.i36 = icmp eq i64 %3, 0                 ; 2 uses
  %.pre207 = load ptr, ptr %i.t, align 8, !tbaa !458 ; 9 uses
  %.pre218 = ptrtoint ptr %i.s to i64
  %.pre219 = ptrtoint ptr %.pre207 to i64
  %.pre221 = sub i64 %.pre218, %.pre219
  %.pre223 = ashr exact i64 %.pre221, 2           ; 2 uses
  br i1 %.not.i.i36, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_NS_11move_detail5bool_ILb0EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = sub nsw i64 %.pre223, %3                 ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.x, 256
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.x, 0
  %i.aa = lshr i64 %i.x, 8                        ; 2 uses
  %i.ab = or disjoint i64 %i.aa, -72057594037927936
  %i.ac = select i1 %i.z, i64 %i.aa, i64 %i.ab    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ac ; 3 uses
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !532
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !458
  %i.af = shl nsw i64 %i.ac, 8
  %i.ag = sub nsw i64 %i.x, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.t, %bb.g ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.ah, %bb.h ], [ %i.y, %bb.g ] ; 7 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !531
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !458
  %i.ak = ptrtoint ptr %storemerge.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 2                 ; 3 uses
  %i.ao = sub nsw i64 256, %i.an
  %i.ap = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.ao) ; 5 uses
  %.not12.i.i = icmp eq i64 %i.am, 1024
  br i1 %.not12.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aq = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ar = load i32, ptr %storemerge.i.i, align 4, !tbaa !455, !noalias !16131
  store i32 %i.ar, ptr %i.s, align 4, !tbaa !455, !noalias !16131
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16131
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16131
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre207, i64 1024
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %.lr.ph.i.i.prol.loopexit, !prof !365

bb.j:                                             ; preds = %.lr.ph.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !458, !noalias !16131 ; 4 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.j, %.lr.ph.i.i.preheader
  %.lcssa383.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.pre207, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.lcssa382.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ], [ %i.ay, %bb.j ]
  %.lcssa381.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.unr = phi ptr [ %.pre207, %.lr.ph.i.i.preheader ], [ %.pre207, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.unr384 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ], [ %i.ay, %bb.j ]
  %.unr385 = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ], [ %i.az, %bb.j ]
  %.014.i.i.unr = phi ptr [ %storemerge.i.i, %.lr.ph.i.i.preheader ], [ %i.au, %bb.j ], [ %i.au, %.lr.ph.i.i.prol ]
  %.0813.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i.preheader ], [ %i.aq, %bb.j ], [ %i.aq, %.lr.ph.i.i.prol ]
  %i.ba = icmp eq i64 %i.ap, 1
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1
  %i.bb = phi ptr [ %i.ca, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bc = phi ptr [ %i.cb, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr384, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bd = phi ptr [ %i.cc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr385, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.014.i.i = phi ptr [ %i.bu, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.0813.i.i = phi i64 [ %i.bq, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.0813.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.be = load i32, ptr %.014.i.i, align 4, !tbaa !455, !noalias !16131
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !455, !noalias !16131
  %i.bf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16131
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16131
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1024
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i, !prof !365

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !458, !noalias !16131 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i
  %i.bn = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bo = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bp = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bq = add i64 %.0813.i.i, -2                  ; 2 uses
  %i.br = load i32, ptr %i.bh, align 4, !tbaa !455, !noalias !16131
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !455, !noalias !16131
  %i.bs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16131
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16131
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 1024
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.l, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1, !prof !365

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !458, !noalias !16131 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1: ; preds = %bb.l, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i
  %i.ca = phi ptr [ %i.bn, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bz, %bb.l ] ; 2 uses
  %i.cb = phi ptr [ %i.bo, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.by, %bb.l ] ; 2 uses
  %i.cc = phi ptr [ %i.bv, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bz, %bb.l ] ; 2 uses
  %.not.i.i37.1 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i37.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, label %.lr.ph.i.i, !llvm.loop !303

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1, %bb.i
  %.pre54.i206 = phi ptr [ %.pre207, %bb.i ], [ %.lcssa383.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.ca, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %.promoted49.i = phi ptr [ %i.t, %bb.i ], [ %.lcssa382.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.cb, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %.promoted.i = phi ptr [ %i.s, %bb.i ], [ %.lcssa381.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.cc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.1 ]
  %i.cd = sub i64 %3, %i.ap                       ; 2 uses
  %.not2745.i = icmp eq i64 %i.cd, 0
  br i1 %.not2745.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_NS_11move_detail5bool_ILb0EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i
  %.pre54.i = phi ptr [ %.pre54.i203.lcssa, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %.pre54.i206, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 4 uses
  %.lcssa4250.i = phi ptr [ %.lcssa380, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %.promoted49.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 4 uses
  %.lcssa48.i = phi ptr [ %.lcssa379, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %.promoted.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 3 uses
  %.02447.i = phi ptr [ %i.ce, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %i.ai, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ]
  %.02546.i = phi i64 [ %i.du, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i ], [ %i.cd, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02447.i, i64 8 ; 2 uses
  %i.cf = tail call i64 @llvm.umin.i64(i64 %.02546.i, i64 256) ; 4 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !458 ; 3 uses
  %xtraiter386 = and i64 %i.cf, 1
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
end_hunk_6
begin_hunk_7_@_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmmT_:bb.a
  %storemerge.i.i.i = phi ptr [ %i.es, %bb.s ], [ %i.er, %bb.r ] ; 3 uses
  %i.ev = load i32, ptr %i.en, align 4, !tbaa !455, !noalias !16133
  store i32 %i.ev, ptr %storemerge.i.i.i, align 4, !tbaa !455, !noalias !16133
  %i.ew = add i64 %.035.i.i, -2                   ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.06.i.i, i64 -8 ; 2 uses
  %i.ey = icmp eq ptr %storemerge.i.i.i, %i.et
  br i1 %i.ey, label %bb.u, label %bb.t, !prof !365

bb.t:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.ez = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1

bb.u:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.fa = getelementptr inbounds i8, ptr %i.eu, i64 -8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !458, !noalias !16133 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1: ; preds = %bb.u, %bb.t
  %i.fd = phi ptr [ %i.et, %bb.t ], [ %i.fb, %bb.u ]
  %i.fe = phi ptr [ %i.eu, %bb.t ], [ %i.fa, %bb.u ] ; 2 uses
  %storemerge.i.i.i.1 = phi ptr [ %i.ez, %bb.t ], [ %i.fc, %bb.u ] ; 3 uses
  %i.ff = load i32, ptr %i.ex, align 4, !tbaa !455, !noalias !16133
  store i32 %i.ff, ptr %storemerge.i.i.i.1, align 4, !tbaa !455, !noalias !16133
  %.not.i.i43.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i43.1, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i.i42, !llvm.loop !83

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i.i42.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_NS_11move_detail5bool_ILb0EEE.exit
  %.promoted40.i = phi ptr [ %i.t, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_NS_11move_detail5bool_ILb0EEE.exit ], [ %.lcssa378.unr.a, %.lr.ph.i.i42.prol.loopexit ], [ %i.fe, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1 ] ; 2 uses
  %.promoted.i44 = phi ptr [ %i.s, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_NS_11move_detail5bool_ILb0EEE.exit ], [ %storemerge.i.i.i.lcssa.unr, %.lr.ph.i.i42.prol.loopexit ], [ %storemerge.i.i.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i.i.1 ]
  %i.fg = sub nuw i64 %i.dy, %i.dz                ; 2 uses
  %.not36.i = icmp eq i64 %i.fg, 0
  br i1 %.not36.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %.pre43.i.pre = load ptr, ptr %.promoted40.i, align 8, !tbaa !458, !noalias !16134
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i
  %.pre43.i = phi ptr [ %.pre43.i209.lcssa, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.pre43.i.pre, %.lr.ph.i45.preheader ] ; 3 uses
  %.lcssa41.i = phi ptr [ %.lcssa377, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.promoted40.i, %.lr.ph.i45.preheader ] ; 3 uses
  %storemerge.i.i27.lcssa39.i = phi ptr [ %storemerge.i.i27.i.lcssa, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %.promoted.i44, %.lr.ph.i45.preheader ] ; 3 uses
  %.038.i = phi ptr [ %i.fh, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %i.dv, %.lr.ph.i45.preheader ]
  %.01737.i = phi i64 [ %i.gr, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i ], [ %i.fg, %.lr.ph.i45.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %.038.i, i64 -8 ; 2 uses
  %i.fi = tail call i64 @llvm.umin.i64(i64 %.01737.i, i64 256) ; 4 uses
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !458, !noalias !16135 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1024
  %xtraiter395 = and i64 %i.fi, 1
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol

.lr.ph.i22.i.prol:                                ; preds = %.lr.ph.i45
  %i.fl = add nsw i64 %i.fi, -1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1020 ; 2 uses
  %i.fn = icmp eq ptr %storemerge.i.i27.lcssa39.i, %.pre43.i
  br i1 %i.fn, label %bb.w, label %bb.v, !prof !365

bb.v:                                             ; preds = %.lr.ph.i22.i.prol
  %i.fo = getelementptr inbounds i8, ptr %storemerge.i.i27.lcssa39.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

bb.w:                                             ; preds = %.lr.ph.i22.i.prol
  %i.fp = getelementptr inbounds i8, ptr %.lcssa41.i, i64 -8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !458, !noalias !16134 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol: ; preds = %bb.w, %bb.v
  %i.fs = phi ptr [ %.pre43.i, %bb.v ], [ %i.fq, %bb.w ] ; 2 uses
  %i.ft = phi ptr [ %.lcssa41.i, %bb.v ], [ %i.fp, %bb.w ] ; 2 uses
  %storemerge.i.i27.i.prol = phi ptr [ %i.fo, %bb.v ], [ %i.fr, %bb.w ] ; 3 uses
  %i.fu = load i32, ptr %i.fm, align 4, !tbaa !455, !noalias !16134
  store i32 %i.fu, ptr %storemerge.i.i27.i.prol, align 4, !tbaa !455, !noalias !16134
  br label %.lr.ph.i22.i.prol.loopexit

.lr.ph.i22.i.prol.loopexit:                       ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol, %.lr.ph.i45
  %.pre43.i209.lcssa.unr = phi ptr [ poison, %.lr.ph.i45 ], [ %i.fs, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.lcssa377.unr.a = phi ptr [ poison, %.lr.ph.i45 ], [ %i.ft, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i.i27.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i45 ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.unr397 = phi ptr [ %.pre43.i, %.lr.ph.i45 ], [ %i.fs, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ] ; 2 uses
  %.unr398 = phi ptr [ %.lcssa41.i, %.lr.ph.i45 ], [ %i.ft, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i7.i23.i.unr = phi ptr [ %storemerge.i.i27.lcssa39.i, %.lr.ph.i45 ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.06.i24.i.unr = phi ptr [ %i.fk, %.lr.ph.i45 ], [ %i.fm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.035.i25.i.unr = phi i64 [ %i.fi, %.lr.ph.i45 ], [ %i.fl, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %i.fv = icmp eq i64 %.01737.i, 1
  br i1 %i.fv, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1
  %.pre43.i210 = phi ptr [ %.pre43.i209.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr397, %.lr.ph.i22.i.prol.loopexit ]
  %i.fw = phi ptr [ %i.go, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr397, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %i.fx = phi ptr [ %i.gp, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr398, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %storemerge.i7.i23.i = phi ptr [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %storemerge.i7.i23.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.06.i24.i = phi ptr [ %i.gi, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.06.i24.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.035.i25.i = phi i64 [ %i.gh, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.035.i25.i.unr, %.lr.ph.i22.i.prol.loopexit ]
  %i.fy = getelementptr inbounds i8, ptr %.06.i24.i, i64 -4
  %i.fz = icmp eq ptr %storemerge.i7.i23.i, %i.fw
  br i1 %i.fz, label %bb.x, label %bb.y, !prof !365

bb.x:                                             ; preds = %.lr.ph.i22.i
  %i.ga = getelementptr inbounds i8, ptr %i.fx, i64 -8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !458, !noalias !16134 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i

bb.y:                                             ; preds = %.lr.ph.i22.i
  %i.gd = getelementptr inbounds i8, ptr %storemerge.i7.i23.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i: ; preds = %bb.y, %bb.x
  %.pre43.i209 = phi ptr [ %.pre43.i210, %bb.y ], [ %i.gb, %bb.x ]
  %i.ge = phi ptr [ %i.fw, %bb.y ], [ %i.gb, %bb.x ] ; 2 uses
  %i.gf = phi ptr [ %i.fx, %bb.y ], [ %i.ga, %bb.x ] ; 2 uses
  %storemerge.i.i27.i = phi ptr [ %i.gd, %bb.y ], [ %i.gc, %bb.x ] ; 3 uses
  %i.gg = load i32, ptr %i.fy, align 4, !tbaa !455, !noalias !16134
  store i32 %i.gg, ptr %storemerge.i.i27.i, align 4, !tbaa !455, !noalias !16134
  %i.gh = add nsw i64 %.035.i25.i, -2             ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.06.i24.i, i64 -8 ; 2 uses
  %i.gj = icmp eq ptr %storemerge.i.i27.i, %i.ge
  br i1 %i.gj, label %bb.aa, label %bb.z, !prof !365

bb.z:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.gk = getelementptr inbounds i8, ptr %storemerge.i.i27.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1

bb.aa:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.gl = getelementptr inbounds i8, ptr %i.gf, i64 -8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !458, !noalias !16134 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1: ; preds = %bb.aa, %bb.z
  %.pre43.i209.1 = phi ptr [ %.pre43.i209, %bb.z ], [ %i.gm, %bb.aa ] ; 2 uses
  %i.go = phi ptr [ %i.ge, %bb.z ], [ %i.gm, %bb.aa ]
  %i.gp = phi ptr [ %i.gf, %bb.z ], [ %i.gl, %bb.aa ] ; 2 uses
  %storemerge.i.i27.i.1 = phi ptr [ %i.gk, %bb.z ], [ %i.gn, %bb.aa ] ; 3 uses
  %i.gq = load i32, ptr %i.gi, align 4, !tbaa !455, !noalias !16134
  store i32 %i.gq, ptr %storemerge.i.i27.i.1, align 4, !tbaa !455, !noalias !16134
  %.not.i28.i.1 = icmp eq i64 %i.gh, 0
  br i1 %.not.i28.i.1, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i, !llvm.loop !83

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1, %.lr.ph.i22.i.prol.loopexit
  %.pre43.i209.lcssa = phi ptr [ %.pre43.i209.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %.pre43.i209.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %.lcssa377 = phi ptr [ %.lcssa377.unr.a, %.lr.ph.i22.i.prol.loopexit ], [ %i.gp, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %storemerge.i.i27.i.lcssa = phi ptr [ %storemerge.i.i27.i.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %i.gr = sub nuw i64 %.01737.i, %i.fi            ; 2 uses
  %.not.i46 = icmp eq i64 %i.gr, 0
  br i1 %.not.i46, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit, label %.lr.ph.i45, !llvm.loop !305

_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.gs = sub nsw i64 0, %i.dy
  %.not.i.i47 = icmp eq i64 %i.u, %3
  br i1 %.not.i.i47, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit
  %i.gt = sub nsw i64 %.pre-phi224, %i.dy         ; 4 uses
  %or.cond.i.i48 = icmp ult i64 %i.gt, 256
  br i1 %or.cond.i.i48, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.gs
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.gv = icmp sgt i64 %i.gt, 0
  %i.gw = lshr i64 %i.gt, 8                       ; 2 uses
  %i.gx = or disjoint i64 %i.gw, -72057594037927936
  %i.gy = select i1 %i.gv, i64 %i.gw, i64 %i.gx   ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.gy ; 3 uses
  store ptr %i.gz, ptr %i.v, align 8, !tbaa !532
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !458
  %i.hb = shl nsw i64 %i.gy, 8
  %i.hc = sub nsw i64 %i.gt, %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hc
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.he = phi ptr [ %i.gz, %bb.ad ], [ %i.dv, %bb.ac ]
  %storemerge.i.i49 = phi ptr [ %i.hd, %bb.ad ], [ %i.gu, %bb.ac ] ; 2 uses
  store ptr %storemerge.i.i49, ptr %0, align 8, !tbaa !531
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50: ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit, %bb.ae
  %i.hf = phi ptr [ %i.dw, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit ], [ %storemerge.i.i49, %bb.ae ] ; 4 uses
  %i.hg = phi ptr [ %i.dv, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit ], [ %i.he, %bb.ae ] ; 2 uses
  br i1 %.not.i.i36, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmRT_.exit, label %bb.af, !prof !365

bb.af:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEmIEl.exit50
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !458
  %i.hi = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj                    ; 2 uses
  %i.hl = ashr exact i64 %i.hk, 2
  %i.hm = sub nsw i64 256, %i.hl
  %i.hn = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.hm) ; 6 uses
  %.not6.i.i.i = icmp eq i64 %i.hk, 1024
  br i1 %.not6.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.af
  %min.iters.check = icmp ult i64 %i.hn, 8
  %i.ho = sub i64 %5, %i.hi
  %diff.check = icmp ugt i64 %i.ho, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader375, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.hn, -8                      ; 3 uses
  %i.hp = and i64 %i.hn, 7
  %i.hq = shl i64 %n.vec, 2                       ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hf, i64 %i.hq
  %i.hs = getelementptr i8, ptr %4, i64 %i.hq     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ht = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hf, i64 %i.ht ; 2 uses
  %next.gep300 = getelementptr i8, ptr %4, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep300, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep300, align 4, !tbaa !455
  %wide.load301 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !455
  %i.hv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !455
  store <4 x i32> %wide.load301, ptr %i.hv, align 4, !tbaa !455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !16106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hn, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader375

.lr.ph.i.i.i.preheader375:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ %i.hn, %.lr.ph.i.i.i.preheader ], [ %i.hp, %middle.block ] ; 4 uses
  %.048.i.i.i.ph = phi ptr [ %i.hf, %.lr.ph.i.i.i.preheader ], [ %i.hr, %middle.block ] ; 2 uses
  %.sroa.0.07.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.preheader ], [ %i.hs, %middle.block ] ; 2 uses
  %i.hx = add i64 %.09.i.i.i.ph, -1
  %xtraiter399 = and i64 %.09.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader375, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.hy, %.lr.ph.i.i.i.prol ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ]
  %.048.i.i.i.prol = phi ptr [ %i.ib, %.lr.ph.i.i.i.prol ], [ %.048.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.ia, %.lr.ph.i.i.i.prol ], [ %.sroa.0.07.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader375 ]
  %i.hy = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.hz = load i32, ptr %.sroa.0.07.i.i.i.prol, align 4, !tbaa !455
  store i32 %i.hz, ptr %.048.i.i.i.prol, align 4, !tbaa !455
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 4 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter399
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !16107

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader375
  %.lcssa376.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.preheader375 ], [ %i.ia, %.lr.ph.i.i.i.prol ]
  %.09.i.i.i.unr = phi i64 [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ], [ %i.hy, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %.048.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ], [ %i.ib, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.ph, %.lr.ph.i.i.i.preheader375 ], [ %i.ia, %.lr.ph.i.i.i.prol ]
  %i.ic = icmp ult i64 %i.hx, 7
  br i1 %i.ic, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.iy, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.id = load i32, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !455
  store i32 %i.id, ptr %.048.i.i.i, align 4, !tbaa !455
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !455
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !455
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !455
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !455
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 12
  %i.il = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !455
  store i32 %i.im, ptr %i.il, align 4, !tbaa !455
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %i.ip = load i32, ptr %i.in, align 4, !tbaa !455
  store i32 %i.ip, ptr %i.io, align 4, !tbaa !455
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 20
  %i.ir = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 20
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !455
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !455
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 24
  %i.iu = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 24
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !455
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !455
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 28
  %i.ix = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 28
  %i.iy = add i64 %.09.i.i.i, -8                  ; 2 uses
  %i.iz = load i32, ptr %i.iw, align 4, !tbaa !455
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !455
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 32 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !16108

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.af
  %.promoted.i52 = phi ptr [ %4, %bb.af ], [ %i.hs, %middle.block ], [ %.lcssa376.unr.a, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ja, %.lr.ph.i.i.i ]
  %i.jc = sub i64 %3, %i.hn                       ; 2 uses
  %.not2334.i = icmp eq i64 %i.jc, 0
  br i1 %.not2334.i, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmRT_.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i
  %.lcssa37.i = phi ptr [ %.lcssa291, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i ], [ %.promoted.i52, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i ] ; 4 uses
  %.036.i = phi ptr [ %i.jd, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i ], [ %i.hg, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i ]
  %.02135.i = phi i64 [ %i.kv, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i ], [ %i.jc, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 2 uses
  %i.je = tail call i64 @llvm.umin.i64(i64 %.02135.i, i64 256) ; 5 uses
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !458 ; 4 uses
  %min.iters.check308 = icmp ult i64 %.02135.i, 8
  %i.jg = ptrtoaddr ptr %i.jf to i64
  %.lcssa37.i305 = ptrtoaddr ptr %.lcssa37.i to i64
  %i.jh = sub i64 %.lcssa37.i305, %i.jg
  %diff.check306 = icmp ugt i64 %i.jh, -32
  %or.cond361 = select i1 %min.iters.check308, i1 true, i1 %diff.check306
  br i1 %or.cond361, label %.lr.ph.i.i26.i.preheader, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph.i53
  %n.vec310 = and i64 %i.je, 504                  ; 3 uses
  %i.ji = and i64 %i.je, 7
  %i.jj = shl nuw nsw i64 %n.vec310, 2            ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jf, i64 %i.jj
  %i.jl = getelementptr i8, ptr %.lcssa37.i, i64 %i.jj ; 2 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next317, %vector.body311 ] ; 2 uses
  %i.jm = shl i64 %index312, 2                    ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.jf, i64 %i.jm ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.lcssa37.i, i64 %i.jm ; 2 uses
  %i.jn = getelementptr i8, ptr %next.gep314, i64 16
  %wide.load315 = load <4 x i32>, ptr %next.gep314, align 4, !tbaa !455
  %wide.load316 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !455
  %i.jo = getelementptr i8, ptr %next.gep313, i64 16
  store <4 x i32> %wide.load315, ptr %next.gep313, align 4, !tbaa !455
  store <4 x i32> %wide.load316, ptr %i.jo, align 4, !tbaa !455
  %index.next317 = add nuw i64 %index312, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next317, %n.vec310
  br i1 %i.jp, label %middle.block318, label %vector.body311, !llvm.loop !16109

middle.block318:                                  ; preds = %vector.body311
  %cmp.n319 = icmp eq i64 %i.je, %n.vec310
  br i1 %cmp.n319, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i, label %.lr.ph.i.i26.i.preheader

.lr.ph.i.i26.i.preheader:                         ; preds = %.lr.ph.i53, %middle.block318
  %.09.i.i27.i.ph = phi i64 [ %i.je, %.lr.ph.i53 ], [ %i.ji, %middle.block318 ] ; 4 uses
  %.048.i.i28.i.ph = phi ptr [ %i.jf, %.lr.ph.i53 ], [ %i.jk, %middle.block318 ] ; 2 uses
  %.sroa.0.07.i.i29.i.ph = phi ptr [ %.lcssa37.i, %.lr.ph.i53 ], [ %i.jl, %middle.block318 ] ; 2 uses
  %i.jq = add nsw i64 %.09.i.i27.i.ph, -1
  %xtraiter401 = and i64 %.09.i.i27.i.ph, 7       ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol

.lr.ph.i.i26.i.prol:                              ; preds = %.lr.ph.i.i26.i.preheader, %.lr.ph.i.i26.i.prol
  %.09.i.i27.i.prol = phi i64 [ %i.jr, %.lr.ph.i.i26.i.prol ], [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ]
  %.048.i.i28.i.prol = phi ptr [ %i.ju, %.lr.ph.i.i26.i.prol ], [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i29.i.prol = phi ptr [ %i.jt, %.lr.ph.i.i26.i.prol ], [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ] ; 2 uses
  %prol.iter403 = phi i64 [ %prol.iter403.next, %.lr.ph.i.i26.i.prol ], [ 0, %.lr.ph.i.i26.i.preheader ]
  %i.jr = add i64 %.09.i.i27.i.prol, -1           ; 2 uses
  %i.js = load i32, ptr %.sroa.0.07.i.i29.i.prol, align 4, !tbaa !455
  store i32 %i.js, ptr %.048.i.i28.i.prol, align 4, !tbaa !455
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i.prol, i64 4 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.048.i.i28.i.prol, i64 4 ; 2 uses
  %prol.iter403.next = add i64 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i64 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol, !llvm.loop !16110

.lr.ph.i.i26.i.prol.loopexit:                     ; preds = %.lr.ph.i.i26.i.prol, %.lr.ph.i.i26.i.preheader
  %.lcssa374.unr.a = phi ptr [ poison, %.lr.ph.i.i26.i.preheader ], [ %i.jt, %.lr.ph.i.i26.i.prol ]
  %.09.i.i27.i.unr = phi i64 [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.jr, %.lr.ph.i.i26.i.prol ]
  %.048.i.i28.i.unr = phi ptr [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.ju, %.lr.ph.i.i26.i.prol ]
  %.sroa.0.07.i.i29.i.unr = phi ptr [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.jt, %.lr.ph.i.i26.i.prol ]
  %i.jv = icmp ult i64 %i.jq, 7
  br i1 %i.jv, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i, label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.prol.loopexit, %.lr.ph.i.i26.i
  %.09.i.i27.i = phi i64 [ %i.kr, %.lr.ph.i.i26.i ], [ %.09.i.i27.i.unr, %.lr.ph.i.i26.i.prol.loopexit ]
  %.048.i.i28.i = phi ptr [ %i.ku, %.lr.ph.i.i26.i ], [ %.048.i.i28.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i = phi ptr [ %i.kt, %.lr.ph.i.i26.i ], [ %.sroa.0.07.i.i29.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %i.jw = load i32, ptr %.sroa.0.07.i.i29.i, align 4, !tbaa !455
  store i32 %i.jw, ptr %.048.i.i28.i, align 4, !tbaa !455
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 4
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 4
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !455
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !455
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 8
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !455
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !455
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 12
  %i.ke = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 12
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !455
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !455
end_hunk_7
begin_hunk_8_@_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmmT_:bb.a
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %.lr.ph.i.i66.prol.loopexit, label %.lr.ph.i.i66.prol

.lr.ph.i.i66.prol:                                ; preds = %.lr.ph.i.i66.preheader
  %i.mc = add nsw i64 %i.mb, -1                   ; 2 uses
  %i.md = load i32, ptr %.sroa.0.0.i56, align 4, !tbaa !455, !noalias !16138
  store i32 %i.md, ptr %.sroa.0.0.i60, align 4, !tbaa !455, !noalias !16138
  %i.me = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16138
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16138
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i56, i64 4 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 4 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.pre.i65, i64 1024
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %bb.an, label %.lr.ph.i.i66.prol.loopexit, !prof !365

bb.an:                                            ; preds = %.lr.ph.i.i66.prol
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i59, i64 8 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !458, !noalias !16138 ; 4 uses
  br label %.lr.ph.i.i66.prol.loopexit

.lr.ph.i.i66.prol.loopexit:                       ; preds = %.lr.ph.i.i66.prol, %bb.an, %.lr.ph.i.i66.preheader
  %.lcssa373.unr.a = phi ptr [ poison, %.lr.ph.i.i66.preheader ], [ %.pre.i65, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.lcssa372.unr.a = phi ptr [ poison, %.lr.ph.i.i66.preheader ], [ %.sroa.6.1.i59, %.lr.ph.i.i66.prol ], [ %i.mk, %bb.an ]
  %.lcssa371.unr = phi ptr [ poison, %.lr.ph.i.i66.preheader ], [ %i.mh, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.unr407 = phi ptr [ %.pre.i65, %.lr.ph.i.i66.preheader ], [ %.pre.i65, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.unr408 = phi ptr [ %.sroa.6.1.i59, %.lr.ph.i.i66.preheader ], [ %.sroa.6.1.i59, %.lr.ph.i.i66.prol ], [ %i.mk, %bb.an ]
  %.unr409 = phi ptr [ %.sroa.0.0.i60, %.lr.ph.i.i66.preheader ], [ %i.mh, %.lr.ph.i.i66.prol ], [ %i.ml, %bb.an ]
  %.014.i.i67.unr = phi ptr [ %.sroa.0.0.i56, %.lr.ph.i.i66.preheader ], [ %i.mg, %bb.an ], [ %i.mg, %.lr.ph.i.i66.prol ]
  %.0813.i.i68.unr = phi i64 [ %i.mb, %.lr.ph.i.i66.preheader ], [ %i.mc, %bb.an ], [ %i.mc, %.lr.ph.i.i66.prol ]
  %i.mm = icmp eq i64 %i.mb, 1
  br i1 %i.mm, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %.lr.ph.i.i66.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1
  %i.mn = phi ptr [ %i.nm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.unr407, %.lr.ph.i.i66.prol.loopexit ] ; 2 uses
  %i.mo = phi ptr [ %i.nn, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.unr408, %.lr.ph.i.i66.prol.loopexit ] ; 2 uses
  %i.mp = phi ptr [ %i.no, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.unr409, %.lr.ph.i.i66.prol.loopexit ] ; 2 uses
  %.014.i.i67 = phi ptr [ %i.ng, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.014.i.i67.unr, %.lr.ph.i.i66.prol.loopexit ] ; 3 uses
  %.0813.i.i68 = phi i64 [ %i.nc, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ], [ %.0813.i.i68.unr, %.lr.ph.i.i66.prol.loopexit ]
  %i.mq = load i32, ptr %.014.i.i67, align 4, !tbaa !455, !noalias !16138
  store i32 %i.mq, ptr %i.mp, align 4, !tbaa !455, !noalias !16138
  %i.mr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16138
  %i.ms = add i32 %i.mr, 1
  store i32 %i.ms, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16138
  %i.mt = getelementptr inbounds nuw i8, ptr %.014.i.i67, i64 4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 1024
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %bb.ao, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69, !prof !365

bb.ao:                                            ; preds = %.lr.ph.i.i66
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !458, !noalias !16138 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69: ; preds = %bb.ao, %.lr.ph.i.i66
  %i.mz = phi ptr [ %i.mn, %.lr.ph.i.i66 ], [ %i.my, %bb.ao ] ; 2 uses
  %i.na = phi ptr [ %i.mo, %.lr.ph.i.i66 ], [ %i.mx, %bb.ao ] ; 2 uses
  %i.nb = phi ptr [ %i.mu, %.lr.ph.i.i66 ], [ %i.my, %bb.ao ] ; 2 uses
  %i.nc = add i64 %.0813.i.i68, -2                ; 2 uses
  %i.nd = load i32, ptr %i.mt, align 4, !tbaa !455, !noalias !16138
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !455, !noalias !16138
  %i.ne = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16138
  %i.nf = add i32 %i.ne, 1
  store i32 %i.nf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16138
  %i.ng = getelementptr inbounds nuw i8, ptr %.014.i.i67, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 1024
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %bb.ap, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1, !prof !365

bb.ap:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !458, !noalias !16138 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1: ; preds = %bb.ap, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69
  %i.nm = phi ptr [ %i.mz, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69 ], [ %i.nl, %bb.ap ] ; 2 uses
  %i.nn = phi ptr [ %i.na, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69 ], [ %i.nk, %bb.ap ] ; 2 uses
  %i.no = phi ptr [ %i.nh, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69 ], [ %i.nl, %bb.ap ] ; 2 uses
  %.not.i.i70.1 = icmp eq i64 %i.nc, 0
  br i1 %.not.i.i70.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71, label %.lr.ph.i.i66, !llvm.loop !303

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71: ; preds = %.lr.ph.i.i66.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1, %bb.am
  %.pre54.i80217 = phi ptr [ %.pre.i65, %bb.am ], [ %.lcssa373.unr.a, %.lr.ph.i.i66.prol.loopexit ], [ %i.nm, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ]
  %.promoted49.i72 = phi ptr [ %.sroa.6.1.i59, %bb.am ], [ %.lcssa372.unr.a, %.lr.ph.i.i66.prol.loopexit ], [ %i.nn, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ]
  %.promoted.i73 = phi ptr [ %.sroa.0.0.i60, %bb.am ], [ %.lcssa371.unr, %.lr.ph.i.i66.prol.loopexit ], [ %i.no, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i.i69.1 ]
  %i.np = sub i64 %i.u, %i.mb                     ; 3 uses
  %.not2745.i74 = icmp eq i64 %i.np, 0            ; 2 uses
  br i1 %.not2745.i74, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86
  %.pre54.i80 = phi ptr [ %.pre54.i80214.lcssa, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.pre54.i80217, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 4 uses
  %.lcssa4250.i76 = phi ptr [ %.lcssa370, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.promoted49.i72, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 4 uses
  %.lcssa48.i77 = phi ptr [ %.lcssa369, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.promoted.i73, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 3 uses
  %.02447.i78 = phi ptr [ %i.nq, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %.sroa.6.1.i55, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ]
  %.02546.i79 = phi i64 [ %i.pg, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86 ], [ %i.np, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71 ] ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.02447.i78, i64 8 ; 2 uses
  %i.nr = tail call i64 @llvm.umin.i64(i64 %.02546.i79, i64 256) ; 4 uses
  %i.ns = load ptr, ptr %i.nq, align 8, !tbaa !458 ; 3 uses
  %xtraiter410 = and i64 %i.nr, 1
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.lr.ph.i31.i81.prol.loopexit, label %.lr.ph.i31.i81.prol

.lr.ph.i31.i81.prol:                              ; preds = %.lr.ph.i75
  %i.nt = add nsw i64 %i.nr, -1                   ; 2 uses
  %i.nu = load i32, ptr %i.ns, align 4, !tbaa !455, !noalias !16139
  store i32 %i.nu, ptr %.lcssa48.i77, align 4, !tbaa !455, !noalias !16139
  %i.nv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16139
  %i.nw = add i32 %i.nv, 1
  store i32 %i.nw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16139
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 4 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.lcssa48.i77, i64 4 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.pre54.i80, i64 1024
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %bb.aq, label %.lr.ph.i31.i81.prol.loopexit, !prof !365

bb.aq:                                            ; preds = %.lr.ph.i31.i81.prol
  %i.ob = getelementptr inbounds nuw i8, ptr %.lcssa4250.i76, i64 8 ; 3 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !458, !noalias !16139 ; 4 uses
  br label %.lr.ph.i31.i81.prol.loopexit

.lr.ph.i31.i81.prol.loopexit:                     ; preds = %.lr.ph.i31.i81.prol, %bb.aq, %.lr.ph.i75
  %.pre54.i80214.lcssa.unr = phi ptr [ poison, %.lr.ph.i75 ], [ %.pre54.i80, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ]
  %.lcssa370.unr.a = phi ptr [ poison, %.lr.ph.i75 ], [ %.lcssa4250.i76, %.lr.ph.i31.i81.prol ], [ %i.ob, %bb.aq ]
  %.lcssa369.unr.a = phi ptr [ poison, %.lr.ph.i75 ], [ %i.ny, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ]
  %.unr413 = phi ptr [ %.pre54.i80, %.lr.ph.i75 ], [ %.pre54.i80, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ] ; 2 uses
  %.unr414 = phi ptr [ %.lcssa4250.i76, %.lr.ph.i75 ], [ %.lcssa4250.i76, %.lr.ph.i31.i81.prol ], [ %i.ob, %bb.aq ]
  %.unr415 = phi ptr [ %.lcssa48.i77, %.lr.ph.i75 ], [ %i.ny, %.lr.ph.i31.i81.prol ], [ %i.oc, %bb.aq ]
  %.014.i32.i82.unr = phi ptr [ %i.ns, %.lr.ph.i75 ], [ %i.nx, %bb.aq ], [ %i.nx, %.lr.ph.i31.i81.prol ]
  %.0813.i33.i83.unr = phi i64 [ %i.nr, %.lr.ph.i75 ], [ %i.nt, %bb.aq ], [ %i.nt, %.lr.ph.i31.i81.prol ]
  %i.od = icmp eq i64 %.02546.i79, 1
  br i1 %i.od, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86, label %.lr.ph.i31.i81

.lr.ph.i31.i81:                                   ; preds = %.lr.ph.i31.i81.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1
  %.pre54.i80215 = phi ptr [ %.pre54.i80214.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr413, %.lr.ph.i31.i81.prol.loopexit ]
  %i.oe = phi ptr [ %i.pd, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr413, %.lr.ph.i31.i81.prol.loopexit ] ; 2 uses
  %i.of = phi ptr [ %i.pe, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr414, %.lr.ph.i31.i81.prol.loopexit ] ; 2 uses
  %i.og = phi ptr [ %i.pf, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.unr415, %.lr.ph.i31.i81.prol.loopexit ] ; 2 uses
  %.014.i32.i82 = phi ptr [ %i.ox, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.014.i32.i82.unr, %.lr.ph.i31.i81.prol.loopexit ] ; 3 uses
  %.0813.i33.i83 = phi i64 [ %i.ot, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ], [ %.0813.i33.i83.unr, %.lr.ph.i31.i81.prol.loopexit ]
  %i.oh = load i32, ptr %.014.i32.i82, align 4, !tbaa !455, !noalias !16139
  store i32 %i.oh, ptr %i.og, align 4, !tbaa !455, !noalias !16139
  %i.oi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16139
  %i.oj = add i32 %i.oi, 1
  store i32 %i.oj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16139
  %i.ok = getelementptr inbounds nuw i8, ptr %.014.i32.i82, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 4 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 1024
  %i.on = icmp eq ptr %i.ol, %i.om
  br i1 %i.on, label %bb.ar, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84, !prof !365

bb.ar:                                            ; preds = %.lr.ph.i31.i81
  %i.oo = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !458, !noalias !16139 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84: ; preds = %bb.ar, %.lr.ph.i31.i81
  %.pre54.i80214 = phi ptr [ %.pre54.i80215, %.lr.ph.i31.i81 ], [ %i.op, %bb.ar ]
  %i.oq = phi ptr [ %i.oe, %.lr.ph.i31.i81 ], [ %i.op, %bb.ar ] ; 2 uses
  %i.or = phi ptr [ %i.of, %.lr.ph.i31.i81 ], [ %i.oo, %bb.ar ] ; 2 uses
  %i.os = phi ptr [ %i.ol, %.lr.ph.i31.i81 ], [ %i.op, %bb.ar ] ; 2 uses
  %i.ot = add nsw i64 %.0813.i33.i83, -2          ; 2 uses
  %i.ou = load i32, ptr %i.ok, align 4, !tbaa !455, !noalias !16139
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !455, !noalias !16139
  %i.ov = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16139
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !363, !noalias !16139
  %i.ox = getelementptr inbounds nuw i8, ptr %.014.i32.i82, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 4 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 1024
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %bb.as, label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1, !prof !365

bb.as:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !458, !noalias !16139 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1

_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1: ; preds = %bb.as, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84
  %.pre54.i80214.1 = phi ptr [ %.pre54.i80214, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pc, %bb.as ] ; 2 uses
  %i.pd = phi ptr [ %i.oq, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pc, %bb.as ]
  %i.pe = phi ptr [ %i.or, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pb, %bb.as ] ; 2 uses
  %i.pf = phi ptr [ %i.oy, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84 ], [ %i.pc, %bb.as ] ; 2 uses
  %.not.i35.i85.1 = icmp eq i64 %i.ot, 0
  br i1 %.not.i35.i85.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86, label %.lr.ph.i31.i81, !llvm.loop !303

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1, %.lr.ph.i31.i81.prol.loopexit
  %.pre54.i80214.lcssa = phi ptr [ %.pre54.i80214.lcssa.unr, %.lr.ph.i31.i81.prol.loopexit ], [ %.pre54.i80214.1, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ]
  %.lcssa370 = phi ptr [ %.lcssa370.unr.a, %.lr.ph.i31.i81.prol.loopexit ], [ %i.pe, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ]
  %.lcssa369 = phi ptr [ %.lcssa369.unr.a, %.lr.ph.i31.i81.prol.loopexit ], [ %i.pf, %_ZN5boost9container14deque_iteratorIPNS0_4test12copyable_intELb0ELj0ELj0EmEppEv.exit.i34.i84.1 ]
  %i.pg = sub nuw i64 %.02546.i79, %i.nr          ; 2 uses
  %.not27.i87 = icmp eq i64 %i.pg, 0
  br i1 %.not27.i87, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit, label %.lr.ph.i75, !llvm.loop !304

_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit36.i86, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i71
  br i1 %.not12.i.i63, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92.preheader

.lr.ph.i.i.i92.preheader:                         ; preds = %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit
  %min.iters.check326 = icmp ult i64 %i.mb, 8
  %i.ph = sub i64 %5, %i.lw
  %diff.check324 = icmp ugt i64 %i.ph, -32
  %or.cond362 = select i1 %min.iters.check326, i1 true, i1 %diff.check324
  br i1 %or.cond362, label %.lr.ph.i.i.i92.preheader367, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph.i.i.i92.preheader
  %n.vec328 = and i64 %i.mb, -8                   ; 3 uses
  %i.pi = and i64 %i.mb, 7
  %i.pj = shl i64 %n.vec328, 2                    ; 2 uses
  %i.pk = getelementptr i8, ptr %.sroa.0.0.i56, i64 %i.pj
  %i.pl = getelementptr i8, ptr %4, i64 %i.pj     ; 2 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.pm = shl i64 %index330, 2                    ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.sroa.0.0.i56, i64 %i.pm ; 2 uses
  %next.gep332 = getelementptr i8, ptr %4, i64 %i.pm ; 2 uses
  %i.pn = getelementptr i8, ptr %next.gep332, i64 16
  %wide.load333 = load <4 x i32>, ptr %next.gep332, align 4, !tbaa !455
  %wide.load334 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !455
  %i.po = getelementptr i8, ptr %next.gep331, i64 16
  store <4 x i32> %wide.load333, ptr %next.gep331, align 4, !tbaa !455
  store <4 x i32> %wide.load334, ptr %i.po, align 4, !tbaa !455
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.pp = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.pp, label %middle.block336, label %vector.body329, !llvm.loop !16121

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.mb, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92.preheader367

.lr.ph.i.i.i92.preheader367:                      ; preds = %.lr.ph.i.i.i92.preheader, %middle.block336
  %.09.i.i.i93.ph = phi i64 [ %i.mb, %.lr.ph.i.i.i92.preheader ], [ %i.pi, %middle.block336 ] ; 4 uses
  %.048.i.i.i94.ph = phi ptr [ %.sroa.0.0.i56, %.lr.ph.i.i.i92.preheader ], [ %i.pk, %middle.block336 ] ; 2 uses
  %.sroa.0.07.i.i.i95.ph = phi ptr [ %4, %.lr.ph.i.i.i92.preheader ], [ %i.pl, %middle.block336 ] ; 2 uses
  %i.pq = add i64 %.09.i.i.i93.ph, -1
  %xtraiter416 = and i64 %.09.i.i.i93.ph, 7       ; 2 uses
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i92.prol

.lr.ph.i.i.i92.prol:                              ; preds = %.lr.ph.i.i.i92.preheader367, %.lr.ph.i.i.i92.prol
  %.09.i.i.i93.prol = phi i64 [ %i.pr, %.lr.ph.i.i.i92.prol ], [ %.09.i.i.i93.ph, %.lr.ph.i.i.i92.preheader367 ]
  %.048.i.i.i94.prol = phi ptr [ %i.pu, %.lr.ph.i.i.i92.prol ], [ %.048.i.i.i94.ph, %.lr.ph.i.i.i92.preheader367 ] ; 2 uses
  %.sroa.0.07.i.i.i95.prol = phi ptr [ %i.pt, %.lr.ph.i.i.i92.prol ], [ %.sroa.0.07.i.i.i95.ph, %.lr.ph.i.i.i92.preheader367 ] ; 2 uses
  %prol.iter418 = phi i64 [ %prol.iter418.next, %.lr.ph.i.i.i92.prol ], [ 0, %.lr.ph.i.i.i92.preheader367 ]
  %i.pr = add i64 %.09.i.i.i93.prol, -1           ; 2 uses
  %i.ps = load i32, ptr %.sroa.0.07.i.i.i95.prol, align 4, !tbaa !455
  store i32 %i.ps, ptr %.048.i.i.i94.prol, align 4, !tbaa !455
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95.prol, i64 4 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.048.i.i.i94.prol, i64 4 ; 2 uses
  %prol.iter418.next = add i64 %prol.iter418, 1   ; 2 uses
  %prol.iter418.cmp.not = icmp eq i64 %prol.iter418.next, %xtraiter416
  br i1 %prol.iter418.cmp.not, label %.lr.ph.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i92.prol, !llvm.loop !16122

.lr.ph.i.i.i92.prol.loopexit:                     ; preds = %.lr.ph.i.i.i92.prol, %.lr.ph.i.i.i92.preheader367
  %.lcssa368.unr = phi ptr [ poison, %.lr.ph.i.i.i92.preheader367 ], [ %i.pt, %.lr.ph.i.i.i92.prol ]
  %.09.i.i.i93.unr = phi i64 [ %.09.i.i.i93.ph, %.lr.ph.i.i.i92.preheader367 ], [ %i.pr, %.lr.ph.i.i.i92.prol ]
  %.048.i.i.i94.unr = phi ptr [ %.048.i.i.i94.ph, %.lr.ph.i.i.i92.preheader367 ], [ %i.pu, %.lr.ph.i.i.i92.prol ]
  %.sroa.0.07.i.i.i95.unr = phi ptr [ %.sroa.0.07.i.i.i95.ph, %.lr.ph.i.i.i92.preheader367 ], [ %i.pt, %.lr.ph.i.i.i92.prol ]
  %i.pv = icmp ult i64 %i.pq, 7
  br i1 %i.pv, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %.lr.ph.i.i.i92.prol.loopexit, %.lr.ph.i.i.i92
  %.09.i.i.i93 = phi i64 [ %i.qr, %.lr.ph.i.i.i92 ], [ %.09.i.i.i93.unr, %.lr.ph.i.i.i92.prol.loopexit ]
  %.048.i.i.i94 = phi ptr [ %i.qu, %.lr.ph.i.i.i92 ], [ %.048.i.i.i94.unr, %.lr.ph.i.i.i92.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i95 = phi ptr [ %i.qt, %.lr.ph.i.i.i92 ], [ %.sroa.0.07.i.i.i95.unr, %.lr.ph.i.i.i92.prol.loopexit ] ; 9 uses
  %i.pw = load i32, ptr %.sroa.0.07.i.i.i95, align 4, !tbaa !455
  store i32 %i.pw, ptr %.048.i.i.i94, align 4, !tbaa !455
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 4
  %i.py = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 4
  %i.pz = load i32, ptr %i.px, align 4, !tbaa !455
  store i32 %i.pz, ptr %i.py, align 4, !tbaa !455
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 8
  %i.qc = load i32, ptr %i.qa, align 4, !tbaa !455
  store i32 %i.qc, ptr %i.qb, align 4, !tbaa !455
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 12
  %i.qe = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 12
  %i.qf = load i32, ptr %i.qd, align 4, !tbaa !455
  store i32 %i.qf, ptr %i.qe, align 4, !tbaa !455
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 16
  %i.qi = load i32, ptr %i.qg, align 4, !tbaa !455
  store i32 %i.qi, ptr %i.qh, align 4, !tbaa !455
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 20
  %i.qk = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 20
  %i.ql = load i32, ptr %i.qj, align 4, !tbaa !455
  store i32 %i.ql, ptr %i.qk, align 4, !tbaa !455
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 24
  %i.qn = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 24
  %i.qo = load i32, ptr %i.qm, align 4, !tbaa !455
  store i32 %i.qo, ptr %i.qn, align 4, !tbaa !455
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 28
  %i.qq = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 28
  %i.qr = add i64 %.09.i.i.i93, -8                ; 2 uses
  %i.qs = load i32, ptr %i.qp, align 4, !tbaa !455
  store i32 %i.qs, ptr %i.qq, align 4, !tbaa !455
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i95, i64 32 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.048.i.i.i94, i64 32
  %.not.i.i.i96.7 = icmp eq i64 %i.qr, 0
  br i1 %.not.i.i.i96.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, label %.lr.ph.i.i.i92, !llvm.loop !16123

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97: ; preds = %.lr.ph.i.i.i92.prol.loopexit, %.lr.ph.i.i.i92, %middle.block336, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit
  %.promoted.i98 = phi ptr [ %4, %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmSB_.exit ], [ %i.pl, %middle.block336 ], [ %.lcssa368.unr, %.lr.ph.i.i.i92.prol.loopexit ], [ %i.qt, %.lr.ph.i.i.i92 ] ; 2 uses
  br i1 %.not2745.i74, label %_ZN5boost9container10deque_implINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEELb1ENS0_9deque_optILm0ELm0EvLb1EEEE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvNS0_14deque_iteratorISD_Lb0ELj0ELj0EmEEmRT_.exit111, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109
  %.lcssa37.i101 = phi ptr [ %.lcssa284, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109 ], [ %.promoted.i98, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97 ] ; 4 uses
  %.036.i102 = phi ptr [ %i.qv, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109 ], [ %.sroa.6.1.i55, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97 ]
  %.02135.i103 = phi i64 [ %i.sn, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109 ], [ %i.np, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit.i97 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.036.i102, i64 8 ; 2 uses
  %i.qw = tail call i64 @llvm.umin.i64(i64 %.02135.i103, i64 256) ; 5 uses
  %i.qx = load ptr, ptr %i.qv, align 8, !tbaa !458 ; 4 uses
  %min.iters.check345 = icmp ult i64 %.02135.i103, 8
  %i.qy = ptrtoaddr ptr %i.qx to i64
  %.lcssa37.i101342 = ptrtoaddr ptr %.lcssa37.i101 to i64
  %i.qz = sub i64 %.lcssa37.i101342, %i.qy
  %diff.check343 = icmp ugt i64 %i.qz, -32
  %or.cond364 = select i1 %min.iters.check345, i1 true, i1 %diff.check343
  br i1 %or.cond364, label %.lr.ph.i.i26.i104.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %.lr.ph.i100
  %n.vec347 = and i64 %i.qw, 504                  ; 3 uses
  %i.ra = and i64 %i.qw, 7
  %i.rb = shl nuw nsw i64 %n.vec347, 2            ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qx, i64 %i.rb
  %i.rd = getelementptr i8, ptr %.lcssa37.i101, i64 %i.rb ; 2 uses
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %i.re = shl i64 %index349, 2                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.qx, i64 %i.re ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.lcssa37.i101, i64 %i.re ; 2 uses
  %i.rf = getelementptr i8, ptr %next.gep351, i64 16
  %wide.load352 = load <4 x i32>, ptr %next.gep351, align 4, !tbaa !455
  %wide.load353 = load <4 x i32>, ptr %i.rf, align 4, !tbaa !455
  %i.rg = getelementptr i8, ptr %next.gep350, i64 16
  store <4 x i32> %wide.load352, ptr %next.gep350, align 4, !tbaa !455
  store <4 x i32> %wide.load353, ptr %i.rg, align 4, !tbaa !455
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.rh = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.rh, label %middle.block355, label %vector.body348, !llvm.loop !16124

middle.block355:                                  ; preds = %vector.body348
  %cmp.n356 = icmp eq i64 %i.qw, %n.vec347
  br i1 %cmp.n356, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109, label %.lr.ph.i.i26.i104.preheader

.lr.ph.i.i26.i104.preheader:                      ; preds = %.lr.ph.i100, %middle.block355
  %.09.i.i27.i105.ph = phi i64 [ %i.qw, %.lr.ph.i100 ], [ %i.ra, %middle.block355 ] ; 4 uses
  %.048.i.i28.i106.ph = phi ptr [ %i.qx, %.lr.ph.i100 ], [ %i.rc, %middle.block355 ] ; 2 uses
  %.sroa.0.07.i.i29.i107.ph = phi ptr [ %.lcssa37.i101, %.lr.ph.i100 ], [ %i.rd, %middle.block355 ] ; 2 uses
  %i.ri = add nsw i64 %.09.i.i27.i105.ph, -1
  %xtraiter419 = and i64 %.09.i.i27.i105.ph, 7    ; 2 uses
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.lr.ph.i.i26.i104.prol.loopexit, label %.lr.ph.i.i26.i104.prol

.lr.ph.i.i26.i104.prol:                           ; preds = %.lr.ph.i.i26.i104.preheader, %.lr.ph.i.i26.i104.prol
  %.09.i.i27.i105.prol = phi i64 [ %i.rj, %.lr.ph.i.i26.i104.prol ], [ %.09.i.i27.i105.ph, %.lr.ph.i.i26.i104.preheader ]
  %.048.i.i28.i106.prol = phi ptr [ %i.rm, %.lr.ph.i.i26.i104.prol ], [ %.048.i.i28.i106.ph, %.lr.ph.i.i26.i104.preheader ] ; 2 uses
  %.sroa.0.07.i.i29.i107.prol = phi ptr [ %i.rl, %.lr.ph.i.i26.i104.prol ], [ %.sroa.0.07.i.i29.i107.ph, %.lr.ph.i.i26.i104.preheader ] ; 2 uses
  %prol.iter421 = phi i64 [ %prol.iter421.next, %.lr.ph.i.i26.i104.prol ], [ 0, %.lr.ph.i.i26.i104.preheader ]
  %i.rj = add i64 %.09.i.i27.i105.prol, -1        ; 2 uses
  %i.rk = load i32, ptr %.sroa.0.07.i.i29.i107.prol, align 4, !tbaa !455
  store i32 %i.rk, ptr %.048.i.i28.i106.prol, align 4, !tbaa !455
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107.prol, i64 4 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106.prol, i64 4 ; 2 uses
  %prol.iter421.next = add i64 %prol.iter421, 1   ; 2 uses
  %prol.iter421.cmp.not = icmp eq i64 %prol.iter421.next, %xtraiter419
  br i1 %prol.iter421.cmp.not, label %.lr.ph.i.i26.i104.prol.loopexit, label %.lr.ph.i.i26.i104.prol, !llvm.loop !16125

.lr.ph.i.i26.i104.prol.loopexit:                  ; preds = %.lr.ph.i.i26.i104.prol, %.lr.ph.i.i26.i104.preheader
  %.lcssa366.unr = phi ptr [ poison, %.lr.ph.i.i26.i104.preheader ], [ %i.rl, %.lr.ph.i.i26.i104.prol ]
  %.09.i.i27.i105.unr = phi i64 [ %.09.i.i27.i105.ph, %.lr.ph.i.i26.i104.preheader ], [ %i.rj, %.lr.ph.i.i26.i104.prol ]
  %.048.i.i28.i106.unr = phi ptr [ %.048.i.i28.i106.ph, %.lr.ph.i.i26.i104.preheader ], [ %i.rm, %.lr.ph.i.i26.i104.prol ]
  %.sroa.0.07.i.i29.i107.unr = phi ptr [ %.sroa.0.07.i.i29.i107.ph, %.lr.ph.i.i26.i104.preheader ], [ %i.rl, %.lr.ph.i.i26.i104.prol ]
  %i.rn = icmp ult i64 %i.ri, 7
  br i1 %i.rn, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit32.i109, label %.lr.ph.i.i26.i104

.lr.ph.i.i26.i104:                                ; preds = %.lr.ph.i.i26.i104.prol.loopexit, %.lr.ph.i.i26.i104
  %.09.i.i27.i105 = phi i64 [ %i.sj, %.lr.ph.i.i26.i104 ], [ %.09.i.i27.i105.unr, %.lr.ph.i.i26.i104.prol.loopexit ]
  %.048.i.i28.i106 = phi ptr [ %i.sm, %.lr.ph.i.i26.i104 ], [ %.048.i.i28.i106.unr, %.lr.ph.i.i26.i104.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i107 = phi ptr [ %i.sl, %.lr.ph.i.i26.i104 ], [ %.sroa.0.07.i.i29.i107.unr, %.lr.ph.i.i26.i104.prol.loopexit ] ; 9 uses
  %i.ro = load i32, ptr %.sroa.0.07.i.i29.i107, align 4, !tbaa !455
  store i32 %i.ro, ptr %.048.i.i28.i106, align 4, !tbaa !455
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 4
  %i.rr = load i32, ptr %i.rp, align 4, !tbaa !455
  store i32 %i.rr, ptr %i.rq, align 4, !tbaa !455
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 8
  %i.ru = load i32, ptr %i.rs, align 4, !tbaa !455
  store i32 %i.ru, ptr %i.rt, align 4, !tbaa !455
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 12
  %i.rw = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 12
  %i.rx = load i32, ptr %i.rv, align 4, !tbaa !455
  store i32 %i.rx, ptr %i.rw, align 4, !tbaa !455
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i107, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %.048.i.i28.i106, i64 16
  %i.sa = load i32, ptr %i.ry, align 4, !tbaa !455
end_hunk_8
