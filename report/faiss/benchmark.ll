Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/benchmark?download=true
inline.NumInlined: 1645
inline.NumDeleted: 790
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN9benchmark8internal15BenchmarkRunnerC1ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE(ptr noundef nonnull align 8 dereferenceable(144) %i.gi, ptr noundef nonnull align 8 dereferenceable(472) %.sroa.0193.0294.i, ptr noundef nonnull %9, ptr noundef %i.gc)
          to label %.noexc119.i unwind label %bb.bc

.noexc119.i:                                      ; preds = %bb.az
  %i.gk = load ptr, ptr %i.fi, align 8, !tbaa !197
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 144 ; 2 uses
  store ptr %i.gl, ptr %i.fi, align 8, !tbaa !197
  br label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i

bb.ba:                                            ; preds = %bb.ay
  invoke void @_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_insertIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.gi, ptr noundef nonnull align 8 dereferenceable(472) %.sroa.0193.0294.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i unwind label %bb.bc

._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i: ; preds = %bb.ba
  %.pre.i = load ptr, ptr %i.fi, align 8, !tbaa !201
  br label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i: ; preds = %._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i, %.noexc119.i
  %i.gm = phi ptr [ %.pre.i, %._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i ], [ %i.gl, %.noexc119.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -36
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !202 ; 2 uses
  %i.gp = sext i32 %i.go to i64
  %i.gq = add i64 %.081295.i, %i.gp               ; 5 uses
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !186 ; 3 uses
  %.not111.i = icmp eq ptr %i.gr, null
  br i1 %.not111.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !219
  %i.gt = add nsw i32 %i.gs, %i.go
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !219
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0193.0294.i, i64 472 ; 2 uses
  %.not244.i = icmp eq ptr %i.gv, %i.fh
  br i1 %.not244.i, label %._crit_edge298.i, label %bb.at

bb.be:                                            ; preds = %bb.bc, %bb.ax
  %.pn105.i = phi { ptr, i32 } [ %i.gu, %bb.bc ], [ %i.gb, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

bb.bf:                                            ; preds = %._crit_edge298.i
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !86
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !88
  %.not.i61 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not.i61, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ha = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.bh, label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i, !prof !8

bb.bh:                                            ; preds = %bb.bg
  %i.hc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #32
  %.not.i121.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i121.i, label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !63
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #32
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.hd = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !63 ; 2 uses
  %.not.i122.i = icmp eq ptr %i.hd, null
  br i1 %.not.i122.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull @.str.61, i64 noundef 24)
          to label %_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i unwind label %bb.bo ; 0 uses

_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i: ; preds = %bb.bj
  %.pr.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !63 ; 2 uses
  %.not.i124.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i124.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i, i32 noundef %i.gh)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i unwind label %bb.bo ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i: ; preds = %bb.bk
  %.pr225.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !63 ; 2 uses
  %.not.i126.i = icmp eq ptr %.pr225.i, null
  br i1 %.not.i126.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr225.i, ptr noundef nonnull @.str.62, i64 noundef 29)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i unwind label %bb.bo ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i: ; preds = %bb.bl
  %.pr227.pr.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !63 ; 2 uses
  %.not.i128.i = icmp eq ptr %.pr227.pr.i, null
  br i1 %.not.i128.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i
  %i.hh = load ptr, ptr %i.gx, align 8, !tbaa !86
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = load ptr, ptr %i.gw, align 8, !tbaa !88
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.hi, %i.hk
  %i.hm = ashr exact i64 %i.hl, 5
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr227.pr.i, i64 noundef %i.hm)
          to label %_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i unwind label %bb.bp ; 0 uses

_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i: ; preds = %bb.bm
  %.pr229.pr.pre.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !63 ; 2 uses
  %.not.i130.i = icmp eq ptr %.pr229.pr.pre.i, null
  br i1 %.not.i130.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr229.pr.pre.i, ptr noundef nonnull @.str.63, i64 noundef 106)
          to label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i unwind label %bb.bp ; 0 uses

bb.bo:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i: ; preds = %bb.bn, %_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i, %_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i, %bb.bf, %._crit_edge298.i
  %i.hr = icmp ugt i64 %i.gq, 1152921504606846975
  br i1 %i.hr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #34
          to label %.noexc132.i unwind label %.thread231.i

