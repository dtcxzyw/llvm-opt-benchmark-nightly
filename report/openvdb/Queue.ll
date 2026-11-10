Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Queue?download=true
inline.NumInlined: 1013
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13rehash_bucketEPNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEm:bb.a

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.02544 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.02544.be, %.lr.ph.backedge ] ; 3 uses
  %.02743 = phi ptr [ %i.j, %.lr.ph.lr.ph ], [ %.02743.be, %.lr.ph.backedge ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02743, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
  %i.s = zext i32 %i.r to i64
  %i.t = and i64 %i.f, %i.s
  %i.u = icmp eq i64 %i.t, %2
  br i1 %i.u, label %bb.b, label %bb.n

bb.b:                                             ; preds = %.lr.ph
  %i.v = load i8, ptr %i.l, align 8, !tbaa !62, !range !69, !noundef !70
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.l, align 8, !tbaa !62
  %i.x = load ptr, ptr %3, align 8, !tbaa !61     ; 9 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.z = and i64 %i.y, -4
  %i.aa = icmp eq i64 %i.z, 4
  %i.ab = and i64 %i.y, 2
  %.not13.i = icmp eq i64 %i.ab, 0
  %or.cond14.i = or i1 %i.aa, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.ah, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.ac = or i64 %.0815.i, 3
  %i.ad = cmpxchg ptr %i.x, i64 %.0815.i, i64 %i.ac seq_cst seq_cst, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.af = load atomic i64, ptr %i.x monotonic, align 8
  %i.ag = and i64 %i.af, -4
  %.not217.i = icmp eq i64 %i.ag, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.ah = extractvalue { i64, i1 } %i.ad, 0       ; 3 uses
  %i.ai = and i64 %i.ah, -4
  %i.aj = icmp eq i64 %i.ai, 4
  %i.ak = and i64 %i.ah, 2
  %.not.i32 = icmp eq i64 %i.ak, 0
  %or.cond.i = or i1 %i.aj, %.not.i32
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !9

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.al = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i
  %i.am = icmp sgt i32 %.sroa.0.018.i, 0
  br i1 %i.am, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i32 %.sroa.0.018.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.an, %.lr.ph.i.i.i.prol ], [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.an = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !182

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %i.ao = icmp ult i32 %.sroa.0.018.i, 8
  br i1 %i.ao, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.ap = add nsw i32 %.01.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.aq = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.d
  %i.ar = shl i32 %.sroa.0.018.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.e:                                             ; preds = %.lr.ph19.i
  %i.as = call noundef i32 @sched_yield() #24     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.e, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ar, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ %.sroa.0.018.i, %bb.e ]
  %i.at = load atomic i64, ptr %i.x monotonic, align 8
  %i.au = and i64 %i.at, -4
  %.not2.i = icmp eq i64 %i.au, 4
  br i1 %.not2.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i, !llvm.loop !10

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %i.av = atomicrmw add ptr %i.x, i64 -6 seq_cst, align 8 ; 0 uses
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.c
  %i.aw = atomicrmw add ptr %i.x, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, %._crit_edge.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.bh, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %._crit_edge.i ] ; 4 uses
  %i.ax = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, %bb.i
  %i.ay = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.az = and i64 %i.ay, -3
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.ba = cmpxchg ptr %i.x, i64 %i.ay, i64 1 seq_cst seq_cst, align 8
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bb, label %.loopexit, label %.lr.ph.i.i.preheader.i.i

bb.g:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.bc = and i64 %i.ay, 2
  %.not1.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not1.i.i, label %bb.h, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bd = atomicrmw or ptr %i.x, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.h, %bb.g
  br i1 %i.ax, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.be = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.be, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.f
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.f ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.bf, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bf = add nsw i32 %.01.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.bg = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.bh = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, !llvm.loop !8

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bi = call noundef i32 @sched_yield() #24     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, !llvm.loop !8

bb.j:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, %bb.b
  %i.bj = load ptr, ptr %.02743, align 8, !tbaa !120 ; 3 uses
  %i.bk = icmp eq ptr %.02544, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store atomic ptr %i.bj, ptr %i.bm monotonic, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.bj, ptr %.02544, align 8, !tbaa !120
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = load atomic ptr, ptr %i.a monotonic, align 8
  store ptr %i.bn, ptr %.02743, align 8, !tbaa !120
  store atomic ptr %.02743, ptr %i.a monotonic, align 8
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %.02743, align 8, !tbaa !120
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.m, %bb.n
  %.229 = phi ptr [ %i.bo, %bb.n ], [ %i.bj, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %.02743, %bb.n ], [ %.02544, %bb.m ]
  %i.bp = icmp ugt ptr %.229, inttoptr (i64 63 to ptr)
  br i1 %i.bp, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %.loopexit
  %.02544.be = phi ptr [ %.2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ null, %.loopexit ]
  %.02743.be = phi ptr [ %.229, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ %i.o, %.loopexit ]
  br label %.lr.ph, !llvm.loop !183

._crit_edge:                                      ; preds = %.loopexit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.a
  %i.bq = load ptr, ptr %3, align 8, !tbaa !61    ; 3 uses
  %.not.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i30, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = atomicrmw and ptr %i.bq, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

