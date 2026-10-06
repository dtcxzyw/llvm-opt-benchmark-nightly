Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/websocket_8_notes?download=true
inline.NumInlined: 22911
inline.NumDeleted: 8298
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 237
loop-unroll.NumUnrolled: 250
begin_hunk_0_@_ZN12_GLOBAL__N_18snippetsEv:bb.a

_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC2ERKS3_mm.exit: ; preds = %._crit_edge.i, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i, %bb.ar, %bb.an, %bb.al, %.thread.i, %bb.as
  %.sroa.14.0 = phi ptr [ %i.ge, %.thread.i ], [ %i.av, %bb.al ], [ %i.av, %bb.an ], [ %i.av, %bb.ar ], [ %i.gp, %._crit_edge.i ], [ %i.fw, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i ], [ %i.gl, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i ], [ %i.gs, %bb.as ] ; 4 uses
  %.sroa.33.0 = phi i64 [ %i.gf, %.thread.i ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ar ], [ %spec.select68, %._crit_edge.i ], [ %spec.select, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i ], [ %spec.select67, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i ], [ %.1116.i, %bb.as ] ; 2 uses
  %.sroa.24.0 = phi i64 [ %.040.i, %.thread.i ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ar ], [ %.040.i, %._crit_edge.i ], [ %i.fl, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i ], [ %i.gi, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i ], [ %.040.i, %bb.as ] ; 2 uses
  %.sroa.5.0 = phi ptr [ %.sroa.073.0.i, %.thread.i ], [ %i.av, %bb.al ], [ %i.av, %bb.an ], [ %i.av, %bb.ar ], [ %.sroa.073.0.i, %._crit_edge.i ], [ %i.fm, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i ], [ %i.gj, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i ], [ %.sroa.073.0.i, %bb.as ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.gv = load ptr, ptr %21, align 16, !tbaa !715
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !486, !noalias !2800
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.gy) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN12_GLOBAL__N_18snippetsEvE3$_4NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %8, align 8, !tbaa !469
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.gz, ptr noundef nonnull align 8 dereferenceable(56) %6) #37
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  store i8 1, ptr %i.ha, align 8, !tbaa !718
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  invoke void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %i.hb, ptr noundef nonnull align 8 dereferenceable(113) %i.gz, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail18outstanding_work_tILi0EE7trackedE, i32 noundef 0)
          to label %"_ZN5boost5beast10async_baseIZN12_GLOBAL__N_18snippetsEvE3$_4NS_4asio15any_io_executorESaIvEEC2IS3_vEEOT_RKS5_.exit.i.i.i.i.i" unwind label %bb.au

bb.au:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC2ERKS3_mm.exit
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #38
  unreachable

