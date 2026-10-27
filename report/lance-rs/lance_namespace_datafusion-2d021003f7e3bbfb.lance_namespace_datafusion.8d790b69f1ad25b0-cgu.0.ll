Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15008
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1C_11UringReader4open000ENtNtBT_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bq, align 8, !noalias !22733
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !22733
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !22757
  %i.bs = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !22757 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ae, label %bb.ah, !prof !112

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #48
          to label %.noexc75.i.i.i.i.i.i.i.i.i.i unwind label %bb.af, !noalias !22733

.noexc75.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l) #49
          to label %.body71.i.i.i.i.i.i.i.i.i.i unwind label %bb.ag, !noalias !22733

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22733
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !22733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22733
  call void @llvm.experimental.noalias.scope.decl(metadata !22758)
  %.val.i76.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !22759, !noalias !22730 ; 2 uses
  %i.bw = icmp eq i64 %.val.i76.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i76.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !22760
  br label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.w, %bb.u
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bx = call noundef i32 @close(i32 noundef %i.bc) #44, !noalias !22733 ; 0 uses
  br label %.body71.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.8.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.8.copyload.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ @328, %bb.q ]
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.07.0.copyload.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22733
  %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !22745
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !22733
  %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.10.8.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !22745
  %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !22745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22733
  br label %bb.aa

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.body71.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.028.0.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %.body.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !22761)
  call void @llvm.experimental.noalias.scope.decl(metadata !22762)
  %.val.i.i79.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !22763, !noalias !22730 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i79.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %.body.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val1.i.i80.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !22763, !noalias !22730, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i80.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i79.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !22764
  br label %.body.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBN_11UringReader4open000ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(64) %i.u) #49, !noalias !22730
  br label %.body.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @449, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #48
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.av, !noalias !22727

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ap, %bb.an, %bb.am, %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.ap ], [ %i.cb, %bb.an ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.am ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.body.i.i.i.i.i.i unwind label %bb.aq, !noalias !22726

bb.aq:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22726
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.sroa.9.0.copyload.i.i.i = phi ptr [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.bs, %bb.ah ], [ %i.bs, %bb.ai ] ; 3 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ undef, %bb.ah ], [ undef, %bb.ai ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ -1, %bb.ah ], [ -1, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22730
  store i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !22765, !noalias !22724
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !22766
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.7.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !22765, !noalias !22724
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.9.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !22765, !noalias !22724
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !22765, !noalias !22724
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !22766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22730
  %i.ce = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.av, !noalias !22727

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !22726
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !22724
  store i32 2, ptr %i.w, align 8, !noalias !22724
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.w)
          to label %bb.at unwind label %bb.as, !noalias !22724

bb.as:                                            ; preds = %bb.ar
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.x) #49
          to label %.body.i.i.i.i.i.i unwind label %bb.au, !noalias !22724

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !22724
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22724
  unreachable

bb.av:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, %bb.ao, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.av, %bb.as, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22727
  store i32 2, ptr %i.g, align 8, !noalias !22727
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g)
          to label %.body.i.i.i unwind label %bb.aw, !noalias !22727

bb.aw:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22727
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22727
  %i.cj = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ck = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cj)
          to label %.thread.i.i.i unwind label %bb.ax ; 2 uses

bb.ax:                                            ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !22724
  %i.cp = ptrtoint ptr %.sroa.080.0.copyload.i.i.i to i64
  %.sroa.080.0.extract.trunc.i.i.i = trunc i64 %i.cp to i8
  switch i8 %.sroa.080.0.extract.trunc.i.i.i, label %bb.ba [
    i8 -3, label %bb.az
    i8 -2, label %bb.bn
  ], !prof !234

bb.az:                                            ; preds = %bb.ay, %.thread.i.i.i
  %.sroa.85.0102.i.i.i = phi ptr [ %i.cm, %.thread.i.i.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.10.0101.i.i.i = phi ptr [ %i.cn, %.thread.i.i.i ], [ %i.ce, %bb.ay ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.85.0102.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0101.i.i.i) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load i64, ptr %i.cq, align 8, !range !119, !noundef !109
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22767
  store ptr %.sroa.082.1.insert.insert.i.i.i, ptr %i.cw, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.sroa.5.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.cv, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !noalias !22767
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

.thread113.i.i.i:                                 ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22767
  br label %bb.bo

bb.be:                                            ; preds = %bb.bc
  %i.db = extractvalue { ptr, ptr } %i.cz, 0      ; 4 uses
  %i.dc = extractvalue { ptr, ptr } %i.cz, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = load ptr, ptr %i.dc, align 8, !invariant.load !109 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void %i.dd(ptr noundef nonnull %i.db)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.bo, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) %i.di) #44
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.bh
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) %i.do) #44
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.by, %bb.bx, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bh
  %common.resume.op.i = phi { ptr, i32 } [ %i.eh, %bb.by ], [ %i.eg, %bb.bx ], [ %i.dj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dj, %bb.bh ]
  resume { ptr, i32 } %common.resume.op.i

bb.bi:                                            ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 2, ptr %i.d, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.du = extractvalue { ptr, ptr } %i.ds, 0
  %i.dv = extractvalue { ptr, ptr } %i.ds, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bl ], [ %i.dv, %bb.bm ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bl ], [ %i.du, %bb.bm ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !119, !noundef !109
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
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bu

bb.bn:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.dx = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.dx, label %default.unreachable [
    i8 3, label %bb.bp
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit
    i8 1, label %bb.bv
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ]

bb.bo:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bg, %.thread113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.ec = extractvalue { ptr, ptr } %i.ea, 0
  %i.ed = extractvalue { ptr, ptr } %i.ea, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i: ; preds = %bb.bt, %bb.bs
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.bs ], [ %i.ed, %bb.bt ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.bs ], [ %i.ec, %bb.bt ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.ad, align 8, !range !119, !noundef !109
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
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bu

bb.bu:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i, %bb.bo, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1O_11UringReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE8completeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bv:                                            ; preds = %bb.bn
  call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noundef nonnull %0)
  %i.ef = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.ef, label %bb.bw, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2f_11UringReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.bw
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.bn, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2f_11UringReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.by

bb.by:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1S_11UringReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.bn, %bb.bu, %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1B_17LocalObjectReader17open_with_tracker000ENtNtBT_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 8 uses
  %i.f = alloca [88 x i8], align 8                ; 9 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1B_17LocalObjectReader17open_with_tracker000ENtNtBT_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !22850
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !22838 ; 2 uses
  %.sroa.9.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.9.8.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !22850 ; 2 uses
  %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !22850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22838
  call void @llvm.experimental.noalias.scope.decl(metadata !22860)
  call void @llvm.experimental.noalias.scope.decl(metadata !22861)
  %.val.i.i54.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !22862, !noalias !22835 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i54.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val1.i.i55.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !22862, !noalias !22835, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i55.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i54.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !22863
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !22864)
  call void @llvm.experimental.noalias.scope.decl(metadata !22865)
  %.val.i.i2.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !22866, !noalias !22835 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i2.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.val1.i.i3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !22866, !noalias !22835, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !22867
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22868)
  call void @llvm.experimental.noalias.scope.decl(metadata !22869)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !22870, !noalias !22835, !nonnull !109, !noundef !109
  %i.ce = atomicrmw add ptr %i.cd, i64 -1 release, align 8, !noalias !22871
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.aj, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i unwind label %bb.ar, !noalias !22831

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.body45.i.i.i.i.i.i.i.i.i.i
  br i1 %cond.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !22872)
  call void @llvm.experimental.noalias.scope.decl(metadata !22873)
  %.val.i.i56.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !22874, !noalias !22835 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i56.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ch, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.val1.i.i57.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !22874, !noalias !22835, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i56.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !22875
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22876)
  call void @llvm.experimental.noalias.scope.decl(metadata !22877)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !22878, !noalias !22835, !nonnull !109, !noundef !109
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !22879
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.an, label %.body.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !22852

bb.ao:                                            ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtBM_17LocalObjectReader17open_with_tracker000ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(80) %i.q) #49
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !22835

bb.ap:                                            ; preds = %bb.ao
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22835
  unreachable

bb.aq:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @449, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #48
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.ax, !noalias !22832

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aj, %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ar, %bb.ao, %bb.an, %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cp, %bb.ar ], [ %.pn39.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ %i.cn, %bb.ao ], [ %.pn39.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pn39.i.i.i.i.i.i.i.i.i.i, %bb.am ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.body.i.i.i.i.i.i unwind label %bb.as, !noalias !22831

bb.as:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22831
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ab
  %.sroa.13.0.copyload.i.i.i = phi ptr [ @340, %bb.ac ], [ %.sroa.9.8.copyload.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ @340, %bb.ab ], [ %.sroa.9.8.copyload.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 3 uses
  %.sroa.9.0.copyload.i.i.i = phi ptr [ %i.bp, %bb.ac ], [ %.sroa.7.8.copyload.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.ab ], [ %.sroa.7.8.copyload.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 3 uses
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.ac ], [ %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ab ], [ %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.aj ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ -1, %bb.ac ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit4.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ab ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22835
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !22880, !noalias !22829
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !22881
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %.sroa.6.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !22880, !noalias !22829
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.9.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !22880, !noalias !22829
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.13.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !22880, !noalias !22829
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !22881
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22835
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.ax, !noalias !22832

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22831
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !22829
  store i32 2, ptr %i.s, align 8, !noalias !22829
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.s)
          to label %bb.av unwind label %bb.au, !noalias !22829

bb.au:                                            ; preds = %bb.at
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.t) #49
          to label %.body.i.i.i.i.i.i unwind label %bb.aw, !noalias !22829

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22829
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22829
  unreachable

bb.ax:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, %bb.aq, %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ax, %bb.au, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ct, %bb.ax ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22832
  store i32 2, ptr %i.g, align 8, !noalias !22832
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.g)
          to label %.body.i.i.i unwind label %bb.ay, !noalias !22832

bb.ay:                                            ; preds = %.body.i.i.i.i.i.i
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22832
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22832
  %i.cv = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.cw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cv)
          to label %.thread.i.i.i unwind label %bb.az ; 2 uses

bb.az:                                            ; preds = %.body.i.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22829
  %i.db = ptrtoint ptr %.sroa.080.0.copyload.i.i.i to i64
  %.sroa.080.0.extract.trunc.i.i.i = trunc i64 %i.db to i8
  switch i8 %.sroa.080.0.extract.trunc.i.i.i, label %bb.bc [
    i8 -3, label %bb.bb
    i8 -2, label %bb.bp
  ], !prof !234

bb.bb:                                            ; preds = %bb.ba, %.thread.i.i.i
  %.sroa.85.0102.i.i.i = phi ptr [ %i.cy, %.thread.i.i.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.10.0101.i.i.i = phi ptr [ %i.cz, %.thread.i.i.i ], [ %.sroa.13.0.copyload.i.i.i, %bb.ba ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.85.0102.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0101.i.i.i) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !range !119, !noundef !109
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22882
  store ptr %.sroa.082.1.insert.insert.i.i.i, ptr %i.di, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.sroa.5.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.dh, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !noalias !22882
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

.thread113.i.i.i:                                 ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22882
  br label %bb.bq

bb.bg:                                            ; preds = %bb.be
  %i.dn = extractvalue { ptr, ptr } %i.dl, 0      ; 4 uses
  %i.do = extractvalue { ptr, ptr } %i.dl, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !109 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void %i.dp(ptr noundef nonnull %i.dn)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.bq, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bi
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) %i.du) #44
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.bj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) %i.ea) #44
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ca, %bb.bz, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bj
  %common.resume.op.i = phi { ptr, i32 } [ %i.et, %bb.ca ], [ %i.es, %bb.bz ], [ %i.dv, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dv, %bb.bj ]
  resume { ptr, i32 } %common.resume.op.i

bb.bk:                                            ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 2, ptr %i.d, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.eb, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.d)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.bo:                                            ; preds = %bb.bl
  %i.eg = extractvalue { ptr, ptr } %i.ee, 0
  %i.eh = extractvalue { ptr, ptr } %i.ee, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.bo, %bb.bn
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bn ], [ %i.eh, %bb.bo ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bn ], [ %i.eg, %bb.bo ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !119, !noundef !109
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
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.eb, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bw

bb.bp:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.ej = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.ej, label %default.unreachable [
    i8 3, label %bb.br
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit
    i8 1, label %bb.bx
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ]

bb.bq:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bi, %.thread113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.bw

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i

bb.bv:                                            ; preds = %bb.bs
  %i.eo = extractvalue { ptr, ptr } %i.em, 0
  %i.ep = extractvalue { ptr, ptr } %i.em, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i: ; preds = %bb.bv, %bb.bu
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.bu ], [ %i.ep, %bb.bv ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.bu ], [ %i.eo, %bb.bv ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.z, align 8, !range !119, !noundef !109
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
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bw

bb.bw:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i, %bb.bq, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1N_17LocalObjectReader17open_with_tracker000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE8completeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bx:                                            ; preds = %bb.bp
  call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noundef nonnull %0)
  %i.er = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.er, label %bb.by, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2e_17LocalObjectReader17open_with_tracker000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.by
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.bp, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2e_17LocalObjectReader17open_with_tracker000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.ca

bb.ca:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1R_17LocalObjectReader17open_with_tracker000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.bp, %bb.bw, %bb.bx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1B_24UringCurrentThreadReader4open000ENtNtBT_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [72 x i8], align 8                ; 9 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1B_24UringCurrentThreadReader4open000ENtNtBT_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bq, align 8, !noalias !22941
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !22941
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !22965
  %i.bs = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !22965 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ae, label %bb.ah, !prof !112

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #48
          to label %.noexc75.i.i.i.i.i.i.i.i.i.i unwind label %bb.af, !noalias !22941

.noexc75.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l) #49
          to label %.body71.i.i.i.i.i.i.i.i.i.i unwind label %bb.ag, !noalias !22941

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22941
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !22941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22941
  call void @llvm.experimental.noalias.scope.decl(metadata !22966)
  %.val.i76.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !22967, !noalias !22938 ; 2 uses
  %i.bw = icmp eq i64 %.val.i76.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i76.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !22968
  br label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.w, %bb.u
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bx = call noundef i32 @close(i32 noundef %i.bc) #44, !noalias !22941 ; 0 uses
  br label %.body71.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.8.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.8.copyload.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ @334, %bb.q ]
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.07.0.copyload.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22941
  %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.69.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !22953
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !22941
  %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.10.8.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !22953
  %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa.814.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !22953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22941
  br label %bb.aa

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %.body71.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.028.0.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %.body.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !22969)
  call void @llvm.experimental.noalias.scope.decl(metadata !22970)
  %.val.i.i79.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !22971, !noalias !22938 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i79.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %.body.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val1.i.i80.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !22971, !noalias !22938, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i80.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i79.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !22972
  br label %.body.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtBM_24UringCurrentThreadReader4open000ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(64) %i.u) #49, !noalias !22938
  br label %.body.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @449, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #48
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.av, !noalias !22935

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ap, %bb.an, %bb.am, %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.ap ], [ %i.cb, %bb.an ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.am ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.body.i.i.i.i.i.i unwind label %bb.aq, !noalias !22934

bb.aq:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22934
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.018.0.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.sroa.9.0.copyload.i.i.i = phi ptr [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.bs, %bb.ah ], [ %i.bs, %bb.ai ] ; 3 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ undef, %bb.ah ], [ undef, %bb.ai ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ac ], [ -1, %bb.ah ], [ -1, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22938
  store i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !22973, !noalias !22932
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !22974
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.7.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !22973, !noalias !22932
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.9.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !22973, !noalias !22932
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !22973, !noalias !22932
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !22974
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22938
  %i.ce = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.av, !noalias !22935

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !22934
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.1.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !22932
  store i32 2, ptr %i.w, align 8, !noalias !22932
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.w)
          to label %bb.at unwind label %bb.as, !noalias !22932

bb.as:                                            ; preds = %bb.ar
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.x) #49
          to label %.body.i.i.i.i.i.i unwind label %bb.au, !noalias !22932

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !22932
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22932
  unreachable

bb.av:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleE4poll0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, %bb.ao, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.av, %bb.as, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ch, %bb.av ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22935
  store i32 2, ptr %i.g, align 8, !noalias !22935
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g)
          to label %.body.i.i.i unwind label %bb.aw, !noalias !22935

bb.aw:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !22935
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22935
  %i.cj = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ck = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cj)
          to label %.thread.i.i.i unwind label %bb.ax ; 2 uses

bb.ax:                                            ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !22932
  %i.cp = ptrtoint ptr %.sroa.080.0.copyload.i.i.i to i64
  %.sroa.080.0.extract.trunc.i.i.i = trunc i64 %i.cp to i8
  switch i8 %.sroa.080.0.extract.trunc.i.i.i, label %bb.ba [
    i8 -3, label %bb.az
    i8 -2, label %bb.bn
  ], !prof !234

bb.az:                                            ; preds = %bb.ay, %.thread.i.i.i
  %.sroa.85.0102.i.i.i = phi ptr [ %i.cm, %.thread.i.i.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.10.0101.i.i.i = phi ptr [ %i.cn, %.thread.i.i.i ], [ %i.ce, %bb.ay ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.85.0102.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0101.i.i.i) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load i64, ptr %i.cq, align 8, !range !119, !noundef !109
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22975
  store ptr %.sroa.082.1.insert.insert.i.i.i, ptr %i.cw, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.sroa.5.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.cv, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i.i, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !noalias !22975
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

.thread113.i.i.i:                                 ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22975
  br label %bb.bo

bb.be:                                            ; preds = %bb.bc
  %i.db = extractvalue { ptr, ptr } %i.cz, 0      ; 4 uses
  %i.dc = extractvalue { ptr, ptr } %i.cz, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = load ptr, ptr %i.dc, align 8, !invariant.load !109 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void %i.dd(ptr noundef nonnull %i.db)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.bo, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) %i.di) #44
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.bh
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) %i.do) #44
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.by, %bb.bx, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bh
  %common.resume.op.i = phi { ptr, i32 } [ %i.eh, %bb.by ], [ %i.eg, %bb.bx ], [ %i.dj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dj, %bb.bh ]
  resume { ptr, i32 } %common.resume.op.i

bb.bi:                                            ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 2, ptr %i.d, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.du = extractvalue { ptr, ptr } %i.ds, 0
  %i.dv = extractvalue { ptr, ptr } %i.ds, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bl ], [ %i.dv, %bb.bm ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bl ], [ %i.du, %bb.bm ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !119, !noundef !109
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
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bu

bb.bn:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.dx = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.dx, label %default.unreachable [
    i8 3, label %bb.bp
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit
    i8 1, label %bb.bv
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ]

bb.bo:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bg, %.thread113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b)
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.ec = extractvalue { ptr, ptr } %i.ea, 0
  %i.ed = extractvalue { ptr, ptr } %i.ea, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i: ; preds = %bb.bt, %bb.bs
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.bs ], [ %i.ed, %bb.bt ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.bs ], [ %i.ec, %bb.bt ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.ad, align 8, !range !119, !noundef !109
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
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1L_24UringCurrentThreadReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bu

bb.bu:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit8.i.i, %bb.bo, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1N_24UringCurrentThreadReader4open000ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE8completeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bv:                                            ; preds = %bb.bn
  call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noundef nonnull %0)
  %i.ef = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.ef, label %bb.bw, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2e_24UringCurrentThreadReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.bw
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.bn, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2e_24UringCurrentThreadReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.by