bb.q:                                             ; preds = %bb.o
  %i.bv = atomicrmw add ptr %i.bq, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31: ; preds = %._crit_edge, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, -4
  %i.c = icmp eq i64 %i.b, 4
  %i.d = and i64 %i.a, 2
  %.not13 = icmp eq i64 %i.d, 0
  %or.cond14 = or i1 %i.c, %.not13
  br i1 %or.cond14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0815 = phi i64 [ %i.j, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = or i64 %.0815, 3
  %i.f = cmpxchg ptr %0, i64 %.0815, i64 %i.e seq_cst seq_cst, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %.preheader, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

.preheader:                                       ; preds = %.lr.ph
  %i.h = load atomic i64, ptr %0 monotonic, align 8
  %i.i = and i64 %i.h, -4
  %.not217 = icmp eq i64 %i.i, 4
  br i1 %.not217, label %._crit_edge20, label %.lr.ph19

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.j = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  %i.k = and i64 %i.j, -4
  %i.l = icmp eq i64 %i.k, 4
  %i.m = and i64 %i.j, 2
  %.not = icmp eq i64 %i.m, 0
  %or.cond = or i1 %i.l, %.not
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !9

.lr.ph19:                                         ; preds = %.preheader, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit
  %.sroa.0.018 = phi i32 [ %.sroa.0.1, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit ], [ 1, %.preheader ] ; 8 uses
  %i.n = icmp slt i32 %.sroa.0.018, 17
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph19
  %i.o = icmp sgt i32 %.sroa.0.018, 0
  br i1 %i.o, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i32 %.sroa.0.018, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.p, %.lr.ph.i.i.prol ], [ %.sroa.0.018, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = add nsw i32 %.01.i.i.prol, -1            ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !184

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.018, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i32 %.sroa.0.018, 8
  br i1 %i.q, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.r = add nsw i32 %.01.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.s = icmp sgt i32 %.01.i.i, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.t = shl i32 %.sroa.0.018, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

bb.c:                                             ; preds = %.lr.ph19
  %i.u = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit:   ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, %bb.c
  %.sroa.0.1 = phi i32 [ %i.t, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i ], [ %.sroa.0.018, %bb.c ]
  %i.v = load atomic i64, ptr %0 monotonic, align 8
  %i.w = and i64 %i.v, -4
  %.not2 = icmp eq i64 %i.w, 4
  br i1 %.not2, label %._crit_edge20, label %.lr.ph19, !llvm.loop !10

._crit_edge20:                                    ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit, %.preheader
  %i.x = atomicrmw add ptr %0, i64 -6 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  %i.y = atomicrmw add ptr %0, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, %._crit_edge
  %.sroa.0.0.i.ph = phi i32 [ %i.aj, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ 1, %._crit_edge ] ; 4 uses
  %i.z = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, %bb.g
  %i.aa = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.ab = and i64 %i.aa, -3
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.ac = cmpxchg ptr %0, i64 %i.aa, i64 1 seq_cst seq_cst, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit, label %.lr.ph.i.i.preheader.i

bb.e:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.ae = and i64 %i.aa, 2
  %.not1.i = icmp eq i64 %i.ae, 0
  br i1 %.not1.i, label %bb.f, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = atomicrmw or ptr %0, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %bb.f, %bb.e
  br i1 %i.z, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, label %bb.g

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ag = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.ag, label %.lr.ph.i.i.preheader.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, %bb.d
  %.sroa.0.1811.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ 1, %bb.d ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01.i.i.i = phi i32 [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.ah = add nsw i32 %.01.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.ai = icmp samesign ugt i32 %.01.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i
  %.sroa.0.1810.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.i ]
  %i.aj = shl nsw i32 %.sroa.0.1810.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, !llvm.loop !8

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ak = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, !llvm.loop !8

_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit:     ; preds = %bb.d, %._crit_edge20
  %or.cond12 = phi i1 [ true, %._crit_edge20 ], [ false, %bb.d ]
  ret i1 %or.cond12
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #24

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #16

declare noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE7excludeERNSG_14const_accessorE(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::bucket_accessor", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !121  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3
  %.036 = phi i64 [ %i.y, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3 ], [ %i.f, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.l = and i64 %.036, %i.d
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %0, i64 noundef %i.l, i1 noundef zeroext true)
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !114  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic ptr, ptr %i.n monotonic, align 8 ; 5 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = icmp ne ptr %i.o, %i.b
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02441 = phi ptr [ %i.s, %.lr.ph ], [ %i.o, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.02441, align 8, !tbaa !120 ; 5 uses
  %i.t = icmp ne ptr %i.s, null
  %i.u = icmp ne ptr %i.s, %i.b
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !185

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = icmp eq ptr %i.s, null
  br i1 %i.w, label %bb.b, label %bb.l

._crit_edge.thread:                               ; preds = %bb.a
  %i.x = icmp eq ptr %i.o, null
  br i1 %i.x, label %bb.b, label %bb.k

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 3 uses
  %.not.i = icmp eq i64 %.036, %i.y
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = xor i64 %i.y, %.036
  %i.aa = and i64 %i.z, %i.d
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = add i64 %.036, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.012.i.i = phi i64 [ %i.ab, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ac = and i64 %.012.i.i, %i.d
  %.not13.i.i = icmp eq i64 %i.ac, 0
  %i.ad = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.e, label %bb.f, !llvm.loop !7

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %i.ad, -1
  %i.af = and i64 %i.ae, %i.d                     ; 2 uses
  %i.ag = or i64 %i.af, 1
  %i.ah = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true) ; 2 uses
  %i.ai = xor i64 %i.ah, 63
  %i.aj = lshr exact i64 -9223372036854775808, %i.ah
  %i.ak = and i64 %i.aj, -2
  %i.al = sub i64 %i.af, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ai
  %i.an = load atomic ptr, ptr %i.am acquire, align 8
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 3 to ptr)
  br i1 %i.ar, label %bb.g, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not.i27 = icmp eq ptr %i.as, null
  br i1 %.not.i27, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.au = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = atomicrmw and ptr %i.at, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ax = atomicrmw add ptr %i.at, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !65
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1

bb.k:                                             ; preds = %._crit_edge.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !120
  store atomic ptr %i.az, ptr %i.ay monotonic, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.l:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !120
  store ptr %i.ba, ptr %.02441, align 8, !tbaa !120
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i, %bb.g
  %i.bb = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt1 = icmp eq ptr %i.bb, null
  br i1 %.not.i28.jt1, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1, label %bb.m

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3: ; preds = %bb.f
  %i.bc = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt3 = icmp eq ptr %i.bc, null
  br i1 %.not.i28.jt3, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3, label %bb.n

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.k, %bb.l
  %i.bd = atomicrmw add ptr %i.h, i64 -1 seq_cst, align 8 ; 0 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt2 = icmp eq ptr %i.be, null
  br i1 %.not.i28.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2, label %bb.o

bb.m:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bf = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %bb.s

bb.n:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bh = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %bb.t

bb.o:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bj = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.r, label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.bl = atomicrmw and ptr %i.bb, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1

bb.q:                                             ; preds = %bb.n
  %i.bm = atomicrmw and ptr %i.bc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3

bb.r:                                             ; preds = %bb.o
  %i.bn = atomicrmw and ptr %i.be, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2

bb.s:                                             ; preds = %bb.m
  %i.bo = atomicrmw add ptr %i.bb, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1

bb.t:                                             ; preds = %bb.n
  %i.bp = atomicrmw add ptr %i.bc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3

bb.u:                                             ; preds = %bb.o
  %i.bq = atomicrmw add ptr %i.be, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1: ; preds = %bb.s, %bb.p, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3: ; preds = %bb.t, %bb.q, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.a

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2: ; preds = %bb.u, %bb.r, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.br = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.v, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2
  store i8 1, ptr %i.j, align 8, !tbaa !62
  %i.bt = load ptr, ptr %1, align 8, !tbaa !61
  %i.bu = call noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not.i32 = icmp eq ptr %i.bv, null
  br i1 %.not.i32, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.bx = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = atomicrmw and ptr %i.bw, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33

bb.y:                                             ; preds = %bb.w
  %i.ca = atomicrmw add ptr %i.bw, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33: ; preds = %bb.y, %bb.x
  store ptr null, ptr %i.a, align 8, !tbaa !65
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34: ; preds = %bb.v, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34
  %.2 = phi i1 [ true, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34 ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1 ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE9_M_invokeERKSt9_Any_dataOjOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !77 ; 3 uses
  %.elt4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack5.i.i.i.i.i.i = load i64, ptr %.elt4.i.i.i.i.i.i, align 8, !tbaa !77
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack5.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !70
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load i32, ptr %1, align 4, !tbaa !56
  %i.m = load i32, ptr %2, align 4, !tbaa !111
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(688) %i.d, i32 noundef %i.l, i32 noundef %i.m), !inline_history !186
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS3_6StatusEEPS4_St12_PlaceholderILi1EES9_ILi2EEEE, ptr %0, align 8, !tbaa !188
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !104
  store ptr %i.a, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !104
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #30
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb1EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::bucket_accessor", align 8 ; 20 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !56
  %i.b = zext i32 %i.a to i64                     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not52 = icmp eq ptr %3, null
  %i.i = zext i1 %4 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.080 = phi i64 [ %.4.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %i.d, %.preheader ] ; 5 uses
  %.044 = phi ptr [ %.3.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %6, %.preheader ] ; 4 uses
  %.039 = phi i64 [ %.241.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.k = and i64 %.080, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 63 to ptr)
  br i1 %i.o, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = load i32, ptr %1, align 4, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !120 ; 3 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 63 to ptr)
  br i1 %i.u, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.d, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %.not51 = icmp eq ptr %.044, null
  br i1 %.not51, label %bb.e, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !189

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e
  %lpad.loopexit.split-lp181 = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %7, align 8, !tbaa !61     ; 3 uses
  %.not.i74 = icmp eq ptr %i.w, null
  br i1 %.not.i74, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, label %bb.au

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit: ; preds = %bb.e, %bb.d
  %.145 = phi ptr [ %.044, %bb.d ], [ %i.v, %bb.e ] ; 8 uses
  %i.x = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.lr.ph

bb.f:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %.critedge, label %.lr.ph, !llvm.loop !190

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit, %bb.f
  store i8 1, ptr %i.f, align 8, !tbaa !62
  %i.z = load ptr, ptr %7, align 8, !tbaa !61
  %i.aa = invoke noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %.lr.ph
  br i1 %i.aa, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 3 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 63 to ptr)
  br i1 %i.ae, label %.lr.ph.i57, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59