.noexc132.i:                                      ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i
  %.not246.i = icmp eq i64 %i.gq, 0
  br i1 %.not246.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i: ; preds = %bb.br
  %i.hs = shl nuw nsw i64 %i.gq, 3
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #35
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i unwind label %.thread231.i ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.gq
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i:            ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i, %bb.br, %bb.an
  %.sroa.0181.2.i = phi ptr [ %i.ht, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ null, %bb.br ], [ null, %bb.an ] ; 4 uses
  %.sroa.19.2.i = phi ptr [ %i.hu, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ null, %bb.br ], [ null, %bb.an ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !197 ; 2 uses
  %i.hx = load ptr, ptr %11, align 8, !tbaa !221  ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = sdiv exact i64 %i.ia, 144
  %.not89301.i = icmp eq ptr %i.hw, %i.hx
  br i1 %.not89301.i, label %._crit_edge307.i, label %.lr.ph306.i

._crit_edge307.i:                                 ; preds = %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i
  %.sroa.0181.0.lcssa.i = phi ptr [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ], [ %.sroa.0181.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ] ; 9 uses
  %.sroa.12.0.lcssa.i = phi ptr [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ], [ %.sroa.12.3.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ] ; 3 uses
  %.sroa.19.0.lcssa.i = phi ptr [ %.sroa.19.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ], [ %.sroa.19.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ] ; 4 uses
  %i.ic = load i8, ptr @_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE, align 1, !tbaa !129, !range !82, !noundef !83
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.bx, label %bb.ch

.thread231.i:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i, %bb.bq
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

.lr.ph306.i:                                      ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i
  %.0220305.i = phi i64 [ %i.jd, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 4 uses
  %.sroa.19.0304.i = phi ptr [ %.sroa.19.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ %.sroa.19.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 3 uses
  %.sroa.12.0303.i = phi ptr [ %.sroa.12.3.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 2 uses
  %.sroa.0181.0302.i = phi ptr [ %.sroa.0181.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 2 uses
  %i.if = load ptr, ptr %11, align 8, !tbaa !221
  %i.ig = getelementptr inbounds nuw [144 x i8], ptr %i.if, i64 %.0220305.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 108
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !202 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph.i.i.i134.i, label %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i

.lr.ph.i.i.i134.i:                                ; preds = %.lr.ph306.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i
  %.sroa.0181.3.i = phi ptr [ %.sroa.0181.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.0181.0302.i, %.lr.ph306.i ] ; 7 uses
  %.sroa.19.3.i = phi ptr [ %.sroa.19.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.19.0304.i, %.lr.ph306.i ] ; 4 uses
  %i.ik = phi ptr [ %i.ja, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.19.0304.i, %.lr.ph306.i ] ; 3 uses
  %i.il = phi ptr [ %.sroa.12.2.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.12.0303.i, %.lr.ph306.i ] ; 3 uses
  %.03.i.i.i.i = phi i32 [ %i.jb, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %i.ii, %.lr.ph306.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.il, %i.ik
  br i1 %.not.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i134.i
  store i64 %.0220305.i, ptr %i.il, align 8, !tbaa !47
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i

bb.bt:                                            ; preds = %.lr.ph.i.i.i134.i
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %.sroa.0181.3.i to i64     ; 2 uses
  %i.io = sub i64 %i.im, %i.in                    ; 5 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.bu, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #34
          to label %.noexc135.i unwind label %.loopexit.split-lp.i

.noexc135.i:                                      ; preds = %bb.bu
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.bt
  %i.iq = ashr exact i64 %i.io, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 1152921504606846975)
  %i.iu = select i1 %i.is, i64 1152921504606846975, i64 %i.it ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #35
          to label %.noexc136.i unwind label %.loopexit.i ; 4 uses

.noexc136.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.io ; 2 uses
  store i64 %.0220305.i, ptr %i.ix, align 8, !tbaa !47
  %i.iy = icmp sgt i64 %i.io, 0
  br i1 %i.iy, label %bb.bv, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %.noexc136.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr align 8 %.sroa.0181.3.i, i64 %i.io, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.bv, %.noexc136.i
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0181.3.i, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %20 = ptrtoint ptr %.sroa.19.3.i to i64
  %21 = sub i64 %20, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.3.i, i64 noundef %21) #36
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.bw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.bs
  %.sroa.0181.4.i = phi ptr [ %i.iw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.0181.3.i, %bb.bs ] ; 2 uses
  %.pn247.i = phi ptr [ %i.ix, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.il, %bb.bs ]
  %.sroa.19.4.i = phi ptr [ %i.iz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.19.3.i, %bb.bs ] ; 2 uses
  %i.ja = phi ptr [ %i.iz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.ik, %bb.bs ]
  %.sroa.12.2.i = getelementptr inbounds nuw i8, ptr %.pn247.i, i64 8 ; 2 uses
  %i.jb = add nsw i32 %.03.i.i.i.i, -1
  %i.jc = icmp sgt i32 %.03.i.i.i.i, 1
  br i1 %i.jc, label %.lr.ph.i.i.i134.i, label %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i, !llvm.loop !222

_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i, %.lr.ph306.i
  %.sroa.0181.5.i = phi ptr [ %.sroa.0181.0302.i, %.lr.ph306.i ], [ %.sroa.0181.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.0303.i, %.lr.ph306.i ], [ %.sroa.12.2.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ] ; 2 uses
  %.sroa.19.5.i = phi ptr [ %.sroa.19.0304.i, %.lr.ph306.i ], [ %.sroa.19.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ] ; 2 uses
  %i.jd = add i64 %.0220305.i, 1                  ; 2 uses
  %.not89.i = icmp eq i64 %i.jd, %i.ib
  br i1 %.not89.i, label %._crit_edge307.i, label %.lr.ph306.i, !llvm.loop !223

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp.i:                             ; preds = %bb.bu
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.bx:                                            ; preds = %._crit_edge307.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.je, ptr %3, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.je, ptr noundef nonnull align 1 dereferenceable(7) @.str.65, i64 7, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.jf, align 8, !tbaa !55
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.jg, align 1, !tbaa !56
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %12, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jh = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.je
  br i1 %i.ji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.by
  %i.jj = load i64, ptr %i.je, align 8, !tbaa !56
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %i.jm = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.je
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.bz
  %i.jo = load i64, ptr %i.je, align 8, !tbaa !56
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.jq = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %12)
          to label %_ZNSt13random_deviceclEv.exit.i unwind label %bb.cf

_ZNSt13random_deviceclEv.exit.i:                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  store i64 %i.jr, ptr %13, align 8, !tbaa !47
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %_ZNSt13random_deviceclEv.exit.i
  %store_forwarded = phi i64 [ %i.jr, %_ZNSt13random_deviceclEv.exit.i ], [ %i.ke, %bb.cb ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit.i ], [ %i.kf, %bb.cb ] ; 4 uses
  %i.js = getelementptr [8 x i8], ptr %13, i64 %.011.i.i.i
  %i.jt = lshr i64 %store_forwarded, 30
  %i.ju = xor i64 %i.jt, %store_forwarded
  %i.jv = mul nuw nsw i64 %i.ju, 1812433253
  %i.jw = add nuw i64 %i.jv, %.011.i.i.i          ; 2 uses
  %i.jx = and i64 %i.jw, 4294967295               ; 2 uses
  store i64 %i.jx, ptr %i.js, align 8, !tbaa !47
  %i.jy = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.jy, 624
  br i1 %exitcond.not.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jz = getelementptr [8 x i8], ptr %13, i64 %i.jy
  %i.ka = lshr i64 %i.jx, 30
  %i.kb = xor i64 %i.ka, %i.jw
  %i.kc = mul i64 %i.kb, 1812433253
  %i.kd = add i64 %i.kc, %i.jy
  %i.ke = and i64 %i.kd, 4294967295               ; 2 uses
  store i64 %i.ke, ptr %i.jz, align 8, !tbaa !47
  %i.kf = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.ca

bb.cc:                                            ; preds = %bb.ca
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 4992
  store i64 624, ptr %i.kg, align 8, !tbaa !224
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %.sroa.0181.0.lcssa.i, ptr %.sroa.12.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(5000) %13)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %12)
          to label %_ZNSt13random_deviceD2Ev.exit.i unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #33
  unreachable

_ZNSt13random_deviceD2Ev.exit.i:                  ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %12)
          to label %.body.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #33
  unreachable

