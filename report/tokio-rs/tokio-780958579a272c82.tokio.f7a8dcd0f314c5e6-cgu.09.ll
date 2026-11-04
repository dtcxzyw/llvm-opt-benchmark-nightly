Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.09?download=true
inline.NumInlined: 528
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context13park_internal:bb.a
bb.aa:                                            ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1G_(ptr nonnull %1) #23
          to label %.thread48 unwind label %bb.r

.thread48:                                        ; preds = %bb.aa, %.body, %bb.q, %.thread62
  %.pn55 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread62 ], [ %i.bl, %bb.aa ], [ %i.j, %.body ], [ %i.y, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.bm = load ptr, ptr %i.a, align 8, !alias.scope !446, !nonnull !7, !noundef !7
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !446
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit

bb.ab:                                            ; preds = %.thread48
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit: ; preds = %.thread48, %bb.ab, %.noexc30
  %.pn.pn46 = phi { ptr, i32 } [ %.pn.pn47, %.noexc30 ], [ %.pn55, %.thread48 ], [ %.pn55, %bb.ab ]
  resume { ptr, i32 } %.pn.pn46

bb.ac:                                            ; preds = %.thread56, %bb.h, %.thread
  %.pn.pn47 = phi { ptr, i32 } [ %i.g, %.thread ], [ %lpad.thr_comm.split-lp, %bb.h ], [ %i.ai, %.thread56 ]
  %.sroa.0.045 = phi ptr [ %1, %.thread ], [ %i.x, %bb.h ], [ %i.x, %.thread56 ] ; 5 uses
  %i.bp = load ptr, ptr %.sroa.0.045, align 8, !alias.scope !447, !noundef !7
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.0.045)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit: ; preds = %bb.ac, %bb.ad
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.br) #23
          to label %bb.ae unwind label %bb.r

.noexc30:                                         ; preds = %bb.ag, %bb.af, %bb.ae
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.045, i64 noundef 120, i64 noundef 8) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEEB14_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !448, !noundef !7 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.noexc30, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !449
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ag, label %.noexc30

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bs) #24
          to label %.noexc30 unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context3run(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 initializes((112, 113)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  %i.m = load i8, ptr %i.l, align 4, !range !8, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = xor i8 %i.m, 1
  store i8 %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %.preheader unwind label %.thread101.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.r = load i8, ptr %i.q, align 2, !range !8, !noundef !7
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

.thread101.loopexit:                              ; preds = %bb.ay
  %lpad.loopexit122 = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

.thread101.loopexit.split-lp.loopexit:            ; preds = %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core10steal_work.exit.thread, %bb.au, %bb.as, %bb.r, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i, %bb.u, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i, %bb.aa, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core23transition_to_searching.exit.i, %._crit_edge.i
  %.sroa.0.1.ph.ph.ph = phi ptr [ %.sroa.0.1.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i ], [ %.sroa.0.1.i, %bb.as ], [ %.sroa.0.1.i, %bb.aa ], [ %.sroa.0.1.i, %bb.r ], [ %.sroa.0.1.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i ], [ %.sroa.0.1.i, %bb.u ], [ %.sroa.0.1.i, %bb.au ], [ %.sroa.0.1.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core23transition_to_searching.exit.i ], [ %.sroa.0.1.i, %._crit_edge.i ], [ %.sroa.0.1.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core10steal_work.exit.thread ], [ %.sroa.011.0, %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit ]
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

.thread101.loopexit.split-lp.loopexit.split-lp:   ; preds = %bb.c, %bb.az, %bb.a, %._crit_edge, %bb.b, %bb.q
  %.sroa.0.1.ph.ph.ph129 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1.i, %bb.az ], [ %.sroa.0.2.lcssa, %bb.b ], [ %.sroa.0.1.i, %bb.q ], [ %.sroa.0.2.lcssa, %._crit_edge ], [ %.sroa.0.2.lcssa, %bb.c ]
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %.sroa.0.2.lcssa = phi ptr [ %1, %.preheader ], [ %.sroa.0.2.be, %.backedge ] ; 9 uses
  %i.u = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.w = load ptr, ptr %i.v, align 8, !noalias !515, !nonnull !7, !noundef !7 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.y = load i64, ptr %i.x, align 8, !noalias !515, !noundef !7
  %i.z = add i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.2.lcssa, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !515, !noundef !7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.2.lcssa, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !515, !noundef !7 ; 4 uses
  %i.ae = shl i32 %i.ab, 17
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
  %2 = getelementptr inbounds nuw i8, ptr %i.bn, i64 115 ; 2 uses
  %3 = load i8, ptr %2, align 1, !range !8, !alias.scope !517, !noundef !7
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i, label %5

bb.l:                                             ; preds = %bb.k
  %i.ch = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ce, i64 undef, i32 noundef -1)
          to label %.noexc3.i unwind label %.loopexit ; 0 uses