"_ZN5boost5beast10async_baseIZN12_GLOBAL__N_18snippetsEvE3$_4NS_4asio15any_io_executorESaIvEEC2IS3_vEEOT_RKS5_.exit.i.i.i.i.i": ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC2ERKS3_mm.exit
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i32 1, ptr %i.he, align 8, !tbaa !783
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 140
  store i32 0, ptr %i.hf, align 4, !tbaa !724
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4NS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEE", i64 16), ptr %8, align 8, !tbaa !469
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.hh = load ptr, ptr %21, align 16, !tbaa !715 ; 25 uses
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !784
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 152 ; 3 uses
  %i.hj = load ptr, ptr %i.o, align 8, !tbaa !536 ; 3 uses
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !554
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i.i.i29, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %"_ZN5boost5beast10async_baseIZN12_GLOBAL__N_18snippetsEvE3$_4NS_4asio15any_io_executorESaIvEEC2IS3_vEEOT_RKS5_.exit.i.i.i.i.i"
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = atomicrmw add ptr %i.hk, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %"_ZN5boost5beast10async_baseIZN12_GLOBAL__N_18snippetsEvE3$_4NS_4asio15any_io_executorESaIvEEC2IS3_vEEOT_RKS5_.exit.i.i.i.i.i"
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 4 uses
  store ptr %23, ptr %i.hm, align 8, !tbaa !787
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 168
  store ptr %.sroa.5.0, ptr %i.hn, align 8, !tbaa !746
  %i.ho = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 3 uses
  store ptr %.sroa.14.0, ptr %i.ho, align 8, !tbaa !746
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i64 %.sroa.24.0, ptr %i.hp, align 8
  %.sroa.33.24..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 192
  store i64 %.sroa.33.0, ptr %.sroa.33.24..sroa_idx, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 3 uses
  store ptr %i.hm, ptr %i.hq, align 8, !tbaa !790, !alias.scope !2801
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 3 uses
  store ptr %.sroa.5.0, ptr %i.hr, align 8, !tbaa !746, !alias.scope !2801
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 216 ; 3 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !792
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 248
  store i64 0, ptr %i.ht, align 8, !tbaa !797
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 276
  store i8 1, ptr %i.hu, align 4, !tbaa !798
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 277
  store i8 0, ptr %i.hv, align 1, !tbaa !799
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 278
  store i8 0, ptr %i.hw, align 2, !tbaa !2802
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 2245 ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !844, !range !510, !noundef !511
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %.thread.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i22.i.i.i.i.i = icmp eq ptr %.sroa.5.0, %.sroa.14.0
  br i1 %.not.i.i22.i.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ax
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.14.0, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !745
  br label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.cont, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.5.010.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.cont ], [ %.sroa.5.0, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %.lr.ph.split.i.i.i.i.i.i.i.i.cont ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ic = icmp eq ptr %.sroa.5.010.i.i.i.i.i.i.i.i, %i.ib
  br i1 %i.ic, label %.lr.ph.split.i.i.i.i.i.i.i.i.cont, label %.lr.ph.split.i.i.i.i.i.i.i.i.else

.lr.ph.split.i.i.i.i.i.i.i.i.else:                ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.5.010.i.i.i.i.i.i.i.i, i64 16
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.else.val = load i64, ptr %i.id, align 8, !tbaa !475
  br label %.lr.ph.split.i.i.i.i.i.i.i.i.cont

.lr.ph.split.i.i.i.i.i.i.i.i.cont:                ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.else
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.33.0, %.lr.ph.split.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.else.val, %.lr.ph.split.i.i.i.i.i.i.i.i.else ] ; 2 uses
  %i.ie = icmp eq ptr %.sroa.5.010.i.i.i.i.i.i.i.i, %.sroa.5.0
  %i.if = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i, i64 %.sroa.24.0)
  %.sroa.6.1.i.i.i.i.i.i.i.i.i = select i1 %i.ie, i64 %i.if, i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i
  %i.ig = add i64 %.sroa.6.1.i.i.i.i.i.i.i.i.i, %.09.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.010.i.i.i.i.i.i.i.i, align 8, !tbaa !845 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.i.i.i.i.i.i.i.i, %.sroa.14.0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i, !llvm.loop !18

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.cont, %bb.ax
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ax ], [ %i.ig, %.lr.ph.split.i.i.i.i.i.i.i.i.cont ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hh, i64 2247
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !846, !range !510, !noundef !511
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hh, i64 2246
  store i8 %i.ii, ptr %i.ij, align 2, !tbaa !847
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !848
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.ay, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.hh, i64 2249
  %i.in = load i8, ptr %i.im, align 1, !tbaa !849, !range !510, !noundef !511
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hh, i64 88
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = icmp uge i64 %.0.lcssa.i.i.i.i.i.i.i.i, %i.iq
  %narrow.i.i.i.i.i.i = select i1 %i.io, i1 %i.ir, i1 false
  %.ph.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i.i to i8
  %i.is = getelementptr inbounds nuw i8, ptr %i.hh, i64 2248
  store i8 %.ph.i.i.i.i.i.i, ptr %i.is, align 8, !tbaa !850
  br label %bb.az

bb.ay:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.i.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.hh, i64 2248
  store i8 0, ptr %i.it, align 8, !tbaa !850
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hh, i64 2232
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !851
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay, %.thread.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hh, i64 2256 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !648
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not3.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.ba

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.az
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 2272
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !852
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hh, i64 2264
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !853
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hh, i64 2272
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !852 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ja, %i.jc
  br i1 %.not.i.i.i.i.i.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i.i.i.i.i.i
  %i.jd = phi i64 [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.jc, %bb.ba ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.hh, i64 2264
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !853
  %i.jf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jd) #41
          to label %.noexc.i.i.i.i.i unwind label %bb.bd

.noexc.i.i.i.i.i:                                 ; preds = %bb.bb
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !648 ; 2 uses
  store ptr %i.jf, ptr %i.ix, align 8, !tbaa !648
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.be, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ay
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hh, i64 2272
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !852
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hh, i64 2264
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !853
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hh, i64 2256 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !648 ; 2 uses
  store ptr null, ptr %i.jk, align 8, !tbaa !648
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.be, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i.i.i.i.i.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.bc, %.noexc.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.jg, %.noexc.i.i.i.i.i ], [ %i.jl, %bb.bc ]
  call void @_ZdaPv(ptr noundef nonnull %.sink.i.i.i.i.i.i) #40
  br label %bb.be

