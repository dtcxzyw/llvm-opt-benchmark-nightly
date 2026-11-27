Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_testing-22188766dc9253b7.lance_testing.a0c385b76fa0ab66-cgu.0?download=true
inline.NumInlined: 1871
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBX_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2N_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB44_ECsdNJZa1e9V4g_13lance_testing:bb.a
  store i64 %i.nu, ptr %i.nv, align 8, !alias.scope !825
  %i.nw = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRe12split_at_mutCsdNJZa1e9V4g_13lance_testing.exit11.i

bb.bl:                                            ; preds = %bb.ba, %bb.h, %bb.ap, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdNJZa1e9V4g_13lance_testing.exit.i.i.i, %bb.aq, %bb.ar, %bb.bs, %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRe12split_at_mutCsdNJZa1e9V4g_13lance_testing.exit11.i
  %i.ny = and i64 %i.nd, 2
  %lcmp.mod.not = icmp eq i64 %i.ny, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRe12split_at_mutCsdNJZa1e9V4g_13lance_testing.exit11.i.epil.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSRe12split_at_mutCsdNJZa1e9V4g_13lance_testing.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit.loopexit.unr-lcssa, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRe12split_at_mutCsdNJZa1e9V4g_13lance_testing.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRe12split_at_mutCsdNJZa1e9V4g_13lance_testing.exit11.preheader.i ], [ %i.nw, %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2511 = trunc i64 %i.ne to i1
  tail call void @llvm.assume(i1 %lcmp.mod2511)
  %i.nz = xor i64 %.sroa.0.016.i.epil.init, -1
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.nb, i64 %.sroa.0.016.i.epil.init ; 3 uses
  %i.ob = getelementptr [16 x i8], ptr %i.nf, i64 %i.nz ; 3 uses
  %i.oc = load ptr, ptr %i.oa, align 8, !alias.scope !824, !nonnull !4, !noundef !4
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !alias.scope !824, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oa, ptr noundef nonnull align 8 dereferenceable(16) %i.ob, i64 16, i1 false), !alias.scope !826
  store ptr %i.oc, ptr %i.ob, align 8, !alias.scope !825
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store i64 %i.oe, ptr %i.of, align 8, !alias.scope !825
  br label %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit

_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRe12split_at_mutCsdNJZa1e9V4g_13lance_testing.exit11.i.epil.preheader, %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit.loopexit.unr-lcssa, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  invoke fastcc void @_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge6framesINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.ge, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.gd, i1 noundef zeroext true)
          to label %bb.bm unwind label %bb.bl

bb.bm:                                            ; preds = %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapReECsdNJZa1e9V4g_13lance_testing.exit
  %i.og = load i64, ptr %i.ge, align 8, !range !17, !noundef !4
  %i.oh = trunc nuw i64 %i.og to i1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.0253.sroa.0.0.copyload = load i64, ptr %i.oi, align 8 ; 2 uses
  %.sroa.0253.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %.sroa.0253.sroa.4.0.copyload = load ptr, ptr %.sroa.0253.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0253.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %.sroa.0253.sroa.5.0.copyload = load i64, ptr %.sroa.0253.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %.sroa.4254.0.copyload = load i64, ptr %.sroa.4254.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %.sroa.5255.0.copyload = load i64, ptr %.sroa.5255.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %.sroa.6256.0.copyload = load i64, ptr %.sroa.6256.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  br i1 %i.oh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i64 %.sroa.0253.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.0257.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0253.sroa.4.0.copyload, ptr %.sroa.0257.sroa.4.0..sroa_idx, align 8
  %.sroa.0257.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0253.sroa.5.0.copyload, ptr %.sroa.0257.sroa.5.0..sroa_idx, align 8
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4254.0.copyload, ptr %.sroa.4258.0..sroa_idx, align 8
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5255.0.copyload, ptr %.sroa.5259.0..sroa_idx, align 8
  %.sroa.6260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6256.0.copyload, ptr %.sroa.6260.0..sroa_idx, align 8
  br label %bb.bh

