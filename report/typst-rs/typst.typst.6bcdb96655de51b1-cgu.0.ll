Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 112
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs18_NtCs9fPPV5zPXBl_5typst4argsNtB6_11CompileArgsNtNtCsj1PC5XHMKi0_12clap_builder6derive14FromArgMatches20from_arg_matches_mut:bb.a
  br i1 %i.hn, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !39498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !39498
  store i64 %i.hl, ptr %i.bn, align 8, !noalias !39498
  %.sroa.6.0..sroa_idx3.i.i299 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.2.0.copyload.i.i290, ptr %.sroa.6.0..sroa_idx3.i.i299, align 8, !noalias !39498
  %.sroa.8.0..sroa_idx5.i.i300 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.3.0.copyload.i.i292, ptr %.sroa.8.0..sroa_idx5.i.i300, align 8, !noalias !39498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !39498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bm, ptr noundef nonnull align 8 dereferenceable(104) %i.br, i64 104, i1 false), !noalias !39498
  invoke fastcc void @_RNvMNtNtCsj1PC5XHMKi0_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bo, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.bm)
          to label %.noexc322 unwind label %bb.da, !noalias !39499

.noexc322:                                        ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !39498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !39498
  %i.ho = load i64, ptr %i.bo, align 8, !range !32, !alias.scope !39500, !noalias !39498, !noundef !28
  %i.hp = icmp eq i64 %i.ho, 2
  br i1 %i.hp, label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_.exit.thread.i, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %.sroa.0.0.copyload.i305 = load i64, ptr %i.br, align 8, !noalias !39501 ; 2 uses
  %.sroa.7.0..sroa_idx.i306 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.7.0.copyload.i307 = load i64, ptr %.sroa.7.0..sroa_idx.i306, align 8, !noalias !39501 ; 2 uses
  %.sroa.10.0..sroa_idx.i308 = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i286, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i308, i64 16, i1 false), !noalias !39497
  %.sroa.11.0..sroa_idx.i309 = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.11.0.copyload.i310 = load i128, ptr %.sroa.11.0..sroa_idx.i309, align 8, !noalias !39501 ; 2 uses
  %.sroa.12.0..sroa_idx.i311 = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i287, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i311, i64 56, i1 false), !noalias !39497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !39498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !39498
  %i.hq = icmp eq i64 %i.hl, 0
  %i.hr = icmp eq i64 %.sroa.3.0.copyload.i.i292, 0
  %or.cond.i.i312 = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %or.cond.i.i312, label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i313

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i313: ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i290) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i290, i64 noundef %.sroa.3.0.copyload.i.i292, i64 noundef 1) #56, !noalias !39502
  br label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_.exit.i

bb.bu:                                            ; preds = %.noexc322
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.bo)
          to label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_.exit.thread.i unwind label %bb.da, !noalias !39499

_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_.exit.thread.i: ; preds = %bb.bu, %.noexc322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !39498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i286, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i64 16, i1 false), !noalias !39497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !39498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !39498
  br label %bb.db

bb.bv:                                            ; preds = %bb.bq
  %lpad.thr_comm.split-lp.i.i293 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(104) %i.br) #62
          to label %bb.bx unwind label %bb.bw, !noalias !39498

bb.bw:                                            ; preds = %bb.bv
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !39498
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.ht = icmp eq i64 %i.hl, 0
  %i.hu = icmp eq i64 %.sroa.3.0.copyload.i.i292, 0
  %or.cond12.i.i294 = select i1 %i.ht, i1 true, i1 %i.hu
  br i1 %or.cond12.i.i294, label %.body324, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i295

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i295: ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i290) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i290, i64 noundef %.sroa.3.0.copyload.i.i292, i64 noundef 1) #56, !noalias !39503
  br label %.body324

_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i313, %bb.bt
  switch i64 %.sroa.0.0.copyload.i305, label %bb.by [
    i64 -1, label %bb.db
    i64 2, label %bb.dt
  ]

bb.by:                                            ; preds = %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i314 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i314, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i286, i64 16, i1 false), !noalias !39497
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i315 = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i315, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i287, i64 56, i1 false), !noalias !39497
  store i64 %.sroa.0.0.copyload.i305, ptr %i.bt, align 8, !noalias !39497
  %.sroa.4.0..sroa_idx.i316 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.7.0.copyload.i307, ptr %.sroa.4.0..sroa_idx.i316, align 8, !noalias !39497
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i317 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i128 %.sroa.11.0.copyload.i310, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i317, align 8, !noalias !39497
  %i.hv = invoke noundef i64 @_RNvMNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bt)
          to label %bb.bz unwind label %bb.ca, !noalias !39497

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !39497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bs, ptr noundef nonnull align 8 dereferenceable(104) %i.bt, i64 104, i1 false), !noalias !39497
  %.sroa.411.0..sroa_idx.i318 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  invoke void @_RNvMNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i318, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.bs)
          to label %bb.dc unwind label %bb.da, !noalias !39504

bb.ca:                                            ; preds = %bb.by
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bt) #62
          to label %.body324 unwind label %bb.cb, !noalias !39497

bb.cb:                                            ; preds = %bb.ca
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !39497
  unreachable