bb.bd:                                            ; preds = %bb.bw, %bb.bb
  %i.jm = landingpad { ptr, i32 }
          cleanup
  %i.jn = load ptr, ptr %i.hi, align 8, !tbaa !554 ; 4 uses
  %.not.i.i39.i.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i39.i.i.i.i.i, label %_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i30, label %bb.bx

.thread.i.i.i.i:                                  ; preds = %bb.aw
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 237 ; 3 uses
  %i.jp = load i8, ptr %i.jo, align 1             ; 2 uses
  %26 = and i8 %i.jp, -5
  %i.jq = and i8 %i.jp, -29
  store i8 %i.jq, ptr %i.jo, align 1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 2248
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !850, !range !510
  br label %bb.bg

bb.be:                                            ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i.i.i.i.i.i, %bb.bc, %.noexc.i.i.i.i.i, %bb.ba
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hh, i64 2248
  %i.js = load i8, ptr %i.jr, align 8, !tbaa !850, !range !510, !noundef !511 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 237 ; 4 uses
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = shl nuw nsw i8 %i.js, 2
  %i.jw = and i8 %i.ju, -5
  %i.jx = or disjoint i8 %i.jw, %i.jv             ; 3 uses
  %.pre5.i.i.i.i = load i8, ptr %i.hx, align 1, !tbaa !844, !range !510
  %i.jy = trunc nuw i8 %.pre5.i.i.i.i to i1
  %i.jz = and i8 %i.jx, -25
  store i8 %i.jz, ptr %i.jt, align 1
  br i1 %i.jy, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hh, i64 2250
  %i.kb = load i8, ptr %i.ka, align 2, !tbaa !854
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %.thread.i.i.i.i
  %i.kc = phi i8 [ %i.js, %bb.bf ], [ %i.js, %bb.be ], [ %.pre.i.i.i, %.thread.i.i.i.i ]
  %i.kd = phi ptr [ %i.jt, %bb.bf ], [ %i.jt, %bb.be ], [ %i.jo, %.thread.i.i.i.i ]
  %i.ke = phi i8 [ %i.jx, %bb.bf ], [ %i.jx, %bb.be ], [ %26, %.thread.i.i.i.i ]
  %i.kf = phi i8 [ %i.kb, %bb.bf ], [ 0, %bb.be ], [ 0, %.thread.i.i.i.i ]
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 236
  store i8 %i.kf, ptr %i.kg, align 4, !tbaa !855
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hh, i64 2232
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !851
  %i.kj = icmp eq i32 %i.ki, 0                    ; 2 uses
  %i.kk = select i1 %i.kj, i8 2, i8 0
  %i.kl = and i8 %i.ke, -27
  %i.km = or disjoint i8 %i.kk, %i.kl
  store i8 %i.km, ptr %i.kd, align 1
  %i.kn = trunc nuw i8 %i.kc to i1
  br i1 %i.kn, label %bb.bw, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hh, i64 2246
  %i.kp = load i8, ptr %i.ko, align 2, !tbaa !847, !range !510, !noundef !511
  %i.kq = trunc nuw i8 %i.kp to i1                ; 2 uses
  br i1 %i.kj, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.kq, label %bb.bj, label %bb.bw