bb.bo:                                            ; preds = %bb.bm, %bb.bb, %.thread1335, %bb.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680
  %.sroa.01232.0 = phi i64 [ %.sroa.0237.sroa.0.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680 ], [ %.sroa.0285.sroa.0.0.copyload, %bb.bb ], [ %.sroa.61030.8.copyload1032, %bb.bg ], [ %.sroa.61030.8.copyload1032, %.thread1335 ], [ %.sroa.0253.sroa.0.0.copyload, %bb.bm ] ; 10 uses
  %.sroa.51235.0 = phi ptr [ %.sroa.0237.sroa.4.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680 ], [ %.sroa.0285.sroa.4.0.copyload, %bb.bb ], [ %.sroa.101033.8.copyload1035, %bb.bg ], [ %.sroa.101033.8.copyload1035, %.thread1335 ], [ %.sroa.0253.sroa.4.0.copyload, %bb.bm ] ; 14 uses
  %.sroa.71238.0 = phi i64 [ %.sroa.0237.sroa.5.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680 ], [ %.sroa.0285.sroa.5.0.copyload, %bb.bb ], [ %.sroa.111036.8.copyload1038, %bb.bg ], [ %.sroa.111036.8.copyload1038, %.thread1335 ], [ %.sroa.0253.sroa.5.0.copyload, %bb.bm ] ; 6 uses
  %.sroa.0470.0 = phi i64 [ %.sroa.4238.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680 ], [ %.sroa.4286.0.copyload, %bb.bb ], [ %.sroa.0.0.ph.i, %bb.bg ], [ %.sroa.0.0.ph.i, %.thread1335 ], [ %.sroa.4254.0.copyload, %bb.bm ] ; 3 uses
  %.sroa.0473.0 = phi i64 [ %.sroa.5239.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680 ], [ %.sroa.5287.0.copyload, %bb.bb ], [ %.us-phi179.i, %bb.bg ], [ %.us-phi179.i, %.thread1335 ], [ %.sroa.5255.0.copyload, %bb.bm ] ; 2 uses
  %.sroa.0474.0 = phi i64 [ %.sroa.6240.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680 ], [ %.sroa.6288.0.copyload, %bb.bb ], [ %.us-phi178.i, %bb.bg ], [ %.us-phi178.i, %.thread1335 ], [ %.sroa.6256.0.copyload, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl)
  store i64 %.sroa.0473.0, ptr %i.gl, align 8
  %i.oj = icmp eq i64 %.sroa.0473.0, 0
  br i1 %i.oj, label %bb.co, label %bb.cs

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack8StrStackECsdNJZa1e9V4g_13lance_testing.exit660: ; preds = %bb.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit.i657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  br label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack8StrStackECsdNJZa1e9V4g_13lance_testing.exit968, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack8StrStackECsdNJZa1e9V4g_13lance_testing.exit660
  %i.ok = call noundef i32 @close(i32 noundef %4) #40 ; 0 uses
  br label %bb.kk

bb.bq:                                            ; preds = %bb.bt, %bb.br, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk)
  store i64 0, ptr %i.gk, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 8 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4193.0..sroa_idx, align 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 7 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %.sroa.2.sroa.3.sroa.2.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %.sroa.2.sroa.3.sroa.4.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %.sroa.2.sroa.3.sroa.5.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %.sroa.2.sroa.3.sroa.6.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 60
  %.sroa.2.sroa.3.sroa.7.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 73
  br label %bb.bu

bb.br:                                            ; preds = %bb.f
  %i.on = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.oo = icmp ult i64 %i.on, 6
  tail call void @llvm.assume(i1 %i.oo)
  %i.op = icmp samesign ugt i64 %i.on, 1
  br i1 %i.op, label %bb.bs, label %bb.bq

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !827
  store i64 0, ptr %i.da, align 8, !noalias !827
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr @22, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !827
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 19, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !827
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !827
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr @21, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !827
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i64 106, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !827
  %.sroa.5.0..sroa_idx.i.i663 = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i663, align 8, !noalias !827
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  store ptr @22, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !827
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  store i64 19, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !827
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !827
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 76
  store i32 409, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !827
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  store ptr @20, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !827
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  store ptr inttoptr (i64 213 to ptr), ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !827
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.da)
          to label %bb.bt unwind label %bb.bl, !noalias !827

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !827
  br label %bb.bq

bb.bu:                                            ; preds = %_RNvMs5_CsenvyypBAZxQ_9str_stackNtB5_8StrStack4push.exit, %bb.bq
  %i.oq = phi ptr [ inttoptr (i64 1 to ptr), %bb.bq ], [ %i.bfz, %_RNvMs5_CsenvyypBAZxQ_9str_stackNtB5_8StrStack4push.exit ]
  %.sroa.01013.0 = phi ptr [ %2, %bb.bq ], [ %i.ot, %_RNvMs5_CsenvyypBAZxQ_9str_stackNtB5_8StrStack4push.exit ]
  br label %bb.bv

bb.bv:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40k4W9msRzi_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowB1C_ENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2x_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0NCIB2_B1C_B1C_uB1F_NCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2p_EB3O_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1C_QNCB4H_s_0E0E0E0CsdNJZa1e9V4g_13lance_testing.exit.i.i, %bb.bu
  %i.or = phi ptr [ %i.ot, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40k4W9msRzi_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowB1C_ENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2x_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0NCIB2_B1C_B1C_uB1F_NCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2p_EB3O_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1C_QNCB4H_s_0E0E0E0CsdNJZa1e9V4g_13lance_testing.exit.i.i ], [ %.sroa.01013.0, %bb.bu ] ; 4 uses
  %i.os = icmp eq ptr %i.or, %3
  br i1 %i.os, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 24 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.or, i64 8
  %.val.i.i665 = load ptr, ptr %i.ou, align 8, !noalias !828, !nonnull !4, !noundef !4
  %i.ov = getelementptr i8, ptr %i.or, i64 16
  %.val10.i.i = load i64, ptr %i.ov, align 8, !noalias !828, !noundef !4
  %i.ow = call fastcc { ptr, i64 } @_RINvMNtCscI6d9CVNmLh_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i665, i64 noundef %.val10.i.i), !noalias !828 ; 2 uses
  %i.ox = extractvalue { ptr, i64 } %i.ow, 0      ; 2 uses
  %i.oy = extractvalue { ptr, i64 } %i.ow, 1      ; 14 uses
  switch i64 %i.oy, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i [
    i64 0, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40k4W9msRzi_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowB1C_ENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2x_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0NCIB2_B1C_B1C_uB1F_NCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2p_EB3O_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1C_QNCB4H_s_0E0E0E0CsdNJZa1e9V4g_13lance_testing.exit.i.i
    i64 1, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.thread.i.i.i.i.i
  ]

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i: ; preds = %bb.bw
  %i.oz = load i16, ptr %i.ox, align 1
  %i.pa = icmp ne i16 8227, %i.oz
  %i.pb = zext i1 %i.pa to i32
  %bcmp.i.i.i.i.fr.i.i.i.i.i = freeze i32 %i.pb
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40k4W9msRzi_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowB1C_ENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2x_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0NCIB2_B1C_B1C_uB1F_NCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2p_EB3O_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1C_QNCB4H_s_0E0E0E0CsdNJZa1e9V4g_13lance_testing.exit.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.thread.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.thread.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i, %bb.bw
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40k4W9msRzi_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowB1C_ENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2x_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0NCIB2_B1C_B1C_uB1F_NCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2p_EB3O_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1C_QNCB4H_s_0E0E0E0CsdNJZa1e9V4g_13lance_testing.exit.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40k4W9msRzi_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowB1C_ENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2x_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0NCIB2_B1C_B1C_uB1F_NCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2p_EB3O_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1C_QNCB4H_s_0E0E0E0CsdNJZa1e9V4g_13lance_testing.exit.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.thread.i.i.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i, %bb.bw
  %i.pc = phi ptr [ %i.ox, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.thread.i.i.i.i.i ], [ null, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB3o_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB4F_Es_0INtB7_5FnMutTRReEE8call_mutCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i ], [ null, %bb.bw ] ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i, label %bb.bv, label %bb.bx