bb.cc:                                            ; preds = %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_.exit.i, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_.exit.thread.i
  %.sroa.7.010.i = phi i64 [ 0, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_.exit.thread.i ], [ %.sroa.7.0.copyload.i270, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_.exit.i ]
  %.sroa.11.09.i = phi i128 [ -1955077460786093289980860865753579033, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_.exit.thread.i ], [ %.sroa.11.0.copyload.i273, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_.exit.i ]
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i253, i64 16, i1 false), !noalias !39495
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.sroa.7.010.i, ptr %i.hy, align 8, !alias.scope !39487
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i128 %.sroa.11.09.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !39487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !39488
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i253)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr @821, ptr %i.bk, align 8, !noalias !39505
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 5, ptr %i.hz, align 8, !noalias !39505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !39505
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ia, i64 40, i1 false), !noalias !39506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !39505
  store ptr %i.bk, ptr %i.bi, align 8, !noalias !39505
  %.sroa.42.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx.i327, align 8, !noalias !39505
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bj, ptr %i.ib, align 8, !noalias !39505
  %.sroa.46.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr @_RNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i328, align 8, !noalias !39505
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @101, ptr noundef nonnull %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #65
          to label %.noexc329 unwind label %bb.bb, !noalias !39505

.noexc329:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !39488
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr @_RNSINvNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCs9fPPV5zPXBl_5typst4args5PagesE5reifyB1u_, ptr %i.ic, align 8, !alias.scope !39487
  %.sroa.5.0..sroa_idx.i278 = getelementptr inbounds nuw i8, ptr %i.dl, i64 112
  store i64 %i.hi, ptr %.sroa.5.0..sroa_idx.i278, align 8, !alias.scope !39487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !39488
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i253)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !39507
  %.sroa.6584.0..sroa_idx585 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.6584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6584.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6584.0..sroa_idx585, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !39505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  store ptr @_RNSINvNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCs9fPPV5zPXBl_5typst4args5PagesE5reifyB1u_, ptr %i.dk, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !39508)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !39509
  call void @llvm.experimental.noalias.scope.decl(metadata !39510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !39509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !39511
  invoke fastcc void @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.be, ptr noalias nofree noundef align 8 dereferenceable(96) %.sroa.6584.0..sroa_idx) #60
          to label %.noexc.i unwind label %bb.cw, !noalias !39512

.noexc.i:                                         ; preds = %bb.cd
  %i.id = load ptr, ptr %i.be, align 8, !noalias !39511, !noundef !28
  %.not.i.i330 = icmp eq ptr %i.id, null
  br i1 %.not.i.i330, label %.thread27.i, label %bb.ce

bb.ce:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !39511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false), !noalias !39511
  %i.ie = load ptr, ptr %i.dk, align 8, !alias.scope !39513, !nonnull !28, !noundef !28
  invoke void %i.ie(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bd)
          to label %bb.cf unwind label %bb.cw, !noalias !39511, !inline_history !39229

.thread27.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !39511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !39509
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !39511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !39511
  %i.if = getelementptr inbounds nuw i8, ptr %i.dk, i64 104 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !39513, !noundef !28
  %i.ih = add i64 %i.ig, -1                       ; 3 uses
  store i64 %i.ih, ptr %i.if, align 8, !alias.scope !39513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !noalias !39509
  %.sroa.5.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.5.0.copyload12.i = load i8, ptr %.sroa.5.0..sroa_idx11.i, align 8, !noalias !39514 ; 2 uses
  %.sroa.7.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx13.i, i64 7, i1 false), !noalias !39509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !39509
  %.not.i331 = icmp eq i8 %.sroa.5.0.copyload12.i, 2
  br i1 %.not.i331, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %.thread27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !39509
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %.sroa.6584.0..sroa_idx)
          to label %bb.cy unwind label %bb.bb, !noalias !39515

bb.ch:                                            ; preds = %bb.cf
  %i.ii = call i64 @llvm.uadd.sat.i64(i64 %i.ih, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.ii, i64 4) ; 3 uses
  %i.ij = mul i64 %..i.i, 24                      ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.ih, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.cj, label %bb.ci, !prof !61

bb.ci:                                            ; preds = %bb.ch
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.ck, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.ci
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !39516
  %i.il = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ij, i64 noundef range(i64 1, 17) 8) #56, !noalias !39516 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.ch
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.ch ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ij) #61
          to label %.noexc7.i unwind label %bb.cw, !noalias !39509

.noexc7.i:                                        ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.ci
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ci ], [ %i.il, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.ci ], [ %..i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.in = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.in)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !39509
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.522.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i, i64 7, i1 false), !noalias !39509
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i8 %.sroa.5.0.copyload12.i, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !39509
  store i64 %.sroa.4.0.i.i, ptr %i.bh, align 8, !noalias !39509
  %.sroa.4.0..sroa_idx.i332 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i332, align 8, !noalias !39509
  %.sroa.6.0..sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i333, align 8, !noalias !39509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !39509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bg, ptr noundef nonnull align 8 dereferenceable(112) %i.dk, i64 112, i1 false), !noalias !39515
  call void @llvm.experimental.noalias.scope.decl(metadata !39517)
  call void @llvm.experimental.noalias.scope.decl(metadata !39518)
  call void @llvm.experimental.noalias.scope.decl(metadata !39519)
  call void @llvm.experimental.noalias.scope.decl(metadata !39520)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.io = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bg, i64 104 ; 2 uses
  %.sroa.5.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.7.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 17
  br label %bb.cl