bb.by:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB1R_24UringCurrentThreadReader4open000ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.bn, %bb.bu, %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB2O_24UringCurrentThreadReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1A_9GetResult5bytes00ENtNtBT_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
end_hunk_2
begin_hunk_3_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1A_9GetResult5bytes00ENtNtBT_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23006
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8, !range !119, !noalias !23006, !noundef !109
  %i.r = invoke noundef i64 @_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.q)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !noalias !23007

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.r, ptr %i.h, align 8, !noalias !23006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23010
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !23009, !noalias !23006 ; 2 uses
  store i64 -1, ptr %i.s, align 8, !alias.scope !23009, !noalias !23006
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !112

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !23010
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !23011
  %i.t = invoke { i1, i8 } @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop4stop()
          to label %bb.f unwind label %bb.k, !noalias !23010 ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @704, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706) #48
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !23006

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  unreachable

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !23010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23012)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23013
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !23012, !noalias !23010, !nonnull !109, !noundef !109
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !23012, !noalias !23010, !noundef !109
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !23012, !noalias !23010, !noundef !109
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !23012, !noalias !23010, !noundef !109
  invoke void @_RNvNtCs3PfUT229lOd_12object_store5local10read_range(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z, i64 noundef %i.ab, i64 noundef %i.ad)
          to label %bb.g unwind label %.body.i.i.i.i.i.i.i.i.i, !noalias !23014

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.e, align 8, !range !235, !noalias !23013, !noundef !109 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !noalias !23013
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !23015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !23015
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !23016)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.v, align 8, !range !178, !alias.scope !23017, !noalias !23010, !noundef !109
  %i.ag = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i.i.i.i) #44, !noalias !23018 ; 0 uses
  %.val.i1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !23019, !noalias !23010 ; 2 uses
  %i.ah = icmp eq i64 %.val.i1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtBL_9GetResult5bytes00ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !23015
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !23020)
  %.val.i17.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.v, align 8, !range !178, !alias.scope !23021, !noalias !23010, !noundef !109
  %i.ai = call noundef i32 @close(i32 noundef %.val.i17.i.i.i.i.i.i.i.i.i.i) #44, !noalias !23022 ; 0 uses
  %.val.i1.i18.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !23023, !noalias !23010 ; 2 uses
  %i.aj = icmp eq i64 %.val.i1.i18.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtBL_9GetResult5bytes00ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtBL_9GetResult5bytes00ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.val.i1.i18.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.val.i1.i18.i.i.i.i.i.i.i.i.i.i, %bb.i ]
  %.val1.i2.i19.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !23012, !noalias !23010, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i19.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i1.i18.sink.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !23014
  br label %bb.o

bb.j:                                             ; preds = %bb.k, %.body.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %bb.k ], [ %i.f, %.body.i.i.i.i.i.i.i.i.i ]
  %eh.lpad-body4.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.u, %.body.i.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtBL_9GetResult5bytes00ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(48) %.sink.i.i.i.i.i.i.i.i.i) #49, !noalias !23010
  br label %.body.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.j

bb.l:                                             ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @449, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #48
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.r, !noalias !23007

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.m, %bb.j
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.al, %bb.m ], [ %eh.lpad-body4.i.i.i.i.i.i.i.i.i, %bb.j ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.body.i.i.i.i.i.i unwind label %bb.n, !noalias !23006

bb.n:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !23006
  unreachable

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtBL_9GetResult5bytes00ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23010
  store i64 %i.ae, ptr %i.j, align 8, !alias.scope !23024, !noalias !23004
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !23025
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !23025
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23010
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.r, !noalias !23007

.noexc2.i.i.i.i.i.i:                              ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23004
  store i32 2, ptr %i.i, align 8, !noalias !23004
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.i)
          to label %bb.u unwind label %bb.p, !noalias !23004

bb.p:                                             ; preds = %.noexc2.i.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(72) %i.j) #49
          to label %.body.i.i.i.i.i.i unwind label %bb.q, !noalias !23004

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !23004
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.l, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.r, %bb.p, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.an, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23007
  store i32 2, ptr %i.d, align 8, !noalias !23007
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.d)
          to label %.body.i.i.i unwind label %bb.s, !noalias !23007

bb.s:                                             ; preds = %.body.i.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !23007
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23007
  %i.ar = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.as = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ar)
          to label %.thread.i.i.i unwind label %bb.t ; 2 uses

bb.t:                                             ; preds = %.body.i.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.au = extractvalue { ptr, ptr } %i.as, 0      ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !range !119, !noundef !109
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = inttoptr i64 %i.ax to ptr
  %i.ba = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ay, i64 0
  %i.bb = insertelement <2 x ptr> poison, ptr %i.az, i64 0
  %i.bc = insertelement <2 x ptr> %i.bb, ptr %i.au, i64 1
  br label %bb.v

bb.u:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23004
  %i.bd = load <2 x ptr>, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.be = load <2 x i64>, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23004
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i.i
  %.sroa.012.0.i.i.i = phi i64 [ %i.ae, %bb.u ], [ -2, %.thread.i.i.i ]
  %i.bf = phi <2 x i64> [ %i.be, %bb.u ], [ %i.ba, %.thread.i.i.i ]
  %i.bg = phi <2 x ptr> [ %i.bd, %bb.u ], [ %i.bc, %.thread.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23026
  store i64 %.sroa.012.0.i.i.i, ptr %i.bh, align 8
  %.sroa.678.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x ptr> %i.bg, ptr %.sroa.678.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x i64> %i.bf, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i, i64 32, i1 false)
  store i32 1, ptr %i.c, align 8, !noalias !23026
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c)
          to label %.thread102.i.i.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bj)
          to label %bb.y unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

.thread102.i.i.i:                                 ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23026
  br label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.bm = extractvalue { ptr, ptr } %i.bk, 0      ; 4 uses
  %i.bn = extractvalue { ptr, ptr } %i.bk, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !109 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void %i.bo(ptr noundef nonnull %i.bm)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ai, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %i.bt) #44
  br label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #44
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ak, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ac
  %common.resume.op.i = phi { ptr, i32 } [ %i.ci, %bb.ak ], [ %i.bu, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.bu, %bb.ac ]
  resume { ptr, i32 } %common.resume.op.i

bb.ad:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  %i.cd = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.cc)
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50
  unreachable

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.cf = extractvalue { ptr, ptr } %i.cd, 0
  %i.cg = extractvalue { ptr, ptr } %i.cd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.ah, %bb.ag
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.ag ], [ %i.cg, %bb.ah ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.ag ], [ %i.cf, %bb.ah ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !119, !noundef !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -2, ptr %i.ch, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.ai:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.ab, %bb.y, %.thread102.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8completeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2d_9GetResult5bytes00ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2N_9GetResult5bytes00ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2N_9GetResult5bytes00ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a, %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2N_9GetResult5bytes00ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw7deallocINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1F_11UringReader4open000ENtNtBW_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2f_11UringReader4open000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2P_11UringReader4open000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw7deallocINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1E_17LocalObjectReader17open_with_tracker000ENtNtBW_8schedule16BlockingScheduleECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2e_17LocalObjectReader17open_with_tracker000ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB2O_17LocalObjectReader17open_with_tracker000ENtNtB25_8schedule16BlockingScheduleEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #44
end_hunk_3
begin_hunk_4_@_RNCINvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtB8_5CacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBW_16CachedReaderDataE3getBU_E0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !25338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25288
  store i64 %.sroa.0.0.i45.i.i.i.i.i, ptr %i.i, align 8, !noalias !25339
  %i.lg = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lf, i64 noundef %.sroa.0.0.i45.i.i.i.i.i)
          to label %.noexc48.i.i.i.i.i unwind label %bb.bq, !noalias !25288 ; 2 uses

.noexc48.i.i.i.i.i:                               ; preds = %bb.bx
  %i.lh = extractvalue { i64, i32 } %i.lg, 0      ; 2 uses
  %i.li = extractvalue { i64, i32 } %i.lg, 1      ; 2 uses
  %i.lj = load ptr, ptr %i.ge, align 8, !alias.scope !25338, !noalias !25288, !nonnull !109, !noundef !109 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24 ; 5 uses
  %i.ll = load atomic i64, ptr %i.lk acquire, align 8, !noalias !25340 ; 2 uses
  %i.lm = and i64 %i.ll, -4096
  %i.ln = icmp ult i64 %i.ll, -4096               ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i = zext i1 %i.ln to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25339
  %.not.i46.i.i.i.i.i = icmp eq i32 %i.la, -1
  br i1 %.not.i46.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.noexc48.i.i.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.lp = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.lo)
          to label %.noexc49.i.i.i.i.i unwind label %bb.bq, !noalias !25288 ; 2 uses

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !25339
  store i64 %i.lt, ptr %i.g, align 8, !noalias !25339
  %i.lu = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %i.ky, i32 noundef range(i32 -1, 1000000000) %i.la)
          to label %.noexc50.i.i.i.i.i unwind label %bb.bq, !noalias !25288

.noexc50.i.i.i.i.i:                               ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25339
  br label %bb.bz

bb.cb:                                            ; preds = %bb.bz
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lw = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.lv)
          to label %.noexc51.i.i.i.i.i unwind label %bb.bq, !noalias !25288 ; 2 uses

.noexc51.i.i.i.i.i:                               ; preds = %bb.cb
  %i.lx = extractvalue { i64, i64 } %i.lw, 0
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.cd, label %.split.preheader.i.i.i.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc52.i.i.i.i.i, %.noexc51.i.i.i.i.i, %bb.bz
  %.sroa.615.0.i.i.i.i.i.i = phi i64 [ undef, %bb.bz ], [ %i.nh, %.noexc52.i.i.i.i.i ], [ undef, %.noexc51.i.i.i.i.i ]
  %i.lz = phi i64 [ 0, %bb.bz ], [ 1, %.noexc52.i.i.i.i.i ], [ 0, %.noexc51.i.i.i.i.i ] ; 2 uses
  %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %.sroa.042.0.i.i.i.i.i.i, ptr %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.lm, ptr %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %i.ls, ptr %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.sroa.613.0.i.i.i.i.i.i, ptr %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store i64 %i.lz, ptr %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %.sroa.615.0.i.i.i.i.i.i, ptr %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.488.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 -1, ptr %.sroa.488.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  %.sroa.690.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 -1, ptr %.sroa.690.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !25339
  call void @llvm.experimental.noalias.scope.decl(metadata !25341)
  br i1 %i.ln, label %bb.cc, label %.split.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %.split.preheader.i.i.i.i.i.i.i.i.i
  %i.ma = trunc nuw i64 %i.ls to i1
  br i1 %i.ma, label %bb.cc, label %.split.i.i.i.1.i.i.i.i.i.i

.split.i.i.i.1.i.i.i.i.i.i:                       ; preds = %.split.i.i.i.i.i.i.i.i.i
  %i.mb = trunc nuw i64 %i.lz to i1
  br i1 %i.mb, label %bb.cc, label %.split.i.i.i.2.i.i.i.i.i.i

.split.i.i.i.2.i.i.i.i.i.i:                       ; preds = %.split.i.i.i.1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25339
  br label %bb.ce

bb.cc:                                            ; preds = %.split.i.i.i.1.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi i64 [ 1, %.split.preheader.i.i.i.i.i.i.i.i.i ], [ 2, %.split.i.i.i.i.i.i.i.i.i ], [ 3, %.split.i.i.i.1.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i.i.i, %.split.i.i.i.1.i.i.i.i.i.i ]
  store i64 %.lcssa13.i.i.i.i.i.i, ptr %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !25342, !noalias !25339
  %i.mc = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i.i, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !alias.scope !25342, !noalias !25339 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i.i.i, i64 64, i1 false), !noalias !25339
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25344)
  call void @llvm.experimental.noalias.scope.decl(metadata !25345)
  %i.mf = load i64, ptr %i.d, align 8, !alias.scope !25346, !noalias !25343, !noundef !109 ; 8 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !alias.scope !25346, !noalias !25343, !noundef !109 ; 5 uses
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
  %i.mn = load i64, ptr %i.mm, align 8, !range !116, !alias.scope !25347, !noalias !25343, !noundef !109
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !alias.scope !25347, !noalias !25343
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
  %i.mu = load i64, ptr %i.mt, align 8, !range !116, !alias.scope !25347, !noalias !25343, !noundef !109
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !alias.scope !25347, !noalias !25343
  %i.mx = trunc nuw i64 %i.mu to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i, i64 %i.mw)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.mx, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.my = add nuw nsw i64 %i.ms, 2                ; 2 uses
  %i.mz = icmp ult i64 %i.ms, 2
  call void @llvm.assume(i1 %i.mz)
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.ms ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !range !116, !alias.scope !25347, !noalias !25343, !noundef !109
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !25347, !noalias !25343
  %i.nf = trunc nuw i64 %i.nc to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ne)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.nf, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.my, %i.mh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %.noexc51.i.i.i.i.i
  %i.ng = extractvalue { i64, i64 } %i.lw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25339
  store i64 %i.ng, ptr %i.f, align 8, !noalias !25339
  %i.nh = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.lc, i32 noundef range(i32 -1, 1000000000) %i.le)
          to label %.noexc52.i.i.i.i.i unwind label %bb.bq, !noalias !25288

.noexc52.i.i.i.i.i:                               ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25339
  br label %.split.preheader.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.md, %bb.cc ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25339
  %i.ni = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lf, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc53.i.i.i.i.i unwind label %bb.bq, !noalias !25288 ; 2 uses

.noexc53.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i
  %i.nj = extractvalue { i64, i32 } %i.ni, 0
  %i.nk = extractvalue { i64, i32 } %i.ni, 1
  store i64 %i.nj, ptr %i.e, align 8, !noalias !25339
  %i.nl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.nk, ptr %i.nl, align 8, !noalias !25339
  %i.nm = invoke { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %i.lh, i32 noundef %i.li)
          to label %.noexc54.i.i.i.i.i unwind label %bb.bq, !noalias !25288 ; 2 uses

.noexc54.i.i.i.i.i:                               ; preds = %.noexc53.i.i.i.i.i
  %i.nn = extractvalue { i64, i32 } %i.nm, 0
  %i.no = extractvalue { i64, i32 } %i.nm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25339
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc54.i.i.i.i.i, %.split.i.i.i.2.i.i.i.i.i.i
  %.sroa.820.0.i.i.i.i.i.i = phi i32 [ %i.no, %.noexc54.i.i.i.i.i ], [ -1, %.split.i.i.i.2.i.i.i.i.i.i ] ; 5 uses
  %.sroa.016.0.i.i.i.i.i.i = phi i64 [ %i.nn, %.noexc54.i.i.i.i.i ], [ undef, %.split.i.i.i.2.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36.i.i.i.i.i) ]
  %i.np = getelementptr inbounds nuw i8, ptr %.val36.i.i.i.i.i, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !range !126, !invariant.load !109, !noalias !25348
  %i.nr = add nsw i64 %i.nq, -1
  %i.ns = and i64 %i.nr, -16
  %i.nt = getelementptr inbounds nuw i8, ptr %.val35.i.i.i.i.i, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %.val36.i.i.i.i.i, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !invariant.load !109, !noalias !25348, !nonnull !109
  %i.nx = invoke { i64, i32 } %i.nw(ptr noundef nonnull %i.nu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gd, i64 noundef %i.lh, i32 noundef range(i32 0, 1000000000) %i.li, i64 %.sroa.016.0.i.i.i.i.i.i, i32 noundef range(i32 -1, 1000000000) %.sroa.820.0.i.i.i.i.i.i, i64 noundef %i.kq, i32 noundef %i.kr)
          to label %.noexc55.i.i.i.i.i unwind label %bb.bq, !noalias !25288, !inline_history !25249 ; 2 uses

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
          to label %.noexc56.i.i.i.i.i unwind label %bb.bq, !noalias !25288

.noexc56.i.i.i.i.i:                               ; preds = %.split.us.i.preheader.i.i.i.i.i.i
  %i.oc = call i64 @llvm.umin.i64(i64 %i.ob, i64 -4097)
  %i.od = and i64 %i.oc, -4096
  br label %.split.us.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i:                          ; preds = %.split.us.i.i.i.i.i.i.i, %.noexc56.i.i.i.i.i
  %i.oe = load atomic i64, ptr %i.lk acquire, align 8, !noalias !25288 ; 2 uses
  %i.of = add i64 %i.oe, 1
  %i.og = and i64 %i.of, 4095
  %i.oh = or disjoint i64 %i.og, %i.od
  %i.oi = cmpxchg weak ptr %i.lk, i64 %i.oe, i64 %i.oh acq_rel acquire, align 8, !noalias !25288
  %i.oj = extractvalue { i64, i1 } %i.oi, 1
  br i1 %i.oj, label %.loopexit.i25.i.i.i.i, label %.split.us.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.cg, %.split.i.i.i.i.i.i.i
  %i.ok = load atomic i64, ptr %i.lk acquire, align 8, !noalias !25288 ; 2 uses
  %i.ol = add i64 %i.ok, 1
  %i.om = or i64 %i.ol, -4096
  %i.on = cmpxchg weak ptr %i.lk, i64 %i.ok, i64 %i.om acq_rel acquire, align 8, !noalias !25288
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !25288
  unreachable

bb.cj:                                            ; preds = %.noexc35.i.i.i.i
  %i.os = atomicrmw add ptr %.val22.i.i.i.i, i64 1 monotonic, align 8, !noalias !25288
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.noexc35.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ null, %.noexc35.i.i.i.i ], [ %.val22.i.i.i.i, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25288
  %.val.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !noalias !25288, !nonnull !109, !noundef !109 ; 2 uses
  %i.ou = getelementptr i8, ptr %.val23.i.i.i.i, i64 16
  %.val22.i.i.i.i.i = load i64, ptr %i.ou, align 8, !noalias !25288
  %i.ov = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !25288
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
  store ptr %.sroa.04.0.i.i.i.i.i, ptr %i.ox, align 8, !noalias !25288
  store ptr %.val.i.i.i.i.i, ptr %i.o, align 8, !noalias !25288
  %i.oy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.val22.i.i.i.i.i, ptr %i.oy, align 8, !noalias !25288
  %i.oz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 0, ptr %i.oz, align 8, !noalias !25288
  %i.pa = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  store i8 0, ptr %i.pa, align 1, !noalias !25288
  %i.pb = trunc nuw i8 %i.cz to i1
  br i1 %i.pb, label %bb.co, label %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.pc = atomicrmw add ptr %.val23.i.i.i.i, i32 1 monotonic, align 4, !noalias !25288
  %i.pd = icmp slt i32 %i.pc, 0
  br i1 %i.pd, label %bb.cp, label %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, !prof !112

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #48
          to label %.noexc58.i.i.i.i.i unwind label %bb.cq, !noalias !25288

.noexc58.i.i.i.i.i:                               ; preds = %bb.cp
  unreachable

_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %.sroa.3.sroa.3.0.i.i.i.i.i = phi ptr [ undef, %bb.cn ], [ %.val23.i.i.i.i, %bb.co ]
  %.sroa.05.0.i.i.i.i.i = phi i8 [ 2, %bb.cn ], [ 0, %bb.co ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.01.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %i.o, i64 25, i1 false), !noalias !25349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25288
  br label %_RNCNCINvMs2_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBa_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB18_16CachedReaderDataE13get_with_hashB16_FG_RL0_B1V_EbE00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1m_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.o) #49
          to label %.body.thread.i.i.i.i unwind label %bb.ci, !noalias !25288