bb.bx:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40k4W9msRzi_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowB1C_ENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2x_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0NCIB2_B1C_B1C_uB1F_NCINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2p_EB3O_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1C_QNCB4H_s_0E0E0E0CsdNJZa1e9V4g_13lance_testing.exit.i.i
  store i64 0, ptr %.sroa.5194.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj)
  invoke void @_RNvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge13rfind_samples(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pc, i64 noundef %i.oy)
          to label %bb.rj unwind label %.loopexit.split-lp1528.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %bb.bv
  %i.pd = load ptr, ptr %.sroa.4.0..sroa_idx18.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.pe = load ptr, ptr %.sroa.7.0..sroa_idx20.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.pf = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !829
  %i.pg = icmp eq i64 %i.pf, 1
  br i1 %i.pg, label %.thread, label %bb.bz

.thread:                                          ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !829
  br label %bb.ci

bb.bz:                                            ; preds = %bb.by
  %i.ph = icmp ne i64 %i.pf, 0
  call void @llvm.assume(i1 %i.ph)
  %i.pi = load i64, ptr %i.pe, align 8, !noalias !830, !noundef !4 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !noalias !830, !noundef !4
  %i.pl = add i64 %i.pf, -1                       ; 4 uses
  %i.pm = sub nuw i64 %i.pk, %i.pi
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pi
  %.sroa.0.0.i11.i = call noundef i64 @llvm.umax.i64(i64 %i.pl, i64 4) ; 4 uses
  %i.po = shl i64 %.sroa.0.0.i11.i, 4             ; 3 uses
  %i.pp = icmp ugt i64 %i.pl, 1152921504606846975
  %.not.i.i.i667 = icmp ugt i64 %i.po, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.pp, %.not.i.i.i667
  br i1 %or.cond.i.i.i, label %bb.ca, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !16

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.bz
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !831
  %i.pq = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.po, i64 noundef range(i64 1, 9) 8) #40, !noalias !831 ; 6 uses
  %i.pr = icmp eq ptr %i.pq, null
  br i1 %i.pr, label %bb.ca, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i

bb.ca:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.bz
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.bz ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.po) #38
          to label %.noexc670 unwind label %.loopexit.split-lp1528.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !829

.noexc670:                                        ; preds = %bb.ca
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  store ptr %i.pn, ptr %i.pq, align 8, !noalias !829
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i64 %i.pm, ptr %i.ps, align 8, !noalias !829
  store i64 %.sroa.0.0.i11.i, ptr %i.cz, align 8, !noalias !829
  %.sroa.4.0..sroa_idx.i668 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  store ptr %i.pq, ptr %.sroa.4.0..sroa_idx.i668, align 8, !noalias !829
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !829
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.pt = icmp eq i64 %i.pl, 1
  br i1 %i.pt, label %.thread1373, label %.lr.ph.i.i.i

