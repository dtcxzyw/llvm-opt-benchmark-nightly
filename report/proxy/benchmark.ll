Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark?download=true
inline.NumInlined: 1686
inline.NumDeleted: 817
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i: ; preds = %bb.bg
  %.pre.i = load ptr, ptr %i.fo, align 8, !tbaa !263
  br label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i: ; preds = %._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i, %.noexc119.i
  %i.gs = phi ptr [ %.pre.i, %._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i ], [ %i.gr, %.noexc119.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -36
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !274 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = add i64 %.081299.i, %i.gv               ; 5 uses
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !140 ; 3 uses
  %.not111.i = icmp eq ptr %i.gx, null
  br i1 %.not111.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !275
  %i.gz = add nsw i32 %i.gy, %i.gu
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !275
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0197.0298.i, i64 472 ; 2 uses
  %.not248.i = icmp eq ptr %i.hb, %i.fn
  br i1 %.not248.i, label %._crit_edge302.i, label %bb.az

bb.bk:                                            ; preds = %bb.bi, %bb.bd
  %.pn105.i = phi { ptr, i32 } [ %i.ha, %bb.bi ], [ %i.gh, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

bb.bl:                                            ; preds = %._crit_edge302.i
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !67
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !68
  %.not.i68 = icmp eq ptr %i.he, %i.hf
  br i1 %.not.i68, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hg = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %bb.bn, label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i, !prof !14

bb.bn:                                            ; preds = %bb.bm
  %i.hi = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #32
  %.not.i121.i = icmp eq i32 %i.hi, 0
  br i1 %.not.i121.i, label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !64
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #32
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.hj = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !64 ; 2 uses
  %.not.i122.i = icmp eq ptr %i.hj, null
  br i1 %.not.i122.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef nonnull @.str.60, i64 noundef 24)
          to label %_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i unwind label %bb.bu ; 0 uses

_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i: ; preds = %bb.bp
  %.pr.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !64 ; 2 uses
  %.not.i124.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i124.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i, i32 noundef %i.gn)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i unwind label %bb.bu ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i: ; preds = %bb.bq
  %.pr229.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !64 ; 2 uses
  %.not.i126.i = icmp eq ptr %.pr229.i, null
  br i1 %.not.i126.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr229.i, ptr noundef nonnull @.str.61, i64 noundef 29)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i unwind label %bb.bu ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i: ; preds = %bb.br
  %.pr231.pr.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !64 ; 2 uses
  %.not.i128.i = icmp eq ptr %.pr231.pr.i, null
  br i1 %.not.i128.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i
  %i.hn = load ptr, ptr %i.hd, align 8, !tbaa !67
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = load ptr, ptr %i.hc, align 8, !tbaa !68
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.ho, %i.hq
  %i.hs = ashr exact i64 %i.hr, 5
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr231.pr.i, i64 noundef %i.hs)
          to label %_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i unwind label %bb.bv ; 0 uses

_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i: ; preds = %bb.bs
  %.pr233.pr.pre.i = load ptr, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !64 ; 2 uses
  %.not.i130.i = icmp eq ptr %.pr233.pr.pre.i, null
  br i1 %.not.i130.i, label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr233.pr.pre.i, ptr noundef nonnull @.str.62, i64 noundef 106)
          to label %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i unwind label %bb.bv ; 0 uses

bb.bu:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i: ; preds = %bb.bt, %_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i, %_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i, %bb.bl, %._crit_edge302.i
  %i.hx = icmp ugt i64 %i.gw, 1152921504606846975
  br i1 %i.hx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc132.i unwind label %.thread235.i