bb.bj:                                            ; preds = %bb.bi
  %i.kr = load ptr, ptr %i.hq, align 8, !tbaa !790, !noalias !2803
  %.fr.i.i.i.i.i.i.i = freeze ptr %i.kr           ; 5 uses
  %i.ks = load ptr, ptr %i.hr, align 8, !tbaa !856, !noalias !2803 ; 3 uses
  %i.kt = load ptr, ptr %i.ho, align 8, !tbaa !856, !noalias !2804 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.fr.i.i.i.i.i.i.i, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %.fr.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.kw = icmp ne ptr %.fr.i.i.i.i.i.i.i, %i.hm   ; 2 uses
  %i.kx = icmp ne ptr %i.ks, %i.kt
  %.not3.i.us19.i.i.i.i.i.i.i.i = select i1 %i.kw, i1 true, i1 %i.kx
  br i1 %.not3.i.us19.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.thread.i.i.i.i.i

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.thread.i.i.i.i.i: ; preds = %bb.bj
  %i.ky = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i64 0, ptr %i.ky, align 8, !tbaa !857
  br label %bb.bo

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.i.i.i.i.i: ; preds = %bb.bj
  %i.kz = getelementptr inbounds nuw i8, ptr %.fr.i.i.i.i.i.i.i, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %.fr.i.i.i.i.i.i.i, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !856
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !745
  %i.le = load ptr, ptr %i.kz, align 8, !tbaa !856
  %i.lf = xor i1 %i.kw, true
  call void @llvm.assume(i1 %i.lf)
  %i.lg = load i64, ptr %i.hs, align 8
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i.i.i.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i.i.i.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.5.0.us21.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.0.us.i.i.i.i.i.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i ], [ %i.ks, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %.0.us20.i.i.i.i.i.i.i.i = phi i64 [ %i.lq, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.i.i.i.i.i ]
  %i.lh = icmp eq ptr %.sroa.5.0.us21.i.i.i.i.i.i.i.i, %i.ks
  %i.li = icmp eq ptr %.sroa.5.0.us21.i.i.i.i.i.i.i.i, %i.ld
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.us21.i.i.i.i.i.i.i.i, i64 16
  %.sroa.6.0.in.i.i.us.i.i.i.i.i.i.i.i = select i1 %i.li, ptr %i.ku, ptr %i.lj
  %.sroa.6.0.i.i.us.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.us.i.i.i.i.i.i.i.i, align 8, !tbaa !475 ; 4 uses
  %i.lk = icmp eq ptr %.sroa.5.0.us21.i.i.i.i.i.i.i.i, %i.le ; 2 uses
  br i1 %i.lh, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i.i.i.i.i.i
  br i1 %i.lk, label %bb.bl, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ll = load i64, ptr %i.kv, align 8, !tbaa !858
  %i.lm = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i.i.i.i.i.i, i64 %i.ll)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i.i.i.i.i.i
  br i1 %i.lk, label %bb.bn, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.ln = load i64, ptr %i.kv, align 8, !tbaa !858
  %i.lo = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i.i.i.i.i.i, i64 %i.ln)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i.i.i.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %.sroa.6.1.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.lo, %bb.bn ], [ %.sroa.6.0.i.i.us.i.i.i.i.i.i.i.i, %bb.bm ]
  %i.lp = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.us.i.i.i.i.i.i.i.i, i64 %i.lg)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i.i.i.i.i.i, %bb.bl, %bb.bk
  %.pn13.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.lp, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i.i.i.i.i.i ], [ %i.lm, %bb.bl ], [ %.sroa.6.0.i.i.us.i.i.i.i.i.i.i.i, %bb.bk ]
  %i.lq = add i64 %.pn13.i.us.i.i.i.i.i.i.i.i, %.0.us20.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.5.0.us.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0.us21.i.i.i.i.i.i.i.i, align 8, !tbaa !845 ; 2 uses
  %.not34.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.us.i.i.i.i.i.i.i.i, %i.kt
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.i.i.i.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i.i.i.i.i.i, !llvm.loop !19

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.i.i.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i.i.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i64 %i.lq, ptr %i.lr, align 8, !tbaa !857
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hh, i64 2264
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !853
  %i.lu = icmp ugt i64 %i.lq, %i.lt
  br i1 %i.lu, label %bb.bw, label %bb.bo