.body.i:                                          ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %.pn90.i = phi { ptr, i32 } [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.kj, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.du

bb.ch:                                            ; preds = %_ZNSt13random_deviceD2Ev.exit.i, %._crit_edge307.i
  %.not248311.i = icmp eq ptr %.sroa.0181.0.lcssa.i, %.sroa.12.0.lcssa.i
  br i1 %.not248311.i, label %._crit_edge315.i, label %.lr.ph314.i

.lr.ph314.i:                                      ; preds = %bb.ch
  %i.km = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 11 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 49
  br label %bb.cl

._crit_edge315.i:                                 ; preds = %bb.dq, %bb.ch
  %.not.i.i.i139.i = icmp eq ptr %.sroa.0181.0.lcssa.i, null
  br i1 %.not.i.i.i139.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge315.i
  %i.kv = ptrtoint ptr %.sroa.19.0.lcssa.i to i64
  %i.kw = ptrtoint ptr %.sroa.0181.0.lcssa.i to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.0.lcssa.i, i64 noundef %i.kx) #36
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.ci, %._crit_edge315.i
  %i.ky = load ptr, ptr %11, align 8, !tbaa !221
  %i.kz = load ptr, ptr %i.hv, align 8, !tbaa !197
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark8internal15BenchmarkRunnerEEEvT_S6_(ptr noundef %i.ky, ptr noundef %i.kz)
          to label %_ZSt8_DestroyIPN9benchmark8internal15BenchmarkRunnerES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.ck