.noexc3.i:                                        ; preds = %bb.l, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 312
  %i.cj = load i8, ptr %i.ci, align 8, !range !8, !noundef !7
  store i8 %i.cj, ptr %i.ca, align 2, !alias.scope !517
  %i.ck = cmpxchg ptr %i.ce, i8 1, i8 0 release monotonic, align 1
  %i.cl = extractvalue { i8, i1 } %i.ck, 1
  br i1 %i.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i, label %bb.m, !prof !10

bb.m:                                             ; preds = %.noexc3.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ce, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i unwind label %.loopexit

5:                                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i
  store i8 0, ptr %2, align 1, !alias.scope !517
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i: ; preds = %5, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.by)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge unwind label %.loopexit

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge: ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i
  %.pre = load ptr, ptr %0, align 8
  br label %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.l, %bb.m, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i
  %.sroa.0.07.ph.i.ph = phi ptr [ %i.bn, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i ], [ %i.bn, %bb.m ], [ %i.bn, %bb.l ], [ %i.bn, %bb.i ], [ %.sroa.0.2225, %bb.h ]
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.f, %bb.j
  %.sroa.0.07.ph.i.ph125 = phi ptr [ %i.bn, %bb.j ], [ %.sroa.0.2225, %bb.f ]
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.07.ph.i = phi ptr [ %.sroa.0.07.ph.i.ph, %.loopexit ], [ %.sroa.0.07.ph.i.ph125, %.loopexit.split-lp ]
  %lpad.phi128 = phi { ptr, i32 } [ %lpad.loopexit126, %.loopexit ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr %.sroa.0.07.ph.i) #23
          to label %.thread84 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit: ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge, %bb.e
  %i.cn = phi ptr [ %.pre, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge ], [ %i.be, %bb.e ]
  %.sroa.0.1.i = phi ptr [ %i.bn, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i._RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit_crit_edge ], [ %.sroa.0.2225, %bb.e ] ; 49 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 108 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !alias.scope !518, !noundef !7 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 104
  %i.ct = load i32, ptr %i.cs, align 8, !alias.scope !518, !noundef !7
  %i.cu = urem i32 %i.ct, %i.cq
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.r, label %bb.v

bb.q:                                             ; preds = %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context11maintenance.exit
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
          to label %.noexc21 unwind label %.thread101.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %.val9.i = load ptr, ptr %i.co, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %.val9.i, i64 40
  %i.cy = invoke noundef i32 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats27tuned_global_queue_interval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cw, ptr noundef nonnull align 8 %i.cx)
          to label %.noexc22 unwind label %.thread101.loopexit.split-lp.loopexit ; 4 uses

.noexc22:                                         ; preds = %bb.r
  %i.cz = load i32, ptr %i.cp, align 4, !alias.scope !519, !noundef !7 ; 3 uses
  %i.da = icmp ult i32 %i.cz, %i.cy
  %i.db = sub nuw i32 %i.cy, %i.cz
  %i.dc = sub nuw i32 %i.cz, %i.cy
  %.sroa.0.0.i.i = select i1 %i.da, i32 %i.db, i32 %i.dc
  %i.dd = icmp ugt i32 %.sroa.0.0.i.i, 2
  br i1 %i.dd, label %bb.s, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i

