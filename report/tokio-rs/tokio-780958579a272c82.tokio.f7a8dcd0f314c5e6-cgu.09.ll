Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.09?download=true
inline.NumInlined: 528
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context3run:bb.a
  %i.af = xor i32 %i.ae, %i.ab                    ; 2 uses
  %i.ag = lshr i32 %i.af, 7
  %i.ah = lshr i32 %i.ad, 16
  %i.ai = xor i32 %i.ah, %i.ag
  %i.aj = xor i32 %i.ai, %i.ad
  %i.ak = xor i32 %i.aj, %i.af                    ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 8, !alias.scope !515
  store i32 %i.ak, ptr %i.ac, align 4, !alias.scope !515
  %i.al = add i32 %i.ak, %i.ad
  %i.am = zext i32 %i.al to i64
  %i.an = and i64 %i.z, 4294967295
  %i.ao = mul nuw i64 %i.an, %i.am
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE22close_and_shutdown_allB8_(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.ap)
          to label %.noexc unwind label %.thread101.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  %i.ar = load ptr, ptr %i.v, align 8, !noalias !515, !nonnull !7, !noundef !7 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noalias !515, !noundef !7 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %i.av = load i64, ptr %i.au, align 8, !noalias !515, !noundef !7 ; 2 uses
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !515, !nonnull !7, !noundef !7
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.2.lcssa, i64 32
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.ay, i64 %i.at
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats6submit(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 128 %i.ba)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core12pre_shutdown.exit unwind label %.thread101.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25
          to label %.noexc18 unwind label %.thread101.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.2225 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.2.be, %.backedge ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.2225, i64 104 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !noundef !7
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8
  %i.be = load ptr, ptr %0, align 8, !noalias !516, !nonnull !7, !noundef !7 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !516, !nonnull !7, !noundef !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load i32, ptr %i.bh, align 8, !noalias !516, !noundef !7 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = urem i32 %i.bd, %i.bi
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #26
          to label %bb.g unwind label %.loopexit.split-lp, !noalias !516

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.2225, i64 32
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats30end_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bm)
          to label %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit.i unwind label %.loopexit

_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit.i: ; preds = %bb.h
  %i.bn = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context13park_internal(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %.sroa.0.2225, i32 noundef 0) ; 9 uses
  %i.bo = load ptr, ptr %0, align 8, !noalias !516, !nonnull !7, !noundef !7 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !517, !nonnull !7, !noundef !7 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !noalias !517, !noundef !7 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 232
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !517, !noundef !7 ; 2 uses
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 224
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !517, !nonnull !7, !noundef !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.bx, i64 %i.bs
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats6submit(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 128 %i.bz)
          to label %.noexc.i unwind label %.loopexit

.noexc.i:                                         ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 114 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 2, !range !8, !alias.scope !517, !noundef !7
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i, label %bb.k

bb.j:                                             ; preds = %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25
          to label %.noexc2.i unwind label %.loopexit.split-lp

.noexc2.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc.i
  %i.cd = load ptr, ptr %i.bp, align 8, !noalias !517, !nonnull !7, !noundef !7 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 264 ; 4 uses
  %i.cf = cmpxchg weak ptr %i.ce, i8 0, i8 1 acquire monotonic, align 1
  %i.cg = extractvalue { i8, i1 } %i.cf, 1
  br i1 %i.cg, label %.noexc3.i, label %bb.l, !prof !10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i: ; preds = %bb.m, %.noexc3.i, %.noexc.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 115 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !range !8, !alias.scope !517, !noundef !7
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ck = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ce, i64 undef, i32 noundef -1)
          to label %.noexc3.i unwind label %.loopexit ; 0 uses

.noexc3.i:                                        ; preds = %bb.l, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 312
  %i.cm = load i8, ptr %i.cl, align 8, !range !8, !noundef !7
  store i8 %i.cm, ptr %i.ca, align 2, !alias.scope !517
  %i.cn = cmpxchg ptr %i.ce, i8 1, i8 0 release monotonic, align 1
  %i.co = extractvalue { i8, i1 } %i.cn, 1
  br i1 %i.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i, label %bb.m, !prof !10

