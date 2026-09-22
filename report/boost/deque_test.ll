Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/deque_test?download=true
inline.NumInlined: 21721
inline.NumDeleted: 3891
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 1494
loop-unroll.NumUnrolled: 1710
begin_hunk_0_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.bp = load ptr, ptr %i.ah, align 8, !tbaa !381
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !379 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %.not.i = icmp eq i64 %i.bo, %i.bu
  br i1 %.not.i, label %bb.f, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEaSEOS5_.exit
  %.not.i.i.i.i465 = icmp eq ptr %.pr1097, null
  br i1 %.not.i.i.i.i465, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread, label %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i

_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i: ; preds = %bb.f
  %i.bv = lshr i64 %i.bm, 5
  %.idx40.i = and i64 %i.bv, 576460752303423480   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pr1097, i64 %.idx40.i ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !369, !noalias !6825 ; 2 uses
  %i.by = and i64 %i.bm, 255                      ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by ; 3 uses
  %i.ca = lshr i64 %i.bn, 5
  %.idx.i = and i64 %i.ca, 576460752303423480     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pr1097, i64 %.idx.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !369, !noalias !6826
  %i.cd = and i64 %i.bn, 255                      ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bz                ; 3 uses
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx40.i
  %i.cg = shl nsw i64 %gepdiff.i, 5
  %i.ch = sub nsw i64 %i.cd, %i.by
  %i.ci = add i64 %i.ch, %i.cg
  %.sroa.0.0.i1739.i = select i1 %i.cf, ptr %i.bz, ptr %i.ce
  %.0.i.i.i.i466 = select i1 %i.cf, i64 0, i64 %i.ci
  %.not12.i = icmp ne i64 %.0.i.i.i.i466, %i.bo   ; 2 uses
  %brmerge = or i1 %i.cf, %.not12.i
  %not..not12.i = xor i1 %.not12.i, true
  br i1 %brmerge, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread1312, label %.lr.ph.i

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread: ; preds = %bb.f
  %.not1258.i = icmp eq i64 %i.bn, %i.bm
  br label %bb.k

.lr.ph.i:                                         ; preds = %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i
  %i.cj = phi ptr [ %i.cs, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bx, %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i ] ; 2 uses
  %.sroa.9.045.i = phi ptr [ %.sroa.9.1.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bw, %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i ] ; 2 uses
  %.sroa.024.044.i = phi ptr [ %.sroa.024.1.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bz, %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i ] ; 2 uses
  %.sroa.020.043.i = phi ptr [ %i.ct, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bq, %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i ] ; 2 uses
  %i.ck = load i32, ptr %.sroa.024.044.i, align 4, !tbaa !370
  %i.cl = load i32, ptr %.sroa.020.043.i, align 4, !tbaa !370
  %i.cm = icmp eq i32 %i.ck, %i.cl                ; 3 uses
  br i1 %i.cm, label %bb.g, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.024.044.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.h, label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i, !prof !375

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.9.045.i, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !369 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i: ; preds = %bb.h, %bb.g
  %i.cs = phi ptr [ %i.cr, %bb.h ], [ %i.cj, %bb.g ]
  %.sroa.024.1.i = phi ptr [ %i.cr, %bb.h ], [ %i.cn, %bb.g ] ; 2 uses
  %.sroa.9.1.i = phi ptr [ %i.cq, %bb.h ], [ %.sroa.9.045.i, %bb.g ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.020.043.i, i64 4
  %.not41.i = icmp eq ptr %.sroa.024.1.i, %.sroa.0.0.i1739.i
  br i1 %.not41.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread, label %.lr.ph.i, !llvm.loop !98

bb.i:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %.loopexit1126
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container5dequeIiSaIiENS2_9deque_optILm0ELm0EvLb0EEEEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEaSEOS5_.exit
  %.2.i1067.ph = phi i1 [ false, %_ZN5boost9container5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEaSEOS5_.exit ], [ %i.cm, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  %.not.i.i.i.i.i468 = icmp eq ptr %.pr1097, null
  br i1 %.not.i.i.i.i.i468, label %bb.k, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread1312

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread1312: ; preds = %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread
  %.2.i1067.ph1315 = phi i1 [ %.2.i1067.ph, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread ], [ %not..not12.i, %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i ]
  %i.cw = lshr i64 %i.bm, 5
  %.idx.i.i.i.i.i.i = and i64 %i.cw, 576460752303423480 ; 2 uses
  %i.cx = lshr i64 %i.bn, 5
  %.idx1.i.i.i.i.i.i = and i64 %i.cx, 576460752303423480 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pr1097, i64 %.idx1.i.i.i.i.i.i
  %.not.i.i2.i.i.i.i = icmp samesign ugt i64 %.idx.i.i.i.i.i.i, %.idx1.i.i.i.i.i.i
  br i1 %.not.i.i2.i.i.i.i, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread1312
  %i.cz = getelementptr inbounds nuw i8, ptr %.pr1097, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.da = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !369
  tail call void @_ZdlPvm(ptr noundef %i.da, i64 noundef 1024) #25
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8
  %i.dc = icmp ult ptr %.06.i.i.i.i.i.i.i, %i.cy
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i, !llvm.loop !99

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !573
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !579
  br label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i: ; preds = %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread1312
  %i.dd = phi i64 [ %.pre, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i ], [ %i.bl, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread1312 ]
  %i.de = phi ptr [ %.pre.i.i.i.i.i, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i ], [ %.pr1097, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread1312 ]
  %i.df = shl i64 %i.dd, 3
  tail call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.df) #25
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread
  %.2.i10671100 = phi i1 [ %.not1258.i, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread.thread ], [ %.2.i1067.ph1315, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i ], [ %.2.i1067.ph, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #25
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !573, !noalias !6827 ; 4 uses
  %.not.i.i.i.i.i470 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i470, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dh = load i64, ptr %i.ak, align 8, !tbaa !574, !noalias !6828
  %i.di = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !578, !noalias !6829
  %i.dk = lshr i64 %i.dh, 5
  %.idx.i.i.i.i.i.i471 = and i64 %i.dk, 576460752303423480 ; 2 uses
  %i.dl = lshr i64 %i.dj, 5
  %.idx1.i.i.i.i.i.i472 = and i64 %i.dl, 576460752303423480 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx1.i.i.i.i.i.i472
  %.not.i.i2.i.i.i.i473 = icmp samesign ugt i64 %.idx.i.i.i.i.i.i471, %.idx1.i.i.i.i.i.i472
  br i1 %.not.i.i2.i.i.i.i473, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i479, label %.lr.ph.i.preheader.i.i.i.i.i.i474

.lr.ph.i.preheader.i.i.i.i.i.i474:                ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i.i.i.i.i.i471
  br label %.lr.ph.i.i.i.i.i.i.i475

.lr.ph.i.i.i.i.i.i.i475:                          ; preds = %.lr.ph.i.i.i.i.i.i.i475, %.lr.ph.i.preheader.i.i.i.i.i.i474
  %.06.i.i.i.i.i.i.i476 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i475 ], [ %i.dn, %.lr.ph.i.preheader.i.i.i.i.i.i474 ] ; 3 uses
  %i.do = load ptr, ptr %.06.i.i.i.i.i.i.i476, align 8, !tbaa !369
  tail call void @_ZdlPvm(ptr noundef %i.do, i64 noundef 1024) #25
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i476, i64 8
  %i.dq = icmp ult ptr %.06.i.i.i.i.i.i.i476, %i.dm
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i.i475, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i477, !llvm.loop !99

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i477: ; preds = %.lr.ph.i.i.i.i.i.i.i475
  %.pre.i.i.i.i.i478 = load ptr, ptr %i.ai, align 8, !tbaa !573
  br label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i479

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i479: ; preds = %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i477, %bb.l
  %i.dr = phi ptr [ %.pre.i.i.i.i.i478, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i477 ], [ %i.dg, %bb.l ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !579
  %i.du = shl i64 %i.dt, 3
  tail call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #25
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i479, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !379 ; 3 uses
  %.not.i.i.i.i.i.i483 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i483, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = load ptr, ptr %i.ag, align 8, !tbaa !378
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #25
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.m, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.2.i10671100, label %bb.o, label %bb.jp

bb.o:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6830)
  %i.ea = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !6830 ; 110 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i8 0, i64 32, i1 false), !noalias !6830
  store ptr %i.ea, ptr %7, align 8, !tbaa !577, !alias.scope !6830
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6831)
  %i.eb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.p unwind label %bb.x       ; 90 uses

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !6831
  store ptr %i.eb, ptr %8, align 8, !tbaa !582, !alias.scope !6831
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 22 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !578 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 19 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !574
  %i.eg = sub i64 %i.ed, %i.ef                    ; 3 uses
  %i.eh = icmp ugt i64 %i.eg, 100
  br i1 %i.eh, label %.split.i.i.i.i, label %bb.q