.lr.ph.i57:                                       ; preds = %bb.g
  %i.af = load i32, ptr %1, align 4, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i57
  %.07.i58 = phi ptr [ %i.ad, %.lr.ph.i57 ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %.07.i58, align 8, !tbaa !120 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 63 to ptr)
  br i1 %i.ak, label %bb.h, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59: ; preds = %bb.i, %bb.h, %bb.g
  %.0.lcssa.i56 = phi ptr [ %i.ad, %bb.g ], [ %.07.i58, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.al = icmp ugt ptr %.0.lcssa.i56, inttoptr (i64 63 to ptr)
  %i.am = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.f, !llvm.loop !190

bb.j:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %bb.k, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %7, align 8, !tbaa !61
  %i.ap = atomicrmw add ptr %i.ao, i64 3 seq_cst, align 8 ; 0 uses
  store i8 0, ptr %i.f, align 8, !tbaa !62
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

.critedge:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.f, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit
  %i.aq = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.080, %i.aq
  br i1 %.not.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ar = xor i64 %i.aq, %.080
  %i.as = and i64 %i.ar, %i.b
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add i64 %.080, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.012.i.i = phi i64 [ %i.at, %bb.m ], [ %i.av, %bb.n ] ; 2 uses
  %i.au = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.au, 0
  %i.av = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.n, label %bb.o, !llvm.loop !7

bb.o:                                             ; preds = %bb.n
  %i.aw = add i64 %i.av, 4294967295
  %i.ax = and i64 %i.aw, %i.b                     ; 2 uses
  %i.ay = or i64 %i.ax, 1
  %i.az = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true) ; 2 uses
  %i.ba = xor i64 %i.az, 63
  %i.bb = lshr exact i64 -9223372036854775808, %i.az
  %i.bc = and i64 %i.bb, 9223372036854775806
  %i.bd = sub nsw i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ba
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8
  %i.bj = icmp eq ptr %i.bi, inttoptr (i64 3 to ptr)
  br i1 %i.bj, label %bb.p, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.p:                                             ; preds = %bb.l, %bb.o, %.critedge
  %.5.ph = phi i64 [ %.080, %.critedge ], [ %i.aq, %bb.o ], [ %i.aq, %bb.l ] ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.bl = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.bm = add i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bo = load atomic ptr, ptr %i.bn monotonic, align 8
  store ptr %i.bo, ptr %.145, align 8, !tbaa !120
  store atomic ptr %.145, ptr %i.bn monotonic, align 8
  %.not.i65 = icmp ult i64 %i.bm, %.5.ph
  br i1 %.not.i65, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add i64 %.5.ph, 1
  %i.bq = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = xor i64 %i.bq, 63                       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.br ; 2 uses
  %i.bt = load atomic ptr, ptr %i.bs acquire, align 8
  %.not12.i = icmp eq ptr %i.bt, null
  br i1 %.not12.i, label %bb.r, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = cmpxchg ptr %i.bs, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.bv = extractvalue { ptr, i1 } %i.bu, 1
  %spec.select.i = select i1 %i.bv, i64 %i.br, i64 0
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %bb.b, %bb.r, %bb.q, %bb.p, %bb.j, %bb.k, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %.246 = phi ptr [ %.145, %bb.k ], [ null, %bb.r ], [ %.145, %bb.j ], [ %.044, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ null, %bb.p ], [ null, %bb.q ], [ %.044, %bb.b ] ; 3 uses
  %.042 = phi i1 [ false, %bb.k ], [ true, %bb.r ], [ false, %bb.j ], [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ true, %bb.p ], [ true, %bb.q ], [ false, %bb.b ]
  %.140 = phi i64 [ %.039, %bb.k ], [ %spec.select.i, %bb.r ], [ %.039, %bb.j ], [ %.039, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ 0, %bb.p ], [ 0, %bb.q ], [ %.039, %bb.b ] ; 8 uses
  %.138 = phi ptr [ %.0.lcssa.i56, %bb.k ], [ %.145, %bb.r ], [ %.0.lcssa.i56, %bb.j ], [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ %.145, %bb.p ], [ %.145, %bb.q ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not52, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6, label %bb.s

bb.s:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 9 uses
  %i.bx = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = and i64 %i.bx, -3
  %.not.i.i66 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i66, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bz = and i64 %i.bx, 3
  %.not.i7.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i7.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ca = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.cb = and i64 %i.ca, 1
  %.not5.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = atomicrmw add ptr %i.bw, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.x

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.t
  %i.cd = cmpxchg ptr %i.bw, i64 %i.bx, i64 1 seq_cst seq_cst, align 8
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  br i1 %i.ce, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.x

bb.x:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.t, %bb.u, %bb.w
  call void @llvm.x86.sse2.pause()
  br label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.x
  %.sroa.0.0 = phi i32 [ 2, %bb.x ], [ %i.ct, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.cf = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cg = and i64 %i.cf, -3
  %.not.i.i70 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i70, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ch = and i64 %i.cf, 3
  %.not.i7.i67 = icmp eq i64 %i.ch, 0
  br i1 %.not.i7.i67, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ci = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.cj = and i64 %i.ci, 1
  %.not5.not.i.i68 = icmp eq i64 %i.cj, 0
  br i1 %.not5.not.i.i68, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = atomicrmw add ptr %i.bw, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ad

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71: ; preds = %bb.z
  %i.cl = cmpxchg ptr %i.bw, i64 %i.cf, i64 1 seq_cst seq_cst, align 8
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cm, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.z, %bb.aa, %bb.ac
  %i.cn = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cn, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ad
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.co, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.co = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !191

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %i.cp = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cp, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.cq, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.cq = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cr = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cr, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cs = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cs, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.ae

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ad, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.ct = shl i32 %.sroa.0.0, 1
  br label %bb.y, !llvm.loop !192

bb.ae:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cu = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.cv = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cx = atomicrmw and ptr %i.cu, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cy = atomicrmw add ptr %i.cu, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cz = call noundef i32 @sched_yield() #24     ; 0 uses
  %i.da = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.v, %bb.ab, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71
  store ptr %i.bw, ptr %3, align 8, !tbaa !61
  store i8 %i.i, ptr %i.j, align 8, !tbaa !62
  %i.db = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i73.jt0 = icmp eq ptr %i.db, null
  br i1 %.not.i73.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.ai

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.dc = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i73.jt6 = icmp eq ptr %i.dc, null
  br i1 %.not.i73.jt6, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, label %bb.aj

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.o, %bb.ah
  %.4.jt2 = phi i64 [ %i.da, %bb.ah ], [ %i.aq, %bb.o ]
  %.3.jt2 = phi ptr [ %.246, %bb.ah ], [ %.145, %bb.o ]
  %.241.jt2 = phi i64 [ %.140, %bb.ah ], [ %.039, %bb.o ]
  %i.dd = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i73.jt2 = icmp eq ptr %i.dd, null
  br i1 %.not.i73.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.ak

bb.ai:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.de = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.al, label %bb.ao

bb.aj:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.dg = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.di = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %bb.ai
  %i.dk = atomicrmw and ptr %i.db, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.am:                                            ; preds = %bb.aj
  %i.dl = atomicrmw and ptr %i.dc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.an:                                            ; preds = %bb.ak
  %i.dm = atomicrmw and ptr %i.dd, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ao:                                            ; preds = %bb.ai
  %i.dn = atomicrmw add ptr %i.db, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.ap:                                            ; preds = %bb.aj
  %i.do = atomicrmw add ptr %i.dc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.aq:                                            ; preds = %bb.ak
  %i.dp = atomicrmw add ptr %i.dd, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ao, %bb.al, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.138, ptr %i.dq, align 8, !tbaa !65
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.dr, align 8, !tbaa !121
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6: ; preds = %bb.ap, %bb.am, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.aq, %bb.an, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.a

.loopexit92:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not54 = icmp eq i64 %.140, 0
  br i1 %.not54, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %.loopexit92
  %i.ds = icmp ugt i64 %.140, 7
  br i1 %i.ds, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dt = shl nuw i64 1, %.140
  %i.du = shl i64 16, %.140
  %i.dv = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.du)
          to label %.lr.ph.i.i.i.preheader.new unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 5 uses

.lr.ph.i.i.i.preheader.new:                       ; preds = %bb.as
  %unroll_iter = and i64 %i.dt, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.eh, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !122
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dx, align 8, !tbaa !195
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 0, ptr %i.dz, align 8, !tbaa !122
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.ea, align 8, !tbaa !195
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store i64 0, ptr %i.ec, align 8, !tbaa !122
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.ed, align 8, !tbaa !195
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store i64 0, ptr %i.ef, align 8, !tbaa !122
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.eg, align 8, !tbaa !195
  %i.eh = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !193

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr %i.dv, ptr %i.ei release, align 8
  %i.ej = shl i64 2, %.140
  %i.ek = add i64 %i.ej, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.at:                                            ; preds = %bb.ar
  %i.el = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064)
          to label %.lr.ph.i.i10.i unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 9 uses