.noexc132.i:                                      ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i
  %.not250.i = icmp eq i64 %i.gw, 0
  br i1 %.not250.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i: ; preds = %bb.bx
  %i.hy = shl nuw nsw i64 %i.gw, 3
  %i.hz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #35
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i unwind label %.thread235.i ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.gw
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i:            ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i, %bb.bx, %bb.at
  %.sroa.0181.2.i = phi ptr [ %i.hz, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ null, %bb.bx ], [ null, %bb.at ] ; 4 uses
  %.sroa.21.2.i = phi ptr [ %i.ia, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ null, %bb.bx ], [ null, %bb.at ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !145 ; 2 uses
  %i.id = load ptr, ptr %11, align 8, !tbaa !154  ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = sdiv exact i64 %i.ig, 144
  %.not89305.i = icmp eq ptr %i.ic, %i.id
  br i1 %.not89305.i, label %._crit_edge311.i, label %.lr.ph310.i

._crit_edge311.i:                                 ; preds = %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i
  %.sroa.0181.0.lcssa.i = phi ptr [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ], [ %.sroa.0181.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ] ; 9 uses
  %.sroa.13.0.lcssa.i = phi ptr [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ], [ %.sroa.13.3.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ] ; 3 uses
  %.sroa.21.0.lcssa.i = phi ptr [ %.sroa.21.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ], [ %.sroa.21.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ] ; 4 uses
  %i.ii = load i8, ptr @_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE, align 1, !tbaa !124, !range !84, !noundef !85
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.cd, label %bb.cn

.thread235.i:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i, %bb.bw
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit166.i

.lr.ph310.i:                                      ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i
  %.0224309.i = phi i64 [ %i.jk, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 4 uses
  %.sroa.21.0308.i = phi ptr [ %.sroa.21.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ %.sroa.21.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 3 uses
  %.sroa.13.0307.i = phi ptr [ %.sroa.13.3.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 2 uses
  %.sroa.0181.0306.i = phi ptr [ %.sroa.0181.5.i, %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i ], [ %.sroa.0181.2.i, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ] ; 2 uses
  %i.il = load ptr, ptr %11, align 8, !tbaa !154
  %i.im = getelementptr inbounds nuw [144 x i8], ptr %i.il, i64 %.0224309.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 108
  %i.io = load i32, ptr %i.in, align 4, !tbaa !274 ; 2 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i.i.i134.i, label %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i

.lr.ph.i.i.i134.i:                                ; preds = %.lr.ph310.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i
  %.sroa.0181.3.i = phi ptr [ %.sroa.0181.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.0181.0306.i, %.lr.ph310.i ] ; 7 uses
  %.sroa.21.3.i = phi ptr [ %.sroa.21.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.21.0308.i, %.lr.ph310.i ] ; 4 uses
  %i.iq = phi ptr [ %i.jh, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.21.0308.i, %.lr.ph310.i ] ; 3 uses
  %i.ir = phi ptr [ %.sroa.13.2.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %.sroa.13.0307.i, %.lr.ph310.i ] ; 3 uses
  %.03.i.i.i.i = phi i32 [ %i.ji, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ], [ %i.io, %.lr.ph310.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ir, %i.iq
  br i1 %.not.i.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i134.i
  store i64 %.0224309.i, ptr %i.ir, align 8, !tbaa !49
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i.i134.i
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %.sroa.0181.3.i to i64     ; 2 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 6 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %bb.ca, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #34
          to label %.noexc135.i unwind label %.loopexit.split-lp.i

.noexc135.i:                                      ; preds = %bb.ca
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.bz
  %i.iw = ashr exact i64 %i.iu, 3
  %mul2.i.i.i.i.i.i.i = ashr exact i64 %i.iu, 2
  %21 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i.i.i.i, i64 1) ; 2 uses
  %i.ix = icmp ult i64 %21, %i.iw
  %i.iy = call i64 @llvm.umin.i64(i64 %21, i64 1152921504606846975)
  %i.iz = select i1 %i.ix, i64 1152921504606846975, i64 %i.iy ; 2 uses
  %i.ja = shl nuw nsw i64 %i.iz, 3
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #35
          to label %.noexc136.i unwind label %.loopexit.i ; 4 uses

.noexc136.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %i.iu ; 2 uses
  store i64 %.0224309.i, ptr %i.jc, align 8, !tbaa !49
  %i.jd = icmp sgt i64 %i.iu, 0
  br i1 %i.jd, label %bb.cb, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %.noexc136.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jb, ptr align 8 %.sroa.0181.3.i, i64 %i.iu, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.cb, %.noexc136.i
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0181.3.i, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.je = ptrtoint ptr %.sroa.21.3.i to i64
  %i.jf = sub i64 %i.je, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.3.i, i64 noundef %i.jf) #36
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.cc, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.iz ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.by
  %.sroa.0181.4.i = phi ptr [ %i.jb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.0181.3.i, %bb.by ] ; 2 uses
  %.pn251.i = phi ptr [ %i.jc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.ir, %bb.by ]
  %.sroa.21.4.i = phi ptr [ %i.jg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.21.3.i, %bb.by ] ; 2 uses
  %i.jh = phi ptr [ %i.jg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.iq, %bb.by ]
  %.sroa.13.2.i = getelementptr inbounds nuw i8, ptr %.pn251.i, i64 8 ; 2 uses
  %i.ji = add nsw i32 %.03.i.i.i.i, -1
  %i.jj = icmp sgt i32 %.03.i.i.i.i, 1
  br i1 %i.jj, label %.lr.ph.i.i.i134.i, label %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i, !llvm.loop !228

_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i, %.lr.ph310.i
  %.sroa.0181.5.i = phi ptr [ %.sroa.0181.0306.i, %.lr.ph310.i ], [ %.sroa.0181.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0307.i, %.lr.ph310.i ], [ %.sroa.13.2.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ] ; 2 uses
  %.sroa.21.5.i = phi ptr [ %.sroa.21.0308.i, %.lr.ph310.i ], [ %.sroa.21.4.i, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i ] ; 2 uses
  %i.jk = add i64 %.0224309.i, 1                  ; 2 uses
  %.not89.i = icmp eq i64 %i.jk, %i.ih
  br i1 %.not89.i, label %._crit_edge311.i, label %.lr.ph310.i, !llvm.loop !229

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp.i:                             ; preds = %bb.ca
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.cd:                                            ; preds = %._crit_edge311.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.jl, ptr %3, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.jl, ptr noundef nonnull align 1 dereferenceable(7) @.str.64, i64 7, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.jm, align 8, !tbaa !56
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.jn, align 1, !tbaa !57
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %12, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.jo = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.jl
  br i1 %i.jp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ce
  %i.jq = load i64, ptr %i.jl, align 8, !tbaa !57
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.jl
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.cf
  %i.jv = load i64, ptr %i.jl, align 8, !tbaa !57
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.jx = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %12)
          to label %_ZNSt13random_deviceclEv.exit.i unwind label %bb.cl

_ZNSt13random_deviceclEv.exit.i:                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.jy = zext i32 %i.jx to i64                   ; 2 uses
  store i64 %i.jy, ptr %13, align 8, !tbaa !49
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %_ZNSt13random_deviceclEv.exit.i
  %store_forwarded = phi i64 [ %i.jy, %_ZNSt13random_deviceclEv.exit.i ], [ %i.kl, %bb.ch ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit.i ], [ %i.km, %bb.ch ] ; 4 uses
  %i.jz = getelementptr [8 x i8], ptr %13, i64 %.011.i.i.i
  %i.ka = lshr i64 %store_forwarded, 30
  %i.kb = xor i64 %i.ka, %store_forwarded
  %i.kc = mul nuw nsw i64 %i.kb, 1812433253
  %i.kd = add nuw i64 %i.kc, %.011.i.i.i          ; 2 uses
  %i.ke = and i64 %i.kd, 4294967295               ; 2 uses
  store i64 %i.ke, ptr %i.jz, align 8, !tbaa !49
  %i.kf = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.kf, 624
  br i1 %exitcond.not.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kg = getelementptr [8 x i8], ptr %13, i64 %i.kf
  %i.kh = lshr i64 %i.ke, 30
  %i.ki = xor i64 %i.kh, %i.kd
  %i.kj = mul i64 %i.ki, 1812433253
  %i.kk = add i64 %i.kj, %i.kf
  %i.kl = and i64 %i.kk, 4294967295               ; 2 uses
  store i64 %i.kl, ptr %i.kg, align 8, !tbaa !49
  %i.km = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.cg

bb.ci:                                            ; preds = %bb.cg
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 4992
  store i64 624, ptr %i.kn, align 8, !tbaa !156
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %.sroa.0181.0.lcssa.i, ptr %.sroa.13.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(5000) %13)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %12)
          to label %_ZNSt13random_deviceD2Ev.exit.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ko = landingpad { ptr, i32 }
          catch ptr null
  %i.kp = extractvalue { ptr, i32 } %i.ko, 0
  call void @__clang_call_terminate(ptr %i.kp) #33
  unreachable