.split.i.i.i.i:                                   ; preds = %bb.p
  %51 = add i64 %i.eg, -100                       ; 2 uses
  %i.ei = load ptr, ptr %i.ea, align 8, !tbaa !573, !noalias !6832, !nonnull !366, !noundef !366
  %i.ej = lshr i64 %i.ed, 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %.idx.i486 = and i64 %i.ed, 255
  %i.el = sub nsw i64 %.idx.i486, %51             ; 2 uses
  %or.cond.i = icmp slt i64 %i.el, 0
  br i1 %or.cond.i, label %.lr.ph.i.i.i.preheader.i, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.split.i.i.i.i
  %i.em = lshr i64 %i.el, 5
  %i.en = and i64 %i.em, 576460752303423480
  %i.eo = getelementptr i8, ptr %i.ek, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -576460752303423488
  br label %.lr.ph.i.i.i.i487

.lr.ph.i.i.i.i487:                                ; preds = %.lr.ph.i.i.i.i487, %.lr.ph.i.i.i.preheader.i
  %.06.i.i.pn.i.i = phi ptr [ %.06.i.i.i.i, %.lr.ph.i.i.i.i487 ], [ %i.ep, %.lr.ph.i.i.i.preheader.i ]
  %.06.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.pn.i.i, i64 8 ; 3 uses
  %i.eq = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !369
  tail call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef 1024) #25
  %i.er = icmp ult ptr %.06.i.i.i.i, %i.ek
  br i1 %i.er, label %.lr.ph.i.i.i.i487, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i, !llvm.loop !99

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i487
  %.pre.i.i = load i64, ptr %i.ec, align 8, !tbaa !578
  br label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i: ; preds = %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i, %.split.i.i.i.i
  %i.es = phi i64 [ %.pre.i.i, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i ], [ %i.ed, %.split.i.i.i.i ]
  %i.et = sub i64 %i.es, %51
  store i64 %i.et, ptr %i.ec, align 8, !tbaa !578
  br label %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit

bb.q:                                             ; preds = %bb.p
  %i.eu = sub nuw nsw i64 100, %i.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef %i.eu)
          to label %.noexc488 unwind label %bb.y

.noexc488:                                        ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit

_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit: ; preds = %.noexc488, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 44 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !381 ; 4 uses
  %i.ex = load ptr, ptr %i.eb, align 8, !tbaa !379 ; 5 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64               ; 4 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = ashr exact i64 %i.fa, 2                 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 100
  br i1 %i.fc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit
  %i.fd = sub nuw nsw i64 100, %i.fb
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 noundef %i.fd)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.y

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.r
  %.pre1160 = load ptr, ptr %i.ev, align 8, !tbaa !381
  %.pre1161 = load ptr, ptr %i.eb, align 8, !tbaa !379 ; 2 uses
  %.pre1168 = ptrtoint ptr %.pre1161 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.s:                                             ; preds = %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit
  %.not1101 = icmp eq i64 %i.fa, 400
  br i1 %.not1101, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 400 ; 3 uses
  %.not.i.i489 = icmp eq ptr %i.ew, %i.fe
  br i1 %.not.i.i489, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.fe, ptr %i.ev, align 8, !tbaa !381
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.t, %bb.s
  %.pre-phi = phi i64 [ %.pre1168, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.ez, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ez, %bb.t ], [ %i.ez, %bb.s ]
  %i.ff = phi ptr [ %.pre1161, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.ex, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ex, %bb.t ], [ %i.ex, %bb.s ]
  %i.fg = phi ptr [ %.pre1160, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.fe, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ew, %bb.t ], [ %i.ew, %bb.s ]
  %i.fh = load i64, ptr %i.ec, align 8, !tbaa !578 ; 7 uses
  %i.fi = load i64, ptr %i.ee, align 8, !tbaa !574 ; 4 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 5 uses
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fk, %.pre-phi
  %i.fm = ashr exact i64 %i.fl, 2
  %.not.i491 = icmp eq i64 %i.fj, %i.fm
  br i1 %.not.i491, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fn = load ptr, ptr %i.ea, align 8, !tbaa !573, !noalias !6833 ; 4 uses
  %.not.i.i.i.i493 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i493, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512, label %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i494

_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i494: ; preds = %bb.u
  %i.fo = lshr i64 %i.fi, 5
  %.idx40.i495 = and i64 %i.fo, 576460752303423480 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx40.i495 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !369, !noalias !6833 ; 2 uses
  %i.fr = and i64 %i.fi, 255                      ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fr ; 3 uses
  %i.ft = lshr i64 %i.fh, 5
  %.idx.i496 = and i64 %i.ft, 576460752303423480  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx.i496
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !369, !noalias !6834
  %i.fw = and i64 %i.fh, 255                      ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fw ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fs                ; 3 uses
  %gepdiff.i497 = sub nsw i64 %.idx.i496, %.idx40.i495
  %i.fz = shl nsw i64 %gepdiff.i497, 5
  %i.ga = sub nsw i64 %i.fw, %i.fr
  %i.gb = add i64 %i.ga, %i.fz
  %.sroa.0.0.i1739.i498 = select i1 %i.fy, ptr %i.fs, ptr %i.fx
  %.0.i.i.i.i499 = select i1 %i.fy, i64 0, i64 %i.gb
  %.not12.i500 = icmp eq i64 %.0.i.i.i.i499, %i.fj
  br i1 %.not12.i500, label %.preheader.i501, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

.preheader.i501:                                  ; preds = %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i494
  br i1 %i.fy, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071, label %.lr.ph.i502

.lr.ph.i502:                                      ; preds = %.preheader.i501, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506
  %i.gc = phi ptr [ %i.gl, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506 ], [ %i.fq, %.preheader.i501 ] ; 2 uses
  %.sroa.9.045.i503 = phi ptr [ %.sroa.9.1.i508, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506 ], [ %i.fp, %.preheader.i501 ] ; 2 uses
  %.sroa.024.044.i504 = phi ptr [ %.sroa.024.1.i507, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506 ], [ %i.fs, %.preheader.i501 ] ; 2 uses
  %.sroa.020.043.i505 = phi ptr [ %i.gm, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506 ], [ %i.ff, %.preheader.i501 ] ; 2 uses
  %i.gd = load i32, ptr %.sroa.024.044.i504, align 4, !tbaa !370
  %i.ge = load i32, ptr %.sroa.020.043.i505, align 4, !tbaa !370
  %i.gf = icmp eq i32 %i.gd, %i.ge
  br i1 %i.gf, label %bb.v, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