bb.cl:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i.i, %bb.ck
  %i.iq = phi ptr [ %i.iy, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i.i ], [ %.sroa.10.0.i.i, %bb.ck ]
  %.sroa.7623.0.copyload = phi i64 [ %i.ja, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i.i ], [ 1, %bb.ck ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39521)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !39522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !39523
  invoke fastcc void @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.bb, ptr noalias nofree noundef align 8 dereferenceable(96) %i.io) #60
          to label %.noexc.i.i.i unwind label %bb.cp, !noalias !39524

.noexc.i.i.i:                                     ; preds = %bb.cl
  %i.ir = load ptr, ptr %i.bb, align 8, !noalias !39523, !noundef !28
  %.not.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !39523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !39523
  %i.is = load ptr, ptr %i.bg, align 8, !alias.scope !39525, !noalias !39509, !nonnull !28, !noundef !28
  invoke void %i.is(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ba)
          to label %bb.cn unwind label %bb.cp, !noalias !39523, !inline_history !39229

.thread.i.i.i:                                    ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !39523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !39522
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_.exit.i.i

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !39523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !39523
  %i.it = load i64, ptr %i.ip, align 8, !alias.scope !39525, !noalias !39509, !noundef !28
  %i.iu = add i64 %i.it, -1                       ; 2 uses
  store i64 %i.iu, ptr %i.ip, align 8, !alias.scope !39525, !noalias !39509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !noalias !39522
  %.sroa.5.0.copyload7.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx6.i.i.i, align 8, !noalias !39526 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx8.i.i.i, i64 7, i1 false), !noalias !39522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !39522
  %.not.i.i8.i = icmp eq i8 %.sroa.5.0.copyload7.i.i.i, 2
  br i1 %.not.i.i8.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_.exit.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.iv = icmp samesign ult i64 %.sroa.7623.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.iv)
  %i.iw = load i64, ptr %i.bh, align 8, !range !37, !alias.scope !39527, !noalias !39509, !noundef !28
  %i.ix = icmp eq i64 %.sroa.7623.0.copyload, %i.iw
  br i1 %i.ix, label %bb.cq, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i_crit_edge.i, %bb.co
  %i.iy = phi ptr [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i_crit_edge.i ], [ %i.iq, %bb.co ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %.sroa.7623.0.copyload ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !noalias !39522
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.516.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i, i64 7, i1 false), !noalias !39522
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store i8 %.sroa.5.0.copyload7.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !39522
  %i.ja = add nuw nsw i64 %.sroa.7623.0.copyload, 1 ; 2 uses
  store i64 %i.ja, ptr %.sroa.6.0..sroa_idx.i333, align 8, !alias.scope !39527, !noalias !39509
  br label %bb.cl

bb.cp:                                            ; preds = %bb.cq, %bb.cm, %bb.cl
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.io)
          to label %.body.i334 unwind label %bb.cr, !noalias !39528

bb.cq:                                            ; preds = %bb.co
  %i.jc = call i64 @llvm.uadd.sat.i64(i64 %i.iu, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %.sroa.7623.0.copyload, i64 noundef range(i64 1, 0) %i.jc, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i_crit_edge.i unwind label %bb.cp, !noalias !39529

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i_crit_edge.i: ; preds = %bb.cq
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i332, align 8, !alias.scope !39527, !noalias !39509
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE7reserveBI_.exit.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !39522
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_.exit.i.i: ; preds = %bb.cn, %.thread.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.io)
          to label %bb.cu unwind label %bb.cs, !noalias !39528

bb.cs:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_.exit.i.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body.i334

.body.i334:                                       ; preds = %bb.cs, %bb.cp
  %eh.lpad-body.i335 = phi { ptr, i32 } [ %i.je, %bb.cs ], [ %i.jb, %bb.cp ] ; 2 uses
  %.val4.i = load i64, ptr %i.bh, align 8, !noalias !39509 ; 2 uses
  %i.jf = icmp eq i64 %.val4.i, 0
  br i1 %i.jf, label %.body283, label %bb.ct

bb.ct:                                            ; preds = %.body.i334
  %.val5.i = load ptr, ptr %.sroa.4.0..sroa_idx.i332, align 8, !noalias !39509, !nonnull !28, !noundef !28
  %i.jg = mul nuw i64 %.val4.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.jg, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !39509
  br label %.body283

bb.cu:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !39509
  %.sroa.0621.0.copyload = load i64, ptr %i.bh, align 8, !noalias !39508
  %.sroa.5622.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i332, align 8, !noalias !39508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !39509
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cw
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !39509
  unreachable

bb.cw:                                            ; preds = %bb.cj, %bb.ce, %bb.cd
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %.sroa.6584.0..sroa_idx)
          to label %.body283 unwind label %bb.cv, !noalias !39515

bb.cx:                                            ; preds = %.thread.i279, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !39488
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i253)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i254)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %.sink.split