_ZSt8_DestroyIPN9benchmark8internal15BenchmarkRunnerES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.la = load ptr, ptr %11, align 8, !tbaa !221  ; 3 uses
  %.not.i.i.i140.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i140.i, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZSt8_DestroyIPN9benchmark8internal15BenchmarkRunnerES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !200
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lf) #36
  br label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev.exit.i

bb.ck:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZN9benchmark7Barrier4waitEv:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #34
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit:       ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !282
  %i.c = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, !prof !8

bb.c:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #32
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !63
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #32
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i

_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i: ; preds = %bb.d, %bb.c, %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !283
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !283
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !284
  %i.k = icmp slt i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !285  ; 3 uses
  br i1 %i.k, label %.lr.ph.preheader, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i

.lr.ph.preheader:                                 ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph

_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i: ; preds = %.noexc
  %i.o = load i32, ptr %i.f, align 8, !tbaa !283
  %i.p = load i32, ptr %i.i, align 8, !tbaa !284
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i, label %.lr.ph, !llvm.loop !286

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.lr.ph
  %i.r = load i32, ptr %i.l, align 4, !tbaa !285  ; 3 uses
  %i.s = icmp sgt i32 %i.r, %i.m
  br i1 %i.s, label %.noexc._ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i_crit_edge, label %_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i, !llvm.loop !286

.noexc._ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i_crit_edge: ; preds = %.noexc
  br label %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i, !llvm.loop !286

_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i: ; preds = %_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i, %.noexc._ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i_crit_edge
  %.not.i = icmp sgt i32 %i.r, %i.m
  br i1 %.not.i, label %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i

_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i: ; preds = %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
  %i.t = phi i32 [ %i.r, %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i ], [ %i.m, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i ]
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.l, align 4, !tbaa !285
  store i32 0, ptr %i.f, align 8, !tbaa !283
  br label %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit

_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i, %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i
  %.1.i = phi i1 [ true, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i ], [ false, %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i ] ; 2 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !282, !range !82, !noundef !83
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN9benchmark9MutexLockD2Ev.exit

bb.e:                                             ; preds = %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !279    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN9benchmark9MutexLockD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #32 ; 0 uses
  br label %_ZN9benchmark9MutexLockD2Ev.exit

_ZN9benchmark9MutexLockD2Ev.exit:                 ; preds = %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.1.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN9benchmark9MutexLockD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.z) #32
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %i.a, align 8, !tbaa !282, !range !82, !noundef !83
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %_ZN9benchmark9MutexLockD2Ev.exit5

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %1, align 8, !tbaa !279   ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i4, label %_ZN9benchmark9MutexLockD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #32 ; 0 uses
  br label %_ZN9benchmark9MutexLockD2Ev.exit5

_ZN9benchmark9MutexLockD2Ev.exit5:                ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.g, %_ZN9benchmark9MutexLockD2Ev.exit
  ret i1 %.1.i
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #15

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

declare noundef zeroext i1 @_ZN9benchmark15IsColorTerminalEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9benchmark17IsTruthyFlagValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZN9benchmark17BenchmarkReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #1

declare void @_ZN9benchmark17BenchmarkReporter7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind writable sret(%"class.std::vector.16") align 8, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #1