bb.s:                                             ; preds = %.noexc22
  store i32 %i.cy, ptr %i.cp, align 4, !alias.scope !519
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i: ; preds = %bb.s, %.noexc22
  %i.de = load ptr, ptr %i.co, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = invoke fastcc noundef ptr @_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle16next_remote_task(ptr noundef nonnull align 8 %i.df)
          to label %.noexc23 unwind label %.thread101.loopexit.split-lp.loopexit ; 2 uses

.noexc23:                                         ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core26tune_global_queue_interval.exit.i
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %bb.t, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.thread

bb.t:                                             ; preds = %.noexc23
  %i.dh = load ptr, ptr %.sroa.0.1.i, align 8, !alias.scope !520, !noundef !7 ; 2 uses
  store ptr null, ptr %.sroa.0.1.i, align 8, !alias.scope !520
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i, label %bb.u, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 24
  %i.dj = invoke noundef ptr @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3popBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit unwind label %.thread101.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !518
  %i.dk = load ptr, ptr %.sroa.0.1.i, align 8, !alias.scope !521, !noundef !7 ; 2 uses
  store ptr null, ptr %.sroa.0.1.i, align 8, !alias.scope !521
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i: ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 24 ; 3 uses
  %i.dm = invoke noundef ptr @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3popBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %.noexc28 unwind label %.thread101.loopexit.split-lp.loopexit ; 3 uses

.noexc28:                                         ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core15next_local_task.exit.i
  store ptr %i.dm, ptr %i.g, align 8, !noalias !518
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %bb.x, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i: ; preds = %.loopexit.split-lp134.loopexit.split-lp, %bb.ag, %.noexc19.i
  %.pn6.i = phi { ptr, i32 } [ %i.ey, %.noexc19.i ], [ %i.ey, %bb.ag ], [ %lpad.loopexit.split-lp523, %.loopexit.split-lp134.loopexit.split-lp ] ; 2 uses
  %i.dn = load ptr, ptr %i.g, align 8, !alias.scope !522, !noalias !518, !noundef !7
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.thread88, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.thread88 unwind label %bb.at

.loopexit.split-lp134.loopexit.split-lp:          ; preds = %bb.ar, %bb.af, %bb.y, %bb.ac
  %lpad.loopexit.split-lp523 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i

bb.x:                                             ; preds = %.noexc28
  %i.dp = load ptr, ptr %i.co, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 240
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = invoke noundef i64 @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE15remaining_slotsBd_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dl)
          to label %bb.ab unwind label %.loopexit.split-lp134.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %i.g, align 8, !alias.scope !523, !noalias !518, !noundef !7
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9next_task.exit.sink.split unwind label %.thread101.loopexit.split-lp.loopexit

bb.ab:                                            ; preds = %bb.y
  %i.dw = load ptr, ptr %i.co, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8
  %i.dz = load ptr, ptr %i.co, align 8, !noalias !518, !nonnull !7, !noundef !7 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !7 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
          to label %bb.ad unwind label %.loopexit.split-lp134.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ed = udiv i64 %i.dy, %i.eb
  %i.ee = add i64 %i.ed, 1
  %..i.i = call i64 @llvm.umin.i64(i64 %i.dt, i64 %i.ee)
  %i.ef = call i64 @llvm.umax.i64(i64 %..i.i, i64 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 264 ; 6 uses
  %i.eh = cmpxchg weak ptr %i.eg, i8 0, i8 1 acquire monotonic, align 1
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %bb.ah, label %bb.af, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.ej = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.eg, i64 undef, i32 noundef -1)
          to label %bb.ah unwind label %.loopexit.split-lp134.loopexit.split-lp ; 0 uses

.noexc19.i:                                       ; preds = %bb.ap, %bb.ao
  %i.ek = cmpxchg ptr %i.eg, i8 1, i8 0 release monotonic, align 1
  %i.el = extractvalue { i8, i1 } %i.ek, 1
  br i1 %i.el, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i, label %bb.ag, !prof !10