bb.cy:                                            ; preds = %bb.cu, %bb.cg
  %.sroa.7623.0 = phi i64 [ %.sroa.7623.0.copyload, %bb.cu ], [ 0, %bb.cg ]
  %.sroa.5622.0 = phi ptr [ %.sroa.5622.0.copyload, %bb.cu ], [ inttoptr (i64 8 to ptr), %bb.cg ]
  %.sroa.0621.0 = phi i64 [ %.sroa.0621.0.copyload, %bb.cu ], [ 0, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %.sink.split

.body324:                                         ; preds = %bb.dw, %bb.dv, %.body.i348, %bb.dq, %bb.ds, %bb.ca, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i295, %bb.bx, %bb.da
  %.pn103 = phi { ptr, i32 } [ %i.kt, %bb.ds ], [ %i.hw, %bb.ca ], [ %lpad.thr_comm.split-lp.i.i293, %bb.bx ], [ %lpad.thr_comm.split-lp.i.i293, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i295 ], [ %i.jk, %bb.da ], [ %eh.lpad-body.i349, %.body.i348 ], [ %eh.lpad-body.i349, %bb.dq ], [ %i.ku, %bb.dv ], [ %i.ku, %bb.dw ] ; 2 uses
  %.0.val.off.i = add i64 %.sroa.0581.0, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.cz, label %.body283

bb.cz:                                            ; preds = %.body324
  %i.jj = mul nuw i64 %.sroa.0581.0, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.18.0, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %.body283

bb.da:                                            ; preds = %bb.de, %bb.db, %bb.bz, %bb.bu, %bb.bs, %.sink.split
  %i.jk = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvXs1c_NtCs9fPPV5zPXBl_5typst4argsNtB6_9WorldArgsNtNtCsj1PC5XHMKi0_12clap_builder6derive14FromArgMatches20from_arg_matches_mut:bb.a

.noexc44:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !41552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !41552
  %i.be = load i64, ptr %i.ag, align 8, !range !32, !alias.scope !41554, !noalias !41552, !noundef !28
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.aj, align 8, !noalias !41555 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !41555 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i, i64 16, i1 false), !noalias !41551
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.11.0.copyload.i = load i128, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !41555 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i, i64 56, i1 false), !noalias !41551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !41552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !41552
  %i.bg = icmp eq i64 %i.bb, 0
  %i.bh = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.i.i, label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.3.0.copyload.i.i, i64 noundef 1) #56, !noalias !41556
  br label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i

bb.g:                                             ; preds = %.noexc44
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.ag)
          to label %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.thread.i unwind label %bb.o, !noalias !41553

_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.thread.i: ; preds = %bb.g, %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !41552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i64 16, i1 false), !noalias !41551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !41552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !41552
  br label %bb.p

bb.h:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(104) %i.aj) #62
          to label %bb.j unwind label %bb.i, !noalias !41552

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !41552
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bj = icmp eq i64 %i.bb, 0
  %i.bk = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  %or.cond12.i.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond12.i.i, label %.body, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.3.0.copyload.i.i, i64 noundef 1) #56, !noalias !41557
  br label %.body

_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.f
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 -1, label %bb.p
    i64 2, label %bb.an
  ]

bb.k:                                             ; preds = %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !41551
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i, i64 56, i1 false), !noalias !41551
  store i64 %.sroa.0.0.copyload.i, ptr %i.al, align 8, !noalias !41551
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !41551
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i128 %.sroa.11.0.copyload.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !41551
  %i.bl = invoke noundef i64 @_RNvMNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.al)
          to label %bb.l unwind label %bb.m, !noalias !41551

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !41551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, ptr noundef nonnull align 8 dereferenceable(104) %i.al, i64 104, i1 false), !noalias !41551
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  invoke void @_RNvMNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.ak)
          to label %bb.q unwind label %bb.o, !noalias !41558

bb.m:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(104) %i.al) #62
          to label %.body unwind label %bb.n, !noalias !41551

bb.n:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !41551
  unreachable

.body:                                            ; preds = %bb.ap, %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst.exit, %bb.m, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i, %bb.j, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.ap ], [ %i.bm, %bb.m ], [ %lpad.thr_comm.split-lp.i.i, %bb.j ], [ %lpad.thr_comm.split-lp.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i13.i.i ], [ %i.bo, %bb.o ], [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst.exit ] ; 2 uses
  %.0.val.off.i = add i64 %.sroa.0.0.copyload123, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs9fPPV5zPXBl_5typst.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs9fPPV5zPXBl_5typst.exit

bb.o:                                             ; preds = %bb.u, %bb.p, %bb.l, %bb.g, %bb.e, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs9fPPV5zPXBl_5typst.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.thread.i
  %.sroa.7.010.i = phi i64 [ 0, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.thread.i ], [ %.sroa.7.0.copyload.i, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i ]
  %.sroa.11.09.i = phi i128 [ -158963855049202301010000882182825127179, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.thread.i ], [ %.sroa.11.0.copyload.i, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i ]
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !41558
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.7.010.i, ptr %i.bp, align 8, !alias.scope !41550
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i128 %.sroa.11.09.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !41550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !41551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @287, ptr %i.ac, align 8, !noalias !41559
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 6, ptr %i.bq, align 8, !noalias !41559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !41559
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.br, i64 40, i1 false), !noalias !41560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !41559
  store ptr %i.ac, ptr %i.aa, align 8, !noalias !41559
  %.sroa.42.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx.i47, align 8, !noalias !41559
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.bs, align 8, !noalias !41559
  %.sroa.46.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i48, align 8, !noalias !41559
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @101, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #65
          to label %.noexc49 unwind label %bb.o, !noalias !41559

.noexc49:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !41551
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNSINvNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoTNtNtCs1xwejQucwHj_5alloc6string6StringB1r_EE5reifyCs9fPPV5zPXBl_5typst, ptr %i.bt, align 8, !alias.scope !41550
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !41550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !41551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !41561
  %.sroa.6128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6128.0..sroa_idx129, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !41559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store ptr @_RNSINvNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoTNtNtCs1xwejQucwHj_5alloc6string6StringB1r_EE5reifyCs9fPPV5zPXBl_5typst, ptr %i.ap, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !41562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41563
  call void @llvm.experimental.noalias.scope.decl(metadata !41564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !41563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !41565
  invoke fastcc void @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef align 8 dereferenceable(96) %.sroa.6128.0..sroa_idx) #60
          to label %.noexc.i unwind label %bb.s, !noalias !41566

