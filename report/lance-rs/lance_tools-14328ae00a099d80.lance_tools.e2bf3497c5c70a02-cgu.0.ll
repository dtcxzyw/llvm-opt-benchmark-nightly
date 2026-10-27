Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1C_11UringReader4open000ENtNtBT_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bq, align 8, !noalias !5561
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !5561
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !5585
  %i.bs = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5585 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ae, label %bb.ah, !prof !36

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #40
          to label %.noexc75.i.i.i.i.i.i.i.i.i.i unwind label %bb.af, !noalias !5561

.noexc75.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l) #41
          to label %.body71.i.i.i.i.i.i.i.i.i.i unwind label %bb.ag, !noalias !5561

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5561
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !5561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5561
  call void @llvm.experimental.noalias.scope.decl(metadata !5586)
  %.val.i76.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !5587, !noalias !5558 ; 2 uses
  %i.bw = icmp eq i64 %.val.i76.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i76.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5588
  br label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.w, %bb.u
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bx = call noundef i32 @close(i32 noundef %i.bc) #36, !noalias !5561 ; 0 uses
  br label %.body71.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.8.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.8.copyload.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ @125, %bb.q ]
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.07.0.copyload.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5561
  %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !5573
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !5561
  %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.10.8.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !5573
  %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !5573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5561
  br label %bb.aa

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.body71.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.028.0.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %.body.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !5589)
  call void @llvm.experimental.noalias.scope.decl(metadata !5590)
  %.val.i.i79.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !5591, !noalias !5558 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i79.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %.body.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val1.i.i80.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !5591, !noalias !5558, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i80.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i79.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5592
  br label %.body.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBN_11UringReader4open000ECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(64) %i.u) #41, !noalias !5558
  br label %.body.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @211, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #40
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.av, !noalias !5555

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ap, %bb.an, %bb.am, %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.ap ], [ %i.cb, %bb.an ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.am ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.body.i.i.i.i.i.i unwind label %bb.aq, !noalias !5554

bb.aq:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5554
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.sroa.9.0.copyload.i.i.i = phi ptr [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.bs, %bb.ah ], [ %i.bs, %bb.ai ] ; 3 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ undef, %bb.ah ], [ undef, %bb.ai ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ -1, %bb.ah ], [ -1, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5558
  store i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !5593, !noalias !5552
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !5594
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.7.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !5593, !noalias !5552
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.9.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5593, !noalias !5552
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5593, !noalias !5552
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !5594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5558
  %i.ce = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.av, !noalias !5555

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5554
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5552
  store i32 2, ptr %i.w, align 8, !noalias !5552
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.w)
          to label %bb.at unwind label %bb.as, !noalias !5552

bb.as:                                            ; preds = %bb.ar
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.x) #41
          to label %.body.i.i.i.i.i.i unwind label %bb.au, !noalias !5552

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5552
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5552
  unreachable

bb.av:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, %bb.ao, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.av, %bb.as, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5555
  store i32 2, ptr %i.g, align 8, !noalias !5555
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g)
          to label %.body.i.i.i unwind label %bb.aw, !noalias !5555

bb.aw:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5555
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5555
  %i.cj = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ck = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cj)
          to label %.thread.i.i.i unwind label %bb.ax ; 2 uses

bb.ax:                                            ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.cm = extractvalue { ptr, ptr } %i.ck, 0      ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.ck, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  br label %bb.az

bb.ay:                                            ; preds = %bb.at, %.noexc2.i.i.i.i.i.i
  %.sroa.080.0.copyload.i.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.co = load <2 x i64>, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.5.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5552
  %i.cp = ptrtoint ptr %.sroa.080.0.copyload.i.i.i to i64
  %.sroa.080.0.extract.trunc.i.i.i = trunc i64 %i.cp to i8
  switch i8 %.sroa.080.0.extract.trunc.i.i.i, label %bb.ba [
    i8 -3, label %bb.az
    i8 -2, label %bb.bn
  ], !prof !73

bb.az:                                            ; preds = %bb.ay, %.thread.i.i.i
  %.sroa.85.0102.i.i.i = phi ptr [ %i.cm, %.thread.i.i.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.10.0101.i.i.i = phi ptr [ %i.cn, %.thread.i.i.i ], [ %i.ce, %bb.ay ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.85.0102.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0101.i.i.i) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load i64, ptr %i.cq, align 8, !range !32, !noundef !24
  %i.cs = ptrtoint ptr %.sroa.10.0101.i.i.i to i64
  %i.ct = inttoptr i64 %i.cr to ptr
  %i.cu = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.cs, i64 0
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.5.sroa.5.i.i.i, i64 16, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.6.sroa.7.0.i.i.i = phi ptr [ %i.ce, %bb.ba ], [ %.sroa.85.0102.i.i.i, %bb.az ]
  %.sroa.6.sroa.5.0.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %bb.ba ], [ %i.ct, %bb.az ]
  %.sroa.082.1.insert.insert.i.i.i = phi ptr [ %.sroa.080.0.copyload.i.i.i, %bb.ba ], [ inttoptr (i64 254 to ptr), %bb.az ]
  %i.cv = phi <2 x i64> [ %i.co, %bb.ba ], [ %i.cu, %bb.az ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5595
  store ptr %.sroa.082.1.insert.insert.i.i.i, ptr %i.cw, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.sroa.5.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.cv, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !noalias !5595
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %.thread113.i.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  %i.cz = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cy)
          to label %bb.be unwind label %bb.bd     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

.thread113.i.i.i:                                 ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5595
  br label %bb.bo

bb.be:                                            ; preds = %bb.bc
  %i.db = extractvalue { ptr, ptr } %i.cz, 0      ; 4 uses
  %i.dc = extractvalue { ptr, ptr } %i.cz, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = load ptr, ptr %i.dc, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void %i.dd(ptr noundef nonnull %i.db)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.bo, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) %i.di) #36
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.bh
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) %i.do) #36
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.by, %bb.bx, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bh
  %common.resume.op.i = phi { ptr, i32 } [ %i.eh, %bb.by ], [ %i.eg, %bb.bx ], [ %i.dj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dj, %bb.bh ]
  resume { ptr, i32 } %common.resume.op.i

bb.bi:                                            ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 2, ptr %i.d, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d)
          to label %bb.bl unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  %i.ds = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.dr)
          to label %bb.bm unwind label %bb.bk     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.du = extractvalue { ptr, ptr } %i.ds, 0
  %i.dv = extractvalue { ptr, ptr } %i.ds, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bl ], [ %i.dv, %bb.bm ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bl ], [ %i.du, %bb.bm ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !32, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 -2, ptr %i.dw, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.e, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bu

bb.bn:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.dx = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.dx, label %default.unreachable [
    i8 3, label %bb.bp
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit
    i8 1, label %bb.bv
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  ]

bb.bo:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bg, %.thread113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  %i.ea = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.dz)
          to label %bb.bt unwind label %bb.br     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.ec = extractvalue { ptr, ptr } %i.ea, 0
  %i.ed = extractvalue { ptr, ptr } %i.ea, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i: ; preds = %bb.bt, %bb.bs
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.bs ], [ %i.ed, %bb.bt ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.bs ], [ %i.ec, %bb.bt ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.ad, align 8, !range !32, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 -2, ptr %i.ee, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.02.0.i4.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i5.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.63.0.i2.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i, align 8
  store i32 1, ptr %i.c, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bu

bb.bu:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i, %bb.bo, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE8completeCsjsY2yM364a4_11lance_tools(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

bb.bv:                                            ; preds = %bb.bn
  call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noundef nonnull %0)
  %i.ef = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.ef, label %bb.bw, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2f_11UringReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.bw
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.bn, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2f_11UringReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.by

bb.by:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.bn, %bb.bu, %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1B_17LocalObjectReader17open_with_tracker000ENtNtBT_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 8 uses
  %i.f = alloca [88 x i8], align 8                ; 9 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1B_17LocalObjectReader17open_with_tracker000ENtNtBT_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !5678
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !5666 ; 2 uses
  %.sroa.9.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.9.8.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !5678 ; 2 uses
  %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !5678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5666
  call void @llvm.experimental.noalias.scope.decl(metadata !5688)
  call void @llvm.experimental.noalias.scope.decl(metadata !5689)
  %.val.i.i54.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !5690, !noalias !5663 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i54.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val1.i.i55.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !5690, !noalias !5663, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i55.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i54.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5691
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !5692)
  call void @llvm.experimental.noalias.scope.decl(metadata !5693)
  %.val.i.i2.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !5694, !noalias !5663 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i2.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.val1.i.i3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !5694, !noalias !5663, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5695
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5696)
  call void @llvm.experimental.noalias.scope.decl(metadata !5697)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !5698, !noalias !5663, !nonnull !24, !noundef !24
  %i.ce = atomicrmw add ptr %i.cd, i64 -1 release, align 8, !noalias !5699
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.aj, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i unwind label %bb.ar, !noalias !5659

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.body45.i.i.i.i.i.i.i.i.i.i
  br i1 %cond.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !5700)
  call void @llvm.experimental.noalias.scope.decl(metadata !5701)
  %.val.i.i56.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !5702, !noalias !5663 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i56.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ch, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.val1.i.i57.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !5702, !noalias !5663, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i56.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5703
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5704)
  call void @llvm.experimental.noalias.scope.decl(metadata !5705)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !5706, !noalias !5663, !nonnull !24, !noundef !24
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !5707
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.an, label %.body.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !5680

bb.ao:                                            ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtBM_17LocalObjectReader17open_with_tracker000ECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(80) %i.q) #41
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !5663

bb.ap:                                            ; preds = %bb.ao
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5663
  unreachable

bb.aq:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @211, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #40
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.ax, !noalias !5660

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aj, %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ar, %bb.ao, %bb.an, %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cp, %bb.ar ], [ %.pn39.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ %i.cn, %bb.ao ], [ %.pn39.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pn39.i.i.i.i.i.i.i.i.i.i, %bb.am ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.body.i.i.i.i.i.i unwind label %bb.as, !noalias !5659

bb.as:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5659
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ab
  %.sroa.13.0.copyload.i.i.i = phi ptr [ @135, %bb.ac ], [ %.sroa.9.8.copyload.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ @135, %bb.ab ], [ %.sroa.9.8.copyload.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 3 uses
  %.sroa.9.0.copyload.i.i.i = phi ptr [ %i.bp, %bb.ac ], [ %.sroa.7.8.copyload.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.ab ], [ %.sroa.7.8.copyload.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 3 uses
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.ac ], [ %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ab ], [ %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.aj ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ -1, %bb.ac ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ab ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5663
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !5708, !noalias !5657
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !5709
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %.sroa.6.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !5708, !noalias !5657
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.9.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5708, !noalias !5657
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.13.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5708, !noalias !5657
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !5709
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5663
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.ax, !noalias !5660

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5659
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5657
  store i32 2, ptr %i.s, align 8, !noalias !5657
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.s)
          to label %bb.av unwind label %bb.au, !noalias !5657

bb.au:                                            ; preds = %bb.at
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.t) #41
          to label %.body.i.i.i.i.i.i unwind label %bb.aw, !noalias !5657

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5657
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5657
  unreachable

bb.ax:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, %bb.aq, %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ax, %bb.au, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ct, %bb.ax ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5660
  store i32 2, ptr %i.g, align 8, !noalias !5660
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.g)
          to label %.body.i.i.i unwind label %bb.ay, !noalias !5660

bb.ay:                                            ; preds = %.body.i.i.i.i.i.i
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5660
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5660
  %i.cv = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.cw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cv)
          to label %.thread.i.i.i unwind label %bb.az ; 2 uses

bb.az:                                            ; preds = %.body.i.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.cy = extractvalue { ptr, ptr } %i.cw, 0      ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av, %.noexc2.i.i.i.i.i.i
  %.sroa.080.0.copyload.i.i.i = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.da = load <2 x i64>, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.5.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5657
  %i.db = ptrtoint ptr %.sroa.080.0.copyload.i.i.i to i64
  %.sroa.080.0.extract.trunc.i.i.i = trunc i64 %i.db to i8
  switch i8 %.sroa.080.0.extract.trunc.i.i.i, label %bb.bc [
    i8 -3, label %bb.bb
    i8 -2, label %bb.bp
  ], !prof !73

bb.bb:                                            ; preds = %bb.ba, %.thread.i.i.i
  %.sroa.85.0102.i.i.i = phi ptr [ %i.cy, %.thread.i.i.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.10.0101.i.i.i = phi ptr [ %i.cz, %.thread.i.i.i ], [ %.sroa.13.0.copyload.i.i.i, %bb.ba ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.85.0102.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0101.i.i.i) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !range !32, !noundef !24
  %i.de = ptrtoint ptr %.sroa.10.0101.i.i.i to i64
  %i.df = inttoptr i64 %i.dd to ptr
  %i.dg = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.de, i64 0
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.5.sroa.5.i.i.i, i64 16, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.6.sroa.7.0.i.i.i = phi ptr [ %.sroa.13.0.copyload.i.i.i, %bb.bc ], [ %.sroa.85.0102.i.i.i, %bb.bb ]
  %.sroa.6.sroa.5.0.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %bb.bc ], [ %i.df, %bb.bb ]
  %.sroa.082.1.insert.insert.i.i.i = phi ptr [ %.sroa.080.0.copyload.i.i.i, %bb.bc ], [ inttoptr (i64 254 to ptr), %bb.bb ]
  %i.dh = phi <2 x i64> [ %i.da, %bb.bc ], [ %i.dg, %bb.bb ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5710
  store ptr %.sroa.082.1.insert.insert.i.i.i, ptr %i.di, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.sroa.5.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.dh, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !noalias !5710
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f)
          to label %.thread113.i.i.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  %i.dl = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.dk)
          to label %bb.bg unwind label %bb.bf     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

.thread113.i.i.i:                                 ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5710
  br label %bb.bq

bb.bg:                                            ; preds = %bb.be
  %i.dn = extractvalue { ptr, ptr } %i.dl, 0      ; 4 uses
  %i.do = extractvalue { ptr, ptr } %i.dl, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void %i.dp(ptr noundef nonnull %i.dn)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.bq, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bi
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) %i.du) #36
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.bj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) %i.ea) #36
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ca, %bb.bz, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bj
  %common.resume.op.i = phi { ptr, i32 } [ %i.et, %bb.ca ], [ %i.es, %bb.bz ], [ %i.dv, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dv, %bb.bj ]
  resume { ptr, i32 } %common.resume.op.i