.thread24.i.i.i.i:                                ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvMsb_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBX_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE22get_key_value_and_thenB1P_NCNCINvMs2_BX_INtBX_9BaseCacheB1P_B2E_E13get_with_hashB1P_FG_RL0_B2E_EbE00TINtNtNtB11_6common5entry5EntryB1P_B2E_EINtNtBb_6option6OptionINtNtB5A_10concurrent6ReadOpB1P_B2E_EENtNtNtB5A_4time7instant7InstantEE0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1P_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.peel.i.i.i.i.i, %bb.ac, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvMsb_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBX_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE22get_key_value_and_thenB1P_NCNCINvMs2_BX_INtBX_9BaseCacheB1P_B2E_E13get_with_hashB1P_FG_RL0_B2E_EbE00TINtNtNtB11_6common5entry5EntryB1P_B2E_EINtNtBb_6option6OptionINtNtB5A_10concurrent6ReadOpB1P_B2E_EENtNtNtB5A_4time7instant7InstantEE0INtB7_5FnMutTRINtNtCs40k4W9msRzi_5alloc4sync3ArcB1P_EEE8call_mutCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i.i.i, %bb.af, %.loopexit29.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  store i8 2, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 1, !noalias !25276
  br label %bb.cr

bb.cr:                                            ; preds = %_RNCNCINvMs2_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBa_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB18_16CachedReaderDataE13get_with_hashB16_FG_RL0_B1V_EbE00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %.thread24.i.i.i.i
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB1N_NtB1P_16CachedReaderDataEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE5swingCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noundef nonnull align 8 %i.dp, ptr noundef nonnull align 8 %.sroa.09.060.i.i.i.i)
          to label %bb.cs unwind label %bb.cx, !noalias !25276

_RNCNCINvMs2_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBa_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB18_16CachedReaderDataE13get_with_hashB16_FG_RL0_B1V_EbE00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.sink.split.i.i.i.i.i, %.noexc32.i.i.i.i, %bb.ao, %.noexc30.i.i.i.i, %bb.am, %.noexc28.i.i.i.i, %.noexc27.i.i.i.i
  %.sroa.9.0.i.i.i.i = phi i64 [ undef, %.noexc27.i.i.i.i ], [ %.sroa.48.0.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.86.0.i.i.i.i = phi ptr [ undef, %.noexc27.i.i.i.i ], [ %.sroa.3.sroa.3.0.i.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.7.0.i.i.i.i = phi i8 [ undef, %.noexc27.i.i.i.i ], [ %.sroa.03.036.i.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.65.0.i.i.i.i = phi i8 [ undef, %.noexc27.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ undef, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.sink.split.i.i.i.i.i ], [ undef, %.noexc32.i.i.i.i ], [ undef, %bb.ao ], [ undef, %.noexc30.i.i.i.i ], [ undef, %bb.am ], [ undef, %.noexc28.i.i.i.i ]
  %.sroa.4.0.i.i.i.i = phi i8 [ 2, %.noexc27.i.i.i.i ], [ 0, %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ 2, %_RINvNtNtCskTBvlRM5ILY_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB25_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.sink.split.i.i.i.i.i ], [ 2, %.noexc32.i.i.i.i ], [ 2, %bb.ao ], [ 2, %.noexc30.i.i.i.i ], [ 2, %bb.am ], [ 2, %.noexc28.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.q, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.01.i.i.i.i, i64 25, i1 false), !noalias !25276
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  store i8 %.sroa.4.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !25276
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i8 %.sroa.65.0.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i, align 8, !noalias !25276
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  store i8 %.sroa.7.0.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !noalias !25276
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sroa.86.0.i.i.i.i, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !25276
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.9.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !25276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i)
  br label %bb.cr

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !noalias !25350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25276
  %i.pf = icmp eq ptr %i.do, null
  br i1 %i.pf, label %bb.db, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pg = getelementptr inbounds nuw i8, ptr %i.do, i64 2072 ; 2 uses
  %i.ph = load i64, ptr %i.pg, align 8, !noalias !25276, !noundef !109 ; 2 uses
  %i.pi = add i64 %i.ph, -1
  store i64 %i.pi, ptr %i.pg, align 8, !noalias !25276
  %i.pj = icmp eq i64 %i.ph, 1
  br i1 %i.pj, label %bb.cu, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.pk = getelementptr inbounds nuw i8, ptr %i.do, i64 2176
  store atomic i64 0, ptr %i.pk release, align 8, !noalias !25276
  %i.pl = getelementptr inbounds nuw i8, ptr %i.do, i64 2080
  %i.pm = load i64, ptr %i.pl, align 8, !noalias !25276, !noundef !109
  %i.pn = icmp eq i64 %i.pm, 0
  br i1 %i.pn, label %bb.cv, label %bb.db, !prof !112

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.do)
          to label %bb.db unwind label %bb.da, !noalias !25269

bb.cw:                                            ; preds = %.loopexit.i.i.i.i
  %.not17.i.i.i.i = icmp eq ptr %i.fk, null
  %spec.select.i.i.i.i = select i1 %.not17.i.i.i.i, ptr %.sroa.09.060.i.i.i.i, ptr %i.fk ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 8
  %i.pp = load i64, ptr %i.po, align 8, !noalias !25277, !noundef !109 ; 2 uses
  %i.pq = add i64 %i.pp, -1                       ; 2 uses
  %i.pr = and i64 %i.pq, %i.ct                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.pp, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %._crit_edge.i.peel.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cr
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1J_16CachedReaderDataEIBC_INtNtB13_10concurrent6ReadOpB1H_B2w_EENtNtNtB13_4time7instant7InstantEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.q) #49
          to label %.body.thread.i.i.i.i unwind label %bb.cy, !noalias !25276

bb.cy:                                            ; preds = %bb.cx, %.body.thread.i.i.i.i
end_hunk_4
begin_hunk_5_@_RNCNvMNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providersNtB4_19ObjectStoreRegistry11build_store0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.ab:                                            ; preds = %.thread74
  %i.cz = atomicrmw add ptr %i.ci, i64 -1 release, align 8, !noalias !26763
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ac, label %.noexc28

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io12object_store18LocalDirOperationsEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc28 unwind label %bb.aa

.noexc28:                                         ; preds = %bb.ac, %.thread74, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !26764)
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !26764 ; 2 uses
  %i.db = icmp eq i64 %.val.i, 0
  br i1 %i.db, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %.noexc28
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !26764, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !26764
  br label %.critedge

.critedge:                                        ; preds = %.noexc28, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !26765)
  call void @llvm.experimental.noalias.scope.decl(metadata !26766)
  call void @llvm.experimental.noalias.scope.decl(metadata !26767)
  %i.dc = load ptr, ptr %.sroa.548.0..sroa_idx, align 8, !alias.scope !26768, !nonnull !109, !noundef !109
  %i.dd = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !26768
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
  %i.dg = load i8, ptr %i.df, align 1, !range !113, !noundef !109
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = icmp ne i64 %.sroa.0.2, 0
  %or.cond.not = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond.not, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit

.critedge12:                                      ; preds = %bb.ae, %.critedge
  call void @llvm.experimental.noalias.scope.decl(metadata !26769)
  %.val.i30 = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !26769 ; 2 uses
  %i.dj = icmp eq i64 %.val.i30, 0
  br i1 %i.dj, label %.critedge13, label %bb.af

bb.af:                                            ; preds = %.critedge12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i31 = load ptr, ptr %i.dk, align 8, !alias.scope !26769, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i31, i64 noundef %.val.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !26769
  br label %.critedge13

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.351, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.3, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.456, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26770)
  call void @llvm.experimental.noalias.scope.decl(metadata !26771)
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !26772, !nonnull !109, !noundef !109
  %i.do = atomicrmw add ptr %i.dn, i64 -1 release, align 8, !noalias !26772
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dm)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.z

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.aj, %.critedge13
  store i8 0, ptr %i.df, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26773)
  call void @llvm.experimental.noalias.scope.decl(metadata !26774)
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !26775, !nonnull !109, !noundef !109
  %i.ds = atomicrmw add ptr %i.dr, i64 -1 release, align 8, !noalias !26775
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit36

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit36 unwind label %bb.aa

bb.aj:                                            ; preds = %.critedge13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.2, i64 noundef %.sroa.0.2, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !26776
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB16_16CachedReaderDataE6notify0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.657 = alloca ptr, align 8                ; 6 uses
  %.sroa.958 = alloca ptr, align 8                ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !range !129, !noundef !109
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
  %.val.i.i.pre = load ptr, ptr %0, align 8, !alias.scope !26814
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !26814
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 59 ; 2 uses
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !109, !align !125, !noundef !109 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.e, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !109, !noundef !109
  store ptr %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.f, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !109, !noundef !109
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !109
  store ptr %i.n, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.t = load i8, ptr %i.s, align 4, !range !129, !noundef !109
  store i8 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load atomic i8, ptr %i.u acquire, align 8
  %.not64 = icmp eq i8 %i.v, 0
  br i1 %.not64, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !109, !align !125, !noundef !109 ; 2 uses
  store i8 0, ptr %i.e, align 2
  store i8 0, ptr %i.f, align 1
  %i.x = load ptr, ptr %i.b, align 8, !nonnull !109, !noundef !109
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !109, !noundef !109
  %i.z = load i64, ptr %i.q, align 8, !noundef !109
  %i.aa = load i8, ptr %i.r, align 8, !range !129, !noalias !26815, !noundef !109
  %i.ab = load ptr, ptr %i.w, align 8, !noalias !26815, !nonnull !109, !noundef !109
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !26815, !nonnull !109, !align !125, !noundef !109
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !109, !noalias !26815, !nonnull !109
  %i.ag = invoke { ptr, ptr } %i.af(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef %i.z, i8 noundef %i.aa)
          to label %bb.h unwind label %bb.e, !noalias !26816, !inline_history !26786 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.f, !noalias !26816 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50, !noalias !26816
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !range !113, !noundef !109
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit

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
  %i.as = load i8, ptr %i.ar, align 1, !range !113, !noundef !109
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ak, label %.body

bb.i:                                             ; preds = %bb.e
  %i.au = extractvalue { ptr, ptr } %i.aj, 0      ; 4 uses
  %i.av = extractvalue { ptr, ptr } %i.aj, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.aw = load ptr, ptr %i.h, align 8, !nonnull !109, !align !125, !noundef !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store atomic i8 0, ptr %i.ax release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.ay = load ptr, ptr %i.av, align 8, !invariant.load !109 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ay(ptr noundef nonnull %i.au)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !126, !invariant.load !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !126, !invariant.load !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #44
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bk, align 1
  br label %bb.g

bb.m:                                             ; preds = %bb.ao, %bb.am, %bb.ak
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

.body:                                            ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.ak, %.body34
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn8.pn, %.body34 ], [ %.pn8.pn, %bb.ak ], [ %i.be, %bb.l ], [ %i.be, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bo = load i8, ptr %i.bn, align 1, !range !113, !noundef !109
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsc93vp1BCDlY_26lance_namespace_datafusion.exit45

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #48
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #48
  unreachable

bb.p:                                             ; preds = %bb.b, %bb.h
  %.val1.i.i = phi ptr [ %i.ap, %bb.h ], [ %.val1.i.i.pre, %bb.b ]
  %.val.i.i = phi ptr [ %i.ao, %bb.h ], [ %.val.i.i.pre, %bb.b ]
  %.sroa.8.0 = phi ptr [ %i.ap, %bb.h ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.h ], [ undef, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26814)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !109, !noalias !26818, !nonnull !109
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.s unwind label %bb.q, !noalias !26819, !inline_history !26793

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bv)
          to label %bb.t unwind label %bb.r, !noalias !26819 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #50, !noalias !26819
  unreachable

bb.s:                                             ; preds = %bb.p
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.by = extractvalue { ptr, ptr } %i.bw, 0      ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.bw, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  store ptr %i.by, ptr %.sroa.657, align 8, !alias.scope !26817
  br label %bb.v

common.ret:                                       ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.u
  %storemerge = phi i8 [ 3, %bb.u ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ 1, %bb.z ]
  %common.ret.op = phi i1 [ true, %bb.u ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ false, %bb.z ]
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
  store ptr %.sink.i33, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !26817
  %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8. = load ptr, ptr %.sroa.657, align 8, !noundef !109 ; 4 uses
  %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16. = load ptr, ptr %.sroa.958, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958)
  %.val31 = load ptr, ptr %0, align 8             ; 5 uses
  %.val32 = load ptr, ptr %i.bq, align 8, !nonnull !109, !align !125, !noundef !109 ; 5 uses
  %i.ca = load ptr, ptr %.val32, align 8, !invariant.load !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  invoke void %i.ca(ptr noundef nonnull %.val31)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !126, !invariant.load !109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body34, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !126, !invariant.load !109
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #44
  br label %.body34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.x
  %.not = icmp eq ptr %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., null
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.cn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 0, ptr %i.co, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !109, !align !125, !noundef !109
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
end_hunk_5
begin_hunk_6_@_RNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtB7_14DatasetBuilder18build_object_store0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit190.i.i unwind label %bb.mg, !noalias !27428

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit190.i.i: ; preds = %bb.ms, %bb.mp, %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !27426
  call void @llvm.experimental.noalias.scope.decl(metadata !27669)
  call void @llvm.experimental.noalias.scope.decl(metadata !27670)
  %i.aok = load ptr, ptr %i.ae, align 8, !alias.scope !27671, !noalias !27426, !nonnull !109, !noundef !109
  %i.aol = atomicrmw add ptr %i.aok, i64 -1 release, align 8, !noalias !27672
  %i.aom = icmp eq i64 %i.aol, 1
  br i1 %i.aom, label %bb.mq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.mq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit190.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.mt, !noalias !27428

bb.mr:                                            ; preds = %bb.mi
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %.thread535.i.i unwind label %bb.dc, !noalias !27428

bb.ms:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.amu, ptr noundef nonnull align 1 dereferenceable(29) @569, i64 29, i1 false), !noalias !27673
  store i8 11, ptr %i.z, align 8, !alias.scope !27674, !noalias !27426
  %.sroa.6364.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @571, ptr %.sroa.6364.0..sroa_idx.i.i, align 8, !alias.scope !27674, !noalias !27426
  %.sroa.7365.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr inttoptr (i64 29 to ptr), ptr %.sroa.7365.0..sroa_idx.i.i, align 8, !alias.scope !27674, !noalias !27426
  %.sroa.8366.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.amu, ptr %.sroa.8366.0..sroa_idx.i.i, align 8, !alias.scope !27674, !noalias !27426
  %.sroa.9367.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 29, ptr %.sroa.9367.0..sroa_idx.i.i, align 8, !alias.scope !27674, !noalias !27426
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit190.i.i

bb.mt:                                            ; preds = %bb.mq, %bb.lw, %bb.jx
  %i.aon = phi ptr [ %i.als, %bb.lw ], [ %i.aft, %bb.jx ], [ %i.amb, %bb.mq ]
  %i.aoo = phi ptr [ %i.alt, %bb.lw ], [ %i.afu, %bb.jx ], [ %i.amc, %bb.mq ]
  %i.aop = phi ptr [ %i.alu, %bb.lw ], [ %i.afv, %bb.jx ], [ %i.amd, %bb.mq ]
  %i.aoq = phi ptr [ %i.alv, %bb.lw ], [ %i.afw, %bb.jx ], [ %i.ame, %bb.mq ]
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit195.i.i

.thread535.i.i:                                   ; preds = %bb.mr, %bb.mi, %bb.mg
  %.pn31.pn538.i.i = phi { ptr, i32 } [ %i.anh, %bb.mi ], [ %i.amw, %bb.mg ], [ %i.anh, %bb.mr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !27426
  call void @llvm.experimental.noalias.scope.decl(metadata !27675)
  call void @llvm.experimental.noalias.scope.decl(metadata !27676)
  %i.aos = load ptr, ptr %i.ae, align 8, !alias.scope !27677, !noalias !27426, !nonnull !109, !noundef !109
  %i.aot = atomicrmw add ptr %i.aos, i64 -1 release, align 8, !noalias !27678
  %i.aou = icmp eq i64 %i.aot, 1
  br i1 %i.aou, label %bb.mu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit195.i.i

bb.mu:                                            ; preds = %.thread535.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit195.i.i unwind label %bb.dc, !noalias !27428

bb.mv:                                            ; preds = %bb.lx
  %.sroa.5341.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5341.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3337.i.i, i64 7, i1 false), !noalias !27426
  %.sroa.7343.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7343.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7339.i.i, i64 40, i1 false), !noalias !27426
  store i8 %.sroa.075.1.i.i.i, ptr %i.z, align 8, !alias.scope !27679, !noalias !27426
  %.sroa.6342.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.4.i.sroa.6.0.i.i, ptr %.sroa.6342.0..sroa_idx.i.i, align 8, !alias.scope !27679, !noalias !27426
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

.thread89.i:                                      ; preds = %bb.lv, %bb.jw
  %i.aov = phi ptr [ %i.afr, %bb.jw ], [ %i.alz, %bb.lv ]
  %.ph.i = phi ptr [ %i.afs, %bb.jw ], [ %i.ama, %bb.lv ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.jw ], [ 4, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !27426
  store i8 %.sink.i.ph.i, ptr %.ph.i, align 8, !noalias !27426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27424
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3337.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7339.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12303.i.i)
  br label %bb.na

bb.mw:                                            ; preds = %.invoke621.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit186.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.aow = phi ptr [ %i.anx, %.invoke621.i.i ], [ %i.amb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit186.i.i ], [ %i.ml, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ] ; 3 uses
  %i.aox = phi ptr [ %i.any, %.invoke621.i.i ], [ %i.amc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit186.i.i ], [ %i.mm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  %i.aoy = phi ptr [ %i.anz, %.invoke621.i.i ], [ %i.amd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit186.i.i ], [ %i.mn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  %i.aoz = phi ptr [ %i.aoa, %.invoke621.i.i ], [ %i.ame, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit186.i.i ], [ %i.mo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  %.sroa.0173.0.copyload174 = load i8, ptr %i.z, align 8, !noalias !27680 ; 3 uses
  %.sroa.10175.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10175.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10175.0..sroa_idx176, i64 7, i1 false), !noalias !27680
  %.sroa.10175.sroa.6.0..sroa.10175.0..sroa_idx176.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.10175.sroa.6.0.copyload = load ptr, ptr %.sroa.10175.sroa.6.0..sroa.10175.0..sroa_idx176.sroa_idx, align 8, !noalias !27680 ; 2 uses
  %.sroa.10175.sroa.7.0..sroa.10175.0..sroa_idx176.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.10175.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.10175.sroa.7.0..sroa.10175.0..sroa_idx176.sroa_idx, align 8, !noalias !27680 ; 2 uses
  %.sroa.10175.sroa.7.sroa.6.0..sroa.10175.sroa.7.0..sroa.10175.0..sroa_idx176.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.10175.sroa.7.sroa.6.0.copyload = load ptr, ptr %.sroa.10175.sroa.7.sroa.6.0..sroa.10175.sroa.7.0..sroa.10175.0..sroa_idx176.sroa_idx.sroa_idx, align 8, !noalias !27680 ; 2 uses
  %.sroa.10175.sroa.7.sroa.7.0..sroa.10175.sroa.7.0..sroa.10175.0..sroa_idx176.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.10175.sroa.7.sroa.7.0.copyload = load ptr, ptr %.sroa.10175.sroa.7.sroa.7.0..sroa.10175.sroa.7.0..sroa.10175.0..sroa_idx176.sroa_idx.sroa_idx, align 8, !noalias !27680 ; 2 uses
  %.sroa.10175.sroa.8.0..sroa.10175.0..sroa_idx176.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.10175.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.10175.sroa.8.0..sroa.10175.0..sroa_idx176.sroa_idx, align 8, !noalias !27680
  %.sroa.10175.sroa.8.sroa.6.0..sroa.10175.sroa.8.0..sroa.10175.0..sroa_idx176.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.10175.sroa.8.sroa.6.0.copyload = load ptr, ptr %.sroa.10175.sroa.8.sroa.6.0..sroa.10175.sroa.8.0..sroa.10175.0..sroa_idx176.sroa_idx.sroa_idx, align 8, !noalias !27680
  %i.apa = icmp eq i8 %.sroa.0173.0.copyload174, -2
  store i8 1, ptr %i.aoy, align 8, !noalias !27426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27424
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3337.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7339.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12303.i.i)
  br i1 %i.apa, label %bb.na, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore24from_uri_and_params_impl0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.aoz)
          to label %bb.nb unwind label %bb.my, !noalias !27425