.noexc.i:                                         ; preds = %bb.q
  %i.bu = load ptr, ptr %i.w, align 8, !noalias !41565, !noundef !28
  %.not.i.i50 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i50, label %.thread16.i, label %bb.r

bb.r:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !41565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !41565
  %i.bv = load ptr, ptr %i.ap, align 8, !alias.scope !41567, !nonnull !28, !noundef !28
  invoke void %i.bv(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.v)
          to label %bb.t unwind label %bb.s, !noalias !41565, !inline_history !41435

.thread16.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !41565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !41563
  br label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !41565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !41565
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 104 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !41567, !noundef !28
  %i.bz = add i64 %i.by, -1                       ; 3 uses
  store i64 %i.bz, ptr %i.bx, align 8, !alias.scope !41567
  %.sroa.0.0.copyload9.i = load i64, ptr %i.x, align 8, !noalias !41568 ; 4 uses
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7.i.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx10.i, align 8, !noalias !41568 ; 3 uses
  %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx10.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.7.i.sroa.6.0..sroa.7.0..sroa_idx10.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.7.i.sroa.6.0.copyload = load i64, ptr %.sroa.7.i.sroa.6.0..sroa.7.0..sroa_idx10.i.sroa_idx, align 8, !noalias !41568 ; 2 uses
  %i.ca = load <2 x i64>, ptr %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx10.i.sroa_idx, align 8, !noalias !41568
  %.sroa.7.i.sroa.7.0..sroa.7.0..sroa_idx10.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.7.i.sroa.7.0.copyload = load ptr, ptr %.sroa.7.i.sroa.7.0..sroa.7.0..sroa_idx10.i.sroa_idx, align 8, !noalias !41568 ; 3 uses
  %.sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx10.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.7.i.sroa.8.0.copyload = load i64, ptr %.sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx10.i.sroa_idx, align 8, !noalias !41568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !41563
  %.not.i51 = icmp eq i64 %.sroa.0.0.copyload9.i, -1
  br i1 %.not.i51, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t, %.thread16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !41563
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %.sroa.6128.0..sroa_idx)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit unwind label %bb.o, !noalias !41569

bb.v:                                             ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = icmp eq i64 %.sroa.0.0.copyload9.i, 0
  br i1 %i.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.i.sroa.0.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.i.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload9.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !41570
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.w, %bb.v
  %i.cd = icmp eq i64 %.sroa.7.i.sroa.6.0.copyload, 0
  br i1 %i.cd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.i.sroa.7.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.i.sroa.7.0.copyload, i64 noundef %.sroa.7.i.sroa.6.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !41571
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst.exit

bb.y:                                             ; preds = %bb.t
  %i.ce = call i64 @llvm.uadd.sat.i64(i64 %i.bz, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.ce, i64 4) ; 3 uses
  %i.cf = mul i64 %..i.i, 48                      ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.bz, 192153584101141161
  br i1 %or.cond.i.i.i, label %bb.aa, label %bb.z, !prof !61

bb.z:                                             ; preds = %bb.y
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.ab, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.z
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !41572
  %i.ch = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.cf, i64 noundef range(i64 1, 17) 8) #56, !noalias !41572 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.y
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.y ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cf) #61
          to label %.noexc5.i unwind label %bb.v, !noalias !41563

.noexc5.i:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.z
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.z ], [ %i.ch, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 7 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.z ], [ %..i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.cj = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.cj)
  store i64 %.sroa.0.0.copyload9.i, ptr %.sroa.10.0.i.i, align 8, !noalias !41563
  %.sroa.5145.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.7.i.sroa.0.0.copyload, ptr %.sroa.5145.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !41563
  %.sroa.7146.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store <2 x i64> %i.ca, ptr %.sroa.7146.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !41563
  %.sroa.8.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.7.i.sroa.7.0.copyload, ptr %.sroa.8.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !41563
  %.sroa.9148.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.sroa.7.i.sroa.8.0.copyload, ptr %.sroa.9148.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !41563
  store i64 %.sroa.4.0.i.i, ptr %i.z, align 8, !noalias !41563
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i53, align 8, !noalias !41563
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !41563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !41563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.y, ptr noundef nonnull align 8 dereferenceable(112) %i.ap, i64 112, i1 false), !noalias !41569
  call void @llvm.experimental.noalias.scope.decl(metadata !41573)
  call void @llvm.experimental.noalias.scope.decl(metadata !41574)
  call void @llvm.experimental.noalias.scope.decl(metadata !41575)
  call void @llvm.experimental.noalias.scope.decl(metadata !41576)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %.sroa.7.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.ab
  %.sroa.5.0.copyload134 = phi ptr [ %i.cu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %.sroa.10.0.i.i, %bb.ab ] ; 2 uses
  %.sroa.6135.0.copyload137 = phi i64 [ %i.cw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ], [ 1, %bb.ab ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !41577)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !41579
  invoke fastcc void @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef align 8 dereferenceable(96) %i.ck) #60
          to label %.noexc.i.i.i unwind label %bb.af, !noalias !41580