bb.v:                                             ; preds = %.lr.ph.i502
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.024.044.i504, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 1024
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.w, label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506, !prof !375

bb.w:                                             ; preds = %bb.v
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.9.045.i503, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !369 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506

_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506: ; preds = %bb.w, %bb.v
  %i.gl = phi ptr [ %i.gk, %bb.w ], [ %i.gc, %bb.v ]
  %.sroa.024.1.i507 = phi ptr [ %i.gk, %bb.w ], [ %i.gg, %bb.v ] ; 2 uses
  %.sroa.9.1.i508 = phi ptr [ %i.gj, %bb.w ], [ %.sroa.9.045.i503, %bb.v ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.020.043.i505, i64 4
  %.not41.i509 = icmp eq ptr %.sroa.024.1.i507, %.sroa.0.0.i1739.i498
  br i1 %.not41.i509, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071, label %.lr.ph.i502, !llvm.loop !98

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512: ; preds = %bb.u
  %.not1258.i511 = icmp eq i64 %i.fh, %i.fi
  br i1 %.not1258.i511, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071.thread, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

.body:                                            ; preds = %bb.i, %bb.d, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.j ], [ %i.cu, %bb.i ], [ %i.ba, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.x:                                             ; preds = %bb.o
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.y:                                             ; preds = %bb.z, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071.thread, %bb.r, %bb.q
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071: ; preds = %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i506, %.preheader.i501
  %i.gp = icmp ugt i64 %i.fj, 200
  br i1 %i.gp, label %.split.i.i.i.i514, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071.thread

.split.i.i.i.i514:                                ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071
  %52 = add nsw i64 %i.fj, -200                   ; 2 uses
  %i.gq = lshr i64 %i.fh, 8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gq ; 2 uses
  %.idx.i515 = and i64 %i.fh, 255
  %i.gs = sub nsw i64 %.idx.i515, %52             ; 2 uses
  %or.cond.i516 = icmp slt i64 %i.gs, 0
  br i1 %or.cond.i516, label %.lr.ph.i.i.i.preheader.i518, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i517

.lr.ph.i.i.i.preheader.i518:                      ; preds = %.split.i.i.i.i514
  %i.gt = lshr i64 %i.gs, 5
  %i.gu = and i64 %i.gt, 576460752303423480
  %i.gv = getelementptr i8, ptr %i.gr, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -576460752303423488
  br label %.lr.ph.i.i.i.i519

.lr.ph.i.i.i.i519:                                ; preds = %.lr.ph.i.i.i.i519, %.lr.ph.i.i.i.preheader.i518
  %.06.i.i.pn.i.i520 = phi ptr [ %.06.i.i.i.i521, %.lr.ph.i.i.i.i519 ], [ %i.gw, %.lr.ph.i.i.i.preheader.i518 ]
  %.06.i.i.i.i521 = getelementptr inbounds nuw i8, ptr %.06.i.i.pn.i.i520, i64 8 ; 3 uses
  %i.gx = load ptr, ptr %.06.i.i.i.i521, align 8, !tbaa !369
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef 1024) #25
  %i.gy = icmp ult ptr %.06.i.i.i.i521, %i.gr
  br i1 %i.gy, label %.lr.ph.i.i.i.i519, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i522, !llvm.loop !99

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i522: ; preds = %.lr.ph.i.i.i.i519
  %.pre.i.i523 = load i64, ptr %i.ec, align 8, !tbaa !578
  br label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i517

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i517: ; preds = %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i522, %.split.i.i.i.i514
  %i.gz = phi i64 [ %.pre.i.i523, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i522 ], [ %i.fh, %.split.i.i.i.i514 ]
  %i.ha = sub i64 %i.gz, %52
  store i64 %i.ha, ptr %i.ec, align 8, !tbaa !578
  br label %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit525

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071.thread: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071
  %i.hb = sub nuw nsw i64 200, %i.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef %i.hb)
          to label %.noexc524 unwind label %bb.y

.noexc524:                                        ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread1071.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit525

_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit525: ; preds = %.noexc524, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i517
  %i.hc = load ptr, ptr %i.ev, align 8, !tbaa !381 ; 4 uses
  %i.hd = load ptr, ptr %i.eb, align 8, !tbaa !379 ; 5 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64               ; 4 uses
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = ashr exact i64 %i.hg, 2                 ; 2 uses
  %i.hi = icmp ult i64 %i.hh, 200
  br i1 %i.hi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit525
  %i.hj = sub nuw nsw i64 200, %i.hh
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 noundef %i.hj)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit529_crit_edge unwind label %bb.y

._ZNSt6vectorIiSaIiEE6resizeEm.exit529_crit_edge: ; preds = %bb.z
  %.pre1162 = load ptr, ptr %i.ev, align 8, !tbaa !381
  %.pre1163 = load ptr, ptr %i.eb, align 8, !tbaa !379 ; 2 uses
  %.pre1169 = ptrtoint ptr %.pre1163 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit529

bb.aa:                                            ; preds = %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit525
  %.not1102 = icmp eq i64 %i.hg, 800
  br i1 %.not1102, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit529, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 800 ; 3 uses
  %.not.i.i526 = icmp eq ptr %i.hc, %i.hk
  br i1 %.not.i.i526, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit529, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i527

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i527:     ; preds = %bb.ab
  store ptr %i.hk, ptr %i.ev, align 8, !tbaa !381
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit529

_ZNSt6vectorIiSaIiEE6resizeEm.exit529:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit529_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i527, %bb.ab, %bb.aa
  %.pre-phi1170 = phi i64 [ %.pre1169, %._ZNSt6vectorIiSaIiEE6resizeEm.exit529_crit_edge ], [ %i.hf, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i527 ], [ %i.hf, %bb.ab ], [ %i.hf, %bb.aa ]
  %i.hl = phi ptr [ %.pre1163, %._ZNSt6vectorIiSaIiEE6resizeEm.exit529_crit_edge ], [ %i.hd, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i527 ], [ %i.hd, %bb.ab ], [ %i.hd, %bb.aa ] ; 3 uses
  %i.hm = phi ptr [ %.pre1162, %._ZNSt6vectorIiSaIiEE6resizeEm.exit529_crit_edge ], [ %i.hk, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i527 ], [ %i.hc, %bb.ab ], [ %i.hc, %bb.aa ] ; 3 uses
  %i.hn = load i64, ptr %i.ec, align 8, !tbaa !578 ; 9 uses
  %i.ho = load i64, ptr %i.ee, align 8, !tbaa !574 ; 5 uses
  %i.hp = sub i64 %i.hn, %i.ho                    ; 4 uses
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hq, %.pre-phi1170
  %i.hs = ashr exact i64 %i.hr, 2
  %.not.i530 = icmp eq i64 %i.hp, %i.hs
  br i1 %.not.i530, label %bb.ac, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit529
  %i.ht = load ptr, ptr %i.ea, align 8, !tbaa !573, !noalias !6835 ; 4 uses
  %.not.i.i.i.i532 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i532, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551, label %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i533