.thread1373:                                      ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !829
  br label %bb.ci

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i, %bb.cb
  %i.pu = phi ptr [ %i.qg, %bb.cb ], [ %i.pq, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i ]
  %i.pv = phi i64 [ %i.qh, %bb.cb ], [ %.sroa.0.0.i11.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i ] ; 3 uses
  %i.pw = phi i64 [ %i.qk, %bb.cb ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i ] ; 5 uses
  %i.px = phi ptr [ %i.pz, %bb.cb ], [ %i.pj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i ] ; 2 uses
  %.val1112.i.i.i = phi i64 [ %i.qb, %bb.cb ], [ %i.pl, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdNJZa1e9V4g_13lance_testing.exit.i ]
  %i.py = load i64, ptr %i.px, align 8, !noalias !834, !noundef !4 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !noalias !834, !noundef !4
  %i.qb = add nsw i64 %.val1112.i.i.i, -1         ; 3 uses
  %i.qc = sub nuw i64 %i.qa, %i.py
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.py
  %i.qe = icmp samesign ult i64 %i.pw, 576460752303423488
  call void @llvm.assume(i1 %i.qe)
  %i.qf = icmp eq i64 %i.pw, %i.pv
  br i1 %i.qf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i, label %bb.cb

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz, i64 noundef %i.pv, i64 noundef range(i64 1, 0) %i.qb, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.cc, !noalias !835

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i
  %.pre14.i.i.i = load i64, ptr %i.cz, align 8, !range !15, !alias.scope !836, !noalias !829
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i668, align 8, !alias.scope !836, !noalias !829
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc.i, %.lr.ph.i.i.i
  %i.qg = phi ptr [ %i.pu, %.lr.ph.i.i.i ], [ %.pre.i, %.noexc.i ] ; 2 uses
  %i.qh = phi i64 [ %i.pv, %.lr.ph.i.i.i ], [ %.pre14.i.i.i, %.noexc.i ]
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.qg, i64 %i.pw ; 2 uses
  store ptr %i.qd, ptr %i.qi, align 8, !noalias !837
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 %i.qc, ptr %i.qj, align 8, !noalias !837
  %i.qk = add nuw nsw i64 %i.pw, 1                ; 6 uses
  store i64 %i.qk, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !836, !noalias !829
  %i.ql = icmp eq i64 %i.qb, 1
  br i1 %i.ql, label %bb.cf, label %.lr.ph.i.i.i

bb.cc:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i
  %i.qm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i669 = load i64, ptr %i.cz, align 8, !noalias !829 ; 2 uses
  %i.qn = icmp eq i64 %.val.i669, 0
  br i1 %i.qn, label %.body671, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.val9.i = load ptr, ptr %.sroa.4.0..sroa_idx.i668, align 8, !noalias !829, !nonnull !4, !noundef !4
  %i.qo = shl nuw i64 %.val.i669, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.qo, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !829
  br label %.body671

.body671:                                         ; preds = %.loopexit.split-lp1528.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ri, %bb.rh, %bb.cd, %bb.cc
  %.pn568 = phi { ptr, i32 } [ %lpad.thr_comm1377, %bb.rh ], [ %i.qm, %bb.cc ], [ %lpad.thr_comm1377, %bb.ri ], [ %i.qm, %bb.cd ], [ %lpad.loopexit.split-lp2449, %.loopexit.split-lp1528.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %.val.i673 = load i64, ptr %i.gk, align 8, !alias.scope !838 ; 2 uses
  %i.qp = icmp eq i64 %.val.i673, 0
  br i1 %i.qp, label %.body, label %bb.ce

bb.ce:                                            ; preds = %.body671
  %.val1.i674 = load ptr, ptr %.sroa.4193.0..sroa_idx, align 8, !alias.scope !838, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i674, i64 noundef %.val.i673, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !838
  br label %.body

bb.cf:                                            ; preds = %bb.cb
  %.sroa.01017.0.copyload1018 = load i64, ptr %i.cz, align 8, !noalias !839 ; 4 uses
  %.sroa.71019.0.copyload1021 = load ptr, ptr %.sroa.4.0..sroa_idx.i668, align 8, !noalias !839 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !829
  %i.qq = icmp samesign ult i64 %i.pw, 20
  br i1 %i.qq, label %bb.ch, label %bb.cg, !prof !14

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortReNvYBT_NtNtB8_3cmp10PartialOrd2ltECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 %.sroa.71019.0.copyload1021, i64 noundef %i.qk, ptr noalias noundef nonnull %i.a)
          to label %bb.ci unwind label %bb.rh

bb.ch:                                            ; preds = %bb.cf
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftReNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 %.sroa.71019.0.copyload1021, i64 noundef %i.qk)
  br label %bb.ci

.loopexit.split-lp1528.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.rr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread.i997, %bb.sg, %bb.rm, %bb.bx, %bb.ru, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread.i.i992, %bb.sc, %.invoke, %bb.ca, %bb.ci
  %lpad.loopexit.split-lp2449 = landingpad { ptr, i32 }
          cleanup
  br label %.body671