bb.my:                                            ; preds = %bb.mx
  %i.apb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.mz:                                            ; preds = %.body.i
  %i.apc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !27425
  unreachable

common.ret:                                       ; preds = %bb.pi, %bb.na
  %storemerge = phi i8 [ 1, %bb.pi ], [ 3, %bb.na ]
  store i8 %storemerge, ptr %i.ba, align 1
  ret void

bb.na:                                            ; preds = %bb.mw, %.thread89.i
  %i.apd = phi ptr [ %i.aow, %bb.mw ], [ %i.aov, %.thread89.i ]
  store i8 3, ptr %i.apd, align 8, !noalias !27424
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10175.sroa.0)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.nb:                                            ; preds = %bb.mx
  store i8 1, ptr %i.aow, align 8, !noalias !27424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3179, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10175.sroa.0, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10175.sroa.0)
  %.not.i114 = icmp eq i8 %.sroa.0173.0.copyload174, -1
  br i1 %.not.i114, label %bb.nc, label %bb.nw

bb.nc:                                            ; preds = %bb.nb, %bb.aq
  %.sroa.3.sroa.0.0 = phi ptr [ %.sroa.3.sroa.0.0.copyload, %bb.aq ], [ %.sroa.10175.sroa.7.sroa.0.0.copyload, %bb.nb ]
  %.sroa.3.sroa.3.0 = phi ptr [ %.sroa.3.sroa.3.0.copyload, %bb.aq ], [ %.sroa.10175.sroa.7.sroa.6.0.copyload, %bb.nb ]
  %.sroa.3.sroa.4.0 = phi ptr [ %.sroa.3.sroa.4.0.copyload, %bb.aq ], [ %.sroa.10175.sroa.7.sroa.7.0.copyload, %bb.nb ]
  %.sroa.0.0 = phi ptr [ %i.eu, %bb.aq ], [ %.sroa.10175.sroa.6.0.copyload, %bb.nb ]
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 2120
  store ptr %.sroa.0.0, ptr %i.ape, align 8
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 2128 ; 2 uses
  store ptr %.sroa.3.sroa.0.0, ptr %i.apf, align 16
  %.sroa.3.sroa.3.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store ptr %.sroa.3.sroa.3.0, ptr %.sroa.3.sroa.3.0..sroa_idx251, align 8
  %.sroa.3.sroa.4.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %1, i64 2144
  store ptr %.sroa.3.sroa.4.0, ptr %.sroa.3.sroa.4.0..sroa_idx253, align 16
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.aph = load ptr, ptr %i.apg, align 16, !alias.scope !27681, !noundef !109 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.apj = load ptr, ptr %i.api, align 8, !alias.scope !27681 ; 2 uses
  store ptr null, ptr %i.apg, align 16, !alias.scope !27681
  %.not32 = icmp eq ptr %i.aph, null
  br i1 %.not32, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.apj) ]
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit138

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit138: ; preds = %bb.pa, %bb.oz, %bb.np, %bb.nd
  %.sroa.4.0 = phi ptr [ %i.apj, %bb.nd ], [ @406, %bb.np ], [ %.sroa.12.1.i302, %bb.oz ], [ %.sroa.12.1.i302, %bb.pa ]
  %.sroa.04.0 = phi ptr [ %i.aph, %bb.nd ], [ %i.aqb, %bb.np ], [ %.sroa.75.1.i303, %bb.oz ], [ %.sroa.75.1.i303, %bb.pa ]
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 2120
  %i.apl = load ptr, ptr %i.apk, align 8, !nonnull !109, !noundef !109
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %.sroa.0255.0.copyload = load ptr, ptr %i.apm, align 16
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2136
  %.sroa.4256.0.copyload = load ptr, ptr %.sroa.4256.0..sroa_idx, align 8
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %.sroa.5257.0.copyload = load ptr, ptr %.sroa.5257.0..sroa_idx, align 16
  %i.apn = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 2 uses
  %i.apo = load i8, ptr %i.apn, align 16, !range !113, !noundef !109
  %i.app = trunc nuw i8 %i.apo to i1
  br i1 %i.app, label %bb.pc, label %bb.pf

bb.ne:                                            ; preds = %bb.nc
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.experimental.noalias.scope.decl(metadata !27682)
  %.sroa.0188.0.copyload = load ptr, ptr %i.apq, align 8, !alias.scope !27683 ; 4 uses
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.sroa.6189.0.copyload = load ptr, ptr %.sroa.6189.0..sroa_idx, align 16, !alias.scope !27683 ; 3 uses
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  %.sroa.7190.0.copyload = load i64, ptr %.sroa.7190.0..sroa_idx, align 8, !alias.scope !27683 ; 2 uses
  store i64 -1, ptr %.sroa.7190.0..sroa_idx, align 8, !alias.scope !27684
  %.not33 = icmp eq i64 %.sroa.7190.0.copyload, -1
  br i1 %.not33, label %bb.ns, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %.sroa.9191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0188.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6189.0.copyload) ]
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5193.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9191.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %.sroa.0188.0.copyload, ptr %i.ar, align 8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.6189.0.copyload, ptr %i.apr, align 8
  store i64 %.sroa.7190.0.copyload, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apf)
          to label %bb.ng unwind label %bb.nq

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.experimental.noalias.scope.decl(metadata !27685)
  call void @llvm.experimental.noalias.scope.decl(metadata !27686)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0194, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !alias.scope !27687
  %.sroa.0194.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0194, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0194.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !alias.scope !27688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27689
  store i64 1, ptr %i.e, align 8, !noalias !27689
  %i.aps = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.aps, align 8, !noalias !27689
  %i.apt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.apt, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0194, i64 48, i1 false)
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %.sroa.0188.0.copyload, ptr %.sroa.6195.0..sroa_idx, align 8
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %.sroa.6189.0.copyload, ptr %.sroa.7196.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !27690
  %i.apu = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !27690 ; 4 uses
  %i.apv = icmp eq ptr %i.apu, null
  br i1 %i.apv, label %bb.nh, label %bb.nk, !prof !112

bb.nh:                                            ; preds = %bb.ng
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #48
          to label %.noexc.i116 unwind label %bb.ni, !noalias !27689

.noexc.i116:                                      ; preds = %bb.nh
  unreachable

bb.ni:                                            ; preds = %bb.nh
  %i.apw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCshkPeWWG1flk_5lance2io6commit18namespace_manifest35LanceNamespaceExternalManifestStoreECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.apt)
          to label %.body117 unwind label %bb.nj, !noalias !27689

bb.nj:                                            ; preds = %bb.ni
  %i.apx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !27689
  unreachable

.body117:                                         ; preds = %bb.ni, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.pn41 = phi { ptr, i32 } [ %i.aqh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %i.apw, %bb.ni ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0194)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.nk:                                            ; preds = %bb.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.apu, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !27689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.apy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.apy, align 8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.apu, ptr %i.apz, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @405, ptr %i.aqa, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !27691
  %i.aqb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !27691 ; 3 uses
  %i.aqc = icmp eq ptr %i.aqb, null
  br i1 %i.aqc, label %bb.nl, label %bb.np, !prof !112

bb.nl:                                            ; preds = %bb.nk
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #48
          to label %.noexc.i119 unwind label %bb.nm

.noexc.i119:                                      ; preds = %bb.nl
  unreachable

bb.nm:                                            ; preds = %bb.nl
  %i.aqd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqe = atomicrmw add ptr %i.apu, i64 -1 release, align 8, !noalias !27692
  %i.aqf = icmp eq i64 %i.aqe, 1
  br i1 %i.aqf, label %bb.nn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.nn:                                            ; preds = %bb.nm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifest21ExternalManifestStoreEL_E9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.apz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.aqg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.np:                                            ; preds = %bb.nk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aqb, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit138

bb.nq:                                            ; preds = %bb.nf
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.aqi = atomicrmw add ptr %.sroa.0188.0.copyload, i64 -1 release, align 8, !noalias !27693
  %i.aqj = icmp eq i64 %i.aqi, 1
  br i1 %i.aqj, label %bb.nr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.nq, %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %.body117

bb.nr:                                            ; preds = %bb.nq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_E9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.t

bb.ns:                                            ; preds = %bb.ne
  %i.aqk = getelementptr i8, ptr %1, i64 776
  %.val68 = load ptr, ptr %i.aqk, align 8, !nonnull !109, !noundef !109
  %i.aql = getelementptr i8, ptr %1, i64 784
  %.val69 = load i64, ptr %i.aql, align 16, !noundef !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke fastcc void @_RNvXsi_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParamsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(184) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aqm)
          to label %.thread408 unwind label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

.thread408:                                       ; preds = %bb.ns
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 2152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.aqo, ptr noundef nonnull align 8 dereferenceable(184) %i.ao, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 2336
  store ptr %.val68, ptr %i.aqp, align 16
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2344
  store i64 %.val69, ptr %.sroa.8214.0..sroa_idx, align 8
  %.sroa.9215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2352
  store ptr %i.aqo, ptr %.sroa.9215.0..sroa_idx, align 16
  %.sroa.10216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2360
  store i8 0, ptr %.sroa.10216.0..sroa_idx, align 8
  br label %bb.nz

bb.nu:                                            ; preds = %.body132
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ara)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.t

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.body117, %bb.nm, %bb.nn, %bb.pb, %bb.nt, %bb.nu, %.body132
  %.pn43.pn.pn = phi { ptr, i32 } [ %eh.lpad-body133, %bb.nu ], [ %i.atn, %bb.pb ], [ %eh.lpad-body133, %.body132 ], [ %i.aqn, %bb.nt ], [ %.pn41, %.body117 ], [ %i.aqd, %bb.nm ], [ %i.aqd, %bb.nn ] ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %1, i64 2128
  call void @llvm.experimental.noalias.scope.decl(metadata !27694)
  call void @llvm.experimental.noalias.scope.decl(metadata !27695)
  %.val.i.i124 = load i64, ptr %i.aqq, align 16, !alias.scope !27696 ; 2 uses
  %i.aqr = icmp eq i64 %.val.i.i124, 0
  br i1 %i.aqr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.nv