_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i533: ; preds = %bb.ac
  %i.hu = lshr i64 %i.ho, 5
  %.idx40.i534 = and i64 %i.hu, 576460752303423480 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx40.i534 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !369, !noalias !6835 ; 2 uses
  %i.hx = and i64 %i.ho, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hx ; 3 uses
  %i.hz = lshr i64 %i.hn, 5
  %.idx.i535 = and i64 %i.hz, 576460752303423480  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx.i535
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !369, !noalias !6836
  %i.ic = and i64 %i.hn, 255                      ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.hy                ; 3 uses
  %gepdiff.i536 = sub nsw i64 %.idx.i535, %.idx40.i534
  %i.if = shl nsw i64 %gepdiff.i536, 5
  %i.ig = sub nsw i64 %i.ic, %i.hx
  %i.ih = add i64 %i.ig, %i.if
  %.sroa.0.0.i1739.i537 = select i1 %i.ie, ptr %i.hy, ptr %i.id
  %.0.i.i.i.i538 = select i1 %i.ie, i64 0, i64 %i.ih
  %.not12.i539 = icmp eq i64 %.0.i.i.i.i538, %i.hp
  br i1 %.not12.i539, label %.preheader.i540, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

.preheader.i540:                                  ; preds = %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i533
  br i1 %i.ie, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075, label %.lr.ph.i541

.lr.ph.i541:                                      ; preds = %.preheader.i540, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545
  %i.ii = phi ptr [ %i.ir, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545 ], [ %i.hw, %.preheader.i540 ] ; 2 uses
  %.sroa.9.045.i542 = phi ptr [ %.sroa.9.1.i547, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545 ], [ %i.hv, %.preheader.i540 ] ; 2 uses
  %.sroa.024.044.i543 = phi ptr [ %.sroa.024.1.i546, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545 ], [ %i.hy, %.preheader.i540 ] ; 2 uses
  %.sroa.020.043.i544 = phi ptr [ %i.is, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545 ], [ %i.hl, %.preheader.i540 ] ; 2 uses
  %i.ij = load i32, ptr %.sroa.024.044.i543, align 4, !tbaa !370
  %i.ik = load i32, ptr %.sroa.020.043.i544, align 4, !tbaa !370
  %i.il = icmp eq i32 %i.ij, %i.ik
  br i1 %i.il, label %bb.ad, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

bb.ad:                                            ; preds = %.lr.ph.i541
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.024.044.i543, i64 4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 1024
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %bb.ae, label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545, !prof !375

bb.ae:                                            ; preds = %bb.ad
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.9.045.i542, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !369 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545

_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545: ; preds = %bb.ae, %bb.ad
  %i.ir = phi ptr [ %i.iq, %bb.ae ], [ %i.ii, %bb.ad ]
  %.sroa.024.1.i546 = phi ptr [ %i.iq, %bb.ae ], [ %i.im, %bb.ad ] ; 2 uses
  %.sroa.9.1.i547 = phi ptr [ %i.ip, %bb.ae ], [ %.sroa.9.045.i542, %bb.ad ]
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.020.043.i544, i64 4
  %.not41.i548 = icmp eq ptr %.sroa.024.1.i546, %.sroa.0.0.i1739.i537
  br i1 %.not41.i548, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075, label %.lr.ph.i541, !llvm.loop !98

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551: ; preds = %bb.ac
  %.not1258.i550 = icmp eq i64 %i.hn, %i.ho
  br i1 %.not1258.i550, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075: ; preds = %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i545, %.preheader.i540, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551
  %.not1103 = icmp eq i64 %i.hn, %i.ho
  br i1 %.not1103, label %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit564, label %.split.i.i.i.i553

.split.i.i.i.i553:                                ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075
  %i.it = lshr i64 %i.hn, 8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.it ; 2 uses
  %.idx.i554 = and i64 %i.hn, 255
  %i.iv = sub nsw i64 %.idx.i554, %i.hp           ; 2 uses
  %or.cond.i555 = icmp slt i64 %i.iv, 0
  br i1 %or.cond.i555, label %.lr.ph.i.i.i.preheader.i557, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i556

.lr.ph.i.i.i.preheader.i557:                      ; preds = %.split.i.i.i.i553
  %i.iw = lshr i64 %i.iv, 5
  %i.ix = and i64 %i.iw, 576460752303423480
  %i.iy = getelementptr i8, ptr %i.iu, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 -576460752303423488
  br label %.lr.ph.i.i.i.i558

.lr.ph.i.i.i.i558:                                ; preds = %.lr.ph.i.i.i.i558, %.lr.ph.i.i.i.preheader.i557
  %.06.i.i.pn.i.i559 = phi ptr [ %.06.i.i.i.i560, %.lr.ph.i.i.i.i558 ], [ %i.iz, %.lr.ph.i.i.i.preheader.i557 ]
  %.06.i.i.i.i560 = getelementptr inbounds nuw i8, ptr %.06.i.i.pn.i.i559, i64 8 ; 3 uses
  %i.ja = load ptr, ptr %.06.i.i.i.i560, align 8, !tbaa !369
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef 1024) #25
  %i.jb = icmp ult ptr %.06.i.i.i.i560, %i.iu
  br i1 %i.jb, label %.lr.ph.i.i.i.i558, label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i561, !llvm.loop !99

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i561: ; preds = %.lr.ph.i.i.i.i558
  %.pre.i.i562 = load i64, ptr %i.ec, align 8, !tbaa !578
  %.pre1164.pre = load ptr, ptr %i.ev, align 8, !tbaa !381
  %.pre1165.pre = load ptr, ptr %i.eb, align 8, !tbaa !379
  br label %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i556

_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i556: ; preds = %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i561, %.split.i.i.i.i553
  %.pre1165 = phi ptr [ %.pre1165.pre, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i561 ], [ %i.hl, %.split.i.i.i.i553 ]
  %.pre1164 = phi ptr [ %.pre1164.pre, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i561 ], [ %i.hm, %.split.i.i.i.i553 ]
  %i.jc = phi i64 [ %.pre.i.i562, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.loopexit.i.i561 ], [ %i.hn, %.split.i.i.i.i553 ]
  %i.jd = sub i64 %i.jc, %i.hp                    ; 2 uses
  store i64 %i.jd, ptr %i.ec, align 8, !tbaa !578
  br label %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit564

_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit564: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i556
  %i.je = phi i64 [ %i.hn, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075 ], [ %i.jd, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i556 ] ; 4 uses
  %i.jf = phi ptr [ %i.hl, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075 ], [ %.pre1165, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i556 ] ; 3 uses
  %i.jg = phi ptr [ %i.hm, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit551.thread1075 ], [ %.pre1164, %_ZN5boost9container10deque_baseISaIiENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPiS7_.exit.i.i556 ]
  %.not.i.i565 = icmp eq ptr %i.jg, %i.jf
  br i1 %.not.i.i565, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit567, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i566

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i566:     ; preds = %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit564
  store ptr %i.jf, ptr %i.ev, align 8, !tbaa !381
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit567

_ZNSt6vectorIiSaIiEE6resizeEm.exit567:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i566, %_ZN5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE6resizeEm.exit564
  %i.jh = load i64, ptr %i.ee, align 8, !tbaa !574 ; 3 uses
  %.not.i568 = icmp eq i64 %i.je, %i.jh
  br i1 %.not.i568, label %bb.af, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit567
  %i.ji = load ptr, ptr %i.ea, align 8, !tbaa !573, !noalias !6837 ; 4 uses
  %.not.i.i.i.i570 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i570, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit589.thread1079, label %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i571