bb.ci:                                            ; preds = %bb.ch, %.thread1373, %.thread, %bb.cg
  %.sroa.01017.01371 = phi i64 [ 0, %.thread ], [ %.sroa.01017.0.copyload1018, %bb.ch ], [ %.sroa.01017.0.copyload1018, %bb.cg ], [ %.sroa.0.0.i11.i, %.thread1373 ]
  %.sroa.71019.01369 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %.sroa.71019.0.copyload1021, %bb.ch ], [ %.sroa.71019.0.copyload1021, %bb.cg ], [ %i.pq, %.thread1373 ]
  %.sroa.101022.01368 = phi i64 [ 0, %.thread ], [ %i.qk, %bb.ch ], [ %i.qk, %bb.cg ], [ 1, %.thread1373 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  store i64 %.sroa.01017.01371, ptr %i.gf, align 8
  %.sroa.71019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %.sroa.71019.01369, ptr %.sroa.71019.0..sroa_idx, align 8
  %.sroa.101022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %.sroa.101022.01368, ptr %.sroa.101022.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge6framesINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.gg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.gf, i1 noundef zeroext false)
          to label %bb.cj unwind label %.loopexit.split-lp1528.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  %i.qr = load i64, ptr %i.gg, align 8, !range !17, !noundef !4
  %i.qs = trunc nuw i64 %i.qr to i1
  %i.qt = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.0237.sroa.0.0.copyload = load i64, ptr %i.qt, align 8 ; 2 uses
  %.sroa.0237.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %.sroa.0237.sroa.4.0.copyload = load ptr, ptr %.sroa.0237.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0237.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %.sroa.0237.sroa.5.0.copyload = load i64, ptr %.sroa.0237.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %.sroa.4238.0.copyload = load i64, ptr %.sroa.4238.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %.sroa.5239.0.copyload = load i64, ptr %.sroa.5239.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %.sroa.6240.0.copyload = load i64, ptr %.sroa.6240.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  br i1 %i.qs, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  store i64 %.sroa.0237.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.0241.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0237.sroa.4.0.copyload, ptr %.sroa.0241.sroa.4.0..sroa_idx, align 8
  %.sroa.0241.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0237.sroa.5.0.copyload, ptr %.sroa.0241.sroa.5.0..sroa_idx, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4238.0.copyload, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5239.0.copyload, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6240.0.copyload, ptr %.sroa.6244.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %.val.i675 = load i64, ptr %i.gk, align 8, !alias.scope !840 ; 2 uses
  %i.qu = icmp eq i64 %.val.i675, 0
  br i1 %i.qu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit677, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.val1.i676 = load ptr, ptr %.sroa.4193.0..sroa_idx, align 8, !alias.scope !840, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i676, i64 noundef %.val.i675, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !840
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit677

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %.val.i678 = load i64, ptr %i.gk, align 8, !alias.scope !841 ; 2 uses
  %i.qv = icmp eq i64 %.val.i678, 0
  br i1 %i.qv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val1.i679 = load ptr, ptr %.sroa.4193.0..sroa_idx, align 8, !alias.scope !841, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i679, i64 noundef %.val.i678, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !841
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdNJZa1e9V4g_13lance_testing.exit680: ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk)
  br label %bb.bo

bb.co:                                            ; preds = %bb.cu, %bb.cs, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !843
  %i.qw = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !843 ; 3 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 8) #38
          to label %.noexc686 unwind label %bb.cr, !noalias !842

.noexc686:                                        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %.body702, %bb.cr
  %.sroa.0181.4 = phi i1 [ true, %bb.cr ], [ false, %.body702 ] ; 2 uses
  %.sroa.0179.0 = phi i1 [ false, %bb.cr ], [ %.sroa.0179.2, %.body702 ]
  %.pn562 = phi { ptr, i32 } [ %i.qz, %bb.cr ], [ %.pn560, %.body702 ] ; 2 uses
  %i.qy = icmp eq i64 %.sroa.01232.0, 0
  %or.cond1503 = select i1 %.sroa.0179.0, i1 true, i1 %i.qy
  br i1 %or.cond1503, label %.body, label %bb.rg

bb.cr:                                            ; preds = %bb.ct, %bb.cp
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cs:                                            ; preds = %bb.bo
  %i.ra = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.rb = icmp ult i64 %i.ra, 6
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp samesign ugt i64 %i.ra, 1
  br i1 %i.rc, label %bb.ct, label %bb.co

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  store ptr %i.gl, ptr %i.fz, align 8
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4296.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !844
  store i64 0, ptr %i.cy, align 8, !noalias !844
  %.sroa.0.sroa.3.0..sroa_idx.i.i688 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @22, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i688, align 8, !noalias !844
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i689 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 19, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i689, align 8, !noalias !844
  %.sroa.0.sroa.4.0..sroa_idx.i.i690 = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i690, align 8, !noalias !844
  %.sroa.0.sroa.6.0..sroa_idx.i.i691 = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr @21, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i691, align 8, !noalias !844
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i692 = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i64 106, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i692, align 8, !noalias !844
  %.sroa.5.0..sroa_idx.i.i693 = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i693, align 8, !noalias !844
  %.sroa.7.0..sroa_idx.i.i694 = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr @22, ptr %.sroa.7.0..sroa_idx.i.i694, align 8, !noalias !844
  %.sroa.8.0..sroa_idx.i.i695 = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store i64 19, ptr %.sroa.8.0..sroa_idx.i.i695, align 8, !noalias !844
  %.sroa.9.0..sroa_idx.i.i696 = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i696, align 8, !noalias !844
  %.sroa.11.0..sroa_idx.i.i697 = getelementptr inbounds nuw i8, ptr %i.cy, i64 76
  store i32 474, ptr %.sroa.11.0..sroa_idx.i.i697, align 4, !noalias !844
  %.sroa.13.0..sroa_idx.i.i698 = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  store ptr @23, ptr %.sroa.13.0..sroa_idx.i.i698, align 8, !noalias !844
  %.sroa.15.0..sroa_idx.i.i699 = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  store ptr %i.fz, ptr %.sroa.15.0..sroa_idx.i.i699, align 8, !noalias !844
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cy)
          to label %bb.cu unwind label %bb.cr, !noalias !844

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  br label %bb.co