bb.bo:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.i.i.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.thread.i.i.i.i.i
  br label %bb.bw

bb.bp:                                            ; preds = %bb.bh
  br i1 %i.kq, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.lv = load ptr, ptr %i.hq, align 8, !tbaa !790, !noalias !2805
  %.fr.i.i23.i.i.i.i.i = freeze ptr %i.lv         ; 5 uses
  %i.lw = load ptr, ptr %i.hr, align 8, !tbaa !856, !noalias !2805 ; 3 uses
  %i.lx = load ptr, ptr %i.ho, align 8, !tbaa !856, !noalias !2806 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.fr.i.i23.i.i.i.i.i, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %.fr.i.i23.i.i.i.i.i, i64 24 ; 2 uses
  %i.ma = icmp ne ptr %.fr.i.i23.i.i.i.i.i, %i.hm ; 2 uses
  %i.mb = icmp ne ptr %i.lw, %i.lx
  %.not3.i.us19.i.i.i24.i.i.i.i.i = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %.not3.i.us19.i.i.i24.i.i.i.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i26.i.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.thread.i.i.i.i.i

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.thread.i.i.i.i.i: ; preds = %bb.bq
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i64 0, ptr %i.mc, align 8, !tbaa !857
  br label %bb.bv

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i26.i.i.i.i.i: ; preds = %bb.bq
  %i.md = getelementptr inbounds nuw i8, ptr %.fr.i.i23.i.i.i.i.i, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %.fr.i.i23.i.i.i.i.i, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !856
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !745
  %i.mi = load ptr, ptr %i.md, align 8, !tbaa !856
  %i.mj = xor i1 %i.ma, true
  call void @llvm.assume(i1 %i.mj)
  %i.mk = load i64, ptr %i.hs, align 8
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i27.i.i.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i27.i.i.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i26.i.i.i.i.i
  %.sroa.5.0.us21.i.i.i28.i.i.i.i.i = phi ptr [ %.sroa.5.0.us.i.i.i34.i.i.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i ], [ %i.lw, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i26.i.i.i.i.i ] ; 5 uses
  %.0.us20.i.i.i29.i.i.i.i.i = phi i64 [ %i.mu, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i26.i.i.i.i.i ]
  %i.ml = icmp eq ptr %.sroa.5.0.us21.i.i.i28.i.i.i.i.i, %i.lw
  %i.mm = icmp eq ptr %.sroa.5.0.us21.i.i.i28.i.i.i.i.i, %i.mh
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.5.0.us21.i.i.i28.i.i.i.i.i, i64 16
  %.sroa.6.0.in.i.i.us.i.i.i30.i.i.i.i.i = select i1 %i.mm, ptr %i.ly, ptr %i.mn
  %.sroa.6.0.i.i.us.i.i.i31.i.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.us.i.i.i30.i.i.i.i.i, align 8, !tbaa !475 ; 4 uses
  %i.mo = icmp eq ptr %.sroa.5.0.us21.i.i.i28.i.i.i.i.i, %i.mi ; 2 uses
  br i1 %i.ml, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i27.i.i.i.i.i
  br i1 %i.mo, label %bb.bs, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.mp = load i64, ptr %i.lz, align 8, !tbaa !858
  %i.mq = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i31.i.i.i.i.i, i64 %i.mp)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i