_ZNSt13random_deviceD2Ev.exit.i:                  ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.cn

bb.cl:                                            ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %12)
          to label %.body.i unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #33
  unreachable

.body.i:                                          ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %.pn90.i = phi { ptr, i32 } [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.kq, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ea

bb.cn:                                            ; preds = %_ZNSt13random_deviceD2Ev.exit.i, %._crit_edge311.i
  %.not252315.i = icmp eq ptr %.sroa.0181.0.lcssa.i, %.sroa.13.0.lcssa.i
  br i1 %.not252315.i, label %._crit_edge319.i, label %.lr.ph318.i

.lr.ph318.i:                                      ; preds = %bb.cn
  %i.kt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 11 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 49
  br label %bb.cr

._crit_edge319.i:                                 ; preds = %bb.dw, %bb.cn
  %.not.i.i.i139.i = icmp eq ptr %.sroa.0181.0.lcssa.i, null
  br i1 %.not.i.i.i139.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.co

bb.co:                                            ; preds = %._crit_edge319.i
  %i.lc = ptrtoint ptr %.sroa.21.0.lcssa.i to i64
  %i.ld = ptrtoint ptr %.sroa.0181.0.lcssa.i to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.0.lcssa.i, i64 noundef %i.le) #36
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E:bb.a

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !292

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !54
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !55 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !49
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !55
  %i.h = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.h, ptr %i.b, align 8, !tbaa !57
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !57
  store i8 %i.j, ptr %i.i, align 1, !tbaa !57
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !56
  %i.m = load ptr, ptr %.014, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !293

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #34
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !55 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !57
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !57
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !294

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #15