.noexc.i.i.i:                                     ; preds = %bb.ac
  %i.cm = load ptr, ptr %i.s, align 8, !noalias !41579, !noundef !28
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !41579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !41579
  %i.cn = load ptr, ptr %i.y, align 8, !alias.scope !41581, !noalias !41563, !nonnull !28, !noundef !28
  invoke void %i.cn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.ag unwind label %bb.af, !noalias !41579, !inline_history !41435

.thread.i.i.i:                                    ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41578
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i

bb.ae:                                            ; preds = %bb.ai, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cx, %bb.ai ], [ %i.co, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.ck)
          to label %.body.i unwind label %bb.ak, !noalias !41582

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !41579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41579
  %i.cp = load i64, ptr %i.cl, align 8, !alias.scope !41581, !noalias !41563, !noundef !28
  %i.cq = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.cq, ptr %i.cl, align 8, !alias.scope !41581, !noalias !41563
  %.sroa.0.0.copyload6.i.i.i = load i64, ptr %i.t, align 8, !noalias !41583 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx7.i.i.i, i64 40, i1 false), !noalias !41583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41578
  %.not.i.i6.i = icmp eq i64 %.sroa.0.0.copyload6.i.i.i, -1
  br i1 %.not.i.i6.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !41578
  store i64 %.sroa.0.0.copyload6.i.i.i, ptr %i.u, align 8, !noalias !41578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, i64 40, i1 false), !noalias !41578
  %i.cr = icmp samesign ult i64 %.sroa.6135.0.copyload137, 192153584101141163
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load i64, ptr %i.z, align 8, !range !37, !alias.scope !41584, !noalias !41563, !noundef !28
  %i.ct = icmp eq i64 %.sroa.6135.0.copyload137, %i.cs
  br i1 %i.ct, label %bb.aj, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i, %bb.ah
  %i.cu = phi ptr [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i ], [ %.sroa.5.0.copyload134, %bb.ah ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cu, i64 %.sroa.6135.0.copyload137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !41578
  %i.cw = add nuw nsw i64 %.sroa.6135.0.copyload137, 1 ; 2 uses
  store i64 %i.cw, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !41584, !noalias !41563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !41578
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.ac

bb.ai:                                            ; preds = %bb.aj
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u) #62, !noalias !41578
  br label %bb.ae

bb.aj:                                            ; preds = %bb.ah
  %i.cy = call i64 @llvm.uadd.sat.i64(i64 %i.cq, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.sroa.6135.0.copyload137, i64 noundef range(i64 1, 0) %i.cy, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i unwind label %bb.ai, !noalias !41585

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i: ; preds = %bb.aj
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !41584, !noalias !41563
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.ak:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !41578
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.ag, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.ck)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i unwind label %bb.al, !noalias !41582

bb.al:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.al, %bb.ae
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.da, %bb.al ], [ %.pn.i.i.i, %bb.ae ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #62, !noalias !41563
  br label %.body

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !41563
  %.sroa.0130.0.copyload131 = load i64, ptr %i.z, align 8, !noalias !41562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !41563
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst.exit
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !41563
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_EECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i, %bb.s
  %.pn.ph.i = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %i.cb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i ], [ %i.cb, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %.sroa.6128.0..sroa_idx)
          to label %.body unwind label %bb.am, !noalias !41569

bb.an:                                            ; preds = %.thread.i, %_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tTNtNtCs1xwejQucwHj_5alloc6string6StringB1G_EECs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !41551
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit, %bb.an
  %.sroa.0130.0.sink = phi i64 [ %.sroa.0130.0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit ], [ 0, %bb.an ] ; 5 uses
  %.sroa.5.0.sink = phi ptr [ %.sroa.5.0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit ], [ inttoptr (i64 8 to ptr), %bb.an ] ; 5 uses
  %.sroa.6135.0.sink = phi i64 [ %.sroa.6135.0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit ], [ 0, %bb.an ] ; 5 uses
  store i64 %.sroa.0130.0.sink, ptr %i.aw, align 8
  %.sroa.4.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.sink, ptr %.sroa.4.0..sroa_idx139, align 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.6135.0.sink, ptr %.sroa.5140.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke fastcc void @_RNvXs1q_NtCs9fPPV5zPXBl_5typst4argsNtB6_8FontArgsNtNtCsj1PC5XHMKi0_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.au, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.aq unwind label %bb.ap

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i, %bb.u
  %.sroa.6135.0 = phi i64 [ %.sroa.6135.0.copyload137, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i ], [ 0, %bb.u ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload134, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i ], [ inttoptr (i64 8 to ptr), %bb.u ]
  %.sroa.0130.0 = phi i64 [ %.sroa.0130.0.copyload131, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.ao
end_hunk_1
begin_hunk_2_@_RNvXs1l_NtCs9fPPV5zPXBl_5typst4argsNtB6_11PackageArgsNtNtCsj1PC5XHMKi0_12clap_builder6derive4Args12augment_args:bb.a
  ret void

bb.bs:                                            ; preds = %bb.af, %bb.aj, %bb.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder6os_str5OsStrECs9fPPV5zPXBl_5typst.exit.i133
  %eh.lpad-body116.ph = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.ck, %bb.ap ], [ %i.cd, %bb.aj ], [ %i.dd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder6os_str5OsStrECs9fPPV5zPXBl_5typst.exit.i133 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder7command7CommandECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(776) %i.u) #62
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bu, %bb.bs
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.bu:                                            ; preds = %bb.e, %bb.i, %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder6os_str5OsStrECs9fPPV5zPXBl_5typst.exit.i
  %eh.lpad-body41.ph = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.be, %bb.o ], [ %i.ax, %bb.i ], [ %i.bx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder6os_str5OsStrECs9fPPV5zPXBl_5typst.exit.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder7command7CommandECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(776) %i.ae) #62
          to label %common.resume unwind label %bb.bt