bb.ag:                                            ; preds = %.noexc19.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.eg, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i unwind label %bb.at

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.em = load ptr, ptr %i.co, align 8, !noalias !518, !nonnull !7, !noundef !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 240 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 296 ; 3 uses
  %i.ep = load i64, ptr %i.en, align 8, !noalias !524, !noundef !7 ; 3 uses
  %..i15.i = call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ep)
  %..i.i.i = call i64 @llvm.umin.i64(i64 %..i15.i, i64 128) ; 3 uses
  %i.eq = sub nuw i64 %i.ep, %..i.i.i
  store atomic i64 %i.eq, ptr %i.en release, align 8, !noalias !524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !518
  %i.er = icmp eq i64 %i.ep, 0
  br i1 %i.er, label %bb.ai, label %bb.aj
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context3run:bb.a
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !530, !nonnull !7, !noundef !7 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !530, !noundef !7 ; 2 uses
  %.not.i39 = icmp eq ptr %i.hq, null
  br i1 %.not.i39, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hs = load ptr, ptr %i.hr, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !range !531, !invariant.load !7
  %i.hv = add nsw i64 %i.hu, -1
  %i.hw = and i64 %i.hv, -16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !invariant.load !7, !nonnull !7
  invoke void %i.ia(ptr noundef nonnull %i.hy)
          to label %._crit_edge.i40 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit

._crit_edge.i40:                                  ; preds = %bb.bg
  %.pre.i41 = load ptr, ptr %0, align 8, !noalias !530
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i40, %bb.bf
  %i.ib = phi ptr [ %.pre.i41, %._crit_edge.i40 ], [ %i.hm, %bb.bf ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.id = load ptr, ptr %.sroa.0.1.i, align 8, !alias.scope !533, !noundef !7
  %.not.i.i.i42 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i42, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i.i: ; preds = %bb.bh
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 24
  %i.if = invoke noundef i64 @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3lenBd_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ie)
          to label %.noexc.i44 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit

.noexc.i44:                                       ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i.i
  %i.ig = icmp ne i64 %i.if, 0
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 115
  %i.ii = load i8, ptr %i.ih, align 1, !range !8, !alias.scope !534
  %i.ij = trunc nuw i8 %i.ii to i1
  %or.cond.i.i = select i1 %i.ig, i1 true, i1 %i.ij
  br i1 %or.cond.i.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc.i44
  %i.ik = load ptr, ptr %i.ic, align 8, !noalias !532, !nonnull !7, !noundef !7 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 248
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.io = load i64, ptr %i.in, align 8, !noalias !532, !noundef !7
  %i.ip = load i8, ptr %i.fk, align 1, !range !8, !alias.scope !534, !noundef !7
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = invoke noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle27transition_worker_to_parked(ptr noundef nonnull align 8 %i.im, ptr noundef nonnull align 8 %i.il, i64 noundef %i.io, i1 noundef zeroext %i.iq)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit

.noexc4.i:                                        ; preds = %bb.bi
  store i8 0, ptr %i.fk, align 1, !alias.scope !534
  br i1 %i.ir, label %bb.bj, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader: ; preds = %.noexc9.i, %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit.sink.split.i.i.i, %.noexc6.i, %._crit_edge.i.i.i, %.noexc4.i
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i

bb.bj:                                            ; preds = %.noexc4.i
  %i.is = load ptr, ptr %i.ic, align 8, !noalias !532, !nonnull !7, !noundef !7 ; 8 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 152 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 160 ; 3 uses
  %i.iw = load i64, ptr %i.iv, align 8, !noundef !7 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.iw, 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.idx.i.i.i
  %i.iy = icmp eq i64 %i.iw, 0
  br i1 %i.iy, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bk:                                            ; preds = %.noexc5.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.ix
  br i1 %i.ja, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bj, %bb.bk
  %.sroa.0.03.i.i.i = phi ptr [ %i.iz, %bb.bk ], [ %i.iu, %bb.bj ] ; 2 uses
  %i.jb = invoke noundef i64 @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3lenBd_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.03.i.i.i)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.i

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %bb.bk, label %bb.bl

._crit_edge.i.i.i:                                ; preds = %bb.bk, %bb.bj
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 240
  %i.je = load atomic i64, ptr %i.jd acquire, align 8
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader, label %bb.bn

bb.bl:                                            ; preds = %.noexc5.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 248
  %i.ji = invoke { i64, i64 } @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle16worker_to_notify(ptr noundef nonnull align 8 %i.jh, ptr noundef nonnull align 8 %i.jg)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit ; 2 uses