_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i571: ; preds = %bb.af
  %i.jj = lshr i64 %i.jh, 5
  %.idx40.i572 = and i64 %i.jj, 576460752303423480 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.idx40.i572 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !369, !noalias !6837 ; 2 uses
  %i.jm = and i64 %i.jh, 255                      ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jm ; 3 uses
  %i.jo = lshr i64 %i.je, 5
  %.idx.i573 = and i64 %i.jo, 576460752303423480  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.idx.i573
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !369, !noalias !6838
  %i.jr = and i64 %i.je, 255                      ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jr ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.jn                ; 3 uses
  %gepdiff.i574.neg = sub nsw i64 %.idx40.i572, %.idx.i573
  %.neg = shl i64 %gepdiff.i574.neg, 5
  %i.ju = sub nsw i64 %i.jr, %i.jm
  %.sroa.0.0.i1739.i575 = select i1 %i.jt, ptr %i.jn, ptr %i.js
  %.not12.i5771311 = icmp eq i64 %i.ju, %.neg
  %.not12.i577 = select i1 %i.jt, i1 true, i1 %.not12.i5771311
  br i1 %.not12.i577, label %.preheader.i578, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit512.thread

.preheader.i578:                                  ; preds = %_ZNK5boost9container10deque_implIiSaIiELb0ENS0_9deque_optILm0ELm0EvLb0EEEE3endEv.exit.i571
  br i1 %i.jt, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEESt6vectorIiS4_EEEbRKT_RKT0_.exit589.thread1079, label %.lr.ph.i579

.lr.ph.i579:                                      ; preds = %.preheader.i578, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i583
  %i.jv = phi ptr [ %i.ke, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i583 ], [ %i.jl, %.preheader.i578 ] ; 2 uses
  %.sroa.9.045.i580 = phi ptr [ %.sroa.9.1.i585, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i583 ], [ %i.jk, %.preheader.i578 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
  br i1 %brmerge, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread1297, label %.lr.ph.i

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %bb.f
  %.not1258.i = icmp eq i64 %i.bn, %i.bm
  br label %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit.thread

.lr.ph.i:                                         ; preds = %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i
  %i.cj = phi ptr [ %i.cs, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bx, %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i ] ; 2 uses
  %.sroa.9.045.i = phi ptr [ %.sroa.9.1.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bw, %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i ] ; 2 uses
  %.sroa.024.044.i = phi ptr [ %.sroa.024.1.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bz, %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i ] ; 2 uses
  %.sroa.020.043.i = phi ptr [ %i.ct, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.bq, %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i ] ; 2 uses
  %i.ck = load i32, ptr %.sroa.024.044.i, align 4, !tbaa !370
  %i.cl = load i32, ptr %.sroa.020.043.i, align 4, !tbaa !370
  %i.cm = icmp eq i32 %i.ck, %i.cl                ; 3 uses
  br i1 %i.cm, label %bb.g, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.024.044.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.h, label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i, !prof !375

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.9.045.i, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !369 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i: ; preds = %bb.h, %bb.g
  %i.cs = phi ptr [ %i.cr, %bb.h ], [ %i.cj, %bb.g ]
  %.sroa.024.1.i = phi ptr [ %i.cr, %bb.h ], [ %i.cn, %bb.g ] ; 2 uses
  %.sroa.9.1.i = phi ptr [ %i.cq, %bb.h ], [ %.sroa.9.045.i, %bb.g ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.020.043.i, i64 4
  %.not41.i = icmp eq ptr %.sroa.024.1.i, %.sroa.0.0.i1739.i
  br i1 %.not41.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !231

bb.i:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %.loopexit1102
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEaSEOS6_.exit
  %.2.i.ph = phi i1 [ false, %_ZN5boost9container5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEaSEOS6_.exit ], [ %i.cm, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  %.not.i.i.i.i.i464 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i464, label %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit.thread, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread1297

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread1297: ; preds = %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %.2.i.ph1300 = phi i1 [ %.2.i.ph, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %not..not12.i, %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i ] ; 2 uses
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.bl, 3
  %i.cw = getelementptr inbounds i8, ptr %.pr, i64 %.idx.i.i.i.i.i.i
  %i.cx = icmp sgt i64 %i.bl, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread1297, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.db, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i ], [ %.pr, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread1297 ] ; 2 uses
  %i.cy = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !369
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.cy)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = icmp ult ptr %i.db, %i.cw
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i, !llvm.loop !232

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !640
  br label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread1297
  %i.dd = phi ptr [ %.pre.i.i.i.i.i, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i ], [ %.pr, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread1297 ]
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.dd)
          to label %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  tail call void @__clang_call_terminate(ptr %i.df) #23
  unreachable

_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit.thread: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %.2.i1046.ph = phi i1 [ %.2.i.ph, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %.not1258.i, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #25
  br label %bb.m

_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %6, align 8, !tbaa !680   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #25
  %.not.i465 = icmp eq ptr %.pre, null
  br i1 %.not.i465, label %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit475, label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit.thread, %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit
  %.2.i10461303 = phi i1 [ %.2.i1046.ph, %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit.thread ], [ %.2.i.ph1300, %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit ]
  %i.dg = phi ptr [ %i.ai, %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit.thread ], [ %.pre, %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit ] ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !640, !noalias !14828 ; 4 uses
  %.not.i.i.i.i.i466 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i466, label %_ZNK5boost7movelib14default_deleteINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i469, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !646 ; 2 uses
  %.idx.i.i.i.i.i.i467 = shl nsw i64 %i.dj, 3
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i467
  %i.dl = icmp sgt i64 %i.dj, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i.i470, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i468

.lr.ph.i.i.i.i.i.i.i470:                          ; preds = %bb.n, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i472
  %.06.i.i.i.i.i.i.i471 = phi ptr [ %i.dp, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i472 ], [ %i.dh, %bb.n ] ; 2 uses
  %i.dm = load ptr, ptr %.06.i.i.i.i.i.i.i471, align 8, !tbaa !369
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.dm)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i472 unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i470
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  tail call void @__clang_call_terminate(ptr %i.do) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i472: ; preds = %.lr.ph.i.i.i.i.i.i.i470
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i471, i64 8 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.dk
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i.i470, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i473, !llvm.loop !232

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i473: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE20prot_deallocate_nodeEPi.exit.i.i.i.i.i.i.i472
  %.pre.i.i.i.i.i474 = load ptr, ptr %i.dg, align 8, !tbaa !640
  br label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i468

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i468: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i473, %bb.n
  %i.dr = phi ptr [ %.pre.i.i.i.i.i474, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i.i.i.i473 ], [ %i.dh, %bb.n ]
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.dr)
          to label %_ZNK5boost7movelib14default_deleteINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i469 unwind label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i468
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  tail call void @__clang_call_terminate(ptr %i.dt) #23
  unreachable

_ZNK5boost7movelib14default_deleteINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i469: ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i.i.i.i468, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #25
  br label %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit475