bb.bk:                                            ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 2, ptr %i.d, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.eb, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.d)
          to label %bb.bn unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  %i.ee = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ed)
          to label %bb.bo unwind label %bb.bm     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i

bb.bo:                                            ; preds = %bb.bl
  %i.eg = extractvalue { ptr, ptr } %i.ee, 0
  %i.eh = extractvalue { ptr, ptr } %i.ee, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.bo, %bb.bn
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bn ], [ %i.eh, %bb.bo ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bn ], [ %i.eg, %bb.bo ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !32, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 -2, ptr %i.ei, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.e, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.eb, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bw

bb.bp:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.ej = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.ej, label %default.unreachable [
    i8 3, label %bb.br
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit
    i8 1, label %bb.bx
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  ]

bb.bq:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bi, %.thread113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.bw

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b)
          to label %bb.bu unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  %i.em = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.el)
          to label %bb.bv unwind label %bb.bt     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i

bb.bv:                                            ; preds = %bb.bs
  %i.eo = extractvalue { ptr, ptr } %i.em, 0
  %i.ep = extractvalue { ptr, ptr } %i.em, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i: ; preds = %bb.bv, %bb.bu
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.bu ], [ %i.ep, %bb.bv ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.bu ], [ %i.eo, %bb.bv ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.z, align 8, !range !32, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 -2, ptr %i.eq, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.02.0.i4.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i5.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.63.0.i2.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i, align 8
  store i32 1, ptr %i.c, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bw

bb.bw:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i, %bb.bq, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE8completeCsjsY2yM364a4_11lance_tools(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

bb.bx:                                            ; preds = %bb.bp
  call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noundef nonnull %0)
  %i.er = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.er, label %bb.by, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2e_17LocalObjectReader17open_with_tracker000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.by
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.bp, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2e_17LocalObjectReader17open_with_tracker000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.ca

bb.ca:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.bp, %bb.bw, %bb.bx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1B_24UringCurrentThreadReader4open000ENtNtBT_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [72 x i8], align 8                ; 9 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1B_24UringCurrentThreadReader4open000ENtNtBT_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bq, align 8, !noalias !5769
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !5769
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !5793
  %i.bs = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5793 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ae, label %bb.ah, !prof !36

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #40
          to label %.noexc75.i.i.i.i.i.i.i.i.i.i unwind label %bb.af, !noalias !5769

.noexc75.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l) #41
          to label %.body71.i.i.i.i.i.i.i.i.i.i unwind label %bb.ag, !noalias !5769

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5769
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !5769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5769
  call void @llvm.experimental.noalias.scope.decl(metadata !5794)
  %.val.i76.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !5795, !noalias !5766 ; 2 uses
  %i.bw = icmp eq i64 %.val.i76.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i76.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5796
  br label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.w, %bb.u
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bx = call noundef i32 @close(i32 noundef %i.bc) #36, !noalias !5769 ; 0 uses
  br label %.body71.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.8.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.8.copyload.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ @131, %bb.q ]
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.07.0.copyload.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5769
  %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !5781
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !5769
  %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.10.8.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !5781
  %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !5781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5769
  br label %bb.aa

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.body71.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.028.0.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %.body.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !5797)
  call void @llvm.experimental.noalias.scope.decl(metadata !5798)
  %.val.i.i79.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !5799, !noalias !5766 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i79.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %.body.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val1.i.i80.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !5799, !noalias !5766, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i80.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i79.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5800
  br label %.body.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtBM_24UringCurrentThreadReader4open000ECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(64) %i.u) #41, !noalias !5766
  br label %.body.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @211, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #40
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.av, !noalias !5763

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ap, %bb.an, %bb.am, %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.ap ], [ %i.cb, %bb.an ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.am ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.body.i.i.i.i.i.i unwind label %bb.aq, !noalias !5762

bb.aq:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5762
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.sroa.9.0.copyload.i.i.i = phi ptr [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.bs, %bb.ah ], [ %i.bs, %bb.ai ] ; 3 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ undef, %bb.ah ], [ undef, %bb.ai ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ -1, %bb.ah ], [ -1, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5766
  store i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !5801, !noalias !5760
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !5802
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.7.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !5801, !noalias !5760
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.9.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5801, !noalias !5760
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5801, !noalias !5760
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !5802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5766
  %i.ce = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.av, !noalias !5763

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5762
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5760
  store i32 2, ptr %i.w, align 8, !noalias !5760
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.w)
          to label %bb.at unwind label %bb.as, !noalias !5760

bb.as:                                            ; preds = %bb.ar
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.x) #41
          to label %.body.i.i.i.i.i.i unwind label %bb.au, !noalias !5760

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5760
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5760
  unreachable

bb.av:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, %bb.ao, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.av, %bb.as, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5763
  store i32 2, ptr %i.g, align 8, !noalias !5763
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g)
          to label %.body.i.i.i unwind label %bb.aw, !noalias !5763

bb.aw:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !5763
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5763
  %i.cj = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ck = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cj)
          to label %.thread.i.i.i unwind label %bb.ax ; 2 uses

bb.ax:                                            ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.cm = extractvalue { ptr, ptr } %i.ck, 0      ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.ck, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ]
  br label %bb.az

bb.ay:                                            ; preds = %bb.at, %.noexc2.i.i.i.i.i.i
  %.sroa.080.0.copyload.i.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.co = load <2 x i64>, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.5.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5760
  %i.cp = ptrtoint ptr %.sroa.080.0.copyload.i.i.i to i64
  %.sroa.080.0.extract.trunc.i.i.i = trunc i64 %i.cp to i8
  switch i8 %.sroa.080.0.extract.trunc.i.i.i, label %bb.ba [
    i8 -3, label %bb.az
    i8 -2, label %bb.bn
  ], !prof !73

bb.az:                                            ; preds = %bb.ay, %.thread.i.i.i
  %.sroa.85.0102.i.i.i = phi ptr [ %i.cm, %.thread.i.i.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.10.0101.i.i.i = phi ptr [ %i.cn, %.thread.i.i.i ], [ %i.ce, %bb.ay ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.85.0102.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0101.i.i.i) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load i64, ptr %i.cq, align 8, !range !32, !noundef !24
  %i.cs = ptrtoint ptr %.sroa.10.0101.i.i.i to i64
  %i.ct = inttoptr i64 %i.cr to ptr
  %i.cu = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.cs, i64 0
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.5.sroa.5.i.i.i, i64 16, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.6.sroa.7.0.i.i.i = phi ptr [ %i.ce, %bb.ba ], [ %.sroa.85.0102.i.i.i, %bb.az ]
  %.sroa.6.sroa.5.0.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %bb.ba ], [ %i.ct, %bb.az ]
  %.sroa.082.1.insert.insert.i.i.i = phi ptr [ %.sroa.080.0.copyload.i.i.i, %bb.ba ], [ inttoptr (i64 254 to ptr), %bb.az ]
  %i.cv = phi <2 x i64> [ %i.co, %bb.ba ], [ %i.cu, %bb.az ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5803
  store ptr %.sroa.082.1.insert.insert.i.i.i, ptr %i.cw, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.sroa.5.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.cv, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !noalias !5803
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %.thread113.i.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  %i.cz = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cy)
          to label %bb.be unwind label %bb.bd     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

.thread113.i.i.i:                                 ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5803
  br label %bb.bo

bb.be:                                            ; preds = %bb.bc
  %i.db = extractvalue { ptr, ptr } %i.cz, 0      ; 4 uses
  %i.dc = extractvalue { ptr, ptr } %i.cz, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = load ptr, ptr %i.dc, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void %i.dd(ptr noundef nonnull %i.db)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.bo, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) %i.di) #36
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.bh
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !range !43, !invariant.load !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) %i.do) #36
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.by, %bb.bx, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bh
  %common.resume.op.i = phi { ptr, i32 } [ %i.eh, %bb.by ], [ %i.eg, %bb.bx ], [ %i.dj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dj, %bb.bh ]
  resume { ptr, i32 } %common.resume.op.i

bb.bi:                                            ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 2, ptr %i.d, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d)
          to label %bb.bl unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  %i.ds = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.dr)
          to label %bb.bm unwind label %bb.bk     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.du = extractvalue { ptr, ptr } %i.ds, 0
  %i.dv = extractvalue { ptr, ptr } %i.ds, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bl ], [ %i.dv, %bb.bm ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bl ], [ %i.du, %bb.bm ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !32, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 -2, ptr %i.dw, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.e, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bu

bb.bn:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.dx = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.dx, label %default.unreachable [
    i8 3, label %bb.bp
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit
    i8 1, label %bb.bv
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  ]

bb.bo:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bg, %.thread113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  %i.ea = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.dz)
          to label %bb.bt unwind label %bb.br     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42
  unreachable

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.ec = extractvalue { ptr, ptr } %i.ea, 0
  %i.ed = extractvalue { ptr, ptr } %i.ea, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i: ; preds = %bb.bt, %bb.bs
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.bs ], [ %i.ed, %bb.bt ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.bs ], [ %i.ec, %bb.bt ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.ad, align 8, !range !32, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 -2, ptr %i.ee, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.02.0.i4.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i5.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.63.0.i2.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i, align 8
  store i32 1, ptr %i.c, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bu

bb.bu:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit8.i.i, %bb.bo, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE8completeCsjsY2yM364a4_11lance_tools(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

bb.bv:                                            ; preds = %bb.bn
  call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noundef nonnull %0)
  %i.ef = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.ef, label %bb.bw, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2e_24UringCurrentThreadReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.bw
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.bn, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2e_24UringCurrentThreadReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i unwind label %bb.by

bb.by:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsjsY2yM364a4_11lance_tools.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #36
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.bn, %bb.bu, %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw7deallocINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1F_11UringReader4open000ENtNtBW_8schedule16BlockingScheduleECsjsY2yM364a4_11lance_tools(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2f_11UringReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RNCINvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtB8_5CacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBW_16CachedReaderDataE3getBU_E0CsjsY2yM364a4_11lance_tools:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6597)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6547
  store i64 %.sroa.0.0.i45.i.i.i.i.i, ptr %i.i, align 8, !noalias !6598
  %i.lg = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lf, i64 noundef %.sroa.0.0.i45.i.i.i.i.i)
          to label %.noexc48.i.i.i.i.i unwind label %bb.bq, !noalias !6547 ; 2 uses

.noexc48.i.i.i.i.i:                               ; preds = %bb.bx
  %i.lh = extractvalue { i64, i32 } %i.lg, 0      ; 2 uses
  %i.li = extractvalue { i64, i32 } %i.lg, 1      ; 2 uses
  %i.lj = load ptr, ptr %i.ge, align 8, !alias.scope !6597, !noalias !6547, !nonnull !24, !noundef !24 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24 ; 5 uses
  %i.ll = load atomic i64, ptr %i.lk acquire, align 8, !noalias !6599 ; 2 uses
  %i.lm = and i64 %i.ll, -4096
  %i.ln = icmp ult i64 %i.ll, -4096               ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i = zext i1 %i.ln to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6598
  %.not.i46.i.i.i.i.i = icmp eq i32 %i.la, -1
  br i1 %.not.i46.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.noexc48.i.i.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.lp = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.lo)
          to label %.noexc49.i.i.i.i.i unwind label %bb.bq, !noalias !6547 ; 2 uses

.noexc49.i.i.i.i.i:                               ; preds = %bb.by
  %i.lq = extractvalue { i64, i64 } %i.lp, 0
  %i.lr = trunc nuw i64 %i.lq to i1
  br i1 %i.lr, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.noexc50.i.i.i.i.i, %.noexc49.i.i.i.i.i, %.noexc48.i.i.i.i.i
  %.sroa.613.0.i.i.i.i.i.i = phi i64 [ undef, %.noexc48.i.i.i.i.i ], [ %i.lu, %.noexc50.i.i.i.i.i ], [ undef, %.noexc49.i.i.i.i.i ]
  %i.ls = phi i64 [ 0, %.noexc48.i.i.i.i.i ], [ 1, %.noexc50.i.i.i.i.i ], [ 0, %.noexc49.i.i.i.i.i ] ; 2 uses
  %.not114.i.i.i.i.i.i = icmp eq i32 %i.le, -1
  br i1 %.not114.i.i.i.i.i.i, label %.split.preheader.i.i.i.i.i.i.i.i.i, label %bb.cb

bb.ca:                                            ; preds = %.noexc49.i.i.i.i.i
  %i.lt = extractvalue { i64, i64 } %i.lp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6598
  store i64 %i.lt, ptr %i.g, align 8, !noalias !6598
  %i.lu = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %i.ky, i32 noundef range(i32 -1, 1000000000) %i.la)
          to label %.noexc50.i.i.i.i.i unwind label %bb.bq, !noalias !6547

.noexc50.i.i.i.i.i:                               ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6598
  br label %bb.bz

bb.cb:                                            ; preds = %bb.bz
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lw = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.lv)
          to label %.noexc51.i.i.i.i.i unwind label %bb.bq, !noalias !6547 ; 2 uses

.noexc51.i.i.i.i.i:                               ; preds = %bb.cb
  %i.lx = extractvalue { i64, i64 } %i.lw, 0
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.cd, label %.split.preheader.i.i.i.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc52.i.i.i.i.i, %.noexc51.i.i.i.i.i, %bb.bz
  %.sroa.615.0.i.i.i.i.i.i = phi i64 [ undef, %bb.bz ], [ %i.nh, %.noexc52.i.i.i.i.i ], [ undef, %.noexc51.i.i.i.i.i ]
  %i.lz = phi i64 [ 0, %bb.bz ], [ 1, %.noexc52.i.i.i.i.i ], [ 0, %.noexc51.i.i.i.i.i ] ; 2 uses
  %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %.sroa.042.0.i.i.i.i.i.i, ptr %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.lm, ptr %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %i.ls, ptr %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.sroa.613.0.i.i.i.i.i.i, ptr %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store i64 %i.lz, ptr %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %.sroa.615.0.i.i.i.i.i.i, ptr %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.488.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 -1, ptr %.sroa.488.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  %.sroa.690.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 -1, ptr %.sroa.690.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6598
  call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  br i1 %i.ln, label %bb.cc, label %.split.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %.split.preheader.i.i.i.i.i.i.i.i.i
  %i.ma = trunc nuw i64 %i.ls to i1
  br i1 %i.ma, label %bb.cc, label %.split.i.i.i.1.i.i.i.i.i.i

