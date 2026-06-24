inline.NumInlined: 6986
inline.NumDeleted: 3568
begin_hunk_0_@_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7enqueueILNS6_14AllocationModeE0ES4_EEbOT0_:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1887 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %i.gb = load atomic i64, ptr %i.ga monotonic, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !1888 ; 2 uses
  %.not.i.i = icmp ult i64 %i.gb, %i.gd
  br i1 %.not.i.i, label %bb.ap, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.ge = atomicrmw add ptr %i.ga, i64 1 monotonic, align 8 ; 2 uses
  %i.gf = icmp uge i64 %i.ge, %i.gd
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %.not.i30 = icmp eq ptr %i.gh, null
  %or.cond.i = select i1 %i.gf, i1 true, i1 %.not.i30
  br i1 %or.cond.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %bb.ap, %bb.ao
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 40 ; 5 uses
  %i.gj = load atomic ptr, ptr %i.gi acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not24.i.i.i, label %.loopexit.i29, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i
  %.01425.i.i.i = phi ptr [ %.1.i.i.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i ], [ %i.gj, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.01425.i.i.i, i64 560 ; 6 uses
  %i.gl = load atomic i32, ptr %i.gk monotonic, align 4 ; 3 uses
  %i.gm = and i32 %i.gl, 2147483647
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.aq, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.go = add i32 %i.gl, 1
  %i.gp = cmpxchg ptr %i.gk, i32 %i.gl, i32 %i.go acquire monotonic, align 4
  %i.gq = extractvalue { i32, i1 } %i.gp, 1
  br i1 %i.gq, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.gr = load atomic ptr, ptr %i.gi acquire, align 8
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !1889

bb.ar:                                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.01425.i.i.i, i64 568 ; 2 uses
  %i.gt = load atomic ptr, ptr %i.gs monotonic, align 8
  %i.gu = cmpxchg ptr %i.gi, ptr %.01425.i.i.i, ptr %i.gt acquire monotonic, align 8 ; 2 uses
  %i.gv = extractvalue { ptr, i1 } %i.gu, 1
  br i1 %i.gv, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gw = extractvalue { ptr, i1 } %i.gu, 0       ; 3 uses
  %i.gx = atomicrmw sub ptr %i.gk, i32 1 acq_rel, align 4
  %i.gy = icmp eq i32 %i.gx, -2147483647
  br i1 %i.gy, label %bb.at, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gz = load atomic ptr, ptr %i.gi monotonic, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.at
  %.0.i.i.i.i = phi ptr [ %i.gz, %bb.at ], [ %i.hc, %bb.av ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.gs monotonic, align 8
  store atomic i32 1, ptr %i.gk release, align 8
  %i.ha = cmpxchg ptr %i.gi, ptr %.0.i.i.i.i, ptr %.01425.i.i.i release monotonic, align 8 ; 2 uses
  %i.hb = extractvalue { ptr, i1 } %i.ha, 1
  br i1 %i.hb, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = extractvalue { ptr, i1 } %i.ha, 0
  %i.hd = atomicrmw add ptr %i.gk, i32 2147483647 release, align 4
  %i.he = icmp eq i32 %i.hd, 1
  br i1 %i.he, label %bb.au, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !1890

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i: ; preds = %bb.av, %bb.au, %bb.as, %bb.aq
  %.1.i.i.i = phi ptr [ %i.gr, %bb.aq ], [ %i.gw, %bb.as ], [ %i.gw, %bb.au ], [ %i.gw, %bb.av ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i29, label %.lr.ph.i.i.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.ar
  %i.hf = atomicrmw sub ptr %i.gk, i32 2 release, align 4 ; 0 uses
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread

.loopexit.i29:                                    ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.hg = tail call noalias noundef dereferenceable_or_null(584) ptr @malloc(i64 noundef 584) #40 ; 7 uses
  %.not.i9.i = icmp eq ptr %i.hg, null
  br i1 %.not.i9.i, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i29
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 512
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 560
  store i32 0, ptr %i.hi, align 4, !tbaa !1891
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 568
  store ptr null, ptr %i.hj, align 8, !tbaa !1892
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 576
  store i8 0, ptr %i.hk, align 8, !tbaa !895
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 577
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.hl, align 1, !tbaa !1651
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit: ; preds = %bb.ap
  %i.hm = getelementptr inbounds nuw [584 x i8], ptr %i.gh, i64 %i.ge
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread: ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit, %bb.aw, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i
  %.0.i32 = phi ptr [ %i.hm, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit ], [ %i.hg, %bb.aw ], [ %.01425.i.i.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 38 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i32, i64 528
  store atomic i8 0, ptr %i.hn monotonic, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i32, i64 529
  store atomic i8 0, ptr %i.ho monotonic, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i32, i64 530
  store atomic i8 0, ptr %i.hp monotonic, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i32, i64 531
  store atomic i8 0, ptr %i.hq monotonic, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i32, i64 532
  store atomic i8 0, ptr %i.hr monotonic, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i32, i64 533
  store atomic i8 0, ptr %i.hs monotonic, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i32, i64 534
  store atomic i8 0, ptr %i.ht monotonic, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i32, i64 535
  store atomic i8 0, ptr %i.hu monotonic, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i32, i64 536
  store atomic i8 0, ptr %i.hv monotonic, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i32, i64 537
  store atomic i8 0, ptr %i.hw monotonic, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i32, i64 538
  store atomic i8 0, ptr %i.hx monotonic, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i32, i64 539
  store atomic i8 0, ptr %i.hy monotonic, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i32, i64 540
  store atomic i8 0, ptr %i.hz monotonic, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i32, i64 541
  store atomic i8 0, ptr %i.ia monotonic, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i32, i64 542
  store atomic i8 0, ptr %i.ib monotonic, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i32, i64 543
  store atomic i8 0, ptr %i.ic monotonic, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i32, i64 544
  store atomic i8 0, ptr %i.id monotonic, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i32, i64 545
  store atomic i8 0, ptr %i.ie monotonic, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i32, i64 546
  store atomic i8 0, ptr %i.if monotonic, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i32, i64 547
  store atomic i8 0, ptr %i.ig monotonic, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i32, i64 548
  store atomic i8 0, ptr %i.ih monotonic, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i32, i64 549
  store atomic i8 0, ptr %i.ii monotonic, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i32, i64 550
  store atomic i8 0, ptr %i.ij monotonic, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i32, i64 551
  store atomic i8 0, ptr %i.ik monotonic, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i32, i64 552
  store atomic i8 0, ptr %i.il monotonic, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i32, i64 553
  store atomic i8 0, ptr %i.im monotonic, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i32, i64 554
  store atomic i8 0, ptr %i.in monotonic, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i32, i64 555
  store atomic i8 0, ptr %i.io monotonic, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i32, i64 556
  store atomic i8 0, ptr %i.ip monotonic, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i32, i64 557
  store atomic i8 0, ptr %i.iq monotonic, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i32, i64 558
  store atomic i8 0, ptr %i.ir monotonic, align 1
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i32, i64 559
  store atomic i8 0, ptr %i.is monotonic, align 1
  %i.it = load ptr, ptr %i.f, align 8, !tbaa !1868 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i32, i64 512
  store ptr %.0.i32, ptr %i.iv, align 8, !tbaa !1869
  br label %bb.az

bb.ay:                                            ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 512 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !1869
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i32, i64 512
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !1869
  store ptr %.0.i32, ptr %i.iw, align 8, !tbaa !1869
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %.0.i32, ptr %i.f, align 8, !tbaa !1868
  %i.iz = load i64, ptr %i.g, align 8, !tbaa !1876
  %i.ja = add i64 %i.iz, 1
  store i64 %i.ja, ptr %i.g, align 8, !tbaa !1876
  br label %.critedge28

.critedge28:                                      ; preds = %bb.az, %bb.ai
  %i.jb = phi ptr [ %.0.i32, %bb.az ], [ %.pre44, %bb.ai ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jd = load atomic ptr, ptr %i.jc monotonic, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !1885
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !1878 ; 2 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.jh ; 2 uses
  store i64 %i.b, ptr %i.ji, align 8, !tbaa !1893
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jb, ptr %i.jj, align 8, !tbaa !1895
  %i.jk = load atomic ptr, ptr %i.jc monotonic, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store atomic i64 %i.jh, ptr %i.jl release, align 8
  %2 = load i64, ptr %i.jg, align 8, !tbaa !1878
  %i.jm = add i64 %2, 1
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !1877
  %i.jp = add i64 %i.jo, -1
  %i.jq = and i64 %i.jp, %i.jm
  store i64 %i.jq, ptr %i.jg, align 8, !tbaa !1878
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge28, %bb.a
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !1868
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.d ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr null, ptr %i.ju, align 8, !tbaa !50
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jw = load <2 x ptr>, ptr %1, align 8, !tbaa !58
  store ptr null, ptr %i.jv, align 8, !tbaa !50
  store <2 x ptr> %i.jw, ptr %i.jt, align 8, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !149
  store atomic i64 %i.c, ptr %i.a release, align 8
  br label %.critedge

.critedge:                                        ; preds = %.loopexit.i29, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15new_block_indexEm.exit, %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE5Block8is_emptyILNS6_17InnerQueueContextE1EEEbv.exit.thread, %bb.ba
  %.4 = phi i1 [ true, %bb.ba ], [ false, %.loopexit.i29 ], [ false, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15new_block_indexEm.exit ], [ false, %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE5Block8is_emptyILNS6_17InnerQueueContextE1EEEbv.exit.thread ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer12enqueue_bulkILNS6_14AllocationModeE0ESt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEEbT0_m(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1868 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1878 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1876 ; 4 uses
  %i.i = add i64 %i.b, %2                         ; 4 uses
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, -32
  %i.l = add i64 %i.b, -1
  %i.m = and i64 %i.l, -32                        ; 3 uses
  %i.n = sub i64 %i.k, %i.m                       ; 3 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.bf, label %.preheader116

.preheader116:                                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %.not96218 = icmp eq ptr %i.d, null
  br i1 %.not96218, label %.lr.ph, label %.lr.ph222

bb.b:                                             ; preds = %bb.ai
  %.not96 = icmp eq ptr %i.dq, null
  br i1 %.not96, label %.lr.ph, label %.lr.ph222, !llvm.loop !1896

.lr.ph222:                                        ; preds = %.preheader116, %bb.b
  %.085130221 = phi i64 [ %i.dn, %bb.b ], [ %i.m, %.preheader116 ] ; 34 uses
  %.080131220 = phi i64 [ %i.dm, %bb.b ], [ %i.n, %.preheader116 ] ; 34 uses
  %.076132219 = phi ptr [ %..076, %bb.b ], [ null, %.preheader116 ] ; 36 uses
  %i.q = phi ptr [ %i.dq, %bb.b ], [ %i.d, %.preheader116 ]
  %i.r = phi i64 [ %i.eb, %bb.b ], [ %i.f, %.preheader116 ] ; 33 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 512
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1869 ; 33 uses
  %.not97 = icmp eq ptr %i.t, %.076132219
  br i1 %.not97, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %.lr.ph222
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 528
  %i.v = load atomic i8, ptr %i.u monotonic, align 1, !range !268, !noundef !132
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 529
  %i.y = load atomic i8, ptr %i.x monotonic, align 1, !range !268, !noundef !132
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 530
  %i.ab = load atomic i8, ptr %i.aa monotonic, align 1, !range !268, !noundef !132
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 531
  %i.ae = load atomic i8, ptr %i.ad monotonic, align 1, !range !268, !noundef !132
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 532
  %i.ah = load atomic i8, ptr %i.ag monotonic, align 1, !range !268, !noundef !132
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 533
  %i.ak = load atomic i8, ptr %i.aj monotonic, align 1, !range !268, !noundef !132
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 534
  %i.an = load atomic i8, ptr %i.am monotonic, align 1, !range !268, !noundef !132
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 535
  %i.aq = load atomic i8, ptr %i.ap monotonic, align 1, !range !268, !noundef !132
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.k, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 536
  %i.at = load atomic i8, ptr %i.as monotonic, align 1, !range !268, !noundef !132
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 537
  %i.aw = load atomic i8, ptr %i.av monotonic, align 1, !range !268, !noundef !132
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 538
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !range !268, !noundef !132
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 539
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !range !268, !noundef !132
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.o, label %.lr.ph

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 540
  %i.bf = load atomic i8, ptr %i.be monotonic, align 1, !range !268, !noundef !132
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 541
  %i.bi = load atomic i8, ptr %i.bh monotonic, align 1, !range !268, !noundef !132
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 542
  %i.bl = load atomic i8, ptr %i.bk monotonic, align 1, !range !268, !noundef !132
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.r, label %.lr.ph

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 543
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !range !268, !noundef !132
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.s, label %.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.br = load atomic i8, ptr %i.bq monotonic, align 1, !range !268, !noundef !132
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.t, label %.lr.ph

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 545
  %i.bu = load atomic i8, ptr %i.bt monotonic, align 1, !range !268, !noundef !132
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.u, label %.lr.ph

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 546
  %i.bx = load atomic i8, ptr %i.bw monotonic, align 1, !range !268, !noundef !132
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.v, label %.lr.ph

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 547
  %i.ca = load atomic i8, ptr %i.bz monotonic, align 1, !range !268, !noundef !132
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 548
  %i.cd = load atomic i8, ptr %i.cc monotonic, align 1, !range !268, !noundef !132
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 549
  %i.cg = load atomic i8, ptr %i.cf monotonic, align 1, !range !268, !noundef !132
  %i.ch = trunc nuw i8 %i.cg to i1
end_hunk_0