bb.cv:                                            ; preds = %bb.co
  store i64 0, ptr %i.qw, align 8, !noalias !842
  store i64 0, ptr %i.fy, align 8, !alias.scope !842
  %.sroa.4.0..sroa_idx18.i681 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx18.i681, align 8, !alias.scope !842
  %.sroa.5.0..sroa_idx19.i682 = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx19.i682, align 8, !alias.scope !842
  %.sroa.6.0..sroa_idx.i683 = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i683, align 8, !alias.scope !842
  %.sroa.7.0..sroa_idx20.i684 = getelementptr inbounds nuw i8, ptr %i.fy, i64 32 ; 4 uses
  store ptr %i.qw, ptr %.sroa.7.0..sroa_idx20.i684, align 8, !alias.scope !842
  %.sroa.8.0..sroa_idx.i685 = getelementptr inbounds nuw i8, ptr %i.fy, i64 40 ; 6 uses
  store i64 1, ptr %.sroa.8.0..sroa_idx.i685, align 8, !alias.scope !842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 311
  %i.re = load i8, ptr %i.rd, align 1, !range !7, !noundef !4
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rg = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  store i32 %4, ptr %i.rg, align 8
  store i64 -1, ptr %i.fx, align 8
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !845
  invoke void @_RNvMs0_NtCsl3klstog5qU_9quick_xml6writerNtB5_11Indentation3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cx, i8 noundef 32, i64 noundef 4)
          to label %_RNvMNtCsl3klstog5qU_9quick_xml6writerINtB2_6WriterNtNtCsgczF5crJ4sT_3std2fs4FileE15new_with_indentCsdNJZa1e9V4g_13lance_testing.exit unwind label %bb.cy, !noalias !845

bb.cy:                                            ; preds = %bb.cx
  %i.rh = landingpad { ptr, i32 }
          cleanup
  %i.ri = call noundef i32 @close(i32 noundef range(i32 0, -1) %4) #40, !noalias !845 ; 0 uses
  br label %.body702

_RNvMNtCsl3klstog5qU_9quick_xml6writerINtB2_6WriterNtNtCsgczF5crJ4sT_3std2fs4FileE15new_with_indentCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !845
  %i.rj = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  store i32 %4, ptr %i.rj, align 8, !alias.scope !845
  br label %bb.cz

bb.cz:                                            ; preds = %_RNvMNtCsl3klstog5qU_9quick_xml6writerINtB2_6WriterNtNtCsgczF5crJ4sT_3std2fs4FileE15new_with_indentCsdNJZa1e9V4g_13lance_testing.exit, %bb.cw
  %i.rk = icmp eq i64 %.sroa.0470.0, 0
  br i1 %i.rk, label %bb.db, label %bb.da

.body702:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsdNJZa1e9V4g_13lance_testing.exit962, %bb.cy
  %.sroa.0179.2 = phi i1 [ false, %bb.cy ], [ %.sroa.0179.41391, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsdNJZa1e9V4g_13lance_testing.exit962 ]
  %.pn560 = phi { ptr, i32 } [ %i.rh, %bb.cy ], [ %.pn5581392, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsdNJZa1e9V4g_13lance_testing.exit962 ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack8StrStackECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(48) %i.fy) #37
  br label %bb.cq

bb.da:                                            ; preds = %bb.cz
  %i.rl = load i64, ptr %1, align 8, !range !17, !noundef !4
  %i.rm = trunc nuw i64 %i.rl to i1
  br i1 %i.rm, label %bb.ds, label %bb.dt

end_hunk_0
begin_hunk_1_@_RNvXs_NtCsdNJZa1e9V4g_13lance_testing5pprofNtB4_13PProfProfilerNtNtCs9qQAvcXxjQH_9criterion8profiler8Profiler14stop_profiling:bb.a
  %.val21 = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %.val20, i64 noundef range(i64 1, -9223372036854775807) 1) #40
  br label %common.resume

bb.g:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsdNJZa1e9V4g_13lance_testing.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4096
  %i.aa = load i32, ptr %i.r, align 8, !range !4097, !noundef !4
  %i.ab = trunc nuw i32 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RNCNvXs_NtCsdNJZa1e9V4g_13lance_testing5pprofNtB6_13PProfProfilerNtNtCs9qQAvcXxjQH_9criterion8profiler8Profiler14stop_profiling0B8_(ptr nonnull %.val.i.i, i64 %.val1.i.i, ptr noundef nonnull %i.ad)
          to label %.unreachable unwind label %bb.be

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !range !19, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.0.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store i32 -2, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i32 %.sroa.5.0.copyload, -2
  br i1 %.not, label %bb.k, label %bb.j

.unreachable:                                     ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.0.0.copyload, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXs_NtCs4PgLcKbjAJM_7inferno10flamegraphNtB4_7OptionsNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.p)
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ah = call noundef i32 @close(i32 noundef %i.af) #40 ; 0 uses
  br label %bb.bf

bb.l:                                             ; preds = %.body40, %bb.m
  %.pn14 = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %.pn12, %.body40 ] ; 2 uses
  %.sroa.07.0 = phi i1 [ true, %bb.m ], [ %.sroa.07.2, %.body40 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskZJhtuxxqNG_5pprof8profiler13ProfilerGuardECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(48) %i.q) #37
          to label %bb.bd unwind label %bb.bh

bb.m:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %0, align 8, !range !29, !noundef !4
  %.not10 = icmp eq i64 %i.aj, -1
  %spec.select = select i1 %.not10, ptr %i.p, ptr %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs0_NtCskZJhtuxxqNG_5pprof8profilerNtB5_13ProfilerGuard6report(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q)
          to label %bb.p unwind label %bb.o