.split.i.i.i.1.i.i.i.i.i.i:                       ; preds = %.split.i.i.i.i.i.i.i.i.i
  %i.mb = trunc nuw i64 %i.lz to i1
  br i1 %i.mb, label %bb.cc, label %.split.i.i.i.2.i.i.i.i.i.i

.split.i.i.i.2.i.i.i.i.i.i:                       ; preds = %.split.i.i.i.1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6598
  br label %bb.ce

bb.cc:                                            ; preds = %.split.i.i.i.1.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi i64 [ 1, %.split.preheader.i.i.i.i.i.i.i.i.i ], [ 2, %.split.i.i.i.i.i.i.i.i.i ], [ 3, %.split.i.i.i.1.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i.i.i, %.split.i.i.i.1.i.i.i.i.i.i ]
  store i64 %.lcssa13.i.i.i.i.i.i, ptr %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6601, !noalias !6598
  %i.mc = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i.i, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !alias.scope !6601, !noalias !6598 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i.i.i, i64 64, i1 false), !noalias !6598
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6603)
  call void @llvm.experimental.noalias.scope.decl(metadata !6604)
  %i.mf = load i64, ptr %i.d, align 8, !alias.scope !6605, !noalias !6602, !noundef !24 ; 8 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !alias.scope !6605, !noalias !6602, !noundef !24 ; 5 uses
  %i.mi = icmp ule i64 %i.mf, %i.mh
  call void @llvm.assume(i1 %i.mi)
  %.not8.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mf, %i.mh
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.cc
  %i.mj = sub i64 %i.mh, %i.mf
  %.neg = add i64 %i.mf, 1
  %xtraiter = and i64 %i.mj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.mk = add nuw nsw i64 %i.mf, 1
  %i.ml = icmp ult i64 %i.mf, 3
  call void @llvm.assume(i1 %i.ml)
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.mf ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !range !28, !alias.scope !6606, !noalias !6602, !noundef !24
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !alias.scope !6606, !noalias !6602
  %i.mq = trunc nuw i64 %i.mn to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = call i64 @llvm.umin.i64(i64 %i.md, i64 %i.mp)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = select i1 %i.mq, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 %i.md ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.md, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %i.mf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.mr = icmp eq i64 %i.mh, %.neg
  br i1 %i.mr, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ms = phi i64 [ %i.my, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.ms ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !range !28, !alias.scope !6606, !noalias !6602, !noundef !24
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !alias.scope !6606, !noalias !6602
  %i.mx = trunc nuw i64 %i.mu to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i, i64 %i.mw)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.mx, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.my = add nuw nsw i64 %i.ms, 2                ; 2 uses
  %i.mz = icmp ult i64 %i.ms, 2
  call void @llvm.assume(i1 %i.mz)
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.ms ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !range !28, !alias.scope !6606, !noalias !6602, !noundef !24
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !6606, !noalias !6602
  %i.nf = trunc nuw i64 %i.nc to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ne)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.nf, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.my, %i.mh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %.noexc51.i.i.i.i.i
  %i.ng = extractvalue { i64, i64 } %i.lw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6598
  store i64 %i.ng, ptr %i.f, align 8, !noalias !6598
  %i.nh = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.lc, i32 noundef range(i32 -1, 1000000000) %i.le)
          to label %.noexc52.i.i.i.i.i unwind label %bb.bq, !noalias !6547

.noexc52.i.i.i.i.i:                               ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6598
  br label %.split.preheader.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.md, %bb.cc ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6598
  %i.ni = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lf, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc53.i.i.i.i.i unwind label %bb.bq, !noalias !6547 ; 2 uses

.noexc53.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i
  %i.nj = extractvalue { i64, i32 } %i.ni, 0
  %i.nk = extractvalue { i64, i32 } %i.ni, 1
  store i64 %i.nj, ptr %i.e, align 8, !noalias !6598
  %i.nl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.nk, ptr %i.nl, align 8, !noalias !6598
  %i.nm = invoke { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %i.lh, i32 noundef %i.li)
          to label %.noexc54.i.i.i.i.i unwind label %bb.bq, !noalias !6547 ; 2 uses

.noexc54.i.i.i.i.i:                               ; preds = %.noexc53.i.i.i.i.i
  %i.nn = extractvalue { i64, i32 } %i.nm, 0
  %i.no = extractvalue { i64, i32 } %i.nm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6598
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc54.i.i.i.i.i, %.split.i.i.i.2.i.i.i.i.i.i
  %.sroa.820.0.i.i.i.i.i.i = phi i32 [ %i.no, %.noexc54.i.i.i.i.i ], [ -1, %.split.i.i.i.2.i.i.i.i.i.i ] ; 5 uses
  %.sroa.016.0.i.i.i.i.i.i = phi i64 [ %i.nn, %.noexc54.i.i.i.i.i ], [ undef, %.split.i.i.i.2.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36.i.i.i.i.i) ]
  %i.np = getelementptr inbounds nuw i8, ptr %.val36.i.i.i.i.i, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !range !43, !invariant.load !24, !noalias !6607
  %i.nr = add nsw i64 %i.nq, -1
  %i.ns = and i64 %i.nr, -16
  %i.nt = getelementptr inbounds nuw i8, ptr %.val35.i.i.i.i.i, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %.val36.i.i.i.i.i, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !invariant.load !24, !noalias !6607, !nonnull !24
  %i.nx = invoke { i64, i32 } %i.nw(ptr noundef nonnull %i.nu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gd, i64 noundef %i.lh, i32 noundef range(i32 0, 1000000000) %i.li, i64 %.sroa.016.0.i.i.i.i.i.i, i32 noundef range(i32 -1, 1000000000) %.sroa.820.0.i.i.i.i.i.i, i64 noundef %i.kq, i32 noundef %i.kr)
          to label %.noexc55.i.i.i.i.i unwind label %bb.bq, !noalias !6547, !inline_history !6508 ; 2 uses

.noexc55.i.i.i.i.i:                               ; preds = %bb.ce
  %i.ny = extractvalue { i64, i32 } %i.nx, 0      ; 2 uses
  %i.nz = extractvalue { i64, i32 } %i.nx, 1      ; 4 uses
  %.not115.not.i.i.i.i.i.i = icmp eq i32 %i.nz, -1
  br i1 %.not115.not.i.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.noexc55.i.i.i.i.i
  %.not117.i.i.i.i.i.i = icmp ne i32 %.sroa.820.0.i.i.i.i.i.i, -1
  %i.oa = icmp eq i64 %i.ny, %.sroa.016.0.i.i.i.i.i.i
  %or.cond.i47.i.i.i.i.i = select i1 %.not117.i.i.i.i.i.i, i1 %i.oa, i1 false
  br i1 %or.cond.i47.i.i.i.i.i, label %bb.ch, label %.split.us.i.preheader.i.i.i.i.i.i

bb.cg:                                            ; preds = %.noexc55.i.i.i.i.i
  %.not116.i.i.i.i.i.i = icmp eq i32 %.sroa.820.0.i.i.i.i.i.i, -1
  br i1 %.not116.i.i.i.i.i.i, label %.loopexit.i25.i.i.i.i, label %.split.i.i.i.i.i.i.i

.split.us.i.preheader.i.i.i.i.i.i:                ; preds = %bb.ch, %bb.cf
  %i.ob = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, i64 noundef %i.ny, i32 noundef %i.nz)
          to label %.noexc56.i.i.i.i.i unwind label %bb.bq, !noalias !6547

.noexc56.i.i.i.i.i:                               ; preds = %.split.us.i.preheader.i.i.i.i.i.i
  %i.oc = call i64 @llvm.umin.i64(i64 %i.ob, i64 -4097)
  %i.od = and i64 %i.oc, -4096
  br label %.split.us.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i:                          ; preds = %.split.us.i.i.i.i.i.i.i, %.noexc56.i.i.i.i.i
  %i.oe = load atomic i64, ptr %i.lk acquire, align 8, !noalias !6547 ; 2 uses
  %i.of = add i64 %i.oe, 1
  %i.og = and i64 %i.of, 4095
  %i.oh = or disjoint i64 %i.og, %i.od
  %i.oi = cmpxchg weak ptr %i.lk, i64 %i.oe, i64 %i.oh acq_rel acquire, align 8, !noalias !6547
  %i.oj = extractvalue { i64, i1 } %i.oi, 1
  br i1 %i.oj, label %.loopexit.i25.i.i.i.i, label %.split.us.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.cg, %.split.i.i.i.i.i.i.i
  %i.ok = load atomic i64, ptr %i.lk acquire, align 8, !noalias !6547 ; 2 uses
  %i.ol = add i64 %i.ok, 1
  %i.om = or i64 %i.ol, -4096
  %i.on = cmpxchg weak ptr %i.lk, i64 %i.ok, i64 %i.om acq_rel acquire, align 8, !noalias !6547
  %i.oo = extractvalue { i64, i1 } %i.on, 1
  br i1 %i.oo, label %.loopexit.i25.i.i.i.i, label %.split.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.op = icmp ult i32 %i.nz, 1000000000
  call void @llvm.assume(i1 %i.op)
  %i.oq = icmp ult i32 %.sroa.820.0.i.i.i.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.oq)
  %.not118.i.i.i.i.i.i = icmp eq i32 %i.nz, %.sroa.820.0.i.i.i.i.i.i
  br i1 %.not118.i.i.i.i.i.i, label %.loopexit.i25.i.i.i.i, label %.split.us.i.preheader.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cq, %bb.bs
  %i.or = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !6547
  unreachable

bb.cj:                                            ; preds = %.noexc35.i.i.i.i
  %i.os = atomicrmw add ptr %.val22.i.i.i.i, i64 1 monotonic, align 8, !noalias !6547
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.noexc35.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ null, %.noexc35.i.i.i.i ], [ %.val22.i.i.i.i, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6547
  %.val.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !noalias !6547, !nonnull !24, !noundef !24 ; 2 uses
  %i.ou = getelementptr i8, ptr %.val23.i.i.i.i, i64 16
  %.val22.i.i.i.i.i = load i64, ptr %i.ou, align 8, !noalias !6547
  %i.ov = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !6547
  %i.ow = icmp slt i64 %i.ov, 0
  br i1 %i.ow, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.trap()
  unreachable

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.trap()
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %i.ox = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.04.0.i.i.i.i.i, ptr %i.ox, align 8, !noalias !6547
  store ptr %.val.i.i.i.i.i, ptr %i.o, align 8, !noalias !6547
  %i.oy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.val22.i.i.i.i.i, ptr %i.oy, align 8, !noalias !6547
  %i.oz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 0, ptr %i.oz, align 8, !noalias !6547
  %i.pa = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  store i8 0, ptr %i.pa, align 1, !noalias !6547
  %i.pb = trunc nuw i8 %i.cz to i1
  br i1 %i.pb, label %bb.co, label %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.pc = atomicrmw add ptr %.val23.i.i.i.i, i32 1 monotonic, align 4, !noalias !6547
  %i.pd = icmp slt i32 %i.pc, 0
  br i1 %i.pd, label %bb.cp, label %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, !prof !29

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
          to label %.noexc58.i.i.i.i.i unwind label %bb.cq, !noalias !6547

.noexc58.i.i.i.i.i:                               ; preds = %bb.cp
  unreachable

_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %.sroa.3.sroa.3.0.i.i.i.i.i = phi ptr [ undef, %bb.cn ], [ %.val23.i.i.i.i, %bb.co ]
  %.sroa.05.0.i.i.i.i.i = phi i8 [ 2, %bb.cn ], [ 0, %bb.co ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.01.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %i.o, i64 25, i1 false), !noalias !6608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6547
  br label %_RNCNCINvMs2_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBa_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB18_16CachedReaderDataE13get_with_hashB16_FG_RL0_B1V_EbE00CsjsY2yM364a4_11lance_tools.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1m_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.o) #41
          to label %.body.thread.i.i.i.i unwind label %bb.ci, !noalias !6547

.thread24.i.i.i.i:                                ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvMsb_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBX_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE22get_key_value_and_thenB1P_NCNCINvMs2_BX_INtBX_9BaseCacheB1P_B2E_E13get_with_hashB1P_FG_RL0_B2E_EbE00TINtNtNtB11_6common5entry5EntryB1P_B2E_EINtNtBb_6option6OptionINtNtB5A_10concurrent6ReadOpB1P_B2E_EENtNtNtB5A_4time7instant7InstantEE0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1P_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.peel.i.i.i.i.i, %bb.ac, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvMsb_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBX_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE22get_key_value_and_thenB1P_NCNCINvMs2_BX_INtBX_9BaseCacheB1P_B2E_E13get_with_hashB1P_FG_RL0_B2E_EbE00TINtNtNtB11_6common5entry5EntryB1P_B2E_EINtNtBb_6option6OptionINtNtB5A_10concurrent6ReadOpB1P_B2E_EENtNtNtB5A_4time7instant7InstantEE0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1P_EEE8call_mutCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i, %bb.af, %.loopexit29.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  store i8 2, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 1, !noalias !6535
  br label %bb.cr

bb.cr:                                            ; preds = %_RNCNCINvMs2_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBa_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB18_16CachedReaderDataE13get_with_hashB16_FG_RL0_B1V_EbE00CsjsY2yM364a4_11lance_tools.exit.i.i.i.i, %.thread24.i.i.i.i
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsjsY2yM364a4_11lance_tools(ptr nonnull %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noundef nonnull align 8 %i.dp, ptr noundef nonnull align 8 %.sroa.09.060.i.i.i.i)
          to label %bb.cs unwind label %bb.cx, !noalias !6535