_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit475: ; preds = %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit, %_ZNK5boost7movelib14default_deleteINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i469
  %.2.i10461304 = phi i1 [ %.2.i.ph1300, %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit ], [ %.2.i10461303, %_ZNK5boost7movelib14default_deleteINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i469 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.du = load ptr, ptr %5, align 8, !tbaa !625   ; 4 uses
  %.not.i476 = icmp eq ptr %i.du, null
  br i1 %.not.i476, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit475
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !379 ; 3 uses
  %.not.i.i.i.i.i.i477 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i477, label %_ZNK5boost7movelib14default_deleteISt6vectorIiSaIiEEEclIS4_EENS_8move_upd18enable_defdel_callIT_S4_vE4typeEPS9_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !378
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #25
  br label %_ZNK5boost7movelib14default_deleteISt6vectorIiSaIiEEEclIS4_EENS_8move_upd18enable_defdel_callIT_S4_vE4typeEPS9_.exit.i

_ZNK5boost7movelib14default_deleteISt6vectorIiSaIiEEEclIS4_EENS_8move_upd18enable_defdel_callIT_S4_vE4typeEPS9_.exit.i: ; preds = %bb.r, %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 24) #25
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %_ZN5boost7movelib10unique_ptrINS_9container5dequeIiNS2_9allocatorIiLj2ELj0EEENS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit475, %_ZNK5boost7movelib14default_deleteISt6vectorIiSaIiEEEclIS4_EENS_8move_upd18enable_defdel_callIT_S4_vE4typeEPS9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.2.i10461304, label %bb.s, label %bb.jw

bb.s:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14829)
  %i.eb = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !14829 ; 103 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i8 0, i64 32, i1 false), !noalias !14829
  store ptr %i.eb, ptr %7, align 8, !tbaa !644, !alias.scope !14829
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14830)
  %i.ec = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.t unwind label %bb.ab      ; 90 uses

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false), !noalias !14830
  store ptr %i.ec, ptr %8, align 8, !tbaa !582, !alias.scope !14830
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 25 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !645 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 21 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !641
  %i.eh = sub i64 %i.ee, %i.eg                    ; 3 uses
  %i.ei = icmp ugt i64 %i.eh, 100
  br i1 %i.ei, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i, label %bb.u

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i: ; preds = %bb.t
  %.neg.i = add i64 %i.ee, 100
  %i.ej = sub i64 %.neg.i, %i.eh
  store i64 %i.ej, ptr %i.ed, align 8, !tbaa !645
  br label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.ek = sub nuw nsw i64 100, %i.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 noundef %i.ek)
          to label %.noexc480 unwind label %bb.ac

.noexc480:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.pre1136 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !381
  %.pre1137 = load ptr, ptr %i.ec, align 8, !tbaa !379
  br label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit

_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit: ; preds = %.noexc480, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i
  %51 = phi ptr [ %.pre1137, %.noexc480 ], [ null, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i ] ; 5 uses
  %52 = phi ptr [ %.pre1136, %.noexc480 ], [ null, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 42 uses
  %i.em = ptrtoint ptr %52 to i64
  %i.en = ptrtoint ptr %51 to i64                 ; 4 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 2 uses
  %i.ep = ashr exact i64 %i.eo, 2                 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, 100
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit
  %i.er = sub nuw nsw i64 100, %i.ep
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 noundef %i.er)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.ac

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.v
  %.pre1138 = load ptr, ptr %i.ec, align 8, !tbaa !379 ; 2 uses
  %.pre1143 = load ptr, ptr %i.el, align 8, !tbaa !381
  %.pre1144 = ptrtoint ptr %.pre1138 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.w:                                             ; preds = %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit
  %.not1075 = icmp eq i64 %i.eo, 400
  br i1 %.not1075, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %51, i64 400 ; 3 uses
  %.not.i.i481 = icmp eq ptr %52, %i.es
  br i1 %.not.i.i481, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.x
  store ptr %i.es, ptr %i.el, align 8, !tbaa !381
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.x, %bb.w
  %.pre-phi = phi i64 [ %.pre1144, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.en, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.en, %bb.x ], [ %i.en, %bb.w ] ; 2 uses
  %i.et = phi ptr [ %.pre1143, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.es, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %52, %bb.x ], [ %52, %bb.w ] ; 2 uses
  %i.eu = phi ptr [ %.pre1138, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %51, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %51, %bb.x ], [ %51, %bb.w ] ; 2 uses
  %i.ev = load i64, ptr %i.ed, align 8, !tbaa !645 ; 5 uses
  %i.ew = load i64, ptr %i.ef, align 8, !tbaa !641 ; 4 uses
  %i.ex = sub i64 %i.ev, %i.ew                    ; 5 uses
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = sub i64 %i.ey, %.pre-phi                ; 2 uses
  %i.fa = ashr exact i64 %i.ez, 2                 ; 2 uses
  %.not.i483 = icmp eq i64 %i.ex, %i.fa
  br i1 %.not.i483, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fb = load ptr, ptr %i.eb, align 8, !tbaa !640, !noalias !14831 ; 3 uses
  %.not.i.i.i.i485 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i485, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504, label %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i486

_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i486: ; preds = %bb.y
  %i.fc = lshr i64 %i.ew, 5
  %.idx40.i487 = and i64 %i.fc, 576460752303423480 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx40.i487 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !369, !noalias !14831 ; 2 uses
  %i.ff = and i64 %i.ew, 255                      ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ff ; 3 uses
  %i.fh = lshr i64 %i.ev, 5
  %.idx.i488 = and i64 %i.fh, 576460752303423480  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx.i488
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !369, !noalias !14832
  %i.fk = and i64 %i.ev, 255                      ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fk ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fg                ; 3 uses
  %gepdiff.i489 = sub nsw i64 %.idx.i488, %.idx40.i487
  %i.fn = shl nsw i64 %gepdiff.i489, 5
  %i.fo = sub nsw i64 %i.fk, %i.ff
  %i.fp = add i64 %i.fo, %i.fn
  %.sroa.0.0.i1739.i490 = select i1 %i.fm, ptr %i.fg, ptr %i.fl
  %.0.i.i.i.i491 = select i1 %i.fm, i64 0, i64 %i.fp
  %.not12.i492 = icmp eq i64 %.0.i.i.i.i491, %i.ex
  br i1 %.not12.i492, label %.preheader.i493, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

.preheader.i493:                                  ; preds = %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i486
  br i1 %i.fm, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049, label %.lr.ph.i494

.lr.ph.i494:                                      ; preds = %.preheader.i493, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498
  %i.fq = phi ptr [ %i.fz, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498 ], [ %i.fe, %.preheader.i493 ] ; 2 uses
  %.sroa.9.045.i495 = phi ptr [ %.sroa.9.1.i500, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498 ], [ %i.fd, %.preheader.i493 ] ; 2 uses
  %.sroa.024.044.i496 = phi ptr [ %.sroa.024.1.i499, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498 ], [ %i.fg, %.preheader.i493 ] ; 2 uses
  %.sroa.020.043.i497 = phi ptr [ %i.ga, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498 ], [ %i.eu, %.preheader.i493 ] ; 2 uses
  %i.fr = load i32, ptr %.sroa.024.044.i496, align 4, !tbaa !370
  %i.fs = load i32, ptr %.sroa.020.043.i497, align 4, !tbaa !370
  %i.ft = icmp eq i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.z, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

bb.z:                                             ; preds = %.lr.ph.i494
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.024.044.i496, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 1024
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.aa, label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498, !prof !375

bb.aa:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.9.045.i495, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !369 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498