.body40:                                          ; preds = %bb.ax, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.o, %.body
  %.pn12 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.o ], [ %i.dk, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.dk, %bb.ax ]
  %.sroa.07.2 = phi i1 [ %.sroa.07.4, %.body ], [ true, %bb.o ], [ false, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ false, %bb.ax ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4PgLcKbjAJM_7inferno10flamegraph7OptionsECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(328) %i.p) #37
  br label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMNtCskZJhtuxxqNG_5pprof6reportNtB2_13ReportBuilder5build(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.m)
          to label %bb.r unwind label %bb.q

.body:                                            ; preds = %.body34, %bb.u, %bb.t, %bb.q
  %.pn = phi { ptr, i32 } [ %eh.lpad-body35, %.body34 ], [ %i.an, %bb.q ], [ %i.as, %bb.t ], [ %i.as, %bb.u ]
  %.sroa.07.4 = phi i1 [ false, %.body34 ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.u ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.val28 = load ptr, ptr %i.al, align 8, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.val29 = load ptr, ptr %i.am, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskZJhtuxxqNG_5pprof6report13ReportBuilderECsdNJZa1e9V4g_13lance_testing(ptr %.val28, ptr %.val29) #37
          to label %.body40 unwind label %bb.bh

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !range !24, !alias.scope !4099, !noundef !4
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.s, label %bb.x, !prof !10

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !4098
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #38
          to label %bb.v unwind label %bb.t, !noalias !4100

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load i32, ptr %i.l, align 8, !range !23, !alias.scope !4101, !noalias !4100, !noundef !4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.u, label %.body

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.av)
          to label %.body unwind label %bb.w, !noalias !4100

bb.v:                                             ; preds = %bb.s
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !4100
  unreachable

bb.x:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.n, i64 88, i1 false), !alias.scope !4100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !4102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4103
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !4105, !nonnull !4, !noundef !4 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !4105, !noundef !4
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  %.val3.i.i.i = load <16 x i8>, ptr %i.ay, align 16, !noalias !4106
  %i.bd = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4105, !noundef !4
  store ptr %i.ay, ptr %i.g, align 8, !noalias !4103
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i30, align 8, !noalias !4103
  %.sroa.5.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bc, ptr %.sroa.5.0..sroa_idx.i31, align 8, !noalias !4103
  %.sroa.6.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store <16 x i1> %i.bd, ptr %.sroa.6.0..sroa_idx.i32, align 8, !noalias !4103
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i64 %i.bg, ptr %.sroa.720.0..sroa_idx.i, align 8, !noalias !4103
  call void @llvm.experimental.noalias.scope.decl(metadata !4107)
  call void @llvm.experimental.noalias.scope.decl(metadata !4108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4109
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCskZJhtuxxqNG_5pprof6frames6FramesiENCINvMNtNtB1S_6report10flamegraphNtB2A_6Report23flamegraph_with_optionsNtNtB15_2fs4FileE0ENtNtNtB9_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc.i unwind label %bb.y, !noalias !4110

bb.y:                                             ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.noexc.i:                                         ; preds = %bb.x
  %i.bi = load i64, ptr %i.c, align 8, !range !6, !noalias !4109, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bi, -1
  br i1 %.not.i.i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsdNJZa1e9V4g_13lance_testing.exit.i.i.thread, label %bb.ab

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsdNJZa1e9V4g_13lance_testing.exit.i.i.thread: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4103
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsdNJZa1e9V4g_13lance_testing.exit.i

bb.z:                                             ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !4111
  br label %.thread.i

bb.ab:                                            ; preds = %.noexc.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4109 ; 3 uses
  %.sroa.6.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx11.i.i.i, align 8, !noalias !4109
  %.val.i.i.i = load i64, ptr %.sroa.720.0..sroa_idx.i, align 8, !alias.scope !4112, !noalias !4103, !noundef !4
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bl, i64 4) ; 3 uses
  %i.bm = mul i64 %.sroa.0.0.i.i.i.i, 24          ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.bl, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.ad, label %bb.ac, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.ae, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.ac
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4113
  %i.bo = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bm, i64 noundef range(i64 1, 9) 8) #40, !noalias !4113 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.ab
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %bb.ab ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bm) #38
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !4109