bb.nv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.aqs = getelementptr inbounds nuw i8, ptr %1, i64 2136
  %.val1.i.i = load ptr, ptr %i.aqs, align 8, !alias.scope !27696, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i124, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !27696
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.nw:                                            ; preds = %bb.nb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3179, i64 7, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit149

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit149: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145, %bb.pn, %bb.nw
  %.sroa.16.0 = phi ptr [ %.sroa.10175.sroa.8.sroa.6.0.copyload, %bb.nw ], [ undef, %bb.pn ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %.sroa.14.0 = phi ptr [ %.sroa.10175.sroa.8.sroa.0.0.copyload, %bb.nw ], [ undef, %bb.pn ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %.sroa.12241.0 = phi ptr [ %.sroa.10175.sroa.7.sroa.7.0.copyload, %bb.nw ], [ undef, %bb.pn ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %.sroa.11240.0 = phi ptr [ %.sroa.10175.sroa.7.sroa.6.0.copyload, %bb.nw ], [ @537, %bb.pn ], [ @537, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %.sroa.9239.0 = phi ptr [ %.sroa.10175.sroa.7.sroa.0.0.copyload, %bb.nw ], [ %.sroa.12.0.i, %bb.pn ], [ %.sroa.12.0.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %.sroa.6238.0 = phi ptr [ %.sroa.10175.sroa.6.0.copyload, %bb.nw ], [ %.sroa.75.0.i, %bb.pn ], [ %.sroa.75.0.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %.sroa.0237.0 = phi i8 [ %.sroa.0173.0.copyload174, %bb.nw ], [ 0, %bb.pn ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 2 uses
  %i.aqu = load i8, ptr %i.aqt, align 16, !range !113, !noundef !109
  %i.aqv = trunc nuw i8 %i.aqu to i1
  br i1 %i.aqv, label %bb.pp, label %bb.pr

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit147: ; preds = %.body108, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %bb.pm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit102, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit104, %bb.po
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit102 ], [ %i.auj, %bb.po ], [ %.pn43.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %i.cw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit104 ], [ %.pn28.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.pn43.pn.pn, %bb.pm ], [ %eh.lpad-body109, %.body108 ] ; 3 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.aqx = load i8, ptr %i.aqw, align 16, !range !113, !noundef !109
  %i.aqy = trunc nuw i8 %i.aqx to i1
  br i1 %i.aqy, label %bb.ps, label %.body

end_hunk_6
begin_hunk_7_@_RNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtB7_14DatasetBuilder9load_impl0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.as, label %_RNCNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtB9_14DatasetBuilder9load_impl00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i, !prof !112

bb.as:                                            ; preds = %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #48
          to label %.noexc.i.i unwind label %bb.at, !noalias !28174

.noexc.i.i:                                       ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ez)
          to label %.body213 unwind label %bb.au, !noalias !28174

bb.au:                                            ; preds = %bb.at
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !28174
  unreachable

_RNCNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtB9_14DatasetBuilder9load_impl00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fb, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !28174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !28174
  br label %bb.av

bb.av:                                            ; preds = %bb.aq, %_RNCNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtB9_14DatasetBuilder9load_impl00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.0.0.i = phi ptr [ %i.fb, %_RNCNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtB9_14DatasetBuilder9load_impl00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ null, %bb.aq ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 2928
  store ptr %.sroa.0.0.i, ptr %i.ff, align 16
  store i8 1, ptr %i.bn, align 2
  %i.fg = getelementptr i8, ptr %1, i64 1768
  %.val170 = load i64, ptr %i.fg, align 8, !range !111, !noundef !109
  %.not889 = icmp eq i64 %.val170, -1
  br i1 %.not889, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %.val171 = load ptr, ptr %i.fh, align 16, !noundef !109
  %.not.i215 = icmp eq ptr %.val171, null
  %i.fi = zext i1 %.not.i215 to i8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.sink = phi i8 [ %i.fi, %bb.aw ], [ 0, %bb.av ]
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 3337
  store i8 %.sink, ptr %i.fj, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0442)
  store i8 0, ptr %i.bi, align 1
  %.sroa.0442.1072..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0442, i64 1072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %.sroa.0442.1072..sroa_idx, ptr noundef nonnull align 16 dereferenceable(1024) %i.bs, i64 1024, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 3360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097) %i.fk, ptr noundef nonnull align 16 dereferenceable(2097) %.sroa.0442, i64 2097, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0442)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5457
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  br label %bb.be

bb.ay:                                            ; preds = %bb.bd, %bb.bi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit418
  %.pn146.pn = phi { ptr, i32 } [ %.pn144, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsc93vp1BCDlY_26lance_namespace_datafusion.exit418 ], [ %i.gp, %bb.bd ], [ %i.gt, %bb.bi ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 3346
  %i.fm = load i8, ptr %i.fl, align 2, !range !113, !noundef !109
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.rp, label %.body213

.body213:                                         ; preds = %bb.rq, %bb.rp, %bb.rr, %bb.ql, %bb.at, %bb.ay
  %.pn149 = phi { ptr, i32 } [ %.pn146.pn, %bb.ay ], [ %i.fd, %bb.at ], [ %i.asi, %bb.ql ], [ %.pn146.pn, %bb.rr ], [ %.pn146.pn, %bb.rp ], [ %.pn146.pn, %bb.rq ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 3346
  store i8 0, ptr %i.fo, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 3347
  %i.fq = load i8, ptr %i.fp, align 1, !range !113, !noundef !109
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.rs, label %bb.az

bb.az:                                            ; preds = %bb.rs, %bb.qo, %.body213
  %.pn151 = phi { ptr, i32 } [ %i.asn, %bb.qo ], [ %.pn149, %bb.rs ], [ %.pn149, %.body213 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 3347
  store i8 0, ptr %i.fs, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 3348
  %i.fu = load i8, ptr %i.ft, align 4, !range !113, !noundef !109
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.rt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit422

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit422: ; preds = %bb.rt, %bb.ru, %bb.qr, %bb.az
  %.pn154 = phi { ptr, i32 } [ %i.asu, %bb.qr ], [ %.pn151, %bb.az ], [ %.pn151, %bb.ru ], [ %.pn151, %bb.rt ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 3348
  store i8 0, ptr %i.fw, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 3349
  %i.fy = load i8, ptr %i.fx, align 1, !range !113, !noundef !109
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.rv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit425

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit425: ; preds = %bb.rw, %bb.rv, %bb.qu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit422
  %.pn156 = phi { ptr, i32 } [ %i.ata, %bb.qu ], [ %.pn154, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit422 ], [ %.pn154, %bb.rv ], [ %.pn154, %bb.rw ] ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 3349
  store i8 0, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 2680 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !range !147, !noundef !109 ; 3 uses
  %.not158 = icmp eq i64 %i.gc, -1
  br i1 %.not158, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit428, label %bb.rx

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit428: ; preds = %bb.sa, %bb.sc, %bb.sb, %bb.rz, %bb.rx, %bb.np, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit425
  %.pn160 = phi { ptr, i32 } [ %i.alz, %bb.np ], [ %.pn156, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit425 ], [ %.pn156, %bb.rz ], [ %.pn156, %bb.sa ], [ %.pn156, %bb.rx ], [ %.pn156, %bb.sb ], [ %.pn156, %bb.sc ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 3340
  store i8 0, ptr %i.gd, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 3341
  store i8 0, ptr %i.ge, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 3350
  %i.gg = load i8, ptr %i.gf, align 2, !range !113, !noundef !109
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.sd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEECsc93vp1BCDlY_26lance_namespace_datafusion.exit430

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEECsc93vp1BCDlY_26lance_namespace_datafusion.exit430: ; preds = %bb.sd, %bb.se, %.body198, %.body207, %bb.rd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit428
  %.pn162 = phi { ptr, i32 } [ %i.atz, %bb.rd ], [ %.pn47, %.body207 ], [ %.pn160, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit428 ], [ %eh.lpad-body199, %.body198 ], [ %.pn160, %bb.se ], [ %.pn160, %bb.sd ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 3350
  store i8 0, ptr %i.gi, align 2
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 16, !noundef !109 ; 2 uses
  %.not164 = icmp eq ptr %i.gk, null
  br i1 %.not164, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5cache7backend12CacheBackendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit432, label %bb.sf

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5cache7backend12CacheBackendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit432: ; preds = %bb.sg, %bb.sh, %bb.sf, %bb.nt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEECsc93vp1BCDlY_26lance_namespace_datafusion.exit430
  %.pn166 = phi { ptr, i32 } [ %i.amf, %bb.nt ], [ %.pn162, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEECsc93vp1BCDlY_26lance_namespace_datafusion.exit430 ], [ %.pn162, %bb.sf ], [ %.pn162, %bb.sh ], [ %.pn162, %bb.sg ]
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 3342
  store i8 0, ptr %i.gl, align 2
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5cache7backend12CacheBackendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit432, %bb.e
  %.pn166.pn = phi { ptr, i32 } [ %.pn166, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5cache7backend12CacheBackendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit432 ], [ %i.bt, %bb.e ]
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 3353 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !range !113, !noundef !109
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.sj, label %bb.si

bb.bb:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #48
  unreachable

bb.bc:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #48
  unreachable

bb.bd:                                            ; preds = %bb.be
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtBJ_14DatasetBuilder18build_object_store0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 16 %i.gq) #49
          to label %bb.ay unwind label %bb.am

bb.be:                                            ; preds = %bb.a, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 3360 ; 6 uses
  invoke fastcc void @_RNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtB7_14DatasetBuilder18build_object_store0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bc, ptr noundef nonnull align 16 %i.gq, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bf unwind label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.gr = load i8, ptr %i.bc, align 8, !range !150, !noundef !109 ; 3 uses
  %i.gs = icmp eq i8 %i.gr, -2
  br i1 %i.gs, label %bb.bg, label %bb.bh

common.ret:                                       ; preds = %bb.pw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5cache7backend12CacheBackendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit403, %bb.mh, %bb.kx, %bb.cq, %bb.bg
  %.sink1231 = phi i8 [ 7, %bb.pw ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5cache7backend12CacheBackendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit403 ], [ 6, %bb.mh ], [ 5, %bb.kx ], [ 4, %bb.cq ], [ 3, %bb.bg ]
  store i8 %.sink1231, ptr %i.bg, align 8
  ret void

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.bh:                                            ; preds = %bb.bf
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %.sroa.3.sroa.0.sroa.0.0.copyload = load i56, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.3.sroa.2.0.copyload = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.3.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.4.sroa.3.0..sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.3.sroa.4.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.4.sroa.3.0..sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.sroa.5446.0.copyload = load ptr, ptr %.sroa.5446.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.9447.0.copyload = load ptr, ptr %.sroa.9447.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtNtCshkPeWWG1flk_5lance7dataset7builderNtBJ_14DatasetBuilder18build_object_store0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 16 %i.gq)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.bj:                                            ; preds = %bb.bh
  %.not.i216 = icmp eq i8 %i.gr, -1
  br i1 %.not.i216, label %bb.bk, label %bb.cm

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5446.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9447.0.copyload) ]
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 3345
  store i8 1, ptr %i.gu, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 2936 ; 2 uses
  store ptr %.sroa.5446.0.copyload, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 3344
  store i8 1, ptr %i.gw, align 16
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 2944 ; 2 uses
  store ptr %.sroa.3.sroa.2.0.copyload, ptr %i.gx, align 16
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2952
  store i64 %.sroa.3.sroa.4.sroa.0.0.copyload, ptr %.sroa.02.sroa.2.0..sroa_idx, align 8
  %.sroa.02.sroa.2.sroa.2.0..sroa.02.sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2960
  store ptr %.sroa.3.sroa.4.sroa.3.0.copyload, ptr %.sroa.02.sroa.2.sroa.2.0..sroa.02.sroa.2.0..sroa_idx.sroa_idx, align 16
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 3343
  store i8 1, ptr %i.gy, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 2640 ; 2 uses
  store ptr %.sroa.7.0.copyload, ptr %i.gz, align 16
  %i.ha = getelementptr i8, ptr %1, i64 2648      ; 2 uses
  store ptr %.sroa.9447.0.copyload, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 3338 ; 2 uses
  store i8 0, ptr %i.hb, align 2
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 2680 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28177)
  %i.hd = load i64, ptr %i.hc, align 8, !range !147, !alias.scope !28177, !noundef !109 ; 5 uses
  %.not.i217 = icmp eq i64 %i.hd, -1
  br i1 %.not.i217, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !28178
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !28178
  %i.he = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hf = icmp ne i64 %i.hd, 3
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = add nsw i64 %i.hd, -2
  %i.hh = icmp samesign ugt i64 %i.hd, 1
  %i.hi = select i1 %i.hh, i64 %i.hg, i64 1
  switch i64 %i.hi, label %bb.bm [
    i64 0, label %bb.bn
    i64 1, label %bb.bo
    i64 2, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.hc, i64 40, i1 false), !alias.scope !28181, !noalias !28176
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225

bb.bo:                                            ; preds = %bb.bl
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 2696 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !range !111, !alias.scope !28182, !noundef !109
  %.not.i.i219 = icmp eq i64 %i.hk, -1
  br i1 %.not.i.i219, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 2688
  %i.hm = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl)
          to label %.noexc223 unwind label %bb.dl

.noexc223:                                        ; preds = %bb.bp
  store i64 4, ptr %i.y, align 8, !alias.scope !28179, !noalias !28178
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hj)
          to label %.noexc224 unwind label %bb.dl

.noexc224:                                        ; preds = %bb.bq
  %.sroa.0.0.copyload.i.i220 = load i64, ptr %i.x, align 8, !noalias !28183
  br label %bb.br

bb.br:                                            ; preds = %.noexc224, %bb.bo
  %.sroa.0.0.i.i221 = phi i64 [ %.sroa.0.0.copyload.i.i220, %.noexc224 ], [ -1, %bb.bo ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 2688
  %i.ho = load i64, ptr %i.hn, align 16, !alias.scope !28182
  %i.hp = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.0.0.i.i221, ptr %i.hp, align 8, !alias.scope !28179, !noalias !28178
  %.sroa.5.0..sroa_idx2.i.i222 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i222, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !noalias !28184
  store i64 %i.hd, ptr %i.y, align 8, !alias.scope !28179, !noalias !28178
  %i.hq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ho, ptr %i.hq, align 8, !alias.scope !28179, !noalias !28178
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread: ; preds = %bb.bk
  store i64 -1, ptr %i.gq, align 16, !alias.scope !28176
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 3339
  store i8 1, ptr %i.hr, align 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit236

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225: ; preds = %bb.bn, %.noexc223, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.gq, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !noalias !28177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !28178
  %.pr = load i64, ptr %i.gq, align 16            ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 3339
  store i8 1, ptr %i.hs, align 1
  %.not54 = icmp eq i64 %.pr, -1
  br i1 %.not54, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit236, label %bb.bs

bb.bs:                                            ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225
  %i.ht = icmp ne i64 %.pr, 3
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = add nsw i64 %.pr, -2
  %i.hv = icmp ugt i64 %.pr, 1
  %i.hw = select i1 %i.hv, i64 %i.hu, i64 1
  switch i64 %i.hw, label %bb.b [
    i64 0, label %bb.bt
    i64 1, label %bb.bw
    i64 2, label %bb.bu
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit236: ; preds = %bb.dk, %bb.dj, %bb.bx, %bb.by, %bb.bw, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225, %bb.bt
  %.val2.i = phi i64 [ undef, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225 ], [ undef, %bb.bt ], [ undef, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread ], [ %.sroa.9455.0.copyload, %bb.bx ], [ %.sroa.9455.0.copyload, %bb.bw ], [ %.sroa.9455.0.copyload, %bb.by ], [ %.sroa.03.sroa.13.sroa.10.3, %bb.dj ], [ %.sroa.03.sroa.13.sroa.10.3, %bb.dk ] ; 3 uses
  %.val.i238 = phi ptr [ undef, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225 ], [ undef, %bb.bt ], [ undef, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread ], [ %.sroa.7454.0.copyload, %bb.bx ], [ %.sroa.7454.0.copyload, %bb.bw ], [ %.sroa.7454.0.copyload, %bb.by ], [ %.sroa.03.sroa.13.sroa.0.3, %bb.dj ], [ %.sroa.03.sroa.13.sroa.0.3, %bb.dk ] ; 3 uses
  %.sroa.03.sroa.0.0 = phi i64 [ -1, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225 ], [ -1, %bb.bt ], [ -1, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread ], [ %.sroa.0453.0.copyload, %bb.bx ], [ -1, %bb.bw ], [ %.sroa.0453.0.copyload, %bb.by ], [ %.sroa.03.sroa.0.2, %bb.dj ], [ %.sroa.03.sroa.0.2, %bb.dk ] ; 2 uses
  %.sroa.20.0 = phi i64 [ undef, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225 ], [ %i.id, %bb.bt ], [ undef, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread ], [ %i.ik, %bb.bx ], [ %i.ik, %bb.bw ], [ %i.ik, %bb.by ], [ %.sroa.20.2, %bb.dj ], [ %.sroa.20.2, %bb.dk ]
  %.sroa.13.0 = phi i64 [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225 ], [ 1, %bb.bt ], [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCshkPeWWG1flk_5lance7dataset4refs3RefENtNtB7_5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit225.thread ], [ %.pr, %bb.bx ], [ %.pr, %bb.bw ], [ %.pr, %bb.by ], [ %.sroa.13.2, %bb.dj ], [ %.sroa.13.2, %bb.dk ]
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 2968 ; 2 uses
  store i64 %.sroa.03.sroa.0.0, ptr %i.hx, align 8
  %.sroa.03.sroa.13.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %1, i64 2976 ; 2 uses
  store ptr %.val.i238, ptr %.sroa.03.sroa.13.0..sroa_idx11, align 16
  %.sroa.03.sroa.13.sroa.10.0..sroa.03.sroa.13.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2984 ; 2 uses
  store i64 %.val2.i, ptr %.sroa.03.sroa.13.sroa.10.0..sroa.03.sroa.13.0..sroa_idx11.sroa_idx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 2656 ; 2 uses
  store i64 %.sroa.13.0, ptr %i.hy, align 16
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 2664
  store i64 %.sroa.20.0, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 3360 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 16, !range !147, !noundef !109
  %.not74 = icmp eq i64 %i.ib, -1
  br i1 %.not74, label %bb.dn, label %bb.dm

bb.bt:                                            ; preds = %bb.bs
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 3368
  %i.id = load i64, ptr %i.ic, align 8, !noundef !109
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit236

bb.bu:                                            ; preds = %bb.bs
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 3400
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 3368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %i.if, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %.val177 = load ptr, ptr %i.gv, align 8, !nonnull !109, !noundef !109 ; 2 uses
  %i.ig = atomicrmw add ptr %.val177, i64 1 monotonic, align 8
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %bb.bv, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bv:                                            ; preds = %bb.bu
  tail call void @llvm.trap()
  unreachable

bb.bw:                                            ; preds = %bb.bs
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 3376
  %.sroa.0453.0.copyload = load i64, ptr %i.ii, align 16 ; 3 uses
  %.sroa.7454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3384
  %.sroa.7454.0.copyload = load ptr, ptr %.sroa.7454.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3392
  %.sroa.9455.0.copyload = load i64, ptr %.sroa.9455.0..sroa_idx, align 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 3368
  %i.ik = load i64, ptr %i.ij, align 8            ; 3 uses
  %.not891 = icmp eq i64 %.sroa.0453.0.copyload, -1
  br i1 %.not891, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit236, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 3337
  %i.im = load i8, ptr %i.il, align 1, !range !113, !noundef !109
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit236, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i8 1, ptr %i.hb, align 2
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit236

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.bu
  store ptr %.val177, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %.val178 = load ptr, ptr %i.gz, align 16, !nonnull !109, !noundef !109 ; 2 uses
  %.val179 = load ptr, ptr %i.ha, align 8         ; 2 uses
  %i.io = atomicrmw add ptr %.val178, i64 1 monotonic, align 8
  %i.ip = icmp slt i64 %i.io, 0
  br i1 %i.ip, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  tail call void @llvm.trap()
  unreachable

bb.ca:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val179) ]
  store ptr %.val178, ptr %i.ba, align 16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.val179, ptr %i.iq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gx)
          to label %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit unwind label %bb.cb
end_hunk_7
begin_hunk_8_@_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtB7_5CacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtBV_16CachedReaderDataE6insert0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !29350
  store i64 %.val519.i.i.i, ptr %i.n, align 8, !noalias !29355
  %i.wu = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wt, i64 noundef %.val519.i.i.i)
          to label %.noexc57.i.i.i unwind label %bb.hw, !noalias !29350 ; 2 uses

.noexc57.i.i.i:                                   ; preds = %bb.hj
  %i.wv = extractvalue { i64, i32 } %i.wu, 0      ; 2 uses
  %i.ww = extractvalue { i64, i32 } %i.wu, 1      ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8, !alias.scope !29354, !noalias !29350, !nonnull !109, !noundef !109 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24 ; 5 uses
  %i.xa = load atomic i64, ptr %i.wz acquire, align 8, !noalias !29356 ; 2 uses
  %i.xb = and i64 %i.xa, -4096
  %i.xc = icmp ult i64 %i.xa, -4096               ; 2 uses
  %.sroa.042.0.i.i.i.i = zext i1 %i.xc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !29355
  %.not.i56.i.i.i = icmp eq i32 %.val44.i.i.i, -1
  br i1 %.not.i56.i.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.noexc57.i.i.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 40
  %i.xe = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.xd)
          to label %.noexc58.i.i.i unwind label %bb.hw, !noalias !29350 ; 2 uses

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !29355
  store i64 %i.xi, ptr %i.l, align 8, !noalias !29355
  %i.xj = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, i64 noundef %.val43.i.i.i, i32 noundef range(i32 -1, 1000000000) %.val44.i.i.i)
          to label %.noexc59.i.i.i unwind label %bb.hw, !noalias !29350

.noexc59.i.i.i:                                   ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !29355
  br label %bb.hl

bb.hn:                                            ; preds = %bb.hl
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  %i.xl = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.xk)
          to label %.noexc60.i.i.i unwind label %bb.hw, !noalias !29350 ; 2 uses

.noexc60.i.i.i:                                   ; preds = %bb.hn
  %i.xm = extractvalue { i64, i64 } %i.xl, 0
  %i.xn = trunc nuw i64 %i.xm to i1
  br i1 %i.xn, label %bb.hp, label %.split.preheader.i.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i.i:                   ; preds = %.noexc61.i.i.i, %.noexc60.i.i.i, %bb.hl
  %.sroa.615.0.i.i.i.i = phi i64 [ undef, %bb.hl ], [ %i.yw, %.noexc61.i.i.i ], [ undef, %.noexc60.i.i.i ]
  %i.xo = phi i64 [ 0, %bb.hl ], [ 1, %.noexc61.i.i.i ], [ 0, %.noexc60.i.i.i ] ; 2 uses
  %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.087.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store i64 %.sroa.042.0.i.i.i.i, ptr %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.xb, ptr %.sroa.087.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store i64 %i.xh, ptr %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %.sroa.613.0.i.i.i.i, ptr %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  store i64 %i.xo, ptr %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.615.0.i.i.i.i, ptr %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.488.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i64 -1, ptr %.sroa.488.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  %.sroa.690.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 -1, ptr %.sroa.690.0..sroa_idx.i.i.i.i, align 8, !noalias !29355
  call void @llvm.experimental.noalias.scope.decl(metadata !29357)
  br i1 %i.xc, label %bb.ho, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %.split.preheader.i.i.i.i.i.i.i
  %i.xp = trunc nuw i64 %i.xh to i1
  br i1 %i.xp, label %bb.ho, label %.split.i.i.i.1.i.i.i.i

.split.i.i.i.1.i.i.i.i:                           ; preds = %.split.i.i.i.i.i.i.i
  %i.xq = trunc nuw i64 %i.xo to i1
  br i1 %i.xq, label %bb.ho, label %.split.i.i.i.2.i.i.i.i

.split.i.i.i.2.i.i.i.i:                           ; preds = %.split.i.i.i.1.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !29355
  br label %bb.hq

bb.ho:                                            ; preds = %.split.i.i.i.1.i.i.i.i, %.split.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i
  %.lcssa9.i.i.i.i = phi i64 [ 1, %.split.preheader.i.i.i.i.i.i.i ], [ 2, %.split.i.i.i.i.i.i.i ], [ 3, %.split.i.i.i.1.i.i.i.i ]
  %.lcssa.i.i.i.i = phi ptr [ %.sroa.087.sroa.6.0..sroa_idx.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i, %.split.i.i.i.1.i.i.i.i ]
  store i64 %.lcssa9.i.i.i.i, ptr %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !29358, !noalias !29355
  %i.xr = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 8
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !29358, !noalias !29355 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.4.0..sroa_idx.i.i.i.i, i64 64, i1 false), !noalias !29355
  %i.xt = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29360)
  call void @llvm.experimental.noalias.scope.decl(metadata !29361)
  %i.xu = load i64, ptr %i.i, align 8, !alias.scope !29362, !noalias !29359, !noundef !109 ; 8 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !alias.scope !29362, !noalias !29359, !noundef !109 ; 5 uses
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
  %i.yc = load i64, ptr %i.yb, align 8, !range !116, !alias.scope !29363, !noalias !29359, !noundef !109
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.ye = load i64, ptr %i.yd, align 8, !alias.scope !29363, !noalias !29359
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
  %i.yj = load i64, ptr %i.yi, align 8, !range !116, !alias.scope !29363, !noalias !29359, !noundef !109
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yl = load i64, ptr %i.yk, align 8, !alias.scope !29363, !noalias !29359
  %i.ym = trunc nuw i64 %i.yj to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i, i64 %i.yl)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ym, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.yn = add nuw nsw i64 %i.yh, 2                ; 2 uses
  %i.yo = icmp ult i64 %i.yh, 2
  call void @llvm.assume(i1 %i.yo)
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.xt, i64 %i.yh ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yr = load i64, ptr %i.yq, align 8, !range !116, !alias.scope !29363, !noalias !29359, !noundef !109
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.yt = load i64, ptr %i.ys, align 8, !alias.scope !29363, !noalias !29359
  %i.yu = trunc nuw i64 %i.yr to i1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.yt)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.yu, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.yn, %i.xw
  br i1 %.not.i.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.hp:                                            ; preds = %.noexc60.i.i.i
  %i.yv = extractvalue { i64, i64 } %i.xl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29355
  store i64 %i.yv, ptr %i.k, align 8, !noalias !29355
  %i.yw = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i64 noundef %.val41.i.i.i, i32 noundef range(i32 -1, 1000000000) %.val42.i.i.i)
          to label %.noexc61.i.i.i unwind label %bb.hw, !noalias !29350

.noexc61.i.i.i:                                   ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29355
  br label %.split.preheader.i.i.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.ho
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xs, %bb.ho ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !29355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29355
  %i.yx = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wt, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i)
          to label %.noexc62.i.i.i unwind label %bb.hw, !noalias !29350 ; 2 uses

.noexc62.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  %i.yy = extractvalue { i64, i32 } %i.yx, 0
  %i.yz = extractvalue { i64, i32 } %i.yx, 1
  store i64 %i.yy, ptr %i.j, align 8, !noalias !29355
  %i.za = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.yz, ptr %i.za, align 8, !noalias !29355
  %i.zb = invoke { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef %i.wv, i32 noundef %i.ww)
          to label %.noexc63.i.i.i unwind label %bb.hw, !noalias !29350 ; 2 uses