_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498: ; preds = %bb.aa, %bb.z
  %i.fz = phi ptr [ %i.fy, %bb.aa ], [ %i.fq, %bb.z ]
  %.sroa.024.1.i499 = phi ptr [ %i.fy, %bb.aa ], [ %i.fu, %bb.z ] ; 2 uses
  %.sroa.9.1.i500 = phi ptr [ %i.fx, %bb.aa ], [ %.sroa.9.045.i495, %bb.z ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.020.043.i497, i64 4
  %.not41.i501 = icmp eq ptr %.sroa.024.1.i499, %.sroa.0.0.i1739.i490
  br i1 %.not41.i501, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049, label %.lr.ph.i494, !llvm.loop !231

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504: ; preds = %bb.y
  %.not1258.i503 = icmp eq i64 %i.ev, %i.ew
  br i1 %.not1258.i503, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049.thread, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

.body:                                            ; preds = %bb.i, %bb.d, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.j ], [ %i.cu, %bb.i ], [ %i.ba, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.ab:                                            ; preds = %bb.s
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.ac:                                            ; preds = %bb.ad, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049.thread, %bb.v, %bb.u
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049: ; preds = %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i498, %.preheader.i493
  %i.gd = icmp ugt i64 %i.ex, 200
  br i1 %i.gd, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049.thread

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049
  %.neg.i507 = add i64 %i.ev, 200
  %i.ge = sub i64 %.neg.i507, %i.ex
  store i64 %i.ge, ptr %i.ed, align 8, !tbaa !645
  br label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit509

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049.thread: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049
  %i.gf = sub nuw nsw i64 200, %i.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 noundef %i.gf)
          to label %.noexc508 unwind label %bb.ac

.noexc508:                                        ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread1049.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre1139 = load ptr, ptr %i.el, align 8, !tbaa !381 ; 2 uses
  %.pre1140 = load ptr, ptr %i.ec, align 8, !tbaa !379 ; 2 uses
  %.pre1145 = ptrtoint ptr %.pre1139 to i64
  %.pre1147 = ptrtoint ptr %.pre1140 to i64       ; 2 uses
  %.pre1149 = sub i64 %.pre1145, %.pre1147        ; 2 uses
  %.pre1151 = ashr exact i64 %.pre1149, 2
  br label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit509

_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit509: ; preds = %.noexc508, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506
  %.pre-phi1152 = phi i64 [ %.pre1151, %.noexc508 ], [ %i.fa, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506 ] ; 2 uses
  %.pre-phi1150 = phi i64 [ %.pre1149, %.noexc508 ], [ %i.ez, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506 ]
  %.pre-phi1148 = phi i64 [ %.pre1147, %.noexc508 ], [ %.pre-phi, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506 ] ; 3 uses
  %53 = phi ptr [ %.pre1140, %.noexc508 ], [ %i.eu, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506 ] ; 4 uses
  %54 = phi ptr [ %.pre1139, %.noexc508 ], [ %i.et, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i506 ] ; 3 uses
  %i.gg = icmp ult i64 %.pre-phi1152, 200
  br i1 %i.gg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit509
  %i.gh = sub nuw nsw i64 200, %.pre-phi1152
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 noundef %i.gh)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit513_crit_edge unwind label %bb.ac

._ZNSt6vectorIiSaIiEE6resizeEm.exit513_crit_edge: ; preds = %bb.ad
  %.pre1141 = load ptr, ptr %i.el, align 8, !tbaa !381
  %.pre1142 = load ptr, ptr %i.ec, align 8, !tbaa !379 ; 2 uses
  %.pre1153 = ptrtoint ptr %.pre1142 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit513

bb.ae:                                            ; preds = %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit509
  %.not1076 = icmp eq i64 %.pre-phi1150, 800
  br i1 %.not1076, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit513, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gi = getelementptr inbounds nuw i8, ptr %53, i64 800 ; 3 uses
  %.not.i.i510 = icmp eq ptr %54, %i.gi
  br i1 %.not.i.i510, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit513, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i511

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i511:     ; preds = %bb.af
  store ptr %i.gi, ptr %i.el, align 8, !tbaa !381
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit513

_ZNSt6vectorIiSaIiEE6resizeEm.exit513:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit513_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i511, %bb.af, %bb.ae
  %.pre-phi1154 = phi i64 [ %.pre1153, %._ZNSt6vectorIiSaIiEE6resizeEm.exit513_crit_edge ], [ %.pre-phi1148, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i511 ], [ %.pre-phi1148, %bb.af ], [ %.pre-phi1148, %bb.ae ]
  %i.gj = phi ptr [ %.pre1142, %._ZNSt6vectorIiSaIiEE6resizeEm.exit513_crit_edge ], [ %53, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i511 ], [ %53, %bb.af ], [ %53, %bb.ae ] ; 4 uses
  %i.gk = phi ptr [ %.pre1141, %._ZNSt6vectorIiSaIiEE6resizeEm.exit513_crit_edge ], [ %i.gi, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i511 ], [ %54, %bb.af ], [ %54, %bb.ae ] ; 2 uses
  %i.gl = load i64, ptr %i.ed, align 8, !tbaa !645 ; 6 uses
  %i.gm = load i64, ptr %i.ef, align 8, !tbaa !641 ; 10 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 2 uses
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.go, %.pre-phi1154
  %i.gq = ashr exact i64 %i.gp, 2
  %.not.i514 = icmp eq i64 %i.gn, %i.gq
  br i1 %.not.i514, label %bb.ag, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit513
  %i.gr = load ptr, ptr %i.eb, align 8, !tbaa !640, !noalias !14833 ; 6 uses
  %.not.i.i.i.i516 = icmp eq ptr %i.gr, null      ; 2 uses
  br i1 %.not.i.i.i.i516, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535, label %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i517

_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i517: ; preds = %bb.ag
  %i.gs = lshr i64 %i.gm, 5
  %.idx40.i518 = and i64 %i.gs, 576460752303423480 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx40.i518 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !369, !noalias !14833 ; 2 uses
  %i.gv = and i64 %i.gm, 255                      ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gv ; 3 uses
  %i.gx = lshr i64 %i.gl, 5
  %.idx.i519 = and i64 %i.gx, 576460752303423480  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx.i519
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !369, !noalias !14834
  %i.ha = and i64 %i.gl, 255                      ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ha ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gw                ; 3 uses
  %gepdiff.i520 = sub nsw i64 %.idx.i519, %.idx40.i518
  %i.hd = shl nsw i64 %gepdiff.i520, 5
  %i.he = sub nsw i64 %i.ha, %i.gv
  %i.hf = add i64 %i.he, %i.hd
  %.sroa.0.0.i1739.i521 = select i1 %i.hc, ptr %i.gw, ptr %i.hb
  %.0.i.i.i.i522 = select i1 %i.hc, i64 0, i64 %i.hf
  %.not12.i523 = icmp eq i64 %.0.i.i.i.i522, %i.gn
  br i1 %.not12.i523, label %.preheader.i524, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

.preheader.i524:                                  ; preds = %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i517
  br i1 %i.hc, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535.thread1053, label %.lr.ph.i525

.lr.ph.i525:                                      ; preds = %.preheader.i524, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529
  %i.hg = phi ptr [ %i.hp, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529 ], [ %i.gu, %.preheader.i524 ] ; 2 uses
  %.sroa.9.045.i526 = phi ptr [ %.sroa.9.1.i531, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529 ], [ %i.gt, %.preheader.i524 ] ; 2 uses
  %.sroa.024.044.i527 = phi ptr [ %.sroa.024.1.i530, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529 ], [ %i.gw, %.preheader.i524 ] ; 2 uses
  %.sroa.020.043.i528 = phi ptr [ %i.hq, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529 ], [ %i.gj, %.preheader.i524 ] ; 2 uses
  %i.hh = load i32, ptr %.sroa.024.044.i527, align 4, !tbaa !370
  %i.hi = load i32, ptr %.sroa.020.043.i528, align 4, !tbaa !370
  %i.hj = icmp eq i32 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