_RNCNCINvMs2_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBa_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB18_16CachedReaderDataE13get_with_hashB16_FG_RL0_B1V_EbE00CsjsY2yM364a4_11lance_tools.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit.thread.sink.split.i.i.i.i.i, %.noexc32.i.i.i.i, %bb.ao, %.noexc30.i.i.i.i, %bb.am, %.noexc28.i.i.i.i, %.noexc27.i.i.i.i
  %.sroa.9.0.i.i.i.i = phi i64 [ undef, %.noexc27.i.i.i.i ], [ %.sroa.48.0.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.86.0.i.i.i.i = phi ptr [ undef, %.noexc27.i.i.i.i ], [ %.sroa.3.sroa.3.0.i.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.7.0.i.i.i.i = phi i8 [ undef, %.noexc27.i.i.i.i ], [ %.sroa.03.036.i.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.65.0.i.i.i.i = phi i8 [ undef, %.noexc27.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.4.0.i.i.i.i = phi i8 [ 2, %.noexc27.i.i.i.i ], [ 0, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ 2, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools.exit.thread.sink.split.i.i.i.i.i ], [ 2, %.noexc32.i.i.i.i ], [ 2, %bb.ao ], [ 2, %.noexc30.i.i.i.i ], [ 2, %bb.am ], [ 2, %.noexc28.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.q, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.01.i.i.i.i, i64 25, i1 false), !noalias !6535
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  store i8 %.sroa.4.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !6535
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i8 %.sroa.65.0.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i, align 8, !noalias !6535
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  store i8 %.sroa.7.0.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !noalias !6535
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sroa.86.0.i.i.i.i, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !6535
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.9.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !6535
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i)
  br label %bb.cr

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !noalias !6609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6535
  %i.pf = icmp eq ptr %i.do, null
  br i1 %i.pf, label %bb.db, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pg = getelementptr inbounds nuw i8, ptr %i.do, i64 2072 ; 2 uses
  %i.ph = load i64, ptr %i.pg, align 8, !noalias !6535, !noundef !24 ; 2 uses
  %i.pi = add i64 %i.ph, -1
  store i64 %i.pi, ptr %i.pg, align 8, !noalias !6535
  %i.pj = icmp eq i64 %i.ph, 1
  br i1 %i.pj, label %bb.cu, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.pk = getelementptr inbounds nuw i8, ptr %i.do, i64 2176
  store atomic i64 0, ptr %i.pk release, align 8, !noalias !6535
  %i.pl = getelementptr inbounds nuw i8, ptr %i.do, i64 2080
  %i.pm = load i64, ptr %i.pl, align 8, !noalias !6535, !noundef !24
  %i.pn = icmp eq i64 %i.pm, 0
  br i1 %i.pn, label %bb.cv, label %bb.db, !prof !29

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.do)
          to label %bb.db unwind label %bb.da, !noalias !6528

bb.cw:                                            ; preds = %.loopexit.i.i.i.i
  %.not17.i.i.i.i = icmp eq ptr %i.fk, null
  %spec.select.i.i.i.i = select i1 %.not17.i.i.i.i, ptr %.sroa.09.060.i.i.i.i, ptr %i.fk ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 8
  %i.pp = load i64, ptr %i.po, align 8, !noalias !6536, !noundef !24 ; 2 uses
  %i.pq = add i64 %i.pp, -1                       ; 2 uses
  %i.pr = and i64 %i.pq, %i.ct                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.pp, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %._crit_edge.i.peel.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cr
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1J_16CachedReaderDataEIBC_INtNtB13_10concurrent6ReadOpB1H_B2w_EENtNtNtB13_4time7instant7InstantEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.q) #41
          to label %.body.thread.i.i.i.i unwind label %bb.cy, !noalias !6535

bb.cy:                                            ; preds = %bb.cx, %.body.thread.i.i.i.i
end_hunk_3
begin_hunk_4_@_RNCNvMNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providersNtB4_19ObjectStoreRegistry11build_store0CsjsY2yM364a4_11lance_tools:bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ab:                                            ; preds = %.thread74
  %i.cz = atomicrmw add ptr %i.ci, i64 -1 release, align 8, !noalias !7495
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ac, label %.noexc28

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io12object_store18LocalDirOperationsEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc28 unwind label %bb.aa

.noexc28:                                         ; preds = %bb.ac, %.thread74, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !7496)
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !7496 ; 2 uses
  %i.db = icmp eq i64 %.val.i, 0
  br i1 %i.db, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %.noexc28
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7496, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !7496
  br label %.critedge

.critedge:                                        ; preds = %.noexc28, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !7497)
  call void @llvm.experimental.noalias.scope.decl(metadata !7498)
  call void @llvm.experimental.noalias.scope.decl(metadata !7499)
  %i.dc = load ptr, ptr %.sroa.548.0..sroa_idx, align 8, !alias.scope !7500, !nonnull !24, !noundef !24
  %i.dd = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !7500
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ae, label %.critedge12

bb.ae:                                            ; preds = %.critedge
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEE9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.548.0..sroa_idx)
          to label %.critedge12 unwind label %bb.aa

.critedge13:                                      ; preds = %bb.v, %bb.d, %bb.h, %bb.n, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.af, %.critedge12
  %.sroa.9.2 = phi ptr [ %.sroa.9.0, %bb.n ], [ %.sroa.9.0, %bb.af ], [ %.sroa.9.0, %.critedge12 ], [ %.sroa.9.0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %.sroa.9.0, %bb.h ], [ %.sroa.9.0.copyload, %bb.d ], [ %.sroa.9.0, %bb.v ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.067, %bb.n ], [ %.sroa.0.067, %bb.af ], [ %.sroa.0.067, %.critedge12 ], [ %.sroa.0.067, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %.sroa.0.067, %bb.h ], [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.067, %bb.v ] ; 2 uses
  %.pn7.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.cg, %bb.af ], [ %i.cg, %.critedge12 ], [ %i.av, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ai, %bb.h ], [ %i.ad, %bb.d ], [ %i.cq, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 193 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !range !25, !noundef !24
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = icmp ne i64 %.sroa.0.2, 0
  %or.cond.not = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond.not, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsjsY2yM364a4_11lance_tools.exit

.critedge12:                                      ; preds = %bb.ae, %.critedge
  call void @llvm.experimental.noalias.scope.decl(metadata !7501)
  %.val.i30 = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !7501 ; 2 uses
  %i.dj = icmp eq i64 %.val.i30, 0
  br i1 %i.dj, label %.critedge13, label %bb.af

bb.af:                                            ; preds = %.critedge12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i31 = load ptr, ptr %i.dk, align 8, !alias.scope !7501, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i31, i64 noundef %.val.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !7501
  br label %.critedge13

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjsY2yM364a4_11lance_tools.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.351, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.3, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.456, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7502)
  call void @llvm.experimental.noalias.scope.decl(metadata !7503)
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !7504, !nonnull !24, !noundef !24
  %i.do = atomicrmw add ptr %i.dn, i64 -1 release, align 8, !noalias !7504
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dm)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit unwind label %bb.z

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.aj, %.critedge13
  store i8 0, ptr %i.df, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7505)
  call void @llvm.experimental.noalias.scope.decl(metadata !7506)
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !7507, !nonnull !24, !noundef !24
  %i.ds = atomicrmw add ptr %i.dr, i64 -1 release, align 8, !noalias !7507
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit36

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsjsY2yM364a4_11lance_tools.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit36 unwind label %bb.aa

bb.aj:                                            ; preds = %.critedge13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.2, i64 noundef %.sroa.0.2, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !7508
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsjsY2yM364a4_11lance_tools.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB16_16CachedReaderDataE6notify0CsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.657 = alloca ptr, align 8                ; 6 uses
  %.sroa.958 = alloca ptr, align 8                ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !range !40, !noundef !24
  switch i8 %i.d, label %default.unreachable75 [
    i8 0, label %bb.c
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.b
  ]

default.unreachable75:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i.i.pre = load ptr, ptr %0, align 8, !alias.scope !7546
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !7546
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 59 ; 2 uses
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.e, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !24, !noundef !24
  store ptr %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.f, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !24, !noundef !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !24
  store ptr %i.n, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.t = load i8, ptr %i.s, align 4, !range !40, !noundef !24
  store i8 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load atomic i8, ptr %i.u acquire, align 8
  %.not64 = icmp eq i8 %i.v, 0
  br i1 %.not64, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  store i8 0, ptr %i.e, align 2
  store i8 0, ptr %i.f, align 1
  %i.x = load ptr, ptr %i.b, align 8, !nonnull !24, !noundef !24
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24
  %i.z = load i64, ptr %i.q, align 8, !noundef !24
  %i.aa = load i8, ptr %i.r, align 8, !range !40, !noalias !7547, !noundef !24
  %i.ab = load ptr, ptr %i.w, align 8, !noalias !7547, !nonnull !24, !noundef !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !7547, !nonnull !24, !align !41, !noundef !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !24, !noalias !7547, !nonnull !24
  %i.ag = invoke { ptr, ptr } %i.af(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef %i.z, i8 noundef %i.aa)
          to label %bb.h unwind label %bb.e, !noalias !7548, !inline_history !7518 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.f, !noalias !7548 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42, !noalias !7548
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsjsY2yM364a4_11lance_tools.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !range !25, !noundef !24
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit

bb.h:                                             ; preds = %bb.d
  %i.ao = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.ap = extractvalue { ptr, ptr } %i.ag, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store i8 0, ptr %i.g, align 1
  store ptr %i.ao, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

.body34:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37, %bb.ad, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.y
  %.pn8.pn = phi { ptr, i32 } [ %i.cg, %bb.y ], [ %i.cy, %bb.ad ], [ %i.cy, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37 ], [ %i.cg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.as = load i8, ptr %i.ar, align 1, !range !25, !noundef !24
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ak, label %.body

bb.i:                                             ; preds = %bb.e
  %i.au = extractvalue { ptr, ptr } %i.aj, 0      ; 4 uses
  %i.av = extractvalue { ptr, ptr } %i.aj, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.aw = load ptr, ptr %i.h, align 8, !nonnull !24, !align !41, !noundef !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store atomic i8 0, ptr %i.ax release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.ay = load ptr, ptr %i.av, align 8, !invariant.load !24 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ay(ptr noundef nonnull %i.au)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsjsY2yM364a4_11lance_tools.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !43, !invariant.load !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsjsY2yM364a4_11lance_tools.exit

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !43, !invariant.load !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #36
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bk, align 1
  br label %bb.g

bb.m:                                             ; preds = %bb.ao, %bb.am, %bb.ak
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

.body:                                            ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.ak, %.body34
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn8.pn, %.body34 ], [ %.pn8.pn, %bb.ak ], [ %i.be, %bb.l ], [ %i.be, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bo = load i8, ptr %i.bn, align 1, !range !25, !noundef !24
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsjsY2yM364a4_11lance_tools.exit45

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #40
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #40
  unreachable

bb.p:                                             ; preds = %bb.b, %bb.h
  %.val1.i.i = phi ptr [ %i.ap, %bb.h ], [ %.val1.i.i.pre, %bb.b ]
  %.val.i.i = phi ptr [ %i.ao, %bb.h ], [ %.val.i.i.pre, %bb.b ]
  %.sroa.8.0 = phi ptr [ %i.ap, %bb.h ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.h ], [ undef, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7546)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !24, !noalias !7550, !nonnull !24
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.s unwind label %bb.q, !noalias !7551, !inline_history !7525

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bv)
          to label %bb.t unwind label %bb.r, !noalias !7551 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #42, !noalias !7551
  unreachable

bb.s:                                             ; preds = %bb.p
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.by = extractvalue { ptr, ptr } %i.bw, 0      ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.bw, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  store ptr %i.by, ptr %.sroa.657, align 8, !alias.scope !7549
  br label %bb.v

common.ret:                                       ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit, %bb.u
  %storemerge = phi i8 [ 3, %bb.u ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit ], [ 1, %bb.z ]
  %common.ret.op = phi i1 [ true, %bb.u ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsjsY2yM364a4_11lance_tools.exit ], [ false, %bb.z ]
  store i8 %storemerge, ptr %i.c, align 1
  ret i1 %common.ret.op

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.ret

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sink15.i.sroa.phi = phi ptr [ %.sroa.958, %bb.t ], [ %.sroa.657, %bb.s ]
  %.sink.i33 = phi ptr [ %i.bz, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i33, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !7549
  %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8. = load ptr, ptr %.sroa.657, align 8, !noundef !24 ; 4 uses
  %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16. = load ptr, ptr %.sroa.958, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958)
  %.val31 = load ptr, ptr %0, align 8             ; 5 uses
  %.val32 = load ptr, ptr %i.bq, align 8, !nonnull !24, !align !41, !noundef !24 ; 5 uses
  %i.ca = load ptr, ptr %.val32, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  invoke void %i.ca(ptr noundef nonnull %.val31)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsjsY2yM364a4_11lance_tools.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !43, !invariant.load !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsjsY2yM364a4_11lance_tools.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !42, !invariant.load !24 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body34, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !43, !invariant.load !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #36
  br label %.body34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.x
  %.not = icmp eq ptr %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., null
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsjsY2yM364a4_11lance_tools.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.cn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 0, ptr %i.co, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsjsY2yM364a4_11lance_tools.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !24, !align !41, !noundef !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
end_hunk_4
begin_hunk_5_@_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtB7_5CacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBV_16CachedReaderDataE6insert0CsjsY2yM364a4_11lance_tools:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8460
  store i64 %.val519.i.i.i, ptr %i.n, align 8, !noalias !8465
  %i.wu = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wt, i64 noundef %.val519.i.i.i)
          to label %.noexc57.i.i.i unwind label %bb.hw, !noalias !8460 ; 2 uses

.noexc57.i.i.i:                                   ; preds = %bb.hj
  %i.wv = extractvalue { i64, i32 } %i.wu, 0      ; 2 uses
  %i.ww = extractvalue { i64, i32 } %i.wu, 1      ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8, !alias.scope !8464, !noalias !8460, !nonnull !24, !noundef !24 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24 ; 5 uses
  %i.xa = load atomic i64, ptr %i.wz acquire, align 8, !noalias !8466 ; 2 uses
  %i.xb = and i64 %i.xa, -4096
  %i.xc = icmp ult i64 %i.xa, -4096               ; 2 uses
  %.sroa.042.0.i.i.i.i = zext i1 %i.xc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8465
  %.not.i56.i.i.i = icmp eq i32 %.val44.i.i.i, -1
  br i1 %.not.i56.i.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.noexc57.i.i.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 40
  %i.xe = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.xd)
          to label %.noexc58.i.i.i unwind label %bb.hw, !noalias !8460 ; 2 uses

.noexc58.i.i.i:                                   ; preds = %bb.hk
  %i.xf = extractvalue { i64, i64 } %i.xe, 0
  %i.xg = trunc nuw i64 %i.xf to i1
  br i1 %i.xg, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %.noexc59.i.i.i, %.noexc58.i.i.i, %.noexc57.i.i.i
  %.sroa.613.0.i.i.i.i = phi i64 [ undef, %.noexc57.i.i.i ], [ %i.xj, %.noexc59.i.i.i ], [ undef, %.noexc58.i.i.i ]
  %i.xh = phi i64 [ 0, %.noexc57.i.i.i ], [ 1, %.noexc59.i.i.i ], [ 0, %.noexc58.i.i.i ] ; 2 uses
  %.not114.i.i.i.i = icmp eq i32 %.val42.i.i.i, -1
  br i1 %.not114.i.i.i.i, label %.split.preheader.i.i.i.i.i.i.i, label %bb.hn