.noexc6.i:                                        ; preds = %bb.bl
  %i.jj = extractvalue { i64, i64 } %i.ji, 0
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.bm, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader

bb.bm:                                            ; preds = %.noexc6.i
  %i.jl = extractvalue { i64, i64 } %i.ji, 1      ; 3 uses
  %i.jm = load i64, ptr %i.iv, align 8, !noundef !7 ; 2 uses
  %i.jn = icmp ult i64 %i.jl, %i.jm
  br i1 %i.jn, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit.sink.split.i.i.i, label %.invoke.i

_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit.sink.split.i.i.i: ; preds = %bb.bo, %bb.bm
  %.sink11.i.i.i = phi i64 [ %i.jx, %bb.bo ], [ %i.jl, %bb.bm ]
  %i.jo = load ptr, ptr %i.it, align 8, !nonnull !7, !noundef !7
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.sink11.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.is, i64 352
  invoke void @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jq, ptr noundef nonnull align 8 %i.jr)
          to label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit

bb.bn:                                            ; preds = %._crit_edge.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.jt = getelementptr inbounds nuw i8, ptr %i.is, i64 248
  %i.ju = invoke { i64, i64 } @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle16worker_to_notify(ptr noundef nonnull align 8 %i.jt, ptr noundef nonnull align 8 %i.js)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit ; 2 uses

.noexc9.i:                                        ; preds = %bb.bn
  %i.jv = extractvalue { i64, i64 } %i.ju, 0
  %i.jw = trunc nuw i64 %i.jv to i1
  br i1 %i.jw, label %bb.bo, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader

bb.bo:                                            ; preds = %.noexc9.i
  %i.jx = extractvalue { i64, i64 } %i.ju, 1      ; 3 uses
  %i.jy = load i64, ptr %i.iv, align 8, !noundef !7 ; 2 uses
  %i.jz = icmp ult i64 %i.jx, %i.jy
  br i1 %i.jz, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit.sink.split.i.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.bo, %bb.bm
  %i.ka = phi i64 [ %i.jl, %bb.bm ], [ %i.jx, %bb.bo ]
  %i.kb = phi i64 [ %i.jm, %bb.bm ], [ %i.jy, %bb.bo ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ka, i64 noundef %i.kb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i: ; preds = %bb.bp, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i, %bb.ca, %.noexc20.i, %.noexc.i44, %bb.bh
  %.sroa.0.1.i43 = phi ptr [ %i.lc, %.noexc20.i ], [ %i.lc, %bb.ca ], [ %.sroa.0.1.i, %bb.bh ], [ %.sroa.0.1.i, %.noexc.i44 ], [ %.sroa.0.2.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i ], [ %.sroa.0.2.i, %bb.bp ] ; 3 uses
  %i.kc = load ptr, ptr %0, align 8, !noalias !530, !nonnull !7, !noundef !7
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  %i.kg = load ptr, ptr %i.kf, align 8, !noundef !7 ; 2 uses
  %.not3.i = icmp eq ptr %i.kg, null
  br i1 %.not3.i, label %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit, label %bb.cb

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i: ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader, %.noexc19.i48
  %.sroa.0.2.i = phi ptr [ %i.lc, %.noexc19.i48 ], [ %.sroa.0.1.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i.preheader ] ; 9 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 114
  %i.ki = load i8, ptr %i.kh, align 2, !range !8, !noundef !7
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 115
  %i.kl = load i8, ptr %i.kk, align 1, !range !8, !noundef !7
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 56 ; 2 uses
  %i.ko = load <2 x i64>, ptr %i.kn, align 8
  %i.kp = add <2 x i64> %i.ko, splat (i64 1)
  store <2 x i64> %i.kp, ptr %i.kn, align 8
  %i.kq = load ptr, ptr %0, align 8, !noalias !530, !nonnull !7, !noundef !7 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ku = load i64, ptr %i.kt, align 8, !noundef !7 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 232
  %i.kw = load i64, ptr %i.kv, align 8, !noundef !7 ; 2 uses
  %i.kx = icmp ult i64 %i.ku, %i.kw
  br i1 %i.kx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 224
  %i.kz = load ptr, ptr %i.ky, align 8, !nonnull !7, !noundef !7
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 32
  %i.lb = getelementptr inbounds nuw [128 x i8], ptr %i.kz, i64 %i.ku
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats6submit(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.la, ptr noundef nonnull align 128 %i.lb)
          to label %.noexc49 unwind label %.loopexit.i

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ku, i64 noundef %i.kw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #26
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  unreachable

.noexc49:                                         ; preds = %bb.br
  %i.lc = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context13park_internal(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %.sroa.0.2.i, i32 noundef -1) ; 18 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 64 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !noundef !7
  %i.lf = add i64 %i.le, 1
  store i64 %i.lf, ptr %i.ld, align 8
  %i.lg = load ptr, ptr %0, align 8, !noalias !530, !nonnull !7, !noundef !7 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !535, !nonnull !7, !noundef !7 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !noalias !535, !noundef !7 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 232
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !535, !noundef !7 ; 2 uses
  %i.ln = icmp ult i64 %i.lk, %i.lm
  br i1 %i.ln, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.noexc49
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 224
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !535, !nonnull !7, !noundef !7
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.lr = getelementptr inbounds nuw [128 x i8], ptr %i.lp, i64 %i.lk
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats6submit(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.lq, ptr noundef nonnull align 128 %i.lr)
          to label %.noexc11.i unwind label %.loopexit.i

.noexc11.i:                                       ; preds = %bb.bu
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 114 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 2, !range !8, !alias.scope !535, !noundef !7
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i45, label %bb.bw

bb.bv:                                            ; preds = %.noexc49
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.lk, i64 noundef %i.lm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp

.noexc12.i:                                       ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %.noexc11.i
  %i.lv = load ptr, ptr %i.lh, align 8, !noalias !535, !nonnull !7, !noundef !7 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 264 ; 4 uses
  %i.lx = cmpxchg weak ptr %i.lw, i8 0, i8 1 acquire monotonic, align 1
  %i.ly = extractvalue { i8, i1 } %i.lx, 1
  br i1 %i.ly, label %.noexc13.i, label %bb.bx, !prof !10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i45: ; preds = %bb.by, %.noexc13.i, %.noexc11.i
  %6 = getelementptr inbounds nuw i8, ptr %i.lc, i64 115 ; 2 uses
  %7 = load i8, ptr %6, align 1, !range !8, !alias.scope !535, !noundef !7
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i46, label %9

bb.bx:                                            ; preds = %bb.bw
  %i.lz = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.lw, i64 undef, i32 noundef -1)
          to label %.noexc13.i unwind label %.loopexit.i ; 0 uses

.noexc13.i:                                       ; preds = %bb.bx, %bb.bw
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 312
  %i.mb = load i8, ptr %i.ma, align 8, !range !8, !noundef !7
  store i8 %i.mb, ptr %i.ls, align 2, !alias.scope !535
  %i.mc = cmpxchg ptr %i.lw, i8 1, i8 0 release monotonic, align 1
  %i.md = extractvalue { i8, i1 } %i.mc, 1
  br i1 %i.md, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i45, label %bb.by, !prof !10

bb.by:                                            ; preds = %.noexc13.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.lw, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i45 unwind label %.loopexit.i

9:                                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i45
  store i8 0, ptr %6, align 1, !alias.scope !535
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i46

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i46: ; preds = %9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.i.i45
  %i.me = load ptr, ptr %0, align 8, !noalias !530, !nonnull !7, !noundef !7 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.mg = load ptr, ptr %i.lc, align 8, !alias.scope !537, !noundef !7
  %.not.i.i15.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i15.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i17.i, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.thread.i.i

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i17.i: ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i46
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.mi = invoke noundef i64 @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3lenBd_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mh)
          to label %.noexc18.i unwind label %.loopexit.i

.noexc18.i:                                       ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i17.i
  %.not.i.i47 = icmp eq i64 %i.mi, 0
  br i1 %.not.i.i47, label %bb.bz, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.thread.i.i