declare noundef double @_ZN9benchmark15ProcessCPUUsageEv() local_unnamed_addr #1

declare noundef double @_ZN9benchmark14ThreadCPUUsageEv() local_unnamed_addr #1

declare noundef i64 @_ZN9benchmark8internal17PerfCounterValues4ReadERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #34
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #35 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !54
  %i.r = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !56   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !55
  %i.y = load i64, ptr %i.s, align 8, !tbaa !57
  store i64 %i.y, ptr %i.q, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !56
  store ptr %i.s, ptr %2, align 8, !tbaa !55
  store i64 0, ptr %i.aa, align 8, !tbaa !56
  store i8 0, ptr %i.s, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !104
  store double %i.ae, ptr %i.ac, align 8, !tbaa !104
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !54, !alias.scope !302, !noalias !303
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !303, !noalias !302 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !56, !alias.scope !303, !noalias !302 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !304
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !55, !alias.scope !302, !noalias !303
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !57, !alias.scope !303, !noalias !302
  store i64 %i.an, ptr %i.af, align 8, !tbaa !57, !alias.scope !302, !noalias !303
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !56, !alias.scope !303, !noalias !302
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !56, !alias.scope !302, !noalias !303
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !303, !noalias !302
  store i64 0, ptr %i.ap, align 8, !tbaa !56, !alias.scope !303, !noalias !302
  store i8 0, ptr %i.ah, align 8, !tbaa !57, !alias.scope !303, !noalias !302
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.at = load double, ptr %i.as, align 8, !tbaa !104, !alias.scope !303, !noalias !302
  store double %i.at, ptr %i.ar, align 8, !tbaa !104, !alias.scope !302, !noalias !303
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !298

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ], [ %i.av, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aw, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !54, !alias.scope !305, !noalias !306
  %i.ay = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !306, !noalias !305 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !56, !alias.scope !306, !noalias !305 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false), !alias.scope !307
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !55, !alias.scope !305, !noalias !306
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !57, !alias.scope !306, !noalias !305
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !57, !alias.scope !305, !noalias !306
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !56, !alias.scope !306, !noalias !305
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bg = phi i64 [ %i.bc, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !56, !alias.scope !305, !noalias !306
  store ptr %i.az, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !306, !noalias !305
  store i64 0, ptr %i.bh, align 8, !tbaa !56, !alias.scope !306, !noalias !305
  store i8 0, ptr %i.az, align 8, !tbaa !57, !alias.scope !306, !noalias !305
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !104, !alias.scope !306, !noalias !305
  store double %i.bl, ptr %i.bj, align 8, !tbaa !104, !alias.scope !305, !noalias !306
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !298

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aw, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bn, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.br) #36
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !109
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !107
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !108
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9benchmark7Barrier4waitEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.benchmark::MutexLock", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %0, ptr %1, align 8, !tbaa !311
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #32 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #34
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit:       ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !312
  %i.c = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, !prof !14