common.resume:                                    ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.em, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ], [ %lpad.loopexit.split-lp181, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i: ; preds = %bb.at, %bb.as
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr null, ptr %i.en monotonic, align 8
  br label %common.resume

.lr.ph.i.i10.i:                                   ; preds = %bb.at, %.lr.ph.i.i10.i
  %.06.i.i11.i = phi i64 [ %i.et, %.lr.ph.i.i10.i ], [ 0, %bb.at ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.eo, align 8, !tbaa !122
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ep, align 8, !tbaa !195
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %.06.i.i11.i ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 0, ptr %i.er, align 8, !tbaa !122
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.es, align 8, !tbaa !195
  %i.et = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.et, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !193

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.el, ptr %i.eu release, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store atomic ptr %i.ew, ptr %i.ev release, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  store atomic ptr %i.ey, ptr %i.ex release, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 224
  store atomic ptr %i.fa, ptr %i.ez release, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 480
  store atomic ptr %i.fc, ptr %i.fb release, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 992
  store atomic ptr %i.fe, ptr %i.fd release, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 2016
  store atomic ptr %i.fg, ptr %i.ff release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i
  %.039.i = phi i64 [ %i.ek, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i ]
  store atomic i64 %.039.i, ptr %i.c release, align 8
  br label %bb.ax

bb.au:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.fh = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fj = atomicrmw and ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

bb.aw:                                            ; preds = %bb.au
  %i.fk = atomicrmw add ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.ax:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit92
  %.not55 = icmp eq ptr %.246, null
  br i1 %.not55, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.246)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  ret i1 %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE31allocate_node_default_constructIjEEPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERKT_PKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 24) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %1, align 4, !tbaa !56
  store i32 %i.d, ptr %i.c, align 8, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !68
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN3tbb6detail2r16attachERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r110initializeERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r17enqueueERNS0_2d14taskEPNS2_15task_arena_baseE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_ED2Ev(ptr noundef nonnull align 64 dead_on_return(216) dereferenceable(216) initializes((0, 8), (72, 80), (160, 168)) %0) unnamed_addr #21 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_EE, i64 16), ptr %0, align 64, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_ED0Ev(ptr noundef nonnull align 64 dereferenceable(216) initializes((0, 8), (72, 80), (160, 168)) %0) unnamed_addr #21 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_EE, i64 16), ptr %0, align 64, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #24, !inline_history !197
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_E7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNK7openvdb5v13_02io12_GLOBAL__N_110OutputTask7executeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.b, align 64, !tbaa !108
  %i.c = inttoptr i64 %.val.i to ptr
  %i.d = load ptr, ptr %0, align 64, !tbaa !91
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 64 dead_on_return(216) dereferenceable(216) %0) #24, !inline_history !198
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 64 dereferenceable(216) %0, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_E6cancelERNS1_14execution_dataE(ptr nofree nonnull readnone align 64 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef nonnull @__func__._ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_E6cancelERNS1_14execution_dataE, i32 noundef 222, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  ret ptr null
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r19terminateERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_07MetaMapD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_07MetaMapE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_07MetaMapD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_07MetaMapE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN7openvdb5v13_07MetaMapD2Ev.exit unwind label %bb.b, !inline_history !109

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31, !inline_history !109
  unreachable

_ZN7openvdb5v13_07MetaMapD2Ev.exit:               ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !89
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !199
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !199
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !92

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !77
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #16

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #25

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io5Queue4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i64 0, ptr %i.h monotonic, align 8
  %i.i = or i64 %i.g, 1
  %i.j = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i.i, %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEED2Ev.exit
  %.019.i.i = phi i64 [ %i.k, %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEED2Ev.exit ], [ %i.s, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i.i ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.019.i.i ; 3 uses
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8
  %i.o = tail call i64 @llvm.umax.i64(i64 %.019.i.i, i64 1)
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load atomic ptr, ptr %i.m monotonic, align 8
  %i.q = icmp ult i64 %.019.i.i, 8
  %i.r = icmp ne i64 %.019.i.i, 1
  %.not.i.i.i = and i1 %i.q, %i.r
  br i1 %.not.i.i.i, label %.noexc.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.p)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.e, %bb.d
  %.not18.i.i.i = icmp eq i64 %.019.i.i, 0
  br i1 %.not18.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEED2Ev.exit, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i.i

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i.i: ; preds = %.noexc.i
  store atomic ptr null, ptr %i.m monotonic, align 8
  %i.s = add nsw i64 %.019.i.i, -1
  br label %bb.c, !llvm.loop !201

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.c
  %.01821.i.i = phi i64 [ 0, %bb.c ], [ %i.x, %._crit_edge.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.01821.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load atomic ptr, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp ugt ptr %i.v, inttoptr (i64 63 to ptr)
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc1.i, %bb.f
  %i.x = add i64 %.01821.i.i, 1                   ; 2 uses
  %.018.highbits.i.i = lshr i64 %i.x, %i.o
  %i.y = icmp eq i64 %.018.highbits.i.i, 0
  br i1 %i.y, label %bb.f, label %bb.d, !llvm.loop !202

.lr.ph.i.i:                                       ; preds = %bb.f, %.noexc1.i
  %.020.i.i = phi ptr [ %i.aa, %.noexc1.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.020.i.i, align 8, !tbaa !120
  store atomic ptr %i.z, ptr %i.u monotonic, align 8
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.020.i.i)
          to label %.noexc1.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1.i:                                        ; preds = %.lr.ph.i.i
  %i.aa = load atomic ptr, ptr %i.u monotonic, align 8 ; 2 uses
  %i.ab = icmp ugt ptr %i.aa, inttoptr (i64 63 to ptr)
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !203

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.e
  %lpad.loopexit.split-lp3 = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %lpad.loopexit.split-lp3, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEED2Ev.exit: ; preds = %.noexc.i
  store atomic i64 1, ptr %i.f monotonic, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 40 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::function<void (unsigned int, openvdb::v13_0::io::Queue::Status)>>, std::_Select1st<std::pair<const unsigned int, std::function<void (unsigned int, openvdb::v13_0::io::Queue::Status)>>>, std::less<unsigned int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %0, ptr %5, align 8, !tbaa !205
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !73
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56
  store i32 %i.f, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !128
  %i.h = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.l
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i32, ptr %i.c, align 8, !tbaa !56
  %i.o = load i32, ptr %i.m, align 4, !tbaa !56
  %i.p = icmp ult i32 %i.n, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !49
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #31
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #30
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.i, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %i.i = load i32, ptr %2, align 4, !tbaa !56
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !71 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !56     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56   ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !71 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !208

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #33 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !56
  %.pre82 = load i32, ptr %2, align 4, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !56     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !56   ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !71 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !56 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !71 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !208

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #33 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !56
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !56
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !123
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !71 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !56 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !71 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !208

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #33 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #30
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS5_EED2Ev, null, null, null, null, null, null}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = distinct !{!6, !57}
!7 = distinct !{!7, !57}
!8 = distinct !{!8, !57}
!9 = distinct !{!9, !57}
!10 = distinct !{!10, !57}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"_ZTSSt13__atomic_baseIiE", !16, i64 0}
!20 = !{!"_ZTSSt6atomicIiE", !19, i64 0}
!21 = !{!"_ZTSN3tbb6detail2d113tbb_allocatorINS0_2d213hash_map_baseINS2_ISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS1_13spin_rw_mutexEE6bucketEEE"}
!22 = !{!"long", !15, i64 0}
!23 = !{!"_ZTSSt13__atomic_baseImE", !22, i64 0}
!24 = !{!"_ZTSSt6atomicImE", !23, i64 0}
!25 = !{!"_ZTSN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEEE", !21, i64 0, !24, i64 8, !24, i64 16, !15, i64 24, !15, i64 56}
!26 = !{!"_ZTSSt4hashIjE"}
!27 = !{!"_ZTSSt8equal_toIjE"}
!28 = !{!"_ZTSN3tbb6detail2d116tbb_hash_compareIjEE", !26, i64 0, !27, i64 1}
!29 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEEE", !25, i64 0, !28, i64 568}
!30 = !{!"_ZTSSt4lessIjE"}
!31 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !30, i64 0}
!32 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!33 = !{!"any pointer", !15, i64 0}
!34 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !33, i64 0}
!35 = !{!"_ZTSSt18_Rb_tree_node_base", !32, i64 0, !34, i64 8, !34, i64 16, !34, i64 24}
!36 = !{!"_ZTSSt15_Rb_tree_header", !35, i64 0, !22, i64 32}
!37 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE13_Rb_tree_implISE_Lb1EEE", !31, i64 0, !36, i64 8}
!38 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE", !37, i64 0}
!39 = !{!"_ZTSSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE", !38, i64 0}
!40 = !{!"_ZTSSt12__mutex_base", !15, i64 0}
!41 = !{!"_ZTSSt5mutex", !40, i64 0}
!42 = !{!"_ZTSN7openvdb5v13_02io5Queue4ImplE", !16, i64 0, !16, i64 4, !20, i64 8, !16, i64 12, !29, i64 16, !39, i64 592, !16, i64 640, !41, i64 648}
!43 = !{!42, !16, i64 0}
!44 = !{!42, !16, i64 4}
!45 = !{!42, !16, i64 12}
!46 = !{!36, !34, i64 8}
!47 = !{!36, !34, i64 16}
!48 = !{!36, !34, i64 24}
!49 = !{!36, !22, i64 32}
!50 = !{!42, !16, i64 640}
!51 = !{!"p1 _ZTSN7openvdb5v13_02io5Queue4ImplE", !33, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"_ZTS8timespec", !22, i64 0, !22, i64 8}
!54 = !{!53, !22, i64 0}
!55 = !{!53, !22, i64 8}
!56 = !{!16, !16, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"p1 _ZTSN3tbb6detail2d113spin_rw_mutexE", !33, i64 0}
!59 = !{!"bool", !15, i64 0}
!60 = !{!"_ZTSN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEEE", !58, i64 0, !59, i64 8}
!61 = !{!60, !58, i64 0}
!62 = !{!60, !59, i64 8}
!63 = !{!"p1 _ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4nodeE", !33, i64 0}
!64 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorE", !60, i64 0, !63, i64 16, !22, i64 24}
!65 = !{!64, !63, i64 16}
!66 = !{!"_ZTSN7openvdb5v13_02io5Queue6StatusE", !15, i64 0}
!67 = !{!"_ZTSSt4pairIKjN7openvdb5v13_02io5Queue6StatusEE", !16, i64 0, !66, i64 4}
!68 = !{!67, !66, i64 4}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!34, !34, i64 0}
!72 = !{!"p1 int", !33, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"_ZTSSt14_Function_base", !15, i64 0, !33, i64 16}
!75 = !{!74, !33, i64 16}
!76 = !{!33, !33, i64 0}
!77 = !{!15, !15, i64 0}
!78 = !{i64 0, i64 16, !77}
!79 = !{!"p1 _ZTSSt10shared_ptrIKN7openvdb5v13_08GridBaseEE", !33, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS5_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !79, i64 8}
!83 = !{!80, !79, i64 16}
!84 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!85 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0}
!86 = !{!85, !84, i64 0}
!87 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 8, !16, i64 12}
!88 = !{!87, !16, i64 8}
!89 = !{!87, !16, i64 12}
!90 = !{!"vtable pointer", !14, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{!"_ZTSSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEE", !74, i64 0, !33, i64 24}
!94 = !{!"_ZTSN7openvdb5v13_02io12_GLOBAL__N_14TaskE", !16, i64 8, !93, i64 16}
!95 = !{!94, !16, i64 8}
!96 = !{!79, !79, i64 0}
!97 = !{!"p1 omnipotent char", !33, i64 0}
!98 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !97, i64 0}
!99 = !{!98, !97, i64 0}
!100 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !98, i64 0, !22, i64 8, !15, i64 16}
!101 = !{!100, !22, i64 8}
!102 = !{!100, !97, i64 0}
!103 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS3_6StatusEEPS4_St12_PlaceholderILi1EES9_ILi2EEEE", !33, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!93, !33, i64 24}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!"p1 _ZTSN3tbb6detail2d117small_object_poolE", !33, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{ptr @_ZN7openvdb5v13_07MetaMapD2Ev}
!110 = !{ptr @_ZN7openvdb5v13_09ExceptionD2Ev}
!111 = !{!66, !66, i64 0}
!112 = !{!"p1 _ZTSN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE6bucketE", !33, i64 0}
!113 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorE", !60, i64 0, !112, i64 16}
!114 = !{!113, !112, i64 16}
!115 = !{!"p1 _ZTSN3tbb6detail2d218hash_map_node_baseINS0_2d113spin_rw_mutexEEE", !33, i64 0}
!116 = !{!"_ZTSSt13__atomic_baseIlE", !22, i64 0}
!117 = !{!"_ZTSSt6atomicIlE", !116, i64 0}
!118 = !{!"_ZTSN3tbb6detail2d113spin_rw_mutexE", !117, i64 0}
!119 = !{!"_ZTSN3tbb6detail2d218hash_map_node_baseINS0_2d113spin_rw_mutexEEE", !115, i64 0, !118, i64 8}
!120 = !{!119, !115, i64 0}
!121 = !{!64, !22, i64 24}
!122 = !{!116, !22, i64 0}
!123 = !{!35, !34, i64 24}
!124 = !{!35, !34, i64 16}
!125 = !{!"p1 _ZTSSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE", !33, i64 0}
!126 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEEE", !33, i64 0}
!127 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE10_Auto_nodeE", !125, i64 0, !126, i64 8}
!128 = !{!127, !126, i64 8}
!129 = !{!23, !22, i64 0}
!130 = !{!36, !32, i64 0}
!131 = distinct !{!131, !57}
!132 = !{!"p1 _ZTSN7openvdb5v13_08GridBaseE", !33, i64 0}
!133 = !{!"_ZTSSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EE", !132, i64 0, !85, i64 8}
!134 = !{!133, !132, i64 0}
!135 = distinct !{!135, !57}
!136 = distinct !{!136, !106}
!137 = distinct !{!137, !57}
!138 = distinct !{!138, !57}
!139 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_02io5Queue4ImplELb0EE", !51, i64 0}
!140 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_02io5Queue4ImplESt12_PlaceholderILi1EES6_ILi2EEEE", !139, i64 0}
!141 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_02io5Queue4ImplESt12_PlaceholderILi1EES6_ILi2EEEE", !140, i64 0}
!142 = !{!"_ZTSSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS3_6StatusEEPS4_St12_PlaceholderILi1EES9_ILi2EEEE", !15, i64 0, !141, i64 16}
!143 = !{!142, !15, i64 0}
!144 = !{!"_ZTSN3tbb6detail2d013do_once_stateE", !15, i64 0}
!145 = !{!"_ZTSSt6atomicIN3tbb6detail2d013do_once_stateEE", !144, i64 0}
!146 = !{!"p1 _ZTSN3tbb6detail2r15arenaE", !33, i64 0}
!147 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2r15arenaEE", !146, i64 0}
!148 = !{!"_ZTSSt6atomicIPN3tbb6detail2r15arenaEE", !147, i64 0}
!149 = !{!"_ZTSN3tbb6detail2d115task_arena_base8priorityE", !15, i64 0}
!150 = !{!"_ZTSN3tbb6detail2d115task_arena_baseE", !22, i64 0, !145, i64 8, !148, i64 16, !16, i64 24, !16, i64 28, !149, i64 32, !16, i64 36, !16, i64 40, !16, i64 44}
!151 = !{!150, !22, i64 0}
!152 = !{!145, !144, i64 0}
!153 = !{!147, !146, i64 0}
!154 = !{!150, !16, i64 40}
!155 = !{!150, !16, i64 44}
!156 = !{!"_ZTSN3tbb6detail2d122small_object_allocatorE", !107, i64 0}
!157 = !{!156, !107, i64 0}
!158 = distinct !{null, null, null, null, null, null}
!159 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io7ArchiveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!160 = !{ptr @_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskD2Ev}
!161 = distinct !{!161, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!162 = distinct !{!162, !161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!164 = distinct !{!164, !163, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!165 = !{!162}
!166 = !{!164, !162}
!167 = distinct !{null, null}
!168 = distinct !{null}
!169 = distinct !{null, null}
!170 = !{!"p1 _ZTSN7openvdb5v13_02io7ArchiveE", !33, i64 0}
!171 = !{!"_ZTSSt12__shared_ptrIN7openvdb5v13_02io7ArchiveELN9__gnu_cxx12_Lock_policyE2EE", !170, i64 0, !85, i64 8}
!172 = !{!171, !170, i64 0}
!173 = distinct !{null}
!174 = distinct !{null}
!175 = distinct !{!175, !57}
!176 = distinct !{!176, !106}
!177 = distinct !{!177, !57}
!178 = distinct !{!178, !106}
!179 = distinct !{null}
!180 = distinct !{!180, !106}
!181 = distinct !{!181, !57}
!182 = distinct !{!182, !106}
!183 = distinct !{!183, !57}
!184 = distinct !{!184, !106}
!185 = distinct !{!185, !57}
!186 = distinct !{null, null, null, null, null, null}
!187 = !{!"p1 _ZTSSt9type_info", !33, i64 0}
!188 = !{!187, !187, i64 0}
!189 = distinct !{null}
!190 = distinct !{!190, !57}
!191 = distinct !{!191, !106}
!192 = distinct !{!192, !57}
!193 = distinct !{!193, !57}
!194 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d218hash_map_node_baseINS1_2d113spin_rw_mutexEEEE", !115, i64 0}
!195 = !{!194, !115, i64 0}
!196 = !{!67, !16, i64 0}
!197 = !{ptr @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_ED2Ev}
!198 = distinct !{null, null}
!199 = distinct !{null, null, null, null, null, null}
!200 = distinct !{!200, !57}
!201 = distinct !{!201, !57}
!202 = distinct !{!202, !57}
!203 = distinct !{!203, !57}
!204 = distinct !{!204, !57}
!205 = !{!125, !125, i64 0}
!206 = !{!"_ZTSSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEE", !16, i64 0, !93, i64 8}
!207 = !{!206, !16, i64 0}
!208 = distinct !{!208, !57}
end_hunk_0