bb.bz:                                            ; preds = %.noexc18.i
  %i.mj = load ptr, ptr %i.mf, align 8, !noalias !536, !nonnull !7, !noundef !7 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 248
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mn = load i64, ptr %i.mm, align 8, !noalias !536, !noundef !7
  %i.mo = invoke noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle9is_parked(ptr noundef nonnull align 8 %i.ml, ptr noundef nonnull align 8 %i.mk, i64 noundef %i.mn)
          to label %.noexc19.i48 unwind label %.loopexit.i

.noexc19.i48:                                     ; preds = %bb.bz
  br i1 %i.mo, label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core22transition_from_parked.exit.i, label %bb.ca

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.thread.i.i: ; preds = %.noexc18.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core11maintenance.exit.i46
  %i.mp = load ptr, ptr %i.mf, align 8, !noalias !536, !nonnull !7, !noundef !7 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 248
  %i.ms = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !536, !noundef !7
  %i.mu = invoke noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle19unpark_worker_by_id(ptr noundef nonnull align 8 %i.mr, ptr noundef nonnull align 8 %i.mq, i64 noundef %i.mt)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit

.noexc20.i:                                       ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.thread.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lc, i64 113
  %i.mw = xor i1 %i.mu, true
  %i.mx = zext i1 %i.mw to i8
  store i8 %i.mx, ptr %i.mv, align 1, !alias.scope !536
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i

bb.ca:                                            ; preds = %.noexc19.i48
  %i.my = getelementptr inbounds nuw i8, ptr %i.lc, i64 113
  store i8 1, ptr %i.my, align 1, !alias.scope !536
  br label %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i

bb.cb:                                            ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  %i.na = load ptr, ptr %i.mz, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !range !531, !invariant.load !7
  %i.nd = add nsw i64 %i.nc, -1
  %i.ne = and i64 %i.nd, -16
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8, !invariant.load !7, !nonnull !7
  invoke void %i.ni(ptr noundef nonnull %i.ng)
          to label %_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit

.loopexit.i:                                      ; preds = %bb.bz, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i17.i, %bb.by, %bb.bx, %bb.bu, %bb.br
  %.sroa.0.026.ph.ph.i = phi ptr [ %i.lc, %bb.bz ], [ %i.lc, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i17.i ], [ %i.lc, %bb.by ], [ %i.lc, %bb.bx ], [ %i.lc, %bb.bu ], [ %.sroa.0.2.i, %bb.br ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i.i.i
  %lpad.loopexit36.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit:  ; preds = %bb.bg, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i.i, %bb.bi, %bb.bl, %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit.sink.split.i.i.i, %bb.bn, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.thread.i.i, %bb.cb
  %.sroa.0.026.ph.ph35.ph.i.ph = phi ptr [ %.sroa.0.1.i43, %bb.cb ], [ %.sroa.0.1.i, %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle19notify_parked_local.exit.sink.split.i.i.i ], [ %.sroa.0.1.i, %bb.bn ], [ %i.lc, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.thread.i.i ], [ %.sroa.0.1.i, %bb.bl ], [ %.sroa.0.1.i, %bb.bg ], [ %.sroa.0.1.i, %bb.bi ], [ %.sroa.0.1.i, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core9has_tasks.exit.i.i ]
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %.invoke.i, %bb.bs, %bb.bv
  %.sroa.0.026.ph.ph35.ph.i.ph139 = phi ptr [ %.sroa.0.2.i, %bb.bs ], [ %i.lc, %bb.bv ], [ %.sroa.0.1.i, %.invoke.i ]
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.0.026.ph.i = phi ptr [ %.sroa.0.026.ph.ph.i, %.loopexit.i ], [ %.sroa.0.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.026.ph.ph35.ph.i.ph, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %.sroa.0.026.ph.ph35.ph.i.ph139, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit36.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit140, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr %.sroa.0.026.ph.i) #23
          to label %.thread84 unwind label %bb.cc

bb.cc:                                            ; preds = %.loopexit.split-lp.i
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB4_7Context10park_yield.exit: ; preds = %bb.be, %bb.cb, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i
  %.sroa.011.0 = phi ptr [ %i.hl, %bb.be ], [ %.sroa.0.1.i43, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core20transition_to_parked.exit.thread.i ], [ %.sroa.0.1.i43, %bb.cb ] ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 32
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.nk)
          to label %.backedge unwind label %.thread101.loopexit.split-lp.loopexit