bb.c:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #32
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #38 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !164
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !78 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !78 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !327

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #38 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !129
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #38 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !129
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !164
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !78 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !129 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !78 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !327

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #38 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !129
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.d, ptr noundef %i.f)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i unwind label %bb.d

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !158
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #36
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #36
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_insertIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(472) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !154    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #34
  unreachable

_ZNKSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 144                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %5, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %5, i64 64051194700380387)
  %i.k = select i1 %i.i, i64 64051194700380387, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 144                ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #35 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load ptr, ptr %3, align 8, !tbaa !142
  %i.r = load ptr, ptr %4, align 8, !tbaa !140
  invoke void @_ZN9benchmark8internal15BenchmarkRunnerC1ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(472) %2, ptr noundef %i.q, ptr noundef %i.r)
          to label %_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !157, !alias.scope !335, !noalias !334
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !157, !alias.scope !334, !noalias !335
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158, !alias.scope !335, !noalias !334
  store ptr %i.v, ptr %i.t, align 8, !tbaa !158, !alias.scope !334, !noalias !335
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !335, !noalias !334
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !157, !alias.scope !335, !noalias !334
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !157, !alias.scope !334, !noalias !335
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !158, !alias.scope !335, !noalias !334
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !158, !alias.scope !334, !noalias !335
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !alias.scope !335, !noalias !334
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ae = load i16, ptr %i.ad, align 8, !alias.scope !335, !noalias !334
  store i16 %i.ae, ptr %i.ac, align 8, !alias.scope !334, !noalias !335
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false), !alias.scope !336
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !174, !alias.scope !335, !noalias !334
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !174, !alias.scope !334, !noalias !335
  store ptr null, ptr %i.ai, align 8, !tbaa !174, !alias.scope !335, !noalias !334
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !336
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, !llvm.loop !2

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit ], [ %i.an, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 144 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29

_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29: ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29 ], [ %i.ao, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 9 uses
  %.0911.i.i.i31 = phi ptr [ %i.bj, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29 ], [ %1, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !157, !alias.scope !338, !noalias !337
  store <2 x ptr> %i.ap, ptr %.012.i.i.i30, align 8, !tbaa !157, !alias.scope !337, !noalias !338
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !158, !alias.scope !338, !noalias !337
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !158, !alias.scope !337, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !337
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !157, !alias.scope !338, !noalias !337
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !157, !alias.scope !337, !noalias !338
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !158, !alias.scope !338, !noalias !337
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !158, !alias.scope !337, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !337
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48
  %i.bb = load i16, ptr %i.ba, align 8, !alias.scope !338, !noalias !337
  store i16 %i.bb, ptr %i.az, align 8, !alias.scope !337, !noalias !338
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false), !alias.scope !339
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 120 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !174, !alias.scope !338, !noalias !337
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !174, !alias.scope !337, !noalias !338
  store ptr null, ptr %i.bf, align 8, !tbaa !174, !alias.scope !338, !noalias !337
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !339
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 144 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 144 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29, !llvm.loop !2

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.ao, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bk, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i29 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !146
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #36
  br label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !154
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !145
  %i.bp = getelementptr inbounds nuw [144 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !146
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12_M_check_lenEmPKc.exit
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  %i.bt = tail call ptr @__cxa_begin_catch(ptr %i.bs) #32 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #36
  invoke void @__cxa_rethrow() #34
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bq

bb.g:                                             ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #33
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN9benchmark8internal15BenchmarkRunnerC1ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark8internal15BenchmarkRunnerEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN9benchmark8internal15BenchmarkRunnerEEvPT_.exit
  %.05 = phi ptr [ %i.ac, %_ZSt8_DestroyIN9benchmark8internal15BenchmarkRunnerEEvPT_.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i.i.i: ; preds = %.lr.ph
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #32, !inline_history !340
  br label %_ZNSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i.i.i, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.05, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.g, ptr noundef %i.i)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i unwind label %bb.c

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !158
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #36
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

end_hunk_2