bb.hm:                                            ; preds = %.noexc58.i.i.i
  %i.xi = extractvalue { i64, i64 } %i.xe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8465
  store i64 %i.xi, ptr %i.l, align 8, !noalias !8465
  %i.xj = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, i64 noundef %.val43.i.i.i, i32 noundef range(i32 -1, 1000000000) %.val44.i.i.i)
          to label %.noexc59.i.i.i unwind label %bb.hw, !noalias !8460

.noexc59.i.i.i:                                   ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8465
  br label %bb.hl

bb.hn:                                            ; preds = %bb.hl
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  %i.xl = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.xk)
          to label %.noexc60.i.i.i unwind label %bb.hw, !noalias !8460 ; 2 uses

.noexc60.i.i.i:                                   ; preds = %bb.hn
  %i.xm = extractvalue { i64, i64 } %i.xl, 0
  %i.xn = trunc nuw i64 %i.xm to i1
  br i1 %i.xn, label %bb.hp, label %.split.preheader.i.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i.i:                   ; preds = %.noexc61.i.i.i, %.noexc60.i.i.i, %bb.hl
  %.sroa.615.0.i.i.i.i = phi i64 [ undef, %bb.hl ], [ %i.yw, %.noexc61.i.i.i ], [ undef, %.noexc60.i.i.i ]
  %i.xo = phi i64 [ 0, %bb.hl ], [ 1, %.noexc61.i.i.i ], [ 0, %.noexc60.i.i.i ] ; 2 uses
  %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store i64 %.sroa.042.0.i.i.i.i, ptr %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.xb, ptr %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store i64 %i.xh, ptr %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %.sroa.613.0.i.i.i.i, ptr %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  store i64 %i.xo, ptr %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.615.0.i.i.i.i, ptr %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.488.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i64 -1, ptr %.sroa.488.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  %.sroa.690.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 -1, ptr %.sroa.690.0..sroa_idx.i.i.i.i, align 8, !noalias !8465
  call void @llvm.experimental.noalias.scope.decl(metadata !8467)
  br i1 %i.xc, label %bb.ho, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %.split.preheader.i.i.i.i.i.i.i
  %i.xp = trunc nuw i64 %i.xh to i1
  br i1 %i.xp, label %bb.ho, label %.split.i.i.i.1.i.i.i.i

.split.i.i.i.1.i.i.i.i:                           ; preds = %.split.i.i.i.i.i.i.i
  %i.xq = trunc nuw i64 %i.xo to i1
  br i1 %i.xq, label %bb.ho, label %.split.i.i.i.2.i.i.i.i

.split.i.i.i.2.i.i.i.i:                           ; preds = %.split.i.i.i.1.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8465
  br label %bb.hq

bb.ho:                                            ; preds = %.split.i.i.i.1.i.i.i.i, %.split.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i
  %.lcssa9.i.i.i.i = phi i64 [ 1, %.split.preheader.i.i.i.i.i.i.i ], [ 2, %.split.i.i.i.i.i.i.i ], [ 3, %.split.i.i.i.1.i.i.i.i ]
  %.lcssa.i.i.i.i = phi ptr [ %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i, %.split.i.i.i.1.i.i.i.i ]
  store i64 %.lcssa9.i.i.i.i, ptr %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8468, !noalias !8465
  %i.xr = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 8
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !8468, !noalias !8465 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i, i64 64, i1 false), !noalias !8465
  %i.xt = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8470)
  call void @llvm.experimental.noalias.scope.decl(metadata !8471)
  %i.xu = load i64, ptr %i.i, align 8, !alias.scope !8472, !noalias !8469, !noundef !24 ; 8 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !alias.scope !8472, !noalias !8469, !noundef !24 ; 5 uses
  %i.xx = icmp ule i64 %i.xu, %i.xw
  call void @llvm.assume(i1 %i.xx)
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.xu, %i.xw
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.ho
  %i.xy = sub i64 %i.xw, %i.xu
  %.neg = add i64 %i.xu, 1
  %xtraiter = and i64 %i.xy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.xz = add nuw nsw i64 %i.xu, 1
  %i.ya = icmp ult i64 %i.xu, 3
  call void @llvm.assume(i1 %i.ya)
  %i.yb = getelementptr inbounds nuw [16 x i8], ptr %i.xt, i64 %i.xu ; 2 uses
  %i.yc = load i64, ptr %i.yb, align 8, !range !28, !alias.scope !8473, !noalias !8469, !noundef !24
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.ye = load i64, ptr %i.yd, align 8, !alias.scope !8473, !noalias !8469
  %i.yf = trunc nuw i64 %i.yc to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = call i64 @llvm.umin.i64(i64 %i.xs, i64 %i.ye)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = select i1 %i.yf, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 %i.xs ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.xs, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %i.xu, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.xz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.yg = icmp eq i64 %i.xw, %.neg
  br i1 %i.yg, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.yh = phi i64 [ %i.yn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.yi = getelementptr inbounds nuw [16 x i8], ptr %i.xt, i64 %i.yh ; 2 uses
  %i.yj = load i64, ptr %i.yi, align 8, !range !28, !alias.scope !8473, !noalias !8469, !noundef !24
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yl = load i64, ptr %i.yk, align 8, !alias.scope !8473, !noalias !8469
  %i.ym = trunc nuw i64 %i.yj to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i, i64 %i.yl)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ym, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.yn = add nuw nsw i64 %i.yh, 2                ; 2 uses
  %i.yo = icmp ult i64 %i.yh, 2
  call void @llvm.assume(i1 %i.yo)
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.xt, i64 %i.yh ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yr = load i64, ptr %i.yq, align 8, !range !28, !alias.scope !8473, !noalias !8469, !noundef !24
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.yt = load i64, ptr %i.ys, align 8, !alias.scope !8473, !noalias !8469
  %i.yu = trunc nuw i64 %i.yr to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.yt)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.yu, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.yn, %i.xw
  br i1 %.not.i.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.hp:                                            ; preds = %.noexc60.i.i.i
  %i.yv = extractvalue { i64, i64 } %i.xl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8465
  store i64 %i.yv, ptr %i.k, align 8, !noalias !8465
  %i.yw = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i64 noundef %.val41.i.i.i, i32 noundef range(i32 -1, 1000000000) %.val42.i.i.i)
          to label %.noexc61.i.i.i unwind label %bb.hw, !noalias !8460

.noexc61.i.i.i:                                   ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8465
  br label %.split.preheader.i.i.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.ho
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xs, %bb.ho ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8465
  %i.yx = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wt, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i)
          to label %.noexc62.i.i.i unwind label %bb.hw, !noalias !8460 ; 2 uses

.noexc62.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  %i.yy = extractvalue { i64, i32 } %i.yx, 0
  %i.yz = extractvalue { i64, i32 } %i.yx, 1
  store i64 %i.yy, ptr %i.j, align 8, !noalias !8465
  %i.za = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.yz, ptr %i.za, align 8, !noalias !8465
  %i.zb = invoke { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef %i.wv, i32 noundef %i.ww)
          to label %.noexc63.i.i.i unwind label %bb.hw, !noalias !8460 ; 2 uses

.noexc63.i.i.i:                                   ; preds = %.noexc62.i.i.i
  %i.zc = extractvalue { i64, i32 } %i.zb, 0
  %i.zd = extractvalue { i64, i32 } %i.zb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8465
  br label %bb.hq

bb.hq:                                            ; preds = %.noexc63.i.i.i, %.split.i.i.i.2.i.i.i.i
  %.sroa.820.0.i.i.i.i = phi i32 [ %i.zd, %.noexc63.i.i.i ], [ -1, %.split.i.i.i.2.i.i.i.i ] ; 5 uses
  %.sroa.016.0.i.i.i.i = phi i64 [ %i.zc, %.noexc63.i.i.i ], [ undef, %.split.i.i.i.2.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.i.i.i) ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.val53.i.i.i, i64 16
  %i.zf = load i64, ptr %i.ze, align 8, !range !43, !invariant.load !24, !noalias !8474
  %i.zg = add nsw i64 %i.zf, -1
  %i.zh = and i64 %i.zg, -16
  %i.zi = getelementptr inbounds nuw i8, ptr %.val52.i.i.i, i64 %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zk = getelementptr inbounds nuw i8, ptr %.val53.i.i.i, i64 40
  %i.zl = load ptr, ptr %i.zk, align 8, !invariant.load !24, !noalias !8474, !nonnull !24
  %i.zm = invoke { i64, i32 } %i.zl(ptr noundef nonnull %i.zj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wo, i64 noundef %i.wv, i32 noundef range(i32 0, 1000000000) %i.ww, i64 %.sroa.016.0.i.i.i.i, i32 noundef range(i32 -1, 1000000000) %.sroa.820.0.i.i.i.i)
          to label %.noexc64.i.i.i unwind label %bb.hw, !noalias !8460, !inline_history !8249 ; 2 uses

.noexc64.i.i.i:                                   ; preds = %bb.hq
  %i.zn = extractvalue { i64, i32 } %i.zm, 0      ; 2 uses
  %i.zo = extractvalue { i64, i32 } %i.zm, 1      ; 4 uses
  %.not115.not.i.i.i.i = icmp eq i32 %i.zo, -1
  br i1 %.not115.not.i.i.i.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %.noexc64.i.i.i
  %.not117.i.i.i.i = icmp ne i32 %.sroa.820.0.i.i.i.i, -1
  %i.zp = icmp eq i64 %i.zn, %.sroa.016.0.i.i.i.i
  %or.cond.i.i.i.i = select i1 %.not117.i.i.i.i, i1 %i.zp, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ht, label %.split.us.i.preheader.i.i.i.i

bb.hs:                                            ; preds = %.noexc64.i.i.i
  %.not116.i.i.i.i = icmp eq i32 %.sroa.820.0.i.i.i.i, -1
  br i1 %.not116.i.i.i.i, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.split.i.i.i.i.i

.split.us.i.preheader.i.i.i.i:                    ; preds = %bb.ht, %bb.hr
  %i.zq = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, i64 noundef %i.zn, i32 noundef %i.zo)
          to label %.noexc65.i.i.i unwind label %bb.hw, !noalias !8460

.noexc65.i.i.i:                                   ; preds = %.split.us.i.preheader.i.i.i.i
  %i.zr = call i64 @llvm.umin.i64(i64 %i.zq, i64 -4097)
  %i.zs = and i64 %i.zr, -4096
  br label %.split.us.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.split.us.i.i.i.i.i, %.noexc65.i.i.i
  %i.zt = load atomic i64, ptr %i.wz acquire, align 8, !noalias !8460 ; 2 uses
  %i.zu = add i64 %i.zt, 1
  %i.zv = and i64 %i.zu, 4095
  %i.zw = or disjoint i64 %i.zv, %i.zs
  %i.zx = cmpxchg weak ptr %i.wz, i64 %i.zt, i64 %i.zw acq_rel acquire, align 8, !noalias !8460
  %i.zy = extractvalue { i64, i1 } %i.zx, 1
  br i1 %i.zy, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.split.us.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.hs, %.split.i.i.i.i.i
  %i.zz = load atomic i64, ptr %i.wz acquire, align 8, !noalias !8460 ; 2 uses
  %i.aaa = add i64 %i.zz, 1
  %i.aab = or i64 %i.aaa, -4096
  %i.aac = cmpxchg weak ptr %i.wz, i64 %i.zz, i64 %i.aab acq_rel acquire, align 8, !noalias !8460
  %i.aad = extractvalue { i64, i1 } %i.aac, 1
  br i1 %i.aad, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.split.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hr
  %i.aae = icmp ult i32 %i.zo, 1000000000
  call void @llvm.assume(i1 %i.aae)
  %i.aaf = icmp ult i32 %.sroa.820.0.i.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.aaf)
  %.not118.i.i.i.i = icmp eq i32 %i.zo, %.sroa.820.0.i.i.i.i
  br i1 %.not118.i.i.i.i, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.split.us.i.preheader.i.i.i.i

_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %.split.us.i.i.i.i.i, %.split.i.i.i.i.i, %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8460
  br label %bb.hf

bb.hu:                                            ; preds = %bb.hw
  %i.aag = atomicrmw add ptr %i.aaj, i64 -1 release, align 8, !noalias !8475
  %i.aah = icmp eq i64 %i.aag, 1
  br i1 %i.aah, label %bb.hv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsjsY2yM364a4_11lance_tools.exit67.i.i.i

bb.hv:                                            ; preds = %bb.hu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1l_16CachedReaderDataENtNtCscI6d9CVNmLh_4core6marker4SyncNtB2z_4SendEL_E9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsjsY2yM364a4_11lance_tools.exit67.i.i.i unwind label %bb.hy, !noalias !8460

bb.hw:                                            ; preds = %.split.us.i.preheader.i68.i.i.i, %.noexc71.i.i.i, %bb.hx, %.split.us.i.preheader.i.i.i.i, %bb.hq, %.noexc62.i.i.i, %.loopexit.i.i.i.i, %bb.hp, %bb.hn, %bb.hm, %bb.hk, %bb.hj
  %i.aai = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8476)
  %i.aaj = load ptr, ptr %i.r, align 8, !alias.scope !8476, !noalias !8460, !noundef !24 ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, null
  br i1 %i.aak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsjsY2yM364a4_11lance_tools.exit67.i.i.i, label %bb.hu

bb.hx:                                            ; preds = %bb.hi
  %.val38.i.i.i = load ptr, ptr %i.vq, align 8, !noalias !8460, !nonnull !24, !noundef !24
  %.val35.i.i.i = load ptr, ptr %i.wg, align 8, !noalias !8460, !nonnull !24, !noundef !24 ; 3 uses
  %.val30.i.i.i = load ptr, ptr %i.vu, align 8, !noalias !8460, !nonnull !24, !noundef !24
  %i.aal = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 88
  %.val47.i.i.i = load ptr, ptr %i.r, align 8, !noalias !8460 ; 2 uses
  %.val48.i.i.i = load ptr, ptr %i.vz, align 8, !noalias !8460 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8460
  store i64 %.val51.i.i.i, ptr %i.h, align 8, !noalias !8478
  %i.aam = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aal, i64 noundef %.val51.i.i.i)
          to label %.noexc71.i.i.i unwind label %bb.hw, !noalias !8460 ; 2 uses