bb.ah:                                            ; preds = %.lr.ph.i525
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.024.044.i527, i64 4 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 1024
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %bb.ai, label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529, !prof !375

bb.ai:                                            ; preds = %bb.ah
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.9.045.i526, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !369 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529

_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529: ; preds = %bb.ai, %bb.ah
  %i.hp = phi ptr [ %i.ho, %bb.ai ], [ %i.hg, %bb.ah ]
  %.sroa.024.1.i530 = phi ptr [ %i.ho, %bb.ai ], [ %i.hk, %bb.ah ] ; 2 uses
  %.sroa.9.1.i531 = phi ptr [ %i.hn, %bb.ai ], [ %.sroa.9.045.i526, %bb.ah ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.020.043.i528, i64 4
  %.not41.i532 = icmp eq ptr %.sroa.024.1.i530, %.sroa.0.0.i1739.i521
  br i1 %.not41.i532, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535.thread1053, label %.lr.ph.i525, !llvm.loop !231

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535: ; preds = %bb.ag
  %.not1258.i534 = icmp eq i64 %i.gl, %i.gm
  br i1 %.not1258.i534, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535.thread1053, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535.thread1053: ; preds = %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i529, %.preheader.i524, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535
  %.not1077 = icmp eq i64 %i.gl, %i.gm
  br i1 %.not1077, label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit540, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i537

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i537: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535.thread1053
  store i64 %i.gm, ptr %i.ed, align 8, !tbaa !645
  br label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit540

_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit540: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535.thread1053, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i537
  %i.hr = phi i64 [ %i.gl, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit535.thread1053 ], [ %i.gm, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE11prot_finishEv.exit.i.i537 ] ; 4 uses
  %.not.i.i541 = icmp eq ptr %i.gk, %i.gj
  br i1 %.not.i.i541, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit543, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i542

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i542:     ; preds = %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit540
  store ptr %i.gj, ptr %i.el, align 8, !tbaa !381
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit543

_ZNSt6vectorIiSaIiEE6resizeEm.exit543:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i542, %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE6resizeEm.exit540
  %.not.i544 = icmp eq i64 %i.hr, %i.gm
  br i1 %.not.i544, label %bb.aj, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit543
  br i1 %.not.i.i.i.i516, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057, label %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i547

_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i547: ; preds = %bb.aj
  %i.hs = lshr i64 %i.gm, 5
  %.idx40.i548 = and i64 %i.hs, 576460752303423480 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx40.i548 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !369, !noalias !14835 ; 2 uses
  %i.hv = and i64 %i.gm, 255                      ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hv ; 3 uses
  %i.hx = lshr i64 %i.hr, 5
  %.idx.i549 = and i64 %i.hx, 576460752303423480  ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx.i549
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !369, !noalias !14836
  %i.ia = and i64 %i.hr, 255                      ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ia ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hw                ; 3 uses
  %gepdiff.i550.neg = sub nsw i64 %.idx40.i548, %.idx.i549
  %.neg = shl i64 %gepdiff.i550.neg, 5
  %i.id = sub nsw i64 %i.ia, %i.hv
  %.sroa.0.0.i1739.i551 = select i1 %i.ic, ptr %i.hw, ptr %i.ib
  %.not12.i5531296 = icmp eq i64 %i.id, %.neg
  %.not12.i553 = select i1 %i.ic, i1 true, i1 %.not12.i5531296
  br i1 %.not12.i553, label %.preheader.i554, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

.preheader.i554:                                  ; preds = %_ZNK5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit.i547
  br i1 %i.ic, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057, label %.lr.ph.i555

.lr.ph.i555:                                      ; preds = %.preheader.i554, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559
  %i.ie = phi ptr [ %i.in, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559 ], [ %i.hu, %.preheader.i554 ] ; 2 uses
  %.sroa.9.045.i556 = phi ptr [ %.sroa.9.1.i561, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559 ], [ %i.ht, %.preheader.i554 ] ; 2 uses
  %.sroa.024.044.i557 = phi ptr [ %.sroa.024.1.i560, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559 ], [ %i.hw, %.preheader.i554 ] ; 2 uses
  %.sroa.020.043.i558 = phi ptr [ %i.io, %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559 ], [ %i.gj, %.preheader.i554 ] ; 2 uses
  %i.if = load i32, ptr %.sroa.024.044.i557, align 4, !tbaa !370
  %i.ig = load i32, ptr %.sroa.020.043.i558, align 4, !tbaa !370
  %i.ih = icmp eq i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.ak, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit504.thread

bb.ak:                                            ; preds = %.lr.ph.i555
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.024.044.i557, i64 4 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 1024
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %bb.al, label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559, !prof !375

bb.al:                                            ; preds = %bb.ak
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.045.i556, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !369 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559

_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559: ; preds = %bb.al, %bb.ak
  %i.in = phi ptr [ %i.im, %bb.al ], [ %i.ie, %bb.ak ]
  %.sroa.024.1.i560 = phi ptr [ %i.im, %bb.al ], [ %i.ii, %bb.ak ] ; 2 uses
  %.sroa.9.1.i561 = phi ptr [ %i.il, %bb.al ], [ %.sroa.9.045.i556, %bb.ak ]
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.020.043.i558, i64 4
  %.not41.i562 = icmp eq ptr %.sroa.024.1.i560, %.sroa.0.0.i1739.i551
  br i1 %.not41.i562, label %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057, label %.lr.ph.i555, !llvm.loop !231

_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057: ; preds = %_ZN5boost9container14deque_iteratorIPiLb1ELj0ELj0EmEppEv.exit.i559, %bb.aj, %.preheader.i554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.a, align 4, !tbaa !370
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057
  %i.iq = phi i64 [ %i.hr, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057 ], [ %i.iz, %.backedge.backedge ] ; 2 uses
  %i.ir = phi ptr [ %i.gr, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057 ], [ %.be, %.backedge.backedge ] ; 2 uses
  %storemerge1103 = phi i32 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_5dequeIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit565.thread1057 ], [ %storemerge1103.be, %.backedge.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %storemerge1103, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i, label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.backedge
  %i.is = lshr i64 %i.iq, 8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !369, !noalias !14837
  %i.iv = and i64 %i.iq, 255
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.iv
  br label %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit

_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit: ; preds = %.backedge, %.split.i.i.i
  %.sink1.i = phi ptr [ %i.iw, %.split.i.i.i ], [ null, %.backedge ]
  %.sink.i = phi ptr [ %i.it, %.split.i.i.i ], [ null, %.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sink1.i, ptr %4, align 8, !tbaa !416, !noalias !14838
  store ptr %.sink.i, ptr %i.ip, align 8, !tbaa !417, !noalias !14838
  invoke void @_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE7emplaceIJiEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEENS8_IS9_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %_ZN5boost9container10deque_implIiNS0_9allocatorIiLj2ELj0EEELb0ENS0_9deque_optILm0ELm0EvLb1EEEE3endEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ix = load ptr, ptr %i.el, align 8, !tbaa !369
  %i.iy = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr %i.ix, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.an unwind label %bb.as     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.iz = load i64, ptr %i.ed, align 8, !tbaa !645 ; 7 uses
  %i.ja = load i64, ptr %i.ef, align 8, !tbaa !641 ; 8 uses
  %i.jb = sub i64 %i.iz, %i.ja                    ; 3 uses
  %i.jc = load ptr, ptr %i.el, align 8, !tbaa !381
  %i.jd = load ptr, ptr %i.ec, align 8, !tbaa !379 ; 4 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
end_hunk_1