declare void @_ZN9benchmark8internal23PerfCountersMeasurementC1ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(640), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !54 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !56
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !181

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 64051194700380387
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.d = load ptr, ptr %0, align 8, !tbaa !221
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 144
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !197
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 144
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #35 ; 4 uses
  %2 = load ptr, ptr %0, align 8, !tbaa !221      ; 3 uses
  %3 = load ptr, ptr %i.j, align 8, !tbaa !197    ; 2 uses
  %.not10.i.i.i = icmp eq ptr %2, %3
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.p = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !230, !alias.scope !290, !noalias !287
  store <2 x ptr> %i.p, ptr %.012.i.i.i, align 8, !tbaa !230, !alias.scope !287, !noalias !290
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !231, !alias.scope !290, !noalias !287
  store ptr %i.s, ptr %i.q, align 8, !tbaa !231, !alias.scope !287, !noalias !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !290, !noalias !287
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !230, !alias.scope !290, !noalias !287
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !230, !alias.scope !287, !noalias !290
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !231, !alias.scope !290, !noalias !287
  store ptr %i.y, ptr %i.w, align 8, !tbaa !231, !alias.scope !287, !noalias !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !290, !noalias !287
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ab = load i16, ptr %i.aa, align 8, !alias.scope !290, !noalias !287
  store i16 %i.ab, ptr %i.z, align 8, !alias.scope !287, !noalias !290
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false), !alias.scope !292
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !293, !alias.scope !290, !noalias !287
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !293, !alias.scope !287, !noalias !290
  store ptr null, ptr %i.af, align 8, !tbaa !293, !alias.scope !290, !noalias !287
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !292
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %.not.i.i.i = icmp eq ptr %i.aj, %3
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, !llvm.loop !294

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !221
  br label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit
  %i.al = phi ptr [ %.pre, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit ], [ %2, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.al, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #36
  br label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !221
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !197
  %i.ar = getelementptr inbounds nuw [144 x i8], ptr %i.o, i64 %1
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !200
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(5000) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %5 = alloca %"class.std::uniform_int_distribution", align 8 ; 5 uses
  %6 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = udiv i64 4294967295, %i.e
  %.not = icmp ult i64 %i.f, %i.e
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = and i64 %i.d, 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i64 0, ptr %4, align 8, !tbaa !295
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !297
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !47
  %i.o = load i64, ptr %i.m, align 8, !tbaa !47
  store i64 %i.o, ptr %i.g, align 8, !tbaa !47
  store i64 %i.n, ptr %i.m, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.018.0 = phi ptr [ %i.k, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.not3739 = icmp eq ptr %.sroa.018.0, %1
  br i1 %.not3739, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.018.140 = phi ptr [ %.sroa.018.0, %.lr.ph ], [ %i.ae, %bb.f ] ; 5 uses
  %i.q = ptrtoint ptr %.sroa.018.140 to i64
  %i.r = sub i64 %i.q, %i.c
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  %i.u = add nsw i64 %i.s, 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.v = mul i64 %i.u, %i.t
  %i.w = add i64 %i.v, -1
  store i64 0, ptr %3, align 8, !tbaa !295
  store i64 %i.w, ptr %i.p, align 8, !tbaa !297
  %i.x = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.y = udiv i64 %i.x, %i.u
  %i.z = urem i64 %i.x, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.018.140, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ac = load i64, ptr %.sroa.018.140, align 8, !tbaa !47
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !47
  store i64 %i.ad, ptr %.sroa.018.140, align 8, !tbaa !47
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.140, i64 16 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !47
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !47
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !47
  %.not37 = icmp eq ptr %i.ae, %1
  br i1 %.not37, label %.loopexit, label %bb.f, !llvm.loop !298

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store i64 0, ptr %5, align 8, !tbaa !295
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -1, ptr %i.ai, align 8, !tbaa !297
  %.sroa.0.041 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not3842 = icmp eq ptr %.sroa.0.041, %1
  br i1 %.not3842, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph44, %bb.h
  %.sroa.0.043 = phi ptr [ %.sroa.0.041, %.lr.ph44 ], [ %.sroa.0.0, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ak = ptrtoint ptr %.sroa.0.043 to i64
  %i.al = sub i64 %i.ak, %i.c
  %i.am = ashr exact i64 %i.al, 3
  store i64 0, ptr %6, align 8, !tbaa !295
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !297
  %i.an = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %.sroa.0.043, align 8, !tbaa !47
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !47
  store i64 %i.aq, ptr %.sroa.0.043, align 8, !tbaa !47
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not38, label %._crit_edge, label %bb.h, !llvm.loop !299

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.a
  ret void
}

declare void @_ZN9benchmark8internal15BenchmarkRunner15DoOneRepetitionEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(50) ptr @_ZN9benchmark8internal15BenchmarkRunner10GetResultsEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare void @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind writable sret(%"class.std::vector.67") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !243
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !243    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #36
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal10RunResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.c

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !243  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_1