.noexc71.i.i.i:                                   ; preds = %bb.hx
  %i.aan = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %.val38.i.i.i, i64 16
  %i.aap = extractvalue { i64, i32 } %i.aam, 0
  %i.aaq = extractvalue { i64, i32 } %i.aam, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48.i.i.i) ]
  %i.aar = getelementptr inbounds nuw i8, ptr %.val48.i.i.i, i64 16
  %i.aas = load i64, ptr %i.aar, align 8, !range !43, !invariant.load !24, !noalias !8478
  %i.aat = add nsw i64 %i.aas, -1
  %i.aau = and i64 %i.aat, -16
  %i.aav = getelementptr inbounds nuw i8, ptr %.val47.i.i.i, i64 %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = getelementptr inbounds nuw i8, ptr %.val48.i.i.i, i64 24
  %i.aay = load ptr, ptr %i.aax, align 8, !invariant.load !24, !noalias !8478, !nonnull !24
  %i.aaz = invoke { i64, i32 } %i.aay(ptr noundef nonnull %i.aaw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aan, i64 noundef %i.aap, i32 noundef %i.aaq)
          to label %.noexc72.i.i.i unwind label %bb.hw, !noalias !8460, !inline_history !13 ; 2 uses

.noexc72.i.i.i:                                   ; preds = %.noexc71.i.i.i
  %i.aba = extractvalue { i64, i32 } %i.aaz, 1    ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %i.aba, -1
  br i1 %.not.not.i.i.i.i, label %.split.i.preheader.i.i.i.i, label %.split.us.i.preheader.i68.i.i.i

.split.us.i.preheader.i68.i.i.i:                  ; preds = %.noexc72.i.i.i
  %i.abb = extractvalue { i64, i32 } %i.aaz, 0
  %i.abc = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, i64 noundef %i.abb, i32 noundef %i.aba)
          to label %.noexc73.i.i.i unwind label %bb.hw, !noalias !8460

.noexc73.i.i.i:                                   ; preds = %.split.us.i.preheader.i68.i.i.i
  %i.abd = call i64 @llvm.umin.i64(i64 %i.abc, i64 -4097)
  %i.abe = and i64 %i.abd, -4096
  %i.abf = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8, !alias.scope !8477, !noalias !8460, !nonnull !24, !noundef !24
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 24 ; 2 uses
  br label %.split.us.i.i69.i.i.i

.split.i.preheader.i.i.i.i:                       ; preds = %.noexc72.i.i.i
  %i.abi = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8, !alias.scope !8477, !noalias !8460, !nonnull !24, !noundef !24
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 24 ; 2 uses
  br label %.split.i.i70.i.i.i

.split.us.i.i69.i.i.i:                            ; preds = %.split.us.i.i69.i.i.i, %.noexc73.i.i.i
  %i.abl = load atomic i64, ptr %i.abh acquire, align 8, !noalias !8460 ; 2 uses
  %i.abm = add i64 %i.abl, 1
  %i.abn = and i64 %i.abm, 4095
  %i.abo = or disjoint i64 %i.abn, %i.abe
  %i.abp = cmpxchg weak ptr %i.abh, i64 %i.abl, i64 %i.abo acq_rel acquire, align 8, !noalias !8460
  %i.abq = extractvalue { i64, i1 } %i.abp, 1
  br i1 %i.abq, label %_RNvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB13_16CachedReaderDataE19expire_after_createCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.split.us.i.i69.i.i.i

.split.i.i70.i.i.i:                               ; preds = %.split.i.i70.i.i.i, %.split.i.preheader.i.i.i.i
  %i.abr = load atomic i64, ptr %i.abk acquire, align 8, !noalias !8460 ; 2 uses
  %i.abs = add i64 %i.abr, 1
  %i.abt = or i64 %i.abs, -4096
  %i.abu = cmpxchg weak ptr %i.abk, i64 %i.abr, i64 %i.abt acq_rel acquire, align 8, !noalias !8460
  %i.abv = extractvalue { i64, i1 } %i.abu, 1
  br i1 %i.abv, label %_RNvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB13_16CachedReaderDataE19expire_after_createCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.split.i.i70.i.i.i

_RNvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB13_16CachedReaderDataE19expire_after_createCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %.split.us.i.i69.i.i.i, %.split.i.i70.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8460
  br label %bb.hf

bb.hy:                                            ; preds = %bb.lg, %bb.le, %bb.ld, %bb.kr, %bb.kf, %bb.kb, %.body86.i.i.i, %bb.jz, %bb.hv
  %i.abw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !8460
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsjsY2yM364a4_11lance_tools.exit67.i.i.i: ; preds = %bb.hz, %bb.hw, %bb.hv, %bb.hu
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.abx, %bb.hz ], [ %i.aai, %bb.hv ], [ %i.aai, %bb.hw ], [ %i.aai, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8460
  br label %bb.kb

bb.hz:                                            ; preds = %bb.hg
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsjsY2yM364a4_11lance_tools.exit67.i.i.i

.thread2.i.i.i:                                   ; preds = %bb.hg, %.thread3.i.i.i, %bb.hf, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8460
  %.val54.i.i.i = load ptr, ptr %i.vu, align 8, !noalias !8460, !nonnull !24, !noundef !24 ; 7 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 592 ; 3 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !noalias !8460, !noundef !24
  %.not14.i.i.i = icmp eq ptr %i.abz, null
  br i1 %.not14.i.i.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.kq, %.thread2.i.i.i
  %i.aca = phi ptr [ %i.ahc, %bb.kq ], [ %i.vd, %.thread2.i.i.i ] ; 6 uses
  %i.acb = phi ptr [ %i.ahd, %bb.kq ], [ %i.ve, %.thread2.i.i.i ] ; 5 uses
  %i.acc = phi ptr [ %i.ahe, %bb.kq ], [ %i.vf, %.thread2.i.i.i ] ; 6 uses
  %i.acd = phi ptr [ %i.ahf, %bb.kq ], [ %i.vg, %.thread2.i.i.i ] ; 5 uses
  %i.ace = phi ptr [ %i.ahg, %bb.kq ], [ %i.vl, %.thread2.i.i.i ] ; 4 uses
  %i.acf = phi ptr [ %i.ahh, %bb.kq ], [ %i.vm, %.thread2.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8460
  %i.acg = invoke fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsjsY2yM364a4_11lance_tools()
          to label %_RNvNtCskfeRsqx2rfd_15crossbeam_epoch7default3pin.exit.i.i.i unwind label %bb.kx, !noalias !8460 ; 7 uses

bb.ib:                                            ; preds = %.thread2.i.i.i
  store i8 0, ptr %i.vn, align 1, !noalias !8460
  %i.ach = load ptr, ptr %i.vq, align 8, !noalias !8460, !nonnull !24, !noundef !24
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.acj = load i64, ptr %i.vr, align 8, !range !28, !noalias !8460, !noundef !24
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.acl = load i64, ptr %i.ack, align 8, !noalias !8460
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.acn = load i64, ptr %i.acm, align 8, !range !28, !noalias !8460, !noundef !24
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.acp = load i64, ptr %i.aco, align 8, !noalias !8460 ; 2 uses
  %.val55.i.i.i = load ptr, ptr %i.aci, align 8, !noalias !8460 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8460
  store ptr %i.ach, ptr %i.g, align 8, !noalias !8460
  %i.acq = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 88
  %i.acr = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.acq)
          to label %bb.id unwind label %bb.ic, !noalias !8460 ; 2 uses

bb.ic:                                            ; preds = %bb.ir, %bb.im, %bb.ik, %bb.ig, %bb.ib
  %i.acs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8479)
  call void @llvm.experimental.noalias.scope.decl(metadata !8480)
  %i.act = load ptr, ptr %i.g, align 8, !alias.scope !8481, !noalias !8460, !nonnull !24, !noundef !24
  %i.acu = atomicrmw add ptr %i.act, i64 -1 release, align 8, !noalias !8482
  %i.acv = icmp eq i64 %i.acu, 1
  br i1 %i.acv, label %bb.jd, label %.body.i.i.i

bb.id:                                            ; preds = %bb.ib
  %i.acw = trunc nuw i64 %i.acj to i1
  br i1 %i.acw, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.acx = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 136
  %i.acy = load i64, ptr %i.acx, align 8, !noalias !8460
  %i.acz = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 144
  %i.ada = load i32, ptr %i.acz, align 8, !range !53, !noalias !8460, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8460
  store i64 %i.acl, ptr %i.f, align 8, !noalias !8460
  %.not.i78.i.i.i = icmp eq i32 %i.ada, -1
  br i1 %.not.i78.i.i.i, label %.sink.split.i.i.i.i, label %bb.ig

.sink.split.i.i.i.i:                              ; preds = %bb.ih, %bb.ie
  %.sroa.06.0.ph.i.i.i.i = phi i8 [ %spec.select12.i.i.i.i, %bb.ih ], [ 2, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8460
  br label %bb.if

bb.if:                                            ; preds = %.sink.split.i.i.i.i, %bb.id
  %.sroa.06.0.i.i.i.i = phi i8 [ 2, %bb.id ], [ %.sroa.06.0.ph.i.i.i.i, %.sink.split.i.i.i.i ] ; 2 uses
  %i.adb = trunc nuw i64 %i.acn to i1
  br i1 %i.adb, label %bb.ii, label %bb.ij

bb.ig:                                            ; preds = %bb.ie
  %i.adc = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.acy, i32 noundef %i.ada)
          to label %bb.ih unwind label %bb.ic, !noalias !8460

bb.ih:                                            ; preds = %bb.ig
  %.not23.i.i.i.i = icmp ugt i64 %i.adc, %i.acr
  %spec.select12.i.i.i.i = select i1 %.not23.i.i.i.i, i8 2, i8 0
  br label %.sink.split.i.i.i.i

bb.ii:                                            ; preds = %bb.if
  %i.add = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 120
  %i.ade = load i64, ptr %i.add, align 8, !noalias !8460
  %i.adf = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 128
  %i.adg = load i32, ptr %i.adf, align 8, !range !53, !noalias !8460, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8460
  store i64 %i.acp, ptr %i.e, align 8, !noalias !8460
  %.not24.i.i.i.i = icmp eq i32 %i.adg, -1
  br i1 %.not24.i.i.i.i, label %bb.im, label %bb.ik

bb.ij:                                            ; preds = %bb.io, %bb.in, %bb.if
  %.sroa.06.1.i.i.i.i = phi i8 [ 0, %bb.in ], [ %spec.select.i77.i.i.i, %bb.io ], [ %.sroa.06.0.i.i.i.i, %bb.if ]
  %i.adh = load ptr, ptr %i.aby, align 8, !noalias !8460, !noundef !24 ; 2 uses
  %.not26.i.i.i.i = icmp eq ptr %i.adh, null
  br i1 %.not26.i.i.i.i, label %bb.iq, label %bb.ip

bb.ik:                                            ; preds = %bb.ii
  %i.adi = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i64 noundef %i.ade, i32 noundef %i.adg)
          to label %bb.il unwind label %bb.ic, !noalias !8460

bb.il:                                            ; preds = %bb.ik
  %.not25.i.i.i.i = icmp ugt i64 %i.adi, %i.acr
  br i1 %.not25.i.i.i.i, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8460
  %i.adj = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 568
  %i.adk = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.adj)
          to label %bb.io unwind label %bb.ic, !noalias !8460 ; 2 uses

bb.in:                                            ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8460
  br label %bb.ij

bb.io:                                            ; preds = %bb.im
  %i.adl = extractvalue { i64, i64 } %i.adk, 0
  %i.adm = trunc nuw i64 %i.adl to i1
  %i.adn = extractvalue { i64, i64 } %i.adk, 1
  %i.ado = icmp ult i64 %i.acp, %i.adn
  %or.cond.i76.i.i.i = select i1 %i.adm, i1 %i.ado, i1 false
  %spec.select.i77.i.i.i = select i1 %or.cond.i76.i.i.i, i8 1, i8 %.sroa.06.0.i.i.i.i
  br label %bb.ij

bb.ip:                                            ; preds = %bb.ij
  %i.adp = atomicrmw add ptr %i.adh, i64 1 monotonic, align 8, !noalias !8460
  %i.adq = icmp slt i64 %i.adp, 0
  br i1 %i.adq, label %bb.iu, label %bb.is

end_hunk_5
begin_hunk_6_@_RNCNvMs_NtCsftBYP88YJaE_11lance_tools4metaNtB6_21LanceToolFileMetadata4open0CsjsY2yM364a4_11lance_tools:bb.a
bb.je:                                            ; preds = %bb.jc
  %.sroa.5229.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.sroa.5229.i.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.5229.0..sroa_idx.i.i.i, align 1, !noalias !9093
  %.sroa.6231.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.6231.0.copyload.i.i.i = load ptr, ptr %.sroa.6231.0..sroa_idx.i.i.i, align 8, !noalias !9093
  %.sroa.7234.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.7234.0.copyload.i.i.i = load ptr, ptr %.sroa.7234.0..sroa_idx.i.i.i, align 8, !noalias !9093
  %.sroa.8237.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.agp = load <2 x i64>, ptr %.sroa.8237.0..sroa_idx.i.i.i, align 8, !noalias !9093
  %.sroa.8237.i.sroa.8.0..sroa.8237.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.8237.i.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8237.i.sroa.8.0..sroa.8237.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !9093
  %.sroa.8237.i.sroa.9.0..sroa.8237.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.8237.i.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.8237.i.sroa.9.0..sroa.8237.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !9093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9093
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBL_11UringReader4open00ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.agl)
          to label %bb.iy unwind label %bb.jf, !noalias !9094