bb.bv:                                            ; preds = %bb.a
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder7command7CommandECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(776) %i.ai) #62
          to label %common.resume unwind label %bb.bt
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs1q_NtCs9fPPV5zPXBl_5typst4argsNtB6_8FontArgsNtNtCsj1PC5XHMKi0_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [112 x i8], align 8               ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [104 x i8], align 8               ; 4 uses
  %i.s = alloca [104 x i8], align 8               ; 7 uses
  %i.t = alloca [104 x i8], align 8               ; 8 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 6 uses
  %i.w = alloca [112 x i8], align 8               ; 7 uses
  %i.x = alloca [120 x i8], align 8               ; 10 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !42981
  call fastcc void @_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @964, i64 noundef 10) #60, !noalias !42980
  %i.z = load i64, ptr %i.s, align 8, !range !56, !noalias !42981, !noundef !28 ; 2 uses
  %.sink89.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink89.sroa.gep103 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink89.sroa.gep105 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink89.sroa.gep106 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink89.sroa.gep108 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink89.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  switch i64 %i.z, label %bb.b [
    i64 -1, label %bb.g
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx.i, i64 96, i1 false), !noalias !42981
  store i64 %i.z, ptr %i.t, align 8, !noalias !42981
  %i.aa = invoke noundef i64 @_RNvMNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t)
          to label %bb.d unwind label %bb.e, !noalias !42980

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.x, i8 0, i64 16, i1 false), !alias.scope !42980
  br label %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !42981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %i.t, i64 104, i1 false), !noalias !42981
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @_RNvMNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !42981
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNSINvNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCsaL1QbXo9JQH_3std4path7PathBufE5reifyCs9fPPV5zPXBl_5typst, ptr %i.ab, align 8, !alias.scope !42980
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !42980
  br label %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit

common.resume.sink.split:                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.ab, %bb.am
  %.sink = phi ptr [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %i.y, %bb.am ], [ %i.n, %bb.ab ]
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %i.ci, %bb.am ], [ %i.bq, %bb.ab ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %.sink) #62
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ad, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i, %bb.ad ], [ %i.ac, %bb.e ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(104) %i.t) #62
          to label %common.resume unwind label %bb.f, !noalias !42980

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !42980
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !noalias !42982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !42981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42984)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @964, ptr %i.q, align 8, !noalias !42985
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 10, ptr %i.ag, align 8, !noalias !42985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !42985
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !42983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !42985
  store ptr %i.q, ptr %i.o, align 8, !noalias !42985
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !42985
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.ai, align 8, !noalias !42985
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !42985
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @101, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #65, !noalias !42985
  unreachable

_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !42981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !42986
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.047.0.copyload48 = load ptr, ptr %i.aj, align 8, !alias.scope !42985 ; 2 uses
  %.sroa.6.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx50, i64 104, i1 false), !alias.scope !42985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !42985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not = icmp eq ptr %.sroa.047.0.copyload48, null
  br i1 %.not, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %.sroa.047.0.copyload48, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !42987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !42988
  call void @llvm.experimental.noalias.scope.decl(metadata !42989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !42988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !42990
  invoke fastcc void @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef align 8 dereferenceable(96) %.sroa.6.0..sroa_idx49) #60
          to label %.noexc.i unwind label %bb.j, !noalias !42991

.noexc.i:                                         ; preds = %bb.h
  %i.ak = load ptr, ptr %i.k, align 8, !noalias !42990, !noundef !28
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %.thread24.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !42990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !42990
  %i.al = load ptr, ptr %i.w, align 8, !alias.scope !42992, !nonnull !28, !noundef !28
  invoke void %i.al(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.k unwind label %bb.j, !noalias !42990, !inline_history !42942

.thread24.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42988
  br label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !42990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42990
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !42992, !noundef !28
  %i.ap = add i64 %i.ao, -1                       ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !alias.scope !42992
  %.sroa.0.0.copyload11.i = load i64, ptr %i.l, align 8, !noalias !42993 ; 4 uses
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i, align 8, !noalias !42993 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7.sroa.5.0.copyload.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i, align 8, !noalias !42993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42988
  %.not.i26 = icmp eq i64 %.sroa.0.0.copyload11.i, -1
  br i1 %.not.i26, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %.thread24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42988
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %.sroa.6.0..sroa_idx49), !noalias !42994
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit

bb.m:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0.0.copyload11.i, 0
  br i1 %i.ar, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %.sroa.0.0.copyload11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !42995
  br label %bb.ad

bb.o:                                             ; preds = %bb.k
  %i.as = call i64 @llvm.uadd.sat.i64(i64 %i.ap, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 4) ; 3 uses
  %i.at = mul i64 %..i.i, 24                      ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.ap, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.p, !prof !61

bb.p:                                             ; preds = %bb.o
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.r, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.p
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !42996
  %i.av = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, 17) 8) #56, !noalias !42996 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.o
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.o ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.at) #61
          to label %.noexc7.i unwind label %bb.m, !noalias !42988