bb.bt:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i27.i.i.i.i.i
  br i1 %i.mo, label %bb.bu, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i36.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.mr = load i64, ptr %i.lz, align 8, !tbaa !858
  %i.ms = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i31.i.i.i.i.i, i64 %i.mr)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i36.i.i.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i36.i.i.i.i.i: ; preds = %bb.bu, %bb.bt
  %.sroa.6.1.i.i.us.i.i.i37.i.i.i.i.i = phi i64 [ %i.ms, %bb.bu ], [ %.sroa.6.0.i.i.us.i.i.i31.i.i.i.i.i, %bb.bt ]
  %i.mt = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.us.i.i.i37.i.i.i.i.i, i64 %i.mk)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i36.i.i.i.i.i, %bb.bs, %bb.br
  %.pn13.i.us.i.i.i33.i.i.i.i.i = phi i64 [ %i.mt, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i36.i.i.i.i.i ], [ %i.mq, %bb.bs ], [ %.sroa.6.0.i.i.us.i.i.i31.i.i.i.i.i, %bb.br ]
  %i.mu = add i64 %.pn13.i.us.i.i.i33.i.i.i.i.i, %.0.us20.i.i.i29.i.i.i.i.i ; 3 uses
  %.sroa.5.0.us.i.i.i34.i.i.i.i.i = load ptr, ptr %.sroa.5.0.us21.i.i.i28.i.i.i.i.i, align 8, !tbaa !845 ; 2 uses
  %.not34.i.i.i35.i.i.i.i.i = icmp eq ptr %.sroa.5.0.us.i.i.i34.i.i.i.i.i, %i.lx
  br i1 %.not34.i.i.i35.i.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.i.i.i.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i27.i.i.i.i.i, !llvm.loop !19

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.i.i.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i32.i.i.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !857
  %i.mw = getelementptr inbounds nuw i8, ptr %i.hh, i64 2264
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !853
  %i.my = icmp ugt i64 %i.mu, %i.mx
  br i1 %i.my, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.i.i.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.thread.i.i.i.i.i
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.i.i.i.i.i, %bb.bp, %bb.bo, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.i.i.i.i.i, %bb.bi, %bb.bg
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.bi ], [ 0, %bb.bo ], [ 4, %bb.bg ], [ 2, %bb.bp ], [ 2, %bb.bv ], [ 1, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.i.i.i.i.i ], [ 3, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit38.i.i.i.i.i ]
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 272
  store i32 %.sink.i.i.i.i.i, ptr %i.mz, align 8, !tbaa !859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke fastcc void @"_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4NS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEclENS_6system10error_codeEmb"(ptr noundef nonnull align 8 dereferenceable(279) %8, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %7, i64 noundef 0, i1 noundef zeroext false)
          to label %"_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4NS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ISD_EEOT_RKNS_10shared_ptrINSA_9impl_typeEEEbRKSI_.exit.i.i.i.i" unwind label %bb.bd

bb.bx:                                            ; preds = %bb.bd
  %i.na = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  %i.nb = atomicrmw sub ptr %i.na, i32 1 acq_rel, align 4
  %i.nc = icmp eq i32 %i.nb, 1
  br i1 %i.nc, label %bb.by, label %_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i30

bb.by:                                            ; preds = %bb.bx
  %i.nd = load ptr, ptr %i.jn, align 8, !tbaa !469
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
end_hunk_0