bb.jf:                                            ; preds = %bb.je, %bb.ix
  %i.agq = phi ptr [ %i.aet, %bb.ix ], [ %i.agd, %bb.je ]
  %i.agr = phi ptr [ %i.aev, %bb.ix ], [ %i.agf, %bb.je ]
  %i.ags = phi ptr [ %i.aew, %bb.ix ], [ %i.agg, %bb.je ]
  %i.agt = phi ptr [ %i.aex, %bb.ix ], [ %i.agh, %bb.je ]
  %i.agu = phi ptr [ %i.aey, %bb.ix ], [ %i.agi, %bb.je ]
  %i.agv = phi ptr [ %i.aez, %bb.ix ], [ %i.agj, %bb.je ]
  %i.agw = phi ptr [ %i.afa, %bb.ix ], [ %i.agk, %bb.je ]
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.jg:                                            ; preds = %bb.iy
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.agz = load i64, ptr %i.agy, align 8, !range !35, !alias.scope !9100, !noalias !9093, !noundef !24 ; 2 uses
  %.not.i.i.i96.i.i.i = icmp eq i64 %i.agz, -1
  br i1 %.not.i.i.i96.i.i.i, label %bb.ju, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ahb = load i64, ptr %i.aha, align 8, !range !32, !alias.scope !9101, !noalias !9093, !noundef !24
  %i.ahc = invoke noundef zeroext i1 @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.agy, i64 noundef %i.ahb)
          to label %bb.jj unwind label %bb.ji, !noalias !9094 ; 0 uses

bb.ji:                                            ; preds = %bb.jh
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.agy) #41
          to label %.body29.i91.i.i.i unwind label %bb.jm, !noalias !9094

bb.jj:                                            ; preds = %bb.jh
  call void @llvm.experimental.noalias.scope.decl(metadata !9102)
  call void @llvm.experimental.noalias.scope.decl(metadata !9103)
  call void @llvm.experimental.noalias.scope.decl(metadata !9104)
  call void @llvm.experimental.noalias.scope.decl(metadata !9105)
  %i.ahe = icmp eq i64 %i.agz, 0
  br i1 %i.ahe, label %bb.ju, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9106)
  call void @llvm.experimental.noalias.scope.decl(metadata !9107)
  %i.ahg = load ptr, ptr %i.ahf, align 8, !alias.scope !9108, !noalias !9093, !nonnull !24, !noundef !24
  %i.ahh = atomicrmw add ptr %i.ahg, i64 -1 release, align 8, !noalias !9109
  %i.ahi = icmp eq i64 %i.ahh, 1
  br i1 %i.ahi, label %bb.jl, label %bb.ju

bb.jl:                                            ; preds = %bb.jk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ahf)
          to label %bb.ju unwind label %bb.jn, !noalias !9094

bb.jm:                                            ; preds = %bb.ji
  %i.ahj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !9094
  unreachable

bb.jn:                                            ; preds = %bb.jl, %bb.ic, %bb.ia
  %i.ahk = phi ptr [ %i.afp, %bb.jl ], [ %i.abw, %bb.ic ], [ %i.abw, %bb.ia ]
  %i.ahl = phi ptr [ %i.afr, %bb.jl ], [ %i.aby, %bb.ic ], [ %i.aby, %bb.ia ]
  %i.ahm = phi ptr [ %i.afs, %bb.jl ], [ %i.abz, %bb.ic ], [ %i.abz, %bb.ia ]
  %i.ahn = phi ptr [ %i.aft, %bb.jl ], [ %i.aca, %bb.ic ], [ %i.aca, %bb.ia ]
  %i.aho = phi ptr [ %i.afu, %bb.jl ], [ %i.acb, %bb.ic ], [ %i.acb, %bb.ia ]
  %i.ahp = phi ptr [ %i.afv, %bb.jl ], [ %i.ach, %bb.ic ], [ %i.ach, %bb.ia ]
  %i.ahq = phi ptr [ %i.afw, %bb.jl ], [ %i.aci, %bb.ic ], [ %i.aci, %bb.ia ]
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i91.i.i.i

bb.jo:                                            ; preds = %bb.jp, %bb.il
  store i8 0, ptr %i.aef, align 2, !noalias !9093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9093
  %i.ahs = getelementptr inbounds nuw i8, ptr %1, i64 305
  %i.aht = load i8, ptr %i.ahs, align 1, !range !25, !noalias !9093, !noundef !24
  %i.ahu = trunc nuw i8 %i.aht to i1
  br i1 %i.ahu, label %bb.jq, label %.body29.i91.i.i.i

bb.jp:                                            ; preds = %bb.il
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBL_11UringReader4open00ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.ak) #41
          to label %bb.jo unwind label %bb.iz, !noalias !9094

bb.jq:                                            ; preds = %bb.jo
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(40) %i.ahv) #41
          to label %.body29.i91.i.i.i unwind label %bb.iz, !noalias !9094

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit.i93.i.i.i: ; preds = %bb.js, %bb.jr, %.body29.i91.i.i.i
  store i8 0, ptr %i.aeq, align 1, !noalias !9093
  store i8 2, ptr %i.aen, align 8, !noalias !9093
  br label %.body116.i.i.i

bb.jr:                                            ; preds = %.body29.i91.i.i.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9110)
  call void @llvm.experimental.noalias.scope.decl(metadata !9111)
  %i.ahx = load ptr, ptr %i.ahw, align 8, !alias.scope !9112, !noalias !9093, !nonnull !24, !noundef !24
  %i.ahy = atomicrmw add ptr %i.ahx, i64 -1 release, align 8, !noalias !9113
  %i.ahz = icmp eq i64 %i.ahy, 1
  br i1 %i.ahz, label %bb.js, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit.i93.i.i.i

bb.js:                                            ; preds = %bb.jr
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ahw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit.i93.i.i.i unwind label %bb.iz, !noalias !9094

bb.jt:                                            ; preds = %bb.jd, %bb.iw
  %i.aia = phi ptr [ %i.aet, %bb.iw ], [ %i.agd, %bb.jd ]
  %i.aib = phi ptr [ %i.aev, %bb.iw ], [ %i.agf, %bb.jd ]
  %i.aic = phi ptr [ %i.aex, %bb.iw ], [ %i.agh, %bb.jd ]
  %i.aid = phi ptr [ %i.aez, %bb.iw ], [ %i.agj, %bb.jd ]
  %.sink.i95.ph.i.i.i = phi i8 [ 3, %bb.iw ], [ 4, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9093
  store i8 %.sink.i95.ph.i.i.i, ptr %i.aid, align 8, !noalias !9093
  br label %.thread231.i.i

bb.ju:                                            ; preds = %bb.jl, %bb.jk, %bb.jj, %bb.jg, %bb.iy
  store i8 0, ptr %i.afz, align 1, !noalias !9093
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 307
  store i8 0, ptr %i.aie, align 1, !noalias !9093
  store i8 1, ptr %i.afv, align 8, !noalias !9093
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBJ_11UringReader4open0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.afw)
          to label %.thread205.i.i unwind label %bb.jv, !noalias !9029

bb.jv:                                            ; preds = %bb.ju, %bb.hu, %bb.fu, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit46.i.i.i, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i, %bb.ca
  %i.aif = phi ptr [ %i.afp, %bb.ju ], [ %i.yy, %bb.hu ], [ %i.rz, %bb.fu ], [ %i.jy, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit46.i.i.i ], [ %i.jy, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ %i.jy, %bb.ca ]
  %i.aig = phi ptr [ %i.afr, %bb.ju ], [ %i.za, %bb.hu ], [ %i.sb, %bb.fu ], [ %i.ka, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit46.i.i.i ], [ %i.ka, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ka, %bb.ca ]
  %i.aih = phi ptr [ %i.afs, %bb.ju ], [ %i.zb, %bb.hu ], [ %i.sc, %bb.fu ], [ %i.kb, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit46.i.i.i ], [ %i.kb, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ %i.kb, %bb.ca ]
  %i.aii = phi ptr [ %i.aft, %bb.ju ], [ %i.zc, %bb.hu ], [ %i.sd, %bb.fu ], [ %i.kf, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit46.i.i.i ], [ %i.kf, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ %i.kf, %bb.ca ]
  %i.aij = phi ptr [ %i.afu, %bb.ju ], [ %i.zd, %bb.hu ], [ %i.se, %bb.fu ], [ %i.kg, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit46.i.i.i ], [ %i.kg, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ %i.kg, %bb.ca ]
  %i.aik = landingpad { ptr, i32 }
          cleanup
  br label %.body.i50.i.i

.thread205.i.i:                                   ; preds = %bb.ju, %bb.hu, %bb.fu, %bb.dn, %bb.cy
  %i.ail = phi ptr [ %i.jy, %bb.dn ], [ %i.afp, %bb.ju ], [ %i.yy, %bb.hu ], [ %i.rz, %bb.fu ], [ %i.jy, %bb.cy ]
  %i.aim = phi ptr [ %i.jz, %bb.dn ], [ %i.afq, %bb.ju ], [ %i.yz, %bb.hu ], [ %i.sa, %bb.fu ], [ %i.jz, %bb.cy ]
  %i.ain = phi ptr [ %i.ka, %bb.dn ], [ %i.afr, %bb.ju ], [ %i.za, %bb.hu ], [ %i.sb, %bb.fu ], [ %i.ka, %bb.cy ]
  %i.aio = phi ptr [ %i.kb, %bb.dn ], [ %i.afs, %bb.ju ], [ %i.zb, %bb.hu ], [ %i.sc, %bb.fu ], [ %i.kb, %bb.cy ]
  %i.aip = phi ptr [ %i.kf, %bb.dn ], [ %i.aft, %bb.ju ], [ %i.zc, %bb.hu ], [ %i.sd, %bb.fu ], [ %i.kf, %bb.cy ]
  %.sroa.10122.sroa.0.0.ph.i.i = phi i56 [ undef, %bb.dn ], [ %.sroa.5229.i.sroa.0.0.i.i, %bb.ju ], [ %.sroa.5217.i.sroa.0.0.i.i, %bb.hu ], [ %.sroa.5205.i.sroa.0.0.i.i, %bb.fu ], [ undef, %bb.cy ]
  %.sroa.13.sroa.8.0.ph.i.i = phi ptr [ undef, %bb.dn ], [ %.sroa.8237.i.sroa.9.0.i.i, %bb.ju ], [ %.sroa.8225.i.sroa.9.0.i.i, %bb.hu ], [ %.sroa.8213.i.sroa.9.0.i.i, %bb.fu ], [ undef, %bb.cy ]
  %.sroa.13.sroa.7.0.ph.i.i = phi i64 [ undef, %bb.dn ], [ %.sroa.8237.i.sroa.8.0.i.i, %bb.ju ], [ %.sroa.8225.i.sroa.8.0.i.i, %bb.hu ], [ %.sroa.8213.i.sroa.8.0.i.i, %bb.fu ], [ undef, %bb.cy ]
  %.sroa.12124.0.ph.i.i = phi ptr [ @231, %bb.dn ], [ %.sroa.7234.0.i.i.i, %bb.ju ], [ %.sroa.7222.0.i.i.i, %bb.hu ], [ %.sroa.7210.0.i.i.i, %bb.fu ], [ @228, %bb.cy ]
  %.sroa.11123.0.ph.i.i = phi ptr [ %i.nk, %bb.dn ], [ %.sroa.6231.0.i.i.i, %bb.ju ], [ %.sroa.6219.0.i.i.i, %bb.hu ], [ %.sroa.6207.0.i.i.i, %bb.fu ], [ %i.mo, %bb.cy ]
  %.sroa.0121.0.ph.i.i = phi i8 [ -1, %bb.dn ], [ %.sroa.0227.0.i.i.i, %bb.ju ], [ %.sroa.0215.0.i.i.i, %bb.hu ], [ %.sroa.0203.0.i.i.i, %bb.fu ], [ -1, %bb.cy ]
  %i.aiq = phi <2 x i64> [ undef, %bb.dn ], [ %i.afx, %bb.ju ], [ %i.zg, %bb.hu ], [ %i.sh, %bb.fu ], [ undef, %bb.cy ]
  store i8 1, ptr %i.aip, align 8, !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !9009
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore14open_with_size0ECsjsY2yM364a4_11lance_tools.exit.i.i

.thread231.i.i:                                   ; preds = %bb.jt, %bb.ht, %bb.ft
  %i.air = phi ptr [ %i.us, %bb.ft ], [ %i.abj, %bb.ht ], [ %i.aia, %bb.jt ]
  %i.ais = phi ptr [ %i.ut, %bb.ft ], [ %i.abk, %bb.ht ], [ %i.aib, %bb.jt ]
  %i.ait = phi ptr [ %i.uu, %bb.ft ], [ %i.abl, %bb.ht ], [ %i.aic, %bb.jt ]
  %.sink.i.ph.i.i = phi i8 [ 3, %bb.ft ], [ 4, %bb.ht ], [ 5, %bb.jt ]
  store i8 %.sink.i.ph.i.i, ptr %i.ait, align 8, !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !9009
  br label %bb.kl

bb.jw:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !9028
  store i8 1, ptr %i.kf, align 8, !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !9009
  %i.aiu = icmp eq i8 %.sroa.8188.sroa.0.0.copyload198.i.i.i, -2
  br i1 %i.aiu, label %bb.kl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore14open_with_size0ECsjsY2yM364a4_11lance_tools.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore14open_with_size0ECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.jw, %.thread205.i.i
  %i.aiv = phi ptr [ %i.ail, %.thread205.i.i ], [ %i.jy, %bb.jw ] ; 3 uses
  %i.aiw = phi ptr [ %i.aim, %.thread205.i.i ], [ %i.jz, %bb.jw ] ; 2 uses
  %i.aix = phi ptr [ %i.ain, %.thread205.i.i ], [ %i.ka, %bb.jw ] ; 3 uses
  %i.aiy = phi ptr [ %i.aio, %.thread205.i.i ], [ %i.kb, %bb.jw ] ; 3 uses
  %.sroa.0121.0228.i.i = phi i8 [ %.sroa.0121.0.ph.i.i, %.thread205.i.i ], [ %.sroa.8188.sroa.0.0.copyload198.i.i.i, %bb.jw ] ; 2 uses
  %.sroa.11123.0224.i.i = phi ptr [ %.sroa.11123.0.ph.i.i, %.thread205.i.i ], [ %.sroa.8188.sroa.9.0.copyload200.i.i.i, %bb.jw ] ; 5 uses
  %.sroa.12124.0220.i.i = phi ptr [ %.sroa.12124.0.ph.i.i, %.thread205.i.i ], [ %.sroa.8188.sroa.10.0.copyload202.i.i.i, %bb.jw ] ; 6 uses
  %.sroa.13.sroa.7.0217.i.i = phi i64 [ %.sroa.13.sroa.7.0.ph.i.i, %.thread205.i.i ], [ %.sroa.8188.sroa.11.i.sroa.8.0.copyload.i.i, %bb.jw ]
  %.sroa.13.sroa.8.0216.i.i = phi ptr [ %.sroa.13.sroa.8.0.ph.i.i, %.thread205.i.i ], [ %.sroa.8188.sroa.11.i.sroa.9.0.copyload.i.i, %bb.jw ]
  %.sroa.10122.sroa.0.0215.i.i = phi i56 [ %.sroa.10122.sroa.0.0.ph.i.i, %.thread205.i.i ], [ %.sroa.8188.sroa.8.i.sroa.0.0.copyload.i.i, %bb.jw ]
  %i.aiz = phi <2 x i64> [ %i.aiq, %.thread205.i.i ], [ %i.mn, %bb.jw ] ; 2 uses
  %.not.i64.i.i = icmp eq i8 %.sroa.0121.0228.i.i, -1
  br i1 %.not.i64.i.i, label %bb.jx, label %bb.kh