.noexc63.i.i.i:                                   ; preds = %.noexc62.i.i.i
  %i.zc = extractvalue { i64, i32 } %i.zb, 0
  %i.zd = extractvalue { i64, i32 } %i.zb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29355
  br label %bb.hq

bb.hq:                                            ; preds = %.noexc63.i.i.i, %.split.i.i.i.2.i.i.i.i
  %.sroa.820.0.i.i.i.i = phi i32 [ %i.zd, %.noexc63.i.i.i ], [ -1, %.split.i.i.i.2.i.i.i.i ] ; 5 uses
  %.sroa.016.0.i.i.i.i = phi i64 [ %i.zc, %.noexc63.i.i.i ], [ undef, %.split.i.i.i.2.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.i.i.i) ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.val53.i.i.i, i64 16
  %i.zf = load i64, ptr %i.ze, align 8, !range !126, !invariant.load !109, !noalias !29364
  %i.zg = add nsw i64 %i.zf, -1
  %i.zh = and i64 %i.zg, -16
  %i.zi = getelementptr inbounds nuw i8, ptr %.val52.i.i.i, i64 %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zk = getelementptr inbounds nuw i8, ptr %.val53.i.i.i, i64 40
  %i.zl = load ptr, ptr %i.zk, align 8, !invariant.load !109, !noalias !29364, !nonnull !109
  %i.zm = invoke { i64, i32 } %i.zl(ptr noundef nonnull %i.zj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wo, i64 noundef %i.wv, i32 noundef range(i32 0, 1000000000) %i.ww, i64 %.sroa.016.0.i.i.i.i, i32 noundef range(i32 -1, 1000000000) %.sroa.820.0.i.i.i.i)
          to label %.noexc64.i.i.i unwind label %bb.hw, !noalias !29350, !inline_history !29139 ; 2 uses

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
  br i1 %.not116.i.i.i.i, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.split.i.i.i.i.i

.split.us.i.preheader.i.i.i.i:                    ; preds = %bb.ht, %bb.hr
  %i.zq = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, i64 noundef %i.zn, i32 noundef %i.zo)
          to label %.noexc65.i.i.i unwind label %bb.hw, !noalias !29350

.noexc65.i.i.i:                                   ; preds = %.split.us.i.preheader.i.i.i.i
  %i.zr = call i64 @llvm.umin.i64(i64 %i.zq, i64 -4097)
  %i.zs = and i64 %i.zr, -4096
  br label %.split.us.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.split.us.i.i.i.i.i, %.noexc65.i.i.i
  %i.zt = load atomic i64, ptr %i.wz acquire, align 8, !noalias !29350 ; 2 uses
  %i.zu = add i64 %i.zt, 1
  %i.zv = and i64 %i.zu, 4095
  %i.zw = or disjoint i64 %i.zv, %i.zs
  %i.zx = cmpxchg weak ptr %i.wz, i64 %i.zt, i64 %i.zw acq_rel acquire, align 8, !noalias !29350
  %i.zy = extractvalue { i64, i1 } %i.zx, 1
  br i1 %i.zy, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.split.us.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.hs, %.split.i.i.i.i.i
  %i.zz = load atomic i64, ptr %i.wz acquire, align 8, !noalias !29350 ; 2 uses
  %i.aaa = add i64 %i.zz, 1
  %i.aab = or i64 %i.aaa, -4096
  %i.aac = cmpxchg weak ptr %i.wz, i64 %i.zz, i64 %i.aab acq_rel acquire, align 8, !noalias !29350
  %i.aad = extractvalue { i64, i1 } %i.aac, 1
  br i1 %i.aad, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.split.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hr
  %i.aae = icmp ult i32 %i.zo, 1000000000
  call void @llvm.assume(i1 %i.aae)
  %i.aaf = icmp ult i32 %.sroa.820.0.i.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.aaf)
  %.not118.i.i.i.i = icmp eq i32 %i.zo, %.sroa.820.0.i.i.i.i
  br i1 %.not118.i.i.i.i, label %_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.split.us.i.preheader.i.i.i.i

_RINvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB6_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB14_16CachedReaderDataE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %.split.us.i.i.i.i.i, %.split.i.i.i.i.i, %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !29350
  br label %bb.hf

bb.hu:                                            ; preds = %bb.hw
  %i.aag = atomicrmw add ptr %i.aaj, i64 -1 release, align 8, !noalias !29365
  %i.aah = icmp eq i64 %i.aag, 1
  br i1 %i.aah, label %bb.hv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit67.i.i.i

bb.hv:                                            ; preds = %bb.hu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1l_16CachedReaderDataENtNtCscI6d9CVNmLh_4core6marker4SyncNtB2z_4SendEL_E9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit67.i.i.i unwind label %bb.hy, !noalias !29350

bb.hw:                                            ; preds = %.split.us.i.preheader.i68.i.i.i, %.noexc71.i.i.i, %bb.hx, %.split.us.i.preheader.i.i.i.i, %bb.hq, %.noexc62.i.i.i, %.loopexit.i.i.i.i, %bb.hp, %bb.hn, %bb.hm, %bb.hk, %bb.hj
  %i.aai = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29366)
  %i.aaj = load ptr, ptr %i.r, align 8, !alias.scope !29366, !noalias !29350, !noundef !109 ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, null
  br i1 %i.aak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit67.i.i.i, label %bb.hu

bb.hx:                                            ; preds = %bb.hi
  %.val38.i.i.i = load ptr, ptr %i.vq, align 8, !noalias !29350, !nonnull !109, !noundef !109
  %.val35.i.i.i = load ptr, ptr %i.wg, align 8, !noalias !29350, !nonnull !109, !noundef !109 ; 3 uses
  %.val30.i.i.i = load ptr, ptr %i.vu, align 8, !noalias !29350, !nonnull !109, !noundef !109
  %i.aal = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 88
  %.val47.i.i.i = load ptr, ptr %i.r, align 8, !noalias !29350 ; 2 uses
  %.val48.i.i.i = load ptr, ptr %i.vz, align 8, !noalias !29350 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29350
  store i64 %.val51.i.i.i, ptr %i.h, align 8, !noalias !29368
  %i.aam = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aal, i64 noundef %.val51.i.i.i)
          to label %.noexc71.i.i.i unwind label %bb.hw, !noalias !29350 ; 2 uses

.noexc71.i.i.i:                                   ; preds = %bb.hx
  %i.aan = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %.val38.i.i.i, i64 16
  %i.aap = extractvalue { i64, i32 } %i.aam, 0
  %i.aaq = extractvalue { i64, i32 } %i.aam, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48.i.i.i) ]
  %i.aar = getelementptr inbounds nuw i8, ptr %.val48.i.i.i, i64 16
  %i.aas = load i64, ptr %i.aar, align 8, !range !126, !invariant.load !109, !noalias !29368
  %i.aat = add nsw i64 %i.aas, -1
  %i.aau = and i64 %i.aat, -16
  %i.aav = getelementptr inbounds nuw i8, ptr %.val47.i.i.i, i64 %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = getelementptr inbounds nuw i8, ptr %.val48.i.i.i, i64 24
  %i.aay = load ptr, ptr %i.aax, align 8, !invariant.load !109, !noalias !29368, !nonnull !109
  %i.aaz = invoke { i64, i32 } %i.aay(ptr noundef nonnull %i.aaw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aan, i64 noundef %i.aap, i32 noundef %i.aaq)
          to label %.noexc72.i.i.i unwind label %bb.hw, !noalias !29350, !inline_history !98 ; 2 uses

.noexc72.i.i.i:                                   ; preds = %.noexc71.i.i.i
  %i.aba = extractvalue { i64, i32 } %i.aaz, 1    ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %i.aba, -1
  br i1 %.not.not.i.i.i.i, label %.split.i.preheader.i.i.i.i, label %.split.us.i.preheader.i68.i.i.i

.split.us.i.preheader.i68.i.i.i:                  ; preds = %.noexc72.i.i.i
  %i.abb = extractvalue { i64, i32 } %i.aaz, 0
  %i.abc = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, i64 noundef %i.abb, i32 noundef %i.aba)
          to label %.noexc73.i.i.i unwind label %bb.hw, !noalias !29350

.noexc73.i.i.i:                                   ; preds = %.split.us.i.preheader.i68.i.i.i
  %i.abd = call i64 @llvm.umin.i64(i64 %i.abc, i64 -4097)
  %i.abe = and i64 %i.abd, -4096
  %i.abf = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8, !alias.scope !29367, !noalias !29350, !nonnull !109, !noundef !109
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 24 ; 2 uses
  br label %.split.us.i.i69.i.i.i

.split.i.preheader.i.i.i.i:                       ; preds = %.noexc72.i.i.i
  %i.abi = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8, !alias.scope !29367, !noalias !29350, !nonnull !109, !noundef !109
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 24 ; 2 uses
  br label %.split.i.i70.i.i.i

.split.us.i.i69.i.i.i:                            ; preds = %.split.us.i.i69.i.i.i, %.noexc73.i.i.i
  %i.abl = load atomic i64, ptr %i.abh acquire, align 8, !noalias !29350 ; 2 uses
  %i.abm = add i64 %i.abl, 1
  %i.abn = and i64 %i.abm, 4095
  %i.abo = or disjoint i64 %i.abn, %i.abe
  %i.abp = cmpxchg weak ptr %i.abh, i64 %i.abl, i64 %i.abo acq_rel acquire, align 8, !noalias !29350
  %i.abq = extractvalue { i64, i1 } %i.abp, 1
  br i1 %i.abq, label %_RNvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB13_16CachedReaderDataE19expire_after_createCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.split.us.i.i69.i.i.i

.split.i.i70.i.i.i:                               ; preds = %.split.i.i70.i.i.i, %.split.i.preheader.i.i.i.i
  %i.abr = load atomic i64, ptr %i.abk acquire, align 8, !noalias !29350 ; 2 uses
  %i.abs = add i64 %i.abr, 1
  %i.abt = or i64 %i.abs, -4096
  %i.abu = cmpxchg weak ptr %i.abk, i64 %i.abr, i64 %i.abt acq_rel acquire, align 8, !noalias !29350
  %i.abv = extractvalue { i64, i1 } %i.abu, 1
  br i1 %i.abv, label %_RNvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB13_16CachedReaderDataE19expire_after_createCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, label %.split.i.i70.i.i.i

_RNvMs5_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB13_16CachedReaderDataE19expire_after_createCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %.split.us.i.i69.i.i.i, %.split.i.i70.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29350
  br label %bb.hf

bb.hy:                                            ; preds = %bb.lg, %bb.le, %bb.ld, %bb.kr, %bb.kf, %bb.kb, %.body86.i.i.i, %bb.jz, %bb.hv
  %i.abw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !29350
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit67.i.i.i: ; preds = %bb.hz, %bb.hw, %bb.hv, %bb.hu
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.abx, %bb.hz ], [ %i.aai, %bb.hv ], [ %i.aai, %bb.hw ], [ %i.aai, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !29350
  br label %bb.kb

bb.hz:                                            ; preds = %bb.hg
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit67.i.i.i

.thread2.i.i.i:                                   ; preds = %bb.hg, %.thread3.i.i.i, %bb.hf, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !29350
  %.val54.i.i.i = load ptr, ptr %i.vu, align 8, !noalias !29350, !nonnull !109, !noundef !109 ; 7 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 592 ; 3 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !noalias !29350, !noundef !109
  %.not14.i.i.i = icmp eq ptr %i.abz, null
  br i1 %.not14.i.i.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.kq, %.thread2.i.i.i
  %i.aca = phi ptr [ %i.ahc, %bb.kq ], [ %i.vd, %.thread2.i.i.i ] ; 6 uses
  %i.acb = phi ptr [ %i.ahd, %bb.kq ], [ %i.ve, %.thread2.i.i.i ] ; 5 uses
  %i.acc = phi ptr [ %i.ahe, %bb.kq ], [ %i.vf, %.thread2.i.i.i ] ; 6 uses
  %i.acd = phi ptr [ %i.ahf, %bb.kq ], [ %i.vg, %.thread2.i.i.i ] ; 5 uses
  %i.ace = phi ptr [ %i.ahg, %bb.kq ], [ %i.vl, %.thread2.i.i.i ] ; 4 uses
  %i.acf = phi ptr [ %i.ahh, %bb.kq ], [ %i.vm, %.thread2.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !29350
  %i.acg = invoke fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsc93vp1BCDlY_26lance_namespace_datafusion()
          to label %_RNvNtCskfeRsqx2rfd_15crossbeam_epoch7default3pin.exit.i.i.i unwind label %bb.kx, !noalias !29350 ; 7 uses

bb.ib:                                            ; preds = %.thread2.i.i.i
  store i8 0, ptr %i.vn, align 1, !noalias !29350
  %i.ach = load ptr, ptr %i.vq, align 8, !noalias !29350, !nonnull !109, !noundef !109
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.acj = load i64, ptr %i.vr, align 8, !range !116, !noalias !29350, !noundef !109
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.acl = load i64, ptr %i.ack, align 8, !noalias !29350
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.acn = load i64, ptr %i.acm, align 8, !range !116, !noalias !29350, !noundef !109
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.acp = load i64, ptr %i.aco, align 8, !noalias !29350 ; 2 uses
  %.val55.i.i.i = load ptr, ptr %i.aci, align 8, !noalias !29350 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29350
  store ptr %i.ach, ptr %i.g, align 8, !noalias !29350
  %i.acq = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 88
  %i.acr = invoke noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.acq)
          to label %bb.id unwind label %bb.ic, !noalias !29350 ; 2 uses

bb.ic:                                            ; preds = %bb.ir, %bb.im, %bb.ik, %bb.ig, %bb.ib
  %i.acs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29369)
  call void @llvm.experimental.noalias.scope.decl(metadata !29370)
  %i.act = load ptr, ptr %i.g, align 8, !alias.scope !29371, !noalias !29350, !nonnull !109, !noundef !109
  %i.acu = atomicrmw add ptr %i.act, i64 -1 release, align 8, !noalias !29372
  %i.acv = icmp eq i64 %i.acu, 1
  br i1 %i.acv, label %bb.jd, label %.body.i.i.i

bb.id:                                            ; preds = %bb.ib
  %i.acw = trunc nuw i64 %i.acj to i1
  br i1 %i.acw, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.acx = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 136
  %i.acy = load i64, ptr %i.acx, align 8, !noalias !29350
  %i.acz = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 144
  %i.ada = load i32, ptr %i.acz, align 8, !range !169, !noalias !29350, !noundef !109 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29350
  store i64 %i.acl, ptr %i.f, align 8, !noalias !29350
  %.not.i78.i.i.i = icmp eq i32 %i.ada, -1
  br i1 %.not.i78.i.i.i, label %.sink.split.i.i.i.i, label %bb.ig

.sink.split.i.i.i.i:                              ; preds = %bb.ih, %bb.ie
  %.sroa.06.0.ph.i.i.i.i = phi i8 [ %spec.select12.i.i.i.i, %bb.ih ], [ 2, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29350
  br label %bb.if

bb.if:                                            ; preds = %.sink.split.i.i.i.i, %bb.id
  %.sroa.06.0.i.i.i.i = phi i8 [ 2, %bb.id ], [ %.sroa.06.0.ph.i.i.i.i, %.sink.split.i.i.i.i ] ; 2 uses
  %i.adb = trunc nuw i64 %i.acn to i1
  br i1 %i.adb, label %bb.ii, label %bb.ij

bb.ig:                                            ; preds = %bb.ie
  %i.adc = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.acy, i32 noundef %i.ada)
          to label %bb.ih unwind label %bb.ic, !noalias !29350

bb.ih:                                            ; preds = %bb.ig
  %.not23.i.i.i.i = icmp ugt i64 %i.adc, %i.acr
  %spec.select12.i.i.i.i = select i1 %.not23.i.i.i.i, i8 2, i8 0
  br label %.sink.split.i.i.i.i

bb.ii:                                            ; preds = %bb.if
  %i.add = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 120
  %i.ade = load i64, ptr %i.add, align 8, !noalias !29350
  %i.adf = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 128
  %i.adg = load i32, ptr %i.adf, align 8, !range !169, !noalias !29350, !noundef !109 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29350
  store i64 %i.acp, ptr %i.e, align 8, !noalias !29350
  %.not24.i.i.i.i = icmp eq i32 %i.adg, -1
  br i1 %.not24.i.i.i.i, label %bb.im, label %bb.ik

bb.ij:                                            ; preds = %bb.io, %bb.in, %bb.if
  %.sroa.06.1.i.i.i.i = phi i8 [ 0, %bb.in ], [ %spec.select.i77.i.i.i, %bb.io ], [ %.sroa.06.0.i.i.i.i, %bb.if ]
  %i.adh = load ptr, ptr %i.aby, align 8, !noalias !29350, !noundef !109 ; 2 uses
  %.not26.i.i.i.i = icmp eq ptr %i.adh, null
  br i1 %.not26.i.i.i.i, label %bb.iq, label %bb.ip

bb.ik:                                            ; preds = %bb.ii
  %i.adi = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i64 noundef %i.ade, i32 noundef %i.adg)
          to label %bb.il unwind label %bb.ic, !noalias !29350

bb.il:                                            ; preds = %bb.ik
  %.not25.i.i.i.i = icmp ugt i64 %i.adi, %i.acr
  br i1 %.not25.i.i.i.i, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29350
  %i.adj = getelementptr inbounds nuw i8, ptr %.val54.i.i.i, i64 568
  %i.adk = invoke { i64, i64 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.adj)
          to label %bb.io unwind label %bb.ic, !noalias !29350 ; 2 uses

bb.in:                                            ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29350
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
  %i.adp = atomicrmw add ptr %i.adh, i64 1 monotonic, align 8, !noalias !29350
  %i.adq = icmp slt i64 %i.adp, 0
  br i1 %i.adq, label %bb.iu, label %bb.is

end_hunk_8
begin_hunk_9_@_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset13load_manifest0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  ret void

bb.bz:                                            ; preds = %.thread, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10267)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i64 -2, ptr %0, align 16
  br label %common.ret