.noexc.i.i.i:                                     ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.ac
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ac ], [ %i.bo, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.sroa.0.0.i.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ] ; 2 uses
  %i.bq = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.bq)
  store i64 %i.bi, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !4109
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !4109
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !noalias !4109
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.d, align 8, !noalias !4109
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4109
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !4110
  call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  call void @llvm.experimental.noalias.scope.decl(metadata !4117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4118
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCskZJhtuxxqNG_5pprof6frames6FramesiENCINvMNtNtB1S_6report10flamegraphNtB2A_6Report23flamegraph_with_optionsNtNtB15_2fs4FileE0ENtNtNtB9_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4119

.noexc6.i.i.i:                                    ; preds = %bb.ae
  %i.br = load i64, ptr %i.a, align 8, !range !6, !noalias !4118, !noundef !4 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.br, -1
  br i1 %.not15.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc6.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.af

bb.af:                                            ; preds = %.noexc7.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bt = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bz, %.noexc7.i.i.i ]
  %i.bu = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.cb, %.noexc7.i.i.i ] ; 5 uses
  %i.bv = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i ], [ %i.cc, %.noexc7.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4118 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4118
  %i.bw = icmp samesign ult i64 %i.bu, 384307168202282326
  call void @llvm.assume(i1 %i.bw)
  %i.bx = load i64, ptr %i.d, align 8, !range !15, !alias.scope !4120, !noalias !4109, !noundef !4
  %i.by = icmp eq i64 %i.bu, %i.bx
  br i1 %i.by, label %bb.ai, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i_crit_edge.i.i.i, %bb.af
  %i.bz = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i_crit_edge.i.i.i ], [ %i.bt, %bb.af ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bu ; 3 uses
  store i64 %i.bv, ptr %i.ca, align 8, !noalias !4118
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4118
  %.sroa.513.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4118
  %i.cb = add nuw nsw i64 %i.bu, 1                ; 2 uses
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !4120, !noalias !4109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4118
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCskZJhtuxxqNG_5pprof6frames6FramesiENCINvMNtNtB1S_6report10flamegraphNtB2A_6Report23flamegraph_with_optionsNtNtB15_2fs4FileE0ENtNtNtB9_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4119

.noexc7.i.i.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i
  %i.cc = load i64, ptr %i.a, align 8, !range !6, !noalias !4118, !noundef !4 ; 2 uses
  %.not.i.i5.i.i.i = icmp eq i64 %i.cc, -1
  br i1 %.not.i.i5.i.i.i, label %.loopexit.i, label %bb.af

bb.ag:                                            ; preds = %bb.ai
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %i.bv, 0
  br i1 %i.ce, label %.body.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !4121
  br label %.body.i.i.i

bb.ai:                                            ; preds = %bb.af
  %.val.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !4122, !noalias !4109, !noundef !4
  %i.cf = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bu, i64 noundef range(i64 1, 0) %i.cf, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i_crit_edge.i.i.i unwind label %bb.ag, !noalias !4123

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i_crit_edge.i.i.i: ; preds = %bb.ai
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !4120, !noalias !4109
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i.i.i.i.i, %bb.ae
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.ag
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.ag ], [ %i.cd, %bb.ah ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37, !noalias !4109
  br label %.thread.i

.loopexit.i:                                      ; preds = %.noexc7.i.i.i, %.noexc6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !4124
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !4103 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4103
  %i.cg = icmp ult i64 %.pre.i, 384307168202282326
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i64 %.pre.i, 0
  br i1 %i.ch, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsdNJZa1e9V4g_13lance_testing.exit.i.i, label %bb.ak

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsdNJZa1e9V4g_13lance_testing.exit.i.i: ; preds = %.loopexit.i
  %.val2.i.i.pre = load i64, ptr %i.h, align 8, !range !15, !alias.scope !4125, !noalias !4103 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4125)
  %i.ci = icmp eq i64 %.val2.i.i.pre, 0
  br i1 %i.ci, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsdNJZa1e9V4g_13lance_testing.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsdNJZa1e9V4g_13lance_testing.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i33 = load ptr, ptr %i.cj, align 8, !alias.scope !4125, !noalias !4103, !nonnull !4, !noundef !4
  %i.ck = mul nuw i64 %.val2.i.i.pre, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i33, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4126
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsdNJZa1e9V4g_13lance_testing.exit.i

bb.ak:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4103
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !4103, !nonnull !4, !noundef !4 ; 4 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.pre.i
  invoke fastcc void @_RINvNtCs4PgLcKbjAJM_7inferno10flamegraph10from_linesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBX_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCINvMNtNtCskZJhtuxxqNG_5pprof6report10flamegraphNtB2N_6Report23flamegraph_with_optionsNtNtCsgczF5crJ4sT_3std2fs4FileEs_0EB44_ECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(328) %spec.select, ptr noundef nonnull %i.cm, ptr noundef %i.cn, i32 noundef range(i32 0, -1) %i.af)
          to label %bb.am unwind label %bb.al, !noalias !4127

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsdNJZa1e9V4g_13lance_testing.exit.i: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsdNJZa1e9V4g_13lance_testing.exit.i.i.thread, %bb.aj, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsdNJZa1e9V4g_13lance_testing.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4103
  %i.co = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.af) #40, !noalias !4103 ; 0 uses
  br label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ao, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cp, %bb.al ], [ %i.cr, %bb.ao ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37, !noalias !4127
  br label %.body34

bb.am:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  %i.cq = load i64, ptr %i.f, align 8, !range !18, !alias.scope !4128, !noalias !4103, !noundef !4
  %.not.i.i = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtCsl3klstog5qU_9quick_xml6errors5ErrorE6unwrapCsdNJZa1e9V4g_13lance_testing.exit.i, label %bb.an, !prof !14

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !4103
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38
          to label %bb.ap unwind label %bb.ao, !noalias !4130

bb.ao:                                            ; preds = %bb.an
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsl3klstog5qU_9quick_xml6errors5ErrorECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #37
          to label %.body.i unwind label %bb.aq, !noalias !4130

bb.ap:                                            ; preds = %bb.an
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !4130
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtCsl3klstog5qU_9quick_xml6errors5ErrorE6unwrapCsdNJZa1e9V4g_13lance_testing.exit.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4103
  call void @llvm.experimental.noalias.scope.decl(metadata !4131)
  call void @llvm.experimental.noalias.scope.decl(metadata !4132)
end_hunk_1