.noexc7.i:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.p
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.p ], [ %i.av, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.p ], [ %..i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.ax = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.ax)
  store i64 %.sroa.0.0.copyload11.i, ptr %.sroa.10.0.i.i, align 8, !noalias !42988
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !42988
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !42988
  store i64 %.sroa.4.0.i.i, ptr %i.n, align 8, !noalias !42988
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i27, align 8, !noalias !42988
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !42988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !42988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(112) %i.w, i64 112, i1 false), !noalias !42994
  call void @llvm.experimental.noalias.scope.decl(metadata !42997)
  call void @llvm.experimental.noalias.scope.decl(metadata !42998)
  call void @llvm.experimental.noalias.scope.decl(metadata !42999)
  call void @llvm.experimental.noalias.scope.decl(metadata !43000)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %.sroa.7.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.r
  %i.ba = phi ptr [ %i.bj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %.sroa.10.0.i.i, %bb.r ]
  %.sroa.656.0.copyload58 = phi i64 [ %i.bl, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ], [ 1, %bb.r ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43003
  invoke fastcc void @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef align 8 dereferenceable(96) %i.ay) #60
          to label %.noexc.i.i.i unwind label %bb.u, !noalias !43004

.noexc.i.i.i:                                     ; preds = %bb.s
  %i.bb = load ptr, ptr %i.h, align 8, !noalias !43003, !noundef !28
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !43003
  %i.bc = load ptr, ptr %i.m, align 8, !alias.scope !43005, !noalias !42988, !nonnull !28, !noundef !28
  invoke void %i.bc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.v unwind label %bb.u, !noalias !43003, !inline_history !42942

.thread.i.i.i:                                    ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43002
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.u
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.u ], [ %i.bm, %bb.x ], [ %i.bm, %bb.y ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.ay)
          to label %common.resume.sink.split unwind label %bb.aa, !noalias !43006

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43003
  %i.be = load i64, ptr %i.az, align 8, !alias.scope !43005, !noalias !42988, !noundef !28
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  store i64 %i.bf, ptr %i.az, align 8, !alias.scope !43005, !noalias !42988
  %.sroa.0.0.copyload8.i.i.i = load i64, ptr %i.i, align 8, !noalias !43007 ; 4 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx9.i.i.i, align 8, !noalias !43007 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i, align 8, !noalias !43007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43002
  %.not.i.i8.i = icmp eq i64 %.sroa.0.0.copyload8.i.i.i, -1
  br i1 %.not.i.i8.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = icmp samesign ult i64 %.sroa.656.0.copyload58, 384307168202282326
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.n, align 8, !range !37, !alias.scope !43008, !noalias !42988, !noundef !28
  %i.bi = icmp eq i64 %.sroa.656.0.copyload58, %i.bh
  br i1 %i.bi, label %bb.z, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i, %bb.w
  %i.bj = phi ptr [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i ], [ %i.ba, %bb.w ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.656.0.copyload58 ; 3 uses
  store i64 %.sroa.0.0.copyload8.i.i.i, ptr %i.bk, align 8, !noalias !43002
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !43002
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !43002
  %i.bl = add nuw nsw i64 %.sroa.656.0.copyload58, 1 ; 2 uses
  store i64 %i.bl, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !43008, !noalias !42988
  br label %bb.s

bb.x:                                             ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.0.0.copyload8.i.i.i, 0
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !43009
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.bo = call i64 @llvm.uadd.sat.i64(i64 %i.bf, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.sroa.656.0.copyload58, i64 noundef range(i64 1, 0) %i.bo, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i unwind label %bb.x, !noalias !43010

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i: ; preds = %bb.z
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i27, align 8, !alias.scope !43008, !noalias !42988
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !43002
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.v, %.thread.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %i.ay)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i unwind label %bb.ab, !noalias !43006

bb.ab:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EECs9fPPV5zPXBl_5typst.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !42988
  %.sroa.051.0.copyload52 = load i64, ptr %i.n, align 8, !noalias !42987
  %.sroa.5.0.copyload55 = load ptr, ptr %.sroa.4.0..sroa_idx.i27, align 8, !noalias !42987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42988
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit

bb.ac:                                            ; preds = %bb.ad
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !42988
  unreachable

bb.ad:                                            ; preds = %bb.n, %bb.m, %bb.j
  %.pn.ph.i = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.aq, %bb.m ], [ %i.aq, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(96) %.sroa.6.0..sroa_idx49)
          to label %common.resume unwind label %bb.ac, !noalias !42994

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.l, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i
  %.sroa.656.0 = phi i64 [ 0, %bb.l ], [ %.sroa.656.0.copyload58, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %.sroa.5.0.copyload55, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i ]
  %.sroa.051.0 = phi i64 [ 0, %bb.l ], [ %.sroa.051.0.copyload52, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit
  %.sink84 = phi i64 [ %.sroa.051.0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit ], [ 0, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit ] ; 4 uses
  %.sink82 = phi ptr [ %.sroa.5.0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit ], [ inttoptr (i64 8 to ptr), %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit ] ; 4 uses
  %.sink80 = phi i64 [ %.sroa.656.0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit ], [ 0, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs9fPPV5zPXBl_5typst.exit ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %.sink84, ptr %i.y, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sink82, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sink80, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @965, i64 noundef 19)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !43011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @965, ptr %i.f, align 8, !noalias !43012
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 19, ptr %i.bu, align 8, !noalias !43012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43012
  %i.bv = load i64, ptr %i.v, align 8, !range !32, !alias.scope !43011, !noundef !28
  %.not.i28 = icmp eq i64 %i.bv, 2
  br i1 %.not.i28, label %bb.ah, label %bb.ag, !prof !43

end_hunk_2