bb.m:                                             ; preds = %.noexc3.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ce, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i unwind label %.loopexit

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i
  store i8 0, ptr %i.ch, align 1, !alias.scope !517
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i: ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.by)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge unwind label %.loopexit

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge: ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i
  %.pre = load ptr, ptr %0, align 8
  br label %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.l, %bb.m, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i
  %.sroa.0.07.ph.i.ph = phi ptr [ %i.bn, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i ], [ %i.bn, %bb.m ], [ %i.bn, %bb.l ], [ %i.bn, %bb.i ], [ %.sroa.0.2225, %bb.h ]
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.f, %bb.j
  %.sroa.0.07.ph.i.ph125 = phi ptr [ %i.bn, %bb.j ], [ %.sroa.0.2225, %bb.f ]
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.07.ph.i = phi ptr [ %.sroa.0.07.ph.i.ph, %.loopexit ], [ %.sroa.0.07.ph.i.ph125, %.loopexit.split-lp ]
  %lpad.phi128 = phi { ptr, i32 } [ %lpad.loopexit126, %.loopexit ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr %.sroa.0.07.ph.i) #23
          to label %.thread84 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit: ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge, %bb.e
  %i.cq = phi ptr [ %.pre, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge ], [ %i.be, %bb.e ]
  %.sroa.0.1.i = phi ptr [ %i.bn, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge ], [ %.sroa.0.2225, %bb.e ] ; 49 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 108 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !alias.scope !518, !noundef !7 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 104
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !518, !noundef !7
  %i.cx = urem i32 %i.cw, %i.ct
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.s, label %bb.w

bb.r:                                             ; preds = %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
          to label %.noexc21 unwind label %.thread101.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %.val9.i = load ptr, ptr %i.cr, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.val9.i, i64 40
  %i.db = invoke noundef i32 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats27tuned_global_queue_interval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cz, ptr noundef nonnull align 8 %i.da)
          to label %.noexc22 unwind label %.thread101.loopexit.split-lp.loopexit ; 2 uses

.noexc22:                                         ; preds = %bb.s
  %i.dc = load i32, ptr %i.cs, align 4, !alias.scope !519, !noundef !7
  %i.dd = sub i32 %i.dc, %i.db
  %2 = add i32 %i.dd, -3
  %3 = icmp ult i32 %2, -5
  br i1 %3, label %bb.t, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i

bb.t:                                             ; preds = %.noexc22
  store i32 %i.db, ptr %i.cs, align 4, !alias.scope !519
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i: ; preds = %bb.t, %.noexc22
  %i.de = load ptr, ptr %i.cr, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = invoke fastcc noundef ptr @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle16next_remote_task(ptr noundef nonnull align 8 %i.df)
          to label %.noexc23 unwind label %.thread101.loopexit.split-lp.loopexit ; 2 uses

.noexc23:                                         ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %bb.u, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.thread

bb.u:                                             ; preds = %.noexc23
  %i.dh = load ptr, ptr %.sroa.0.1.i, align 8, !alias.scope !520, !noundef !7 ; 2 uses
  store ptr null, ptr %.sroa.0.1.i, align 8, !alias.scope !520
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 24
  %i.dj = invoke noundef ptr @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3popBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit unwind label %.thread101.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !518
  %i.dk = load ptr, ptr %.sroa.0.1.i, align 8, !alias.scope !521, !noundef !7 ; 2 uses
  store ptr null, ptr %.sroa.0.1.i, align 8, !alias.scope !521
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i: ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 24 ; 3 uses
  %i.dm = invoke noundef ptr @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3popBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %.noexc28 unwind label %.thread101.loopexit.split-lp.loopexit ; 3 uses

.noexc28:                                         ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i
  store ptr %i.dm, ptr %i.g, align 8, !noalias !518
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %bb.y, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i: ; preds = %.loopexit.split-lp134.loopexit.split-lp, %bb.ah, %.noexc19.i.a
  %.pn6.i = phi { ptr, i32 } [ %i.ey, %.noexc19.i.a ], [ %i.ey, %bb.ah ], [ %lpad.loopexit.split-lp523, %.loopexit.split-lp134.loopexit.split-lp ] ; 2 uses
  %i.dn = load ptr, ptr %i.g, align 8, !alias.scope !522, !noalias !518, !noundef !7
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.thread88, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.thread88 unwind label %bb.au

.loopexit.split-lp134.loopexit.split-lp:          ; preds = %bb.as, %bb.ag, %bb.z, %bb.ad
  %lpad.loopexit.split-lp523 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i