bb.ca:                                            ; preds = %.thread522, %bb.by
  %.sroa.099.0.i528 = phi i8 [ %.sroa.099.0.i.ph, %.thread522 ], [ %.sroa.8134.sroa.0.0.copyload144.i, %bb.by ]
  %.sroa.7109.0.i527 = phi ptr [ %.sroa.7109.0.i.ph, %.thread522 ], [ %.sroa.8134.sroa.9.0.copyload146.i, %bb.by ]
  %.sroa.9118.0.i526 = phi ptr [ %.sroa.9118.0.i.ph, %.thread522 ], [ %.sroa.8134.sroa.10.0.copyload148.i, %bb.by ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10267, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10267)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.ca
  %.sroa.10291.0 = phi ptr [ %.sroa.9118.0.i526, %bb.ca ], [ %.sroa.10291.0.copyload, %bb.cs ], [ %.sroa.10291.0.copyload, %bb.ct ], [ %.sroa.10291.0.copyload, %bb.cu ], [ %.sroa.10291.0.copyload, %bb.cv ] ; 7 uses
  %.sroa.8284.0 = phi ptr [ %.sroa.7109.0.i527, %bb.ca ], [ %.sroa.8284.0.copyload, %bb.cs ], [ %.sroa.8284.0.copyload, %bb.ct ], [ %.sroa.8284.0.copyload, %bb.cu ], [ %.sroa.8284.0.copyload, %bb.cv ] ; 7 uses
  %.sroa.0276.0 = phi i8 [ %.sroa.099.0.i528, %bb.ca ], [ %i.ha, %bb.cs ], [ %i.ha, %bb.ct ], [ %i.ha, %bb.cu ], [ %i.ha, %bb.cv ] ; 4 uses
  %.not.i159 = icmp eq i8 %.sroa.0276.0, -1
  br i1 %.not.i159, label %.thread662, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29884
  store i8 %.sroa.0276.0, ptr %i.f, align 8, !noalias !29885
  %.sroa.6280.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280.0..sroa_idx281, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280, i64 7, i1 false), !noalias !29885
  %.sroa.8284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.8284.0, ptr %.sroa.8284.0..sroa_idx285, align 8, !noalias !29885
  %.sroa.10291.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %.sroa.10291.0, ptr %.sroa.10291.0..sroa_idx292, align 8, !noalias !29885
  %.sroa.12298.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298.0..sroa_idx299, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298, i64 32, i1 false), !noalias !29885
  call void @llvm.experimental.noalias.scope.decl(metadata !29886)
  call void @llvm.experimental.noalias.scope.decl(metadata !29887)
  %i.go = icmp eq i8 %.sroa.0276.0, 16
  br i1 %i.go, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29888
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.10291.0..sroa_idx292)
          to label %bb.ce unwind label %bb.cm, !noalias !29889

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280, i64 7, i1 false)
  %.sroa.7.0.copyload9.i = load ptr, ptr %.sroa.12298.0..sroa_idx299, align 8, !alias.scope !29890, !noalias !29884
  %.sroa.12298.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12298, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12298.32..sroa_idx, i64 24, i1 false)
  br label %bb.cx

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29888
  store i8 16, ptr %i.d, align 8, !noalias !29885
  %.sroa.6280.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280.0..sroa_idx282, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280, i64 7, i1 false), !noalias !29885
  %.sroa.8284.0..sroa_idx287 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.8284.0, ptr %.sroa.8284.0..sroa_idx287, align 8, !noalias !29885
  %.sroa.10291.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.10291.0, ptr %.sroa.10291.0..sroa_idx294, align 8, !noalias !29885
  %.sroa.12298.0..sroa_idx300 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298.0..sroa_idx300, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298, i64 32, i1 false), !noalias !29885
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !29891
  %i.gp = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !29891 ; 7 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.cf, label %bb.ci, !prof !112

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #48
          to label %.noexc.i.i160 unwind label %bb.cg, !noalias !29889

.noexc.i.i160:                                    ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #49
          to label %bb.cj unwind label %bb.ch, !noalias !29889

bb.ch:                                            ; preds = %bb.cg
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !29889
  unreachable

bb.ci:                                            ; preds = %bb.ce
  store i8 16, ptr %i.gp, align 8, !noalias !29885
  %.sroa.6280.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280.0..sroa_idx283, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280, i64 7, i1 false), !noalias !29885
  %.sroa.8284.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %.sroa.8284.0, ptr %.sroa.8284.0..sroa_idx289, align 8, !noalias !29885
  %.sroa.10291.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %.sroa.10291.0, ptr %.sroa.10291.0..sroa_idx296, align 8, !noalias !29885
  %.sroa.12298.0..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298.0..sroa_idx301, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298, i64 32, i1 false), !noalias !29885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29888
  br label %bb.cx

bb.cj:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !29892)
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !29892, !noalias !29888 ; 2 uses
  %i.gt = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gt, label %.body193, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i = load ptr, ptr %i.gu, align 8, !alias.scope !29892, !noalias !29888, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !29893
  br label %.body193

bb.cl:                                            ; preds = %bb.cm
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !29889
  unreachable

bb.cm:                                            ; preds = %bb.cc
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #49
          to label %.body193 unwind label %bb.cl, !noalias !29889

bb.cn:                                            ; preds = %bb.ir, %bb.hj, %bb.gd, %.body203, %bb.fa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit191, %bb.fj, %bb.jq, %bb.jp, %bb.ja, %bb.iy, %bb.hr, %.body251, %.body175, %bb.co, %.body152
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

.body193:                                         ; preds = %bb.cm, %bb.ck, %bb.cj, %bb.co, %bb.cw, %.body152, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.ez, %bb.ke, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i257, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit191
  %.pn81.pn = phi { ptr, i32 } [ %i.gy, %bb.co ], [ %eh.lpad-body153, %.body152 ], [ %.pn78.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit191 ], [ %i.aaz, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i257 ], [ %i.oj, %bb.ez ], [ %i.oj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.aaz, %bb.ke ], [ %i.hh, %bb.cw ], [ %i.gr, %bb.cj ], [ %i.gw, %bb.cm ], [ %i.gr, %bb.ck ]
  store i8 2, ptr %i.aq, align 1
  resume { ptr, i32 } %.pn81.pn

bb.co:                                            ; preds = %bb.cp
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.gz) #49
          to label %.body193 unwind label %bb.cn

bb.cp:                                            ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  invoke fastcc void @_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore4open0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ap, ptr noundef nonnull align 8 %i.gz, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  %i.ha = load i8, ptr %i.ap, align 8, !range !150, !noundef !109 ; 5 uses
  %i.hb = icmp eq i8 %i.ha, -2
  br i1 %i.hb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 -2, ptr %0, align 16
  br label %common.ret

bb.cs:                                            ; preds = %bb.cq
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6280.0..sroa_idx, i64 7, i1 false)
  %.sroa.8284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.8284.0.copyload = load ptr, ptr %.sroa.8284.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.10291.0.copyload = load ptr, ptr %.sroa.10291.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12298.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.hd = load i8, ptr %i.hc, align 16, !range !155, !noundef !109
  switch i8 %i.hd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit [
    i8 5, label %bb.cv
    i8 3, label %bb.ct
    i8 4, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 728
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtBI_17LocalObjectReader17open_with_tracker0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.he)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.cw

bb.cu:                                            ; preds = %bb.cs
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 728
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtBI_24UringCurrentThreadReader4open0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cs
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 728
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBJ_11UringReader4open0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body193

.thread662:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8284.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10291.0) ]
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %.sroa.8284.0, ptr %i.hi, align 16
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr %.sroa.10291.0, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 704
  store ptr %.sroa.8284.0, ptr %i.hk, align 16
  %.sroa.8347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 712
  store ptr %.sroa.10291.0, ptr %.sroa.8347.0..sroa_idx, align 8
  %.sroa.10349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 736
  store i8 0, ptr %.sroa.10349.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10353)
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i167)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 736
  br label %bb.da

bb.cx:                                            ; preds = %bb.cd, %bb.ci
  %.sroa.7.0.i = phi ptr [ @362, %bb.ci ], [ %.sroa.7.0.copyload9.i, %bb.cd ]
  %.sroa.6.0.i = phi ptr [ @344, %bb.ci ], [ %.sroa.10291.0, %bb.cd ]
  %.sroa.53.0.i = phi ptr [ %i.gp, %bb.ci ], [ %.sroa.8284.0, %bb.cd ]
  %.sroa.0.0.i = phi i8 [ 3, %bb.ci ], [ %.sroa.0276.0, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29884
  call void @llvm.experimental.noalias.scope.decl(metadata !29894)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i8 %.sroa.0.0.i, ptr %i.hn, align 8, !alias.scope !29895
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5320.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i, i64 7, i1 false)
  %.sroa.6321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sroa.53.0.i, ptr %.sroa.6321.0..sroa_idx, align 16, !alias.scope !29895
  %.sroa.7322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %.sroa.6.0.i, ptr %.sroa.7322.0..sroa_idx, align 8, !alias.scope !29895
  %.sroa.8323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %.sroa.7.0.i, ptr %.sroa.8323.0..sroa_idx, align 16, !alias.scope !29895
  %.sroa.9324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9324.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false)
  store i64 -1, ptr %i.ak, align 16, !alias.scope !29896
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.cy:                                            ; preds = %bb.de, %bb.dd
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body175

.body175:                                         ; preds = %.body17.i, %bb.cy
  %i.hp = phi ptr [ %i.hq, %bb.cy ], [ %i.js, %.body17.i ]
  %eh.lpad-body176 = phi { ptr, i32 } [ %i.ho, %bb.cy ], [ %.pn.pn.i, %.body17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10353)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtCsjjbR6Jfsbqw_8lance_io5utils15read_last_block0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hp) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit191 unwind label %bb.cn

bb.cz:                                            ; preds = %bb.a
  %.phi.trans.insert597 = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.pre598 = load i8, ptr %.phi.trans.insert597, align 16, !range !174, !noalias !29897
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10353)
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i167)
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 3 uses
  switch i8 %.pre598, label %default.unreachable660 [
    i8 0, label %bb.da
    i8 1, label %bb.dd
    i8 2, label %bb.de
    i8 3, label %bb.db
    i8 4, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.cz
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %1, i64 744
  %.val10.pre.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !noalias !29897
  %.phi.trans.insert39.i = getelementptr i8, ptr %1, i64 752
  %.val11.pre.i = load ptr, ptr %.phi.trans.insert39.i, align 16, !noalias !29897
  br label %bb.ds

bb.da:                                            ; preds = %.thread662, %bb.cz
  %i.hs = phi ptr [ %i.hm, %.thread662 ], [ %i.hr, %bb.cz ] ; 2 uses
  %i.ht = phi ptr [ %i.hl, %.thread662 ], [ %i.hq, %bb.cz ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.hv = load ptr, ptr %i.ht, align 8, !noalias !29897, !nonnull !109, !noundef !109 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !29897, !nonnull !109, !align !125, !noundef !109 ; 2 uses
  store ptr %i.hv, ptr %i.hu, align 16, !noalias !29897
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 728
  store ptr %i.hx, ptr %i.hy, align 8, !noalias !29897
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  %i.ia = load ptr, ptr %i.hz, align 8, !invariant.load !109, !noalias !29897, !nonnull !109
  %i.ib = invoke { ptr, ptr } %i.ia(ptr noundef nonnull %i.hv)
          to label %bb.dc unwind label %bb.dy, !noalias !29897 ; 2 uses

bb.db:                                            ; preds = %bb.cz
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 744
  %.val12.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !29897
  %.phi.trans.insert35.i = getelementptr i8, ptr %1, i64 752
  %.val13.pre.i = load ptr, ptr %.phi.trans.insert35.i, align 16, !noalias !29897
  br label %bb.dg

bb.dc:                                            ; preds = %bb.da
  %i.ic = extractvalue { ptr, ptr } %i.ib, 0      ; 2 uses
  %i.id = extractvalue { ptr, ptr } %i.ib, 1      ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.ic, ptr %i.ie, align 8, !noalias !29897
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %i.id, ptr %i.if, align 16, !noalias !29897
  br label %bb.dg

bb.dd:                                            ; preds = %bb.cz
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @515) #48
          to label %.noexc173 unwind label %bb.cy

.noexc173:                                        ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.cz
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @515) #48
          to label %.noexc174 unwind label %bb.cy

.noexc174:                                        ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.dg
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29897
  %.val4.i = load ptr, ptr %i.ij, align 8, !noalias !29897
  %.val5.i = load ptr, ptr %i.ik, align 16, !noalias !29897, !nonnull !109, !align !125, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val4.i, ptr nonnull %.val5.i) #49
          to label %.body17.i unwind label %bb.dq, !noalias !29898

bb.dg:                                            ; preds = %bb.dc, %bb.db
  %i.ih = phi ptr [ %i.hr, %bb.db ], [ %i.hs, %bb.dc ] ; 8 uses
  %i.ii = phi ptr [ %i.hq, %bb.db ], [ %i.ht, %bb.dc ] ; 7 uses
  %.val13.i = phi ptr [ %.val13.pre.i, %bb.db ], [ %i.id, %bb.dc ]
  %.val12.i = phi ptr [ %.val12.pre.i, %bb.db ], [ %i.ic, %bb.dc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29897
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.ik = getelementptr i8, ptr %1, i64 752       ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.val13.i, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !invariant.load !109, !noalias !29899, !nonnull !109
  invoke void %i.im(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noundef nonnull %.val12.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i unwind label %bb.df, !noalias !29898, !inline_history !95

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.dg
  %i.in = load i64, ptr %i.c, align 8, !range !151, !noalias !29897, !noundef !109 ; 3 uses
  %i.io = icmp eq i64 %i.in, -2
  br i1 %i.io, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29897
  br label %bb.dz

bb.di:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !29897 ; 3 uses
  %.sroa.5.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i167, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx.i170, i64 56, i1 false), !noalias !29897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29897
  %.val.i171 = load ptr, ptr %i.ij, align 8, !noalias !29897 ; 5 uses
  %.val3.i = load ptr, ptr %i.ik, align 16, !noalias !29897, !nonnull !109, !align !125, !noundef !109 ; 5 uses
  %i.ip = load ptr, ptr %.val3.i, align 8, !invariant.load !109, !noalias !29898 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i171) ]
  invoke void %i.ip(ptr noundef nonnull %.val.i171)
          to label %bb.dk unwind label %bb.dl, !noalias !29898

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.iq = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !range !127, !invariant.load !109, !noalias !29898 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.dk
  %i.it = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !range !126, !invariant.load !109, !noalias !29898
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i171) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i171, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) %i.iu) #44, !noalias !29898
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.dl:                                            ; preds = %bb.dj
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !range !127, !invariant.load !109, !noalias !29898 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %.body17.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.dl
  %i.iz = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !range !126, !invariant.load !109, !noalias !29898
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i171, i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) %i.ja) #44, !noalias !29898
  br label %.body17.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.dk
  %.not.i.i172 = icmp eq i64 %i.in, -1
  br i1 %.not.i.i172, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
end_hunk_9
begin_hunk_10_@_RNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB7_4Tags3get0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtNtCshkPeWWG1flk_5lance7dataset4refs9from_pathNtBG_11TagContentsE0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.gs)
          to label %.body26 unwind label %bb.ay

bb.ba:                                            ; preds = %bb.a
  %.phi.trans.insert2049 = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %.pre2050 = load i8, ptr %.phi.trans.insert2049, align 8, !range !129, !noalias !31106
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9119.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9119.sroa.8)
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 7 uses
  switch i8 %.pre2050, label %default.unreachable2133 [
    i8 0, label %.thread.i
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.be
  ]

.thread.i:                                        ; preds = %.thread2135, %bb.ba
  %i.gu = phi ptr [ %i.gp, %.thread2135 ], [ %i.gt, %bb.ba ]
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !31106, !nonnull !109, !align !125, !noundef !109 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !31106, !nonnull !109, !align !125, !noundef !109 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  store ptr %i.gw, ptr %i.gz, align 8, !noalias !31106
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.gy, ptr %.sroa.75.0..sroa_idx.i, align 8, !noalias !31106
  %.sroa.9.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i47, align 8, !noalias !31106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !31106
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5132.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4128.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8101.i.i)
  br label %bb.bh

.body48.thread:                                   ; preds = %.body.i39, %bb.nb
  %i.ha = phi ptr [ %i.agv, %bb.nb ], [ %i.hc, %.body.i39 ]
  %.pn.i = phi { ptr, i32 } [ %i.agz, %bb.nb ], [ %eh.lpad-body.i, %.body.i39 ]
  store i8 2, ptr %i.ha, align 8, !noalias !31106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9119.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9119.sroa.8)
  br label %.body26

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #48
          to label %.noexc50 unwind label %.body48

.noexc50:                                         ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #48
          to label %.noexc51 unwind label %.body48

.noexc51:                                         ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bj, %bb.bi
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i39

.body.i39:                                        ; preds = %.body86.i.i, %bb.bd
  %i.hc = phi ptr [ %i.gt, %bb.bd ], [ %i.ij, %.body86.i.i ]
  %i.hd = phi ptr [ %i.he, %bb.bd ], [ %i.il, %.body86.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hb, %bb.bd ], [ %.pn17.pn.i.i, %.body86.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtNtCshkPeWWG1flk_5lance7dataset4refs9from_pathNtBG_11TagContentsE0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hd) #49
          to label %.body48.thread unwind label %bb.nc, !noalias !31107

bb.be:                                            ; preds = %bb.ba
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 5 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !155, !noalias !31108
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !31106
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5132.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4128.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8101.i.i)
  switch i8 %.pre.i, label %default.unreachable2133 [
    i8 0, label %._crit_edge
    i8 1, label %bb.bi
    i8 2, label %bb.bj
    i8 3, label %bb.bl
    i8 4, label %bb.bf
    i8 5, label %bb.bg
  ]

._crit_edge:                                      ; preds = %bb.be
  %.pre2051 = load ptr, ptr %i.he, align 8, !noalias !31108
  %.phi.trans.insert2052 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.pre2053 = load ptr, ptr %.phi.trans.insert2052, align 8, !noalias !31108
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.val39.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !31108
  %.phi.trans.insert2121.i.i = getelementptr i8, ptr %1, i64 312
  %.val40.pre.i.i = load ptr, ptr %.phi.trans.insert2121.i.i, align 8, !noalias !31108
  br label %bb.bx

bb.bg:                                            ; preds = %bb.be
  %.phi.trans.insert2123.i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.val37.pre.i.i = load ptr, ptr %.phi.trans.insert2123.i.i, align 8, !noalias !31108
  %.phi.trans.insert2125.i.i = getelementptr i8, ptr %1, i64 296
  %.val38.pre.i.i = load ptr, ptr %.phi.trans.insert2125.i.i, align 8, !noalias !31108
  br label %bb.ci

bb.bh:                                            ; preds = %._crit_edge, %.thread.i
  %i.hf = phi ptr [ %i.gu, %.thread.i ], [ %i.gt, %._crit_edge ]
  %i.hg = phi ptr [ %i.gy, %.thread.i ], [ %.pre2053, %._crit_edge ]
  %i.hh = phi ptr [ %i.gw, %.thread.i ], [ %.pre2051, %._crit_edge ] ; 2 uses
  %i.hi = phi ptr [ %.sroa.9.0..sroa_idx.i47, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ]
  %i.hj = phi ptr [ %i.gz, %.thread.i ], [ %i.he, %._crit_edge ]
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.hh, ptr %i.hk, align 8, !noalias !31108
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.hg, ptr %i.hl, align 8, !noalias !31108
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.hh, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !31108
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !31108
  br label %bb.bl

bb.bi:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #48
          to label %.noexc.i unwind label %bb.bd, !noalias !31107

.noexc.i:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #48
          to label %.noexc2.i unwind label %bb.bd, !noalias !31107

.noexc2.i:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bl
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !31108
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hq) #49
          to label %.body86.i.i unwind label %bb.bv, !noalias !31109

bb.bl:                                            ; preds = %bb.bh, %bb.be
  %i.hn = phi ptr [ %i.gt, %bb.be ], [ %i.hf, %bb.bh ] ; 8 uses
  %i.ho = phi ptr [ %.phi.trans.insert.i, %bb.be ], [ %i.hi, %bb.bh ] ; 8 uses
  %i.hp = phi ptr [ %i.he, %bb.be ], [ %i.hj, %bb.bh ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !31108
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  invoke fastcc void @_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore4open0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cj, ptr noundef nonnull align 8 %i.hq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bm unwind label %bb.bk, !noalias !31109

bb.bm:                                            ; preds = %bb.bl
  %i.hr = load i8, ptr %i.cj, align 8, !range !150, !noalias !31108, !noundef !109 ; 4 uses
  %i.hs = icmp eq i8 %i.hr, -2
  br i1 %i.hs, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !31108
  br label %.thread1937.i

bb.bo:                                            ; preds = %bb.bm
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.i.i, i64 7, i1 false), !noalias !31108
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !31108 ; 5 uses
  %.sroa.6100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.6100.0.copyload.i.i = load ptr, ptr %.sroa.6100.0..sroa_idx.i.i, align 8, !noalias !31108 ; 5 uses
  %.sroa.8101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8101.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8101.0..sroa_idx.i.i, i64 32, i1 false), !noalias !31108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !31108
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8, !range !155, !noalias !31108, !noundef !109
  switch i8 %i.hu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i [
    i8 5, label %bb.br
    i8 3, label %bb.bp
    i8 4, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtBI_17LocalObjectReader17open_with_tracker0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hv)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.mn, !noalias !31109