_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core12pre_shutdown.exit: ; preds = %bb.b
  %i.nl = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 320 ; 7 uses
  %i.nq = cmpxchg weak ptr %i.np, i8 0, i8 1 acquire monotonic, align 1, !noalias !538
  %i.nr = extractvalue { i8, i1 } %i.nq, 1
  br i1 %i.nr, label %bb.ce, label %bb.cd, !prof !10

bb.cd:                                            ; preds = %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core12pre_shutdown.exit
  %i.ns = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.np, i64 undef, i32 noundef -1)
          to label %bb.ce unwind label %bb.dg     ; 0 uses

bb.ce:                                            ; preds = %bb.cd, %_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtB5_4Core12pre_shutdown.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 328 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 344 ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 8, !alias.scope !539, !noalias !538, !noundef !7 ; 4 uses
  %i.nw = load i64, ptr %i.nt, align 8, !range !13, !alias.scope !539, !noalias !538, !noundef !7
  %i.nx = icmp eq i64 %i.nv, %i.nw
  br i1 %i.nx, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEE8grow_oneB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %bb.cj unwind label %bb.cg, !noalias !540

bb.cg:                                            ; preds = %bb.cf
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr nonnull align 8 %.sroa.0.2.lcssa) #23
          to label %.body.i unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body23.i, %bb.cg
  %.pn7.i = phi { ptr, i32 } [ %i.ny, %bb.cg ], [ %.pn.i, %.body23.i ], [ %lpad.loopexit.split-lp511, %.loopexit.split-lp.loopexit.split-lp.i54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.oa = cmpxchg ptr %i.np, i8 1, i8 0 release monotonic, align 1, !noalias !538
  %i.ob = extractvalue { i8, i1 } %i.oa, 1
  br i1 %i.ob, label %.thread84, label %bb.ci, !prof !10

bb.ci:                                            ; preds = %.body.i
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.np, i1 noundef zeroext false)
          to label %.thread84 unwind label %bb.db

.loopexit.split-lp.loopexit.split-lp.i54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.de, %bb.dc, %._crit_edge.i57, %bb.ck
  %lpad.loopexit.split-lp511 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cj:                                            ; preds = %bb.cf, %bb.ce
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nn, i64 336
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !539, !noalias !538, !nonnull !7, !noundef !7
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.nv
  store ptr %.sroa.0.2.lcssa, ptr %i.oe, align 8, !noalias !541
  %i.of = add nsw i64 %i.nv, 1                    ; 2 uses
  store i64 %i.of, ptr %i.nu, align 8, !alias.scope !539, !noalias !538
  %i.og = icmp slt i64 %i.nv, 1152921504606846975
  call void @llvm.assume(i1 %i.og)
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nn, i64 160
  %i.oi = load i64, ptr %i.oh, align 8, !noalias !538, !noundef !7
  %.not.i53 = icmp eq i64 %i.of, %i.oi
  br i1 %.not.i53, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB17_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.i54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.cj
  %i.oj = cmpxchg ptr %i.np, i8 1, i8 0 release monotonic, align 1, !noalias !538
  %i.ok = extractvalue { i8, i1 } %i.oj, 1
  br i1 %i.ok, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle13shutdown_core.exit, label %_RNvMs2_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle13shutdown_core.exit.sink.split, !prof !10

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !538
  %i.ol = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.om = load ptr, ptr %i.d, align 8, !noalias !538, !nonnull !7, !noundef !7 ; 2 uses
  %i.on = load ptr, ptr %i.ol, align 8, !noalias !538, !nonnull !7, !noundef !7
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %._crit_edge.i57, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.cm
  %i.op = getelementptr inbounds nuw i8, ptr %i.nn, i64 352
  br label %bb.cn

bb.cn:                                            ; preds = %bb.da, %.lr.ph.i55
  %i.oq = phi ptr [ %i.om, %.lr.ph.i55 ], [ %i.pg, %bb.da ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store ptr %i.or, ptr %i.d, align 8, !noalias !538
  %i.os = load ptr, ptr %i.oq, align 8, !nonnull !7, !align !9, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
end_hunk_1