bb.y:                                             ; preds = %.noexc28
  %i.dp = load ptr, ptr %i.cr, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 240
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = invoke noundef i64 @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE15remaining_slotsBd_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dl)
          to label %bb.ac unwind label %.loopexit.split-lp134.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y
  %i.du = load ptr, ptr %i.g, align 8, !alias.scope !523, !noalias !518, !noundef !7
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split unwind label %.thread101.loopexit.split-lp.loopexit

bb.ac:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %i.cr, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8
  %i.dz = load ptr, ptr %i.cr, align 8, !noalias !518, !nonnull !7, !noundef !7 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !7 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
          to label %bb.ae unwind label %.loopexit.split-lp134.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ed = udiv i64 %i.dy, %i.eb
  %i.ee = add i64 %i.ed, 1
  %..i.i = call i64 @llvm.umin.i64(i64 %i.dt, i64 %i.ee)
  %i.ef = call i64 @llvm.umax.i64(i64 %..i.i, i64 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 264 ; 6 uses
  %i.eh = cmpxchg weak ptr %i.eg, i8 0, i8 1 acquire monotonic, align 1
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %bb.ai, label %bb.ag, !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.ej = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.eg, i64 undef, i32 noundef -1)
          to label %bb.ai unwind label %.loopexit.split-lp134.loopexit.split-lp ; 0 uses

.noexc19.i.a:                                     ; preds = %bb.aq, %bb.ap
  %i.ek = cmpxchg ptr %i.eg, i8 1, i8 0 release monotonic, align 1
  %i.el = extractvalue { i8, i1 } %i.ek, 1
  br i1 %i.el, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i, label %bb.ah, !prof !10

bb.ah:                                            ; preds = %.noexc19.i.a
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.eg, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i unwind label %bb.au

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.em = load ptr, ptr %i.cr, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 240 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 296 ; 3 uses
  %i.ep = load i64, ptr %i.en, align 8, !noalias !524, !noundef !7 ; 3 uses
  %..i15.i = call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ep)
  %..i.i.i = call i64 @llvm.umin.i64(i64 %..i15.i, i64 128) ; 3 uses
  %i.eq = sub nuw i64 %i.ep, %..i.i.i
  store atomic i64 %i.eq, ptr %i.en release, align 8, !noalias !524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !518
  %i.er = icmp eq i64 %i.ep, 0
  br i1 %i.er, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr null, ptr %i.f, align 8, !noalias !518
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.es = load ptr, ptr %i.eo, align 8, !alias.scope !525, !noundef !7 ; 4 uses
  %.not.i18.i = icmp eq ptr %i.es, null
  br i1 %.not.i18.i, label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !525, !noundef !7 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.eu, null
  store ptr %i.eu, ptr %i.eo, align 8, !alias.scope !525
  br i1 %.not7.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  store ptr null, ptr %i.et, align 8, !noalias !525
  br label %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i

bb.an:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 304
  store ptr null, ptr %i.ev, align 8, !alias.scope !525
  br label %bb.am

bb.ao:                                            ; preds = %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i, %bb.aj
  %i.ew = phi ptr [ null, %bb.aj ], [ %i.es, %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ %..i.i.i, %bb.aj ], [ %i.ex, %_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i ]
  invoke void @_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB8_6handle6HandleEE9push_backINtNtNtBa_6inject3pop3PopB1m_EEBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eo, i64 noundef %.sroa.4.0.i)
          to label %bb.ar unwind label %bb.ap

_RINvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6inject6syncedNtB6_6Synced3popINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_12multi_thread6handle6HandleEEBe_.exit.i: ; preds = %bb.am, %bb.ak
  store ptr %i.es, ptr %i.f, align 8, !noalias !518
  %i.ex = add nsw i64 %..i.i.i, -1
  br label %bb.ao

bb.ap:                                            ; preds = %bb.ao
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = icmp eq ptr %i.ew, null
  br i1 %i.ez, label %.noexc19.i.a, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc19.i.a unwind label %bb.au

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !518
  %i.fa = cmpxchg ptr %i.eg, i8 1, i8 0 release monotonic, align 1
  %i.fb = extractvalue { i8, i1 } %i.fa, 1
  br i1 %i.fb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit22.i, label %bb.as, !prof !10

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.eg, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit22.i unwind label %.loopexit.split-lp134.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit22.i: ; preds = %bb.as, %bb.ar
  %i.fc = load ptr, ptr %i.g, align 8, !alias.scope !526, !noalias !518, !noundef !7
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split, label %bb.at

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit22.i
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split unwind label %.thread101.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %bb.aq, %bb.ah, %bb.x
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