bb.bq:                                            ; preds = %bb.bo
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtBI_24UringCurrentThreadReader4open0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.mn, !noalias !31109

bb.br:                                            ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBJ_11UringReader4open0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.hx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.mn, !noalias !31109

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.not.i.i.i = icmp eq i8 %i.hr, -1
  br i1 %.not.i.i.i, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6100.0.copyload.i.i) ]
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.hy, align 8, !noalias !31108
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.sroa.6100.0.copyload.i.i, ptr %i.hz, align 8, !noalias !31108
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.hq, align 8, !noalias !31108
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %.sroa.6100.0.copyload.i.i, ptr %i.ia, align 8, !noalias !31108
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.6100.0.copyload.i.i, i64 80
  %i.ic = load ptr, ptr %i.ib, align 8, !invariant.load !109, !noalias !31109, !nonnull !109
  %i.id = invoke { ptr, ptr } %i.ic(ptr noundef nonnull %.sroa.4.0.copyload.i.i)
          to label %bb.bt unwind label %bb.mx, !noalias !31109 ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ie = extractvalue { ptr, ptr } %i.id, 0      ; 2 uses
  %i.if = extractvalue { ptr, ptr } %i.id, 1      ; 2 uses
  store ptr %i.ie, ptr %i.ht, align 8, !noalias !31108
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.if, ptr %i.ig, align 8, !noalias !31108
  br label %bb.bx

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore4open0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %.sroa.5103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5103.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.i, i64 7, i1 false), !noalias !31108
  %.sroa.8106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8106.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8101.i.i, i64 32, i1 false), !noalias !31108
  call void @llvm.experimental.noalias.scope.decl(metadata !31110)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.hr, ptr %i.ih, align 8, !alias.scope !31111, !noalias !31108
  %.sroa.6104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.6104.0..sroa_idx.i.i, align 8, !alias.scope !31111, !noalias !31108
  %.sroa.7105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %.sroa.6100.0.copyload.i.i, ptr %.sroa.7105.0..sroa_idx.i.i, align 8, !alias.scope !31111, !noalias !31108
  store i64 -2, ptr %i.cf, align 8, !alias.scope !31112, !noalias !31108
  br label %bb.mz

bb.bv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit84.i.i, %bb.ch, %bb.bw, %bb.bk
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !31109
  unreachable

.body86.i.i:                                      ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.mw, %bb.mn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.bk
  %i.ij = phi ptr [ %i.afy, %bb.mw ], [ %i.afh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.afo, %bb.mn ], [ %i.afy, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.hn, %bb.bk ]
  %i.ik = phi ptr [ %i.afz, %bb.mw ], [ %i.afi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.afp, %bb.mn ], [ %i.afz, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ho, %bb.bk ]
  %i.il = phi ptr [ %i.aga, %bb.mw ], [ %i.afj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.afq, %bb.mn ], [ %i.aga, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.hp, %bb.bk ]
  %.pn17.pn.i.i = phi { ptr, i32 } [ %i.agj, %bb.mw ], [ %.pn14.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.afr, %bb.mn ], [ %i.agj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.hm, %bb.bk ]
  store i8 2, ptr %i.ik, align 8, !noalias !31108
  br label %.body.i39

bb.bw:                                            ; preds = %bb.bx
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !31108
  %.val21.i.i = load ptr, ptr %i.iq, align 8, !noalias !31108
  %.val22.i.i = load ptr, ptr %i.ir, align 8, !noalias !31108, !nonnull !109, !align !125, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val21.i.i, ptr nonnull %.val22.i.i) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bv, !noalias !31109

bb.bx:                                            ; preds = %bb.bt, %bb.bf
  %i.in = phi ptr [ %i.gt, %bb.bf ], [ %i.hn, %bb.bt ] ; 8 uses
  %i.io = phi ptr [ %.phi.trans.insert.i, %bb.bf ], [ %i.ho, %bb.bt ] ; 8 uses
  %i.ip = phi ptr [ %i.he, %bb.bf ], [ %i.hp, %bb.bt ] ; 7 uses
  %.val40.i.i = phi ptr [ %.val40.pre.i.i, %bb.bf ], [ %i.if, %bb.bt ]
  %.val39.i.i = phi ptr [ %.val39.pre.i.i, %bb.bf ], [ %i.ie, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !31108
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ir = getelementptr i8, ptr %1, i64 312       ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !invariant.load !109, !noalias !31113, !nonnull !109
  invoke void %i.it(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ci, ptr noundef nonnull %.val39.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bw, !noalias !31109, !inline_history !95

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.bx
  %i.iu = load i64, ptr %i.ci, align 8, !range !151, !noalias !31108, !noundef !109 ; 3 uses
  %i.iv = icmp eq i64 %i.iu, -2
  br i1 %i.iv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !31108
  br label %.thread1937.i

bb.bz:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %.sroa.3125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.3125.0.copyload.i.i = load i64, ptr %.sroa.3125.0..sroa_idx.i.i, align 8, !noalias !31108 ; 3 uses
  %.sroa.4128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4128.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4128.0..sroa_idx.i.i, i64 56, i1 false), !noalias !31108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !31108
  %.val.i.i43 = load ptr, ptr %i.iq, align 8, !noalias !31108 ; 5 uses
  %.val20.i.i = load ptr, ptr %i.ir, align 8, !noalias !31108, !nonnull !109, !align !125, !noundef !109 ; 5 uses
  %i.iw = load ptr, ptr %.val20.i.i, align 8, !invariant.load !109, !noalias !31109 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i44, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i43) ]
  invoke void %i.iw(ptr noundef nonnull %.val.i.i43)
          to label %bb.cb unwind label %bb.cc, !noalias !31109

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ix = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !range !127, !invariant.load !109, !noalias !31109 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i46

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i46: ; preds = %bb.cb
  %i.ja = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !range !126, !invariant.load !109, !noalias !31109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i43) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i43, i64 noundef %i.iy, i64 noundef range(i64 1, -9223372036854775807) %i.jb) #44, !noalias !31109
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !range !127, !invariant.load !109, !noalias !31109 ; 2 uses
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i45

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i45: ; preds = %bb.cc
  %i.jg = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !range !126, !invariant.load !109, !noalias !31109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i43, i64 noundef %i.je, i64 noundef range(i64 1, -9223372036854775807) %i.jh) #44, !noalias !31109
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i46, %bb.cb
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31114)
  %.not.i44.i.i = icmp eq i64 %i.iu, -1
  br i1 %.not.i44.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  store i64 %i.iu, ptr %i.ji, align 8, !alias.scope !31115, !noalias !31108
  %.sroa.3125.0..sroa_idx126.i.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %.sroa.3125.0.copyload.i.i, ptr %.sroa.3125.0..sroa_idx126.i.i, align 8, !alias.scope !31115, !noalias !31108
  %.sroa.4128.0..sroa_idx129.i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4128.0..sroa_idx129.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4128.i.i, i64 56, i1 false), !alias.scope !31115, !noalias !31108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !31116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ce, ptr noundef nonnull align 8 dereferenceable(72) %i.ji, i64 72, i1 false), !noalias !31108
  call void @llvm.experimental.noalias.scope.decl(metadata !31117)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  invoke void @_RNvXs9_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtCs3PfUT229lOd_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.jj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @141)
          to label %bb.cg unwind label %bb.mx, !noalias !31109

bb.ce:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %.sroa.3125.0.copyload.i.i, ptr %i.jk, align 8, !alias.scope !31118, !noalias !31108
  store i64 -1, ptr %i.ji, align 8, !alias.scope !31118, !noalias !31108
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !31108, !nonnull !109, !noundef !109
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !31108, !nonnull !109, !align !125, !noundef !109
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 88
  %i.jq = load ptr, ptr %i.jp, align 8, !invariant.load !109, !noalias !31109, !nonnull !109
  %i.jr = invoke { ptr, ptr } %i.jq(ptr noundef nonnull %i.jm, i64 noundef 0, i64 noundef %.sroa.3125.0.copyload.i.i)
          to label %bb.cf unwind label %bb.mx, !noalias !31109 ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.js = extractvalue { ptr, ptr } %i.jr, 0      ; 2 uses
  %i.jt = extractvalue { ptr, ptr } %i.jr, 1      ; 2 uses
  store ptr %i.js, ptr %i.jl, align 8, !noalias !31108
  store ptr %i.jt, ptr %i.jn, align 8, !noalias !31108
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cd
  store i64 -2, ptr %i.cf, align 8, !alias.scope !31117, !noalias !31108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !31116
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit80.i.i

bb.ch:                                            ; preds = %bb.ci
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !31108
  %.val25.i.i = load ptr, ptr %i.jy, align 8, !noalias !31108
  %.val26.i.i = load ptr, ptr %i.jz, align 8, !noalias !31108, !nonnull !109, !align !125, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val25.i.i, ptr nonnull %.val26.i.i) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bv, !noalias !31109

bb.ci:                                            ; preds = %bb.cf, %bb.bg
  %i.jv = phi ptr [ %i.gt, %bb.bg ], [ %i.in, %bb.cf ] ; 12 uses
  %i.jw = phi ptr [ %.phi.trans.insert.i, %bb.bg ], [ %i.io, %bb.cf ] ; 12 uses
  %i.jx = phi ptr [ %i.he, %bb.bg ], [ %i.ip, %bb.cf ] ; 11 uses
  %.val38.i.i = phi ptr [ %.val38.pre.i.i, %bb.bg ], [ %i.jt, %bb.cf ]
  %.val37.i.i = phi ptr [ %.val37.pre.i.i, %bb.bg ], [ %i.js, %bb.cf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !31108
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.jz = getelementptr i8, ptr %1, i64 296       ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.val38.i.i, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !invariant.load !109, !noalias !31119, !nonnull !109
  invoke void %i.kb(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ch, ptr noundef nonnull %.val37.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.ch, !noalias !31109, !inline_history !96

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.ci
  %i.kc = load i64, ptr %i.ch, align 8, !range !151, !noalias !31108, !noundef !109 ; 3 uses
  %i.kd = icmp eq i64 %i.kc, -2
  br i1 %i.kd, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !31108
  br label %.thread1937.i
end_hunk_10
begin_hunk_11_@_RNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val20.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert55 = getelementptr i8, ptr %1, i64 152
  %.val21.pre = load ptr, ptr %.phi.trans.insert55, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !109, !align !125, !noundef !109
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr i8, ptr %1, i64 88
  %.val14 = load ptr, ptr %i.g, align 8, !align !133, !noundef !109 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 96
  %.val15 = load i64, ptr %i.h, align 8
  %.not.i = icmp eq ptr %.val14, null             ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val14
  %.5.i = select i1 %.not.i, i64 0, i64 %.val15
  %i.i = getelementptr i8, ptr %1, i64 104
  %.val16 = load ptr, ptr %i.i, align 8, !align !125, !noundef !109 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 112
  %.val17 = load i64, ptr %i.j, align 8           ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35548)
  %.not.i22 = icmp eq ptr %.val16, null
  br i1 %.not.i22, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.val17, 3               ; 3 uses
  %i.m = icmp eq i64 %.val17, 0
  br i1 %i.m, label %_RNCNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !35549
  %i.n = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !35549 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #48
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull readonly align 8 %.val16, i64 %i.l, i1 false), !noalias !35550
  br label %_RNCNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNCNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.d ]
  store i64 %.val17, ptr %i.k, align 8, !alias.scope !35548
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35548
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val17, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !35548
  %i.p = icmp eq i64 %.val17, -1
  %i.q = select i1 %i.p, ptr null, ptr %i.k
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store i64 -1, ptr %i.k, align 8, !alias.scope !35548
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.not.i23 = phi ptr [ null, %bb.g ], [ %i.q, %_RNCNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider14scan_with_args00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %.val18 = load i64, ptr %i.f, align 8, !range !116, !noundef !109
  %i.r = getelementptr i8, ptr %1, i64 80
  %.val19 = load i64, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !109, !noundef !109
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !109, !align !125, !noundef !109
  %i.w = invoke { ptr, ptr } @_RNvXs4_NtNtCshkPeWWG1flk_5lance10datafusion9dataframeNtB5_18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.e, ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i23, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val18, i64 %.val19)
          to label %bb.i unwind label %bb.t       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.y, ptr %i.aa, align 8
  br label %bb.n

.body:                                            ; preds = %bb.t, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.s, %bb.m
  %.pn = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.af, %bb.m ], [ %i.az, %bb.t ], [ %i.at, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val12 = load i64, ptr %i.ab, align 8, !range !111, !noundef !109 ; 2 uses
  %i.ac = icmp sgt i64 %.val12, 0
  br i1 %i.ac, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.j:                                             ; preds = %.body
  %i.ad = getelementptr i8, ptr %1, i64 128
  %.val13 = load ptr, ptr %i.ad, align 8, !nonnull !109, !noundef !109
  %i.ae = shl nuw i64 %.val12, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.j, %.body, %bb.v
  %.pn3 = phi { ptr, i32 } [ %i.bd, %bb.v ], [ %.pn, %.body ], [ %.pn, %bb.j ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn3

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #48
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #48
  unreachable

bb.m:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %i.ag, align 8
  %.val7 = load ptr, ptr %i.ah, align 8, !nonnull !109, !align !125, !noundef !109
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val6, ptr nonnull %.val7) #49
          to label %.body unwind label %bb.x

bb.n:                                             ; preds = %bb.b, %bb.i
  %.val21 = phi ptr [ %.val21.pre, %bb.b ], [ %i.y, %bb.i ]
  %.val20 = phi ptr [ %.val20.pre, %bb.b ], [ %i.x, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val21, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !109, !noalias !35551, !nonnull !109
  invoke void %i.aj(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %.val20, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.m, !inline_history !35547

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.n
  %i.ak = load i64, ptr %i.a, align 8, !range !250, !noundef !109 ; 3 uses
  %i.al = icmp eq i64 %i.ak, -2
  br i1 %i.al, label %bb.o, label %bb.p

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29, %bb.o
  %storemerge = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29 ], [ 3, %bb.o ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.o:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.p:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load <2 x ptr>, ptr %.sroa.347.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.ag, align 8            ; 5 uses
  %.val5 = load ptr, ptr %i.ah, align 8, !nonnull !109, !align !125, !noundef !109 ; 5 uses
  %i.an = load ptr, ptr %.val5, align 8, !invariant.load !109 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.an(ptr noundef nonnull %.val)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !126, !invariant.load !109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.s:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !127, !invariant.load !109 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !126, !invariant.load !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.ay) #44
  br label %.body

bb.t:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.r
  %.not.i26 = icmp eq i64 %i.ak, -1
  br i1 %.not.i26, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.ba = extractelement <2 x ptr> %i.am, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = extractelement <2 x ptr> %i.am, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val10 = load i64, ptr %3, align 8, !range !111, !noundef !109 ; 2 uses
  %i.bc = icmp sgt i64 %.val10, 0
  br i1 %i.bc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29

bb.v:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.sink.split: ; preds = %bb.u, %bb.w
  %.val8.sink = phi i64 [ %.val8, %bb.w ], [ %.val10, %bb.u ]
  %i.be = getelementptr i8, ptr %1, i64 128
  %.val9 = load ptr, ptr %i.be, align 8, !nonnull !109, !noundef !109
  %i.bf = shl nuw i64 %.val8.sink, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.sink.split, %bb.w, %bb.u
  store i64 %i.ak, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.am, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val8 = load i64, ptr %4, align 8, !range !111, !noundef !109 ; 2 uses
  %i.bg = icmp sgt i64 %.val8, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit29

bb.x:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider6update0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !117, !noundef !109
  switch i8 %i.k, label %default.unreachable53 [
    i8 0, label %bb.b
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @588, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit39: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !35567)
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !35567 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit39
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !35567, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !35567
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !35568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.548.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.p, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.550.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @7, ptr noundef nonnull %i.a)
          to label %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit36 unwind label %bb.g

bb.f:                                             ; preds = %bb.g
  %.val1.i38 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !35569, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i38, i64 noundef %.val.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !35569
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit39

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !35569)
  %.val.i37 = load i64, ptr %i.b, align 8, !alias.scope !35569 ; 2 uses
  %i.r = icmp eq i64 %.val.i37, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit39, label %bb.f

_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit36:     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !35570)
  %.val.i40 = load i64, ptr %i.b, align 8, !alias.scope !35570 ; 2 uses
  %i.s = icmp eq i64 %.val.i40, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit42, label %bb.h

bb.h:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit36
  %.val1.i41 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !35570, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i41, i64 noundef %.val.i40, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !35570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit42

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit42: ; preds = %bb.h, %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !35571)
  %.val.i43 = load i64, ptr %i.f, align 8, !alias.scope !35571 ; 2 uses
  %i.t = icmp eq i64 %.val.i43, 0
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit42
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i44 = load ptr, ptr %i.u, align 8, !alias.scope !35571, !nonnull !109, !noundef !109
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i44, i64 noundef %.val.i43, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !35571
  br label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit39, %bb.c
  %.pn15 = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.m, %bb.c ], [ %i.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.h) #49
          to label %.body unwind label %bb.t

bb.j:                                             ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !35572)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !35573, !nonnull !109, !noundef !109 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !35573, !noundef !109 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.aa = icmp eq i64 %i.ac, %i.y
  br i1 %i.aa, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i54 = phi i64 [ %i.ac, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.0.i.i54
  %i.ac = add i64 %.sroa.0.0.i.i54, 1             ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 16 dereferenceable(112) %i.ab) #51
          to label %bb.k unwind label %bb.m, !noalias !35572, !inline_history !101

bb.l:                                             ; preds = %.lr.ph56
  %i.ad = add i64 %.sroa.0.1.i.i55, 1             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.y
  br i1 %i.ae, label %.body.i, label %.lr.ph56

bb.m:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq i64 %i.ac, %i.y
  br i1 %i.ag, label %.body.i, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.m, %bb.l
  %.sroa.0.1.i.i55 = phi i64 [ %i.ad, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.1.i.i55
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 16 dereferenceable(112) %i.ah) #52
          to label %bb.l unwind label %bb.n, !noalias !35572, !inline_history !101

bb.n:                                             ; preds = %.lr.ph56
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !35572, !inline_history !101
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.m
  %.val2.i = load i64, ptr %i.h, align 8, !range !127, !alias.scope !35572, !noundef !109 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i, 0
  br i1 %i.aj, label %.body, label %bb.o

bb.o:                                             ; preds = %.body.i
  %i.ak = mul nuw i64 %.val2.i, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !35572, !inline_history !251
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.k, %bb.j
  %.val.i46 = load i64, ptr %i.h, align 8, !range !127, !alias.scope !35572, !noundef !109 ; 2 uses
  %i.al = icmp eq i64 %.val.i46, 0
end_hunk_11