bb.jx:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore14open_with_size0ECsjsY2yM364a4_11lance_tools.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11123.0224.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12124.0220.i.i) ]
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ajb = load ptr, ptr %i.aja, align 8, !noalias !9009, !nonnull !24, !align !41, !noundef !24
  %.val28.i.i = load ptr, ptr %i.ajb, align 8, !noalias !9010, !nonnull !24, !noundef !24
  %i.ajc = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 32
  %.val32.i.i = load ptr, ptr %i.ajc, align 8, !noalias !9010, !nonnull !24, !noundef !24 ; 2 uses
  %i.ajd = getelementptr i8, ptr %.val32.i.i, i64 104
  %.val37.i.i = load i64, ptr %i.ajd, align 8, !noalias !9010, !noundef !24
  %i.aje = getelementptr i8, ptr %.val32.i.i, i64 112
  %.val38.i.i = load i64, ptr %i.aje, align 8, !noalias !9010, !noundef !24
  call void @llvm.experimental.noalias.scope.decl(metadata !9114)
  call void @llvm.experimental.noalias.scope.decl(metadata !9115)
  call void @llvm.experimental.noalias.scope.decl(metadata !9116)
  %i.ajf = getelementptr inbounds nuw i8, ptr %.sroa.12124.0220.i.i, i64 8
  %i.ajg = load i64, ptr %i.ajf, align 8, !range !42, !invariant.load !24, !alias.scope !9117, !noalias !9010 ; 3 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.12124.0220.i.i, i64 16
  %i.aji = load i64, ptr %i.ajh, align 8, !range !43, !invariant.load !24, !alias.scope !9117, !noalias !9010 ; 4 uses
  %i.ajj = invoke { i64, i64 } @_RNvNtCs40k4W9msRzi_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, 536870913) %i.aji, i64 noundef range(i64 0, -9223372036854775808) %i.ajg)
          to label %.noexc.i.i.i65.i.i unwind label %bb.kd, !noalias !9118 ; 2 uses

.noexc.i.i.i65.i.i:                               ; preds = %bb.jx
  %i.ajk = extractvalue { i64, i64 } %i.ajj, 0    ; 3 uses
  %i.ajl = extractvalue { i64, i64 } %i.ajj, 1    ; 3 uses
  %i.ajm = icmp eq i64 %i.ajl, 0
  br i1 %i.ajm, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %.noexc.i.i.i65.i.i
  %i.ajn = inttoptr i64 %i.ajk to ptr
  br label %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i

bb.jz:                                            ; preds = %.noexc.i.i.i65.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9118
  %i.ajo = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ajl, i64 noundef range(i64 1, -9223372036854775807) %i.ajk) #36, !noalias !9118
  br label %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i

_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i: ; preds = %bb.jz, %bb.jy
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ajn, %bb.jy ], [ %i.ajo, %bb.jz ] ; 5 uses
  %i.ajp = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, null
  br i1 %i.ajp, label %bb.ka, label %bb.kb, !prof !29

bb.ka:                                            ; preds = %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %i.ajk, i64 noundef %i.ajl) #40
          to label %.noexc11.i.i.i.i.i unwind label %bb.kd, !noalias !9118

.noexc11.i.i.i.i.i:                               ; preds = %bb.ka
  unreachable

bb.kb:                                            ; preds = %_RNCNvMsp_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E19allocate_for_ptr_in0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, align 8, !noalias !9118
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.ajq, align 8, !noalias !9118
  %i.ajr = add nsw i64 %i.aji, -1                 ; 3 uses
  %i.ajs = and i64 %i.ajr, -16
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aju, ptr nonnull align 1 %.sroa.11123.0224.i.i, i64 %i.ajg, i1 false), !noalias !9118
  %i.ajv = add nuw i64 %i.ajr, %i.ajg
  %i.ajw = sub nsw i64 0, %i.aji                  ; 2 uses
  %i.ajx = and i64 %i.ajv, %i.ajw
  %i.ajy = add nuw i64 %i.ajx, %i.ajr
  %i.ajz = and i64 %i.ajy, %i.ajw                 ; 2 uses
  %i.aka = icmp eq i64 %i.ajz, 0
  br i1 %i.aka, label %bb.kf, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11123.0224.i.i, i64 noundef range(i64 1, -9223372035781033986) %i.ajz, i64 noundef range(i64 1, 536870913) %i.aji) #36, !noalias !9118
  br label %bb.kf

bb.kd:                                            ; preds = %bb.ka, %bb.jx
  %i.akb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsjsY2yM364a4_11lance_tools(ptr nonnull %.sroa.11123.0224.i.i, ptr nonnull readonly align 8 dereferenceable(112) %.sroa.12124.0220.i.i) #41
          to label %.body46.i.i unwind label %bb.ke, !noalias !9010

bb.ke:                                            ; preds = %bb.kd
  %i.akc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !9118
  unreachable

bb.kf:                                            ; preds = %bb.kc, %bb.kb
  %i.akd = load ptr, ptr %i.aja, align 8, !noalias !9009, !nonnull !24, !align !41, !noundef !24
  %.val39.i.i = load ptr, ptr %i.akd, align 8, !noalias !9010, !nonnull !24, !noundef !24 ; 2 uses
  %i.ake = atomicrmw add ptr %.val39.i.i, i64 1 monotonic, align 8, !noalias !9010
  %i.akf = icmp slt i64 %i.ake, 0
  br i1 %i.akf, label %bb.kg, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.kf
  %i.akg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.akh = load i64, ptr %i.akg, align 8, !noalias !9009, !noundef !24
  %i.aki = ptrtoint ptr %.sroa.12124.0220.i.i to i64
  br label %bb.ki

bb.kh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore14open_with_size0ECsjsY2yM364a4_11lance_tools.exit.i.i
  %.sroa.0136.0.insert.ext144.i.i = zext i8 %.sroa.0121.0228.i.i to i64
  %.sroa.0136.1.insert.ext149.i.i = zext i56 %.sroa.10122.sroa.0.0215.i.i to i64
  %.sroa.0136.1.insert.shift150.i.i = shl nuw i64 %.sroa.0136.1.insert.ext149.i.i, 8
  %.sroa.0136.1.insert.insert152.i.i = or disjoint i64 %.sroa.0136.1.insert.shift150.i.i, %.sroa.0136.0.insert.ext144.i.i
  %i.akj = inttoptr i64 %.sroa.0136.1.insert.insert152.i.i to ptr
  %i.akk = ptrtoint ptr %.sroa.11123.0224.i.i to i64
  %i.akl = extractelement <2 x i64> %i.aiz, i64 0
  %i.akm = extractelement <2 x i64> %i.aiz, i64 1
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i, %bb.bs
  %i.akn = phi ptr [ %i.aiv, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.aiv, %bb.kh ], [ %i.gy, %bb.bs ] ; 2 uses
  %i.ako = phi ptr [ %i.aiw, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.aiw, %bb.kh ], [ %i.gz, %bb.bs ] ; 2 uses
  %i.akp = phi ptr [ %i.aix, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.aix, %bb.kh ], [ %i.ha, %bb.bs ]
  %i.akq = phi ptr [ %i.aiy, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.aiy, %bb.kh ], [ %i.hb, %bb.bs ]
  %.sroa.0136.0.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.akj, %bb.kh ], [ %i.jq, %bb.bs ] ; 2 uses
  %i.akr = phi i1 [ false, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ true, %bb.kh ], [ true, %bb.bs ]
  %.sroa.17142.0.i.i = phi i8 [ 0, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ 2, %bb.kh ], [ 2, %bb.bs ]
  %.sroa.16.0.i.i = phi ptr [ null, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %.sroa.13.sroa.8.0216.i.i, %bb.kh ], [ %.sroa.888.sroa.7.sroa.9.0.copyload.i.i, %bb.bs ] ; 2 uses
  %.sroa.15.0.i.i = phi i64 [ %.val38.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %.sroa.13.sroa.7.0217.i.i, %bb.kh ], [ %.sroa.888.sroa.7.sroa.8.0.copyload.i.i, %bb.bs ] ; 2 uses
  %.sroa.14141.0.i.i = phi i64 [ %i.akh, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.akm, %bb.kh ], [ %.sroa.888.sroa.7.sroa.7.0.copyload.i.i, %bb.bs ] ; 2 uses
  %.sroa.12140.0.i.i = phi i64 [ %.val37.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.akl, %bb.kh ], [ %.sroa.888.sroa.7.sroa.6.0.copyload.i.i, %bb.bs ] ; 2 uses
  %.sroa.9139.0.i.i = phi ptr [ %.val39.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %.sroa.12124.0220.i.i, %bb.kh ], [ %.sroa.888.sroa.7.sroa.0.0.copyload.i.i, %bb.bs ] ; 2 uses
  %.sroa.6138.0.i.i = phi i64 [ %i.aki, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.akk, %bb.kh ], [ %.sroa.888.sroa.6.0.copyload.i.i, %bb.bs ] ; 2 uses
  store i8 1, ptr %i.akp, align 8, !noalias !9009
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13ScanScheduler23open_file_with_priority0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.akq)
          to label %bb.km unwind label %bb.kj, !noalias !9008

bb.kj:                                            ; preds = %bb.ki
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.kk:                                            ; preds = %.body.i
  %i.akt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !9008
  unreachable

bb.kl:                                            ; preds = %.thread.i.i, %bb.bp, %.thread231.i.i, %bb.jw
  %i.aku = phi ptr [ %i.jy, %bb.jw ], [ %i.air, %.thread231.i.i ], [ %i.gy, %bb.bp ], [ %i.gy, %.thread.i.i ]
  %i.akv = phi ptr [ %i.ka, %bb.jw ], [ %i.ais, %.thread231.i.i ], [ %i.ha, %bb.bp ], [ %i.ha, %.thread.i.i ]
  %.sink.i.ph.i = phi i8 [ 4, %bb.jw ], [ 4, %.thread231.i.i ], [ 3, %bb.bp ], [ 3, %.thread.i.i ]
  store i8 %.sink.i.ph.i, ptr %i.akv, align 8, !noalias !9009
  store i8 3, ptr %i.aku, align 8, !noalias !9007
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %common.ret

bb.km:                                            ; preds = %bb.ki
  store i8 1, ptr %i.akn, align 8, !noalias !9007
  br i1 %i.akr, label %bb.kn, label %.thread348

.thread348:                                       ; preds = %bb.km
  store ptr %.sroa.0136.0.i.i, ptr %i.ako, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.sroa.6138.0.i.i, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %.sroa.9139.0.i.i, ptr %.sroa.5162.0..sroa_idx, align 8
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %.sroa.12140.0.i.i, ptr %.sroa.6163.0..sroa_idx, align 8
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %.sroa.14141.0.i.i, ptr %.sroa.7164.0..sroa_idx, align 8
  %.sroa.8165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %.sroa.15.0.i.i, ptr %.sroa.8165.0..sroa_idx, align 8
  %.sroa.9166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %.sroa.16.0.i.i, ptr %.sroa.9166.0..sroa_idx, align 8
  %.sroa.11168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %.sroa.17142.0.i.i, ptr %.sroa.11168.0..sroa_idx, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ako, ptr %i.akw, align 8
  %.sroa.9182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i8 0, ptr %.sroa.9182.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8186.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2260.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2462.i)
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.sink706.i.sroa.gep.i349 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink706.i.sroa.gep92.i350 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink706.i.sroa.gep94.i351 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink706.i.sroa.gep95.i352 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink706.i.sroa.gep97.i353 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink706.i.sroa.gep98.i354 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %.thread153.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsb_NtCsaSXGKSfiU2E_10lance_file6readerNtBJ_10FileReader17read_all_metadata0ECsjsY2yM364a4_11lance_tools.exit: ; preds = %.body52, %.body52.thread, %bb.kq
  %.pn5 = phi { ptr, i32 } [ %.pn.i32, %.body52.thread ], [ %i.alh, %bb.kq ], [ %i.alh, %.body52 ]
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13FileSchedulerECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(72) %i.aky) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsi_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13ScanScheduler9open_file0ECsjsY2yM364a4_11lance_tools.exit unwind label %bb.q

bb.kn:                                            ; preds = %bb.km, %bb.qw
  %.sroa.5198.0 = phi ptr [ %.sroa.8186.sroa.0.0.copyload, %bb.qw ], [ %.sroa.0136.0.i.i, %bb.km ]
  %.sroa.18.0 = phi ptr [ %.sroa.8186.sroa.11.0.copyload, %bb.qw ], [ %.sroa.16.0.i.i, %bb.km ]
  %.sroa.16.0 = phi i64 [ %.sroa.8186.sroa.10.0.copyload, %bb.qw ], [ %.sroa.15.0.i.i, %bb.km ]
  %.sroa.15205.0 = phi i64 [ %.sroa.8186.sroa.9.0.copyload, %bb.qw ], [ %.sroa.14141.0.i.i, %bb.km ]
  %.sroa.14.0 = phi i64 [ %.sroa.8186.sroa.8.0.copyload, %bb.qw ], [ %.sroa.12140.0.i.i, %bb.km ]
  %.sroa.12202.0 = phi ptr [ %.sroa.8186.sroa.7.0.copyload, %bb.qw ], [ %.sroa.9139.0.i.i, %bb.km ]
  %.sroa.10200.0 = phi i64 [ %.sroa.8186.sroa.6.0.copyload, %bb.qw ], [ %.sroa.6138.0.i.i, %bb.km ]
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9119)
  call void @llvm.experimental.noalias.scope.decl(metadata !9120)
end_hunk_6
