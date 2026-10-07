Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB8_17LocalObjectReader17open_with_tracker00Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %or.cond.not.i.i.i = select i1 %i.bg, i1 %.not.i.i.i, i1 false, !prof !120
  br i1 %or.cond.not.i.i.i, label %bb.w, label %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, !prof !120

bb.w:                                             ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1C_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1E_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26311
  store ptr %i.bf, ptr %i.i, align 8, !noalias !26311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26311
  store ptr %i.i, ptr %i.h, align 8, !noalias !26311
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !26311
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @50, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #48
          to label %bb.y unwind label %bb.x, !noalias !26312

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #49
          to label %bb.aa unwind label %bb.z, !noalias !26312

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.x
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !26312
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bj = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.av)
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !26312

.noexc.i.i.i:                                     ; preds = %bb.aa
  br i1 %i.bj, label %bb.ab, label %.body.i.i

bb.ab:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.av)
          to label %.body.i.i unwind label %bb.z, !noalias !26312

.body.i.i:                                        ; preds = %bb.ab, %.noexc.i.i.i, %bb.v, %bb.t, %.noexc.i.i.i.i, %bb.p
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bh, %bb.ab ], [ %i.ba, %.noexc.i.i.i.i ], [ %i.ax, %bb.p ], [ %i.bd, %bb.v ], [ %i.ba, %bb.t ], [ %i.bh, %.noexc.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime6handle6HandleECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(16) %i.j) #49
          to label %.body unwind label %bb.ag, !noalias !26300

_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1C_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1E_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26313)
  call void @llvm.experimental.noalias.scope.decl(metadata !26314)
  %i.bk = load i64, ptr %i.j, align 8, !range !118, !alias.scope !26315, !noalias !26300, !noundef !111
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26316)
  call void @llvm.experimental.noalias.scope.decl(metadata !26317)
  %i.bm = load ptr, ptr %i.am, align 8, !alias.scope !26318, !noalias !26300, !nonnull !111, !noundef !111
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !26319
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.aj unwind label %bb.ai

bb.ae:                                            ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26320)
  call void @llvm.experimental.noalias.scope.decl(metadata !26321)
  %i.bp = load ptr, ptr %i.am, align 8, !alias.scope !26322, !noalias !26300, !nonnull !111, !noundef !111
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !26323
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.aj unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ah, %.body.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.ah:                                            ; preds = %bb.g
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtBM_17LocalObjectReader17open_with_tracker000ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l) #49
          to label %.body unwind label %bb.ag

bb.ai:                                            ; preds = %bb.af, %bb.ad
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.ah, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %i.bt, %bb.ai ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.aj:                                            ; preds = %bb.af, %bb.ad, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.av, ptr %i.bu, align 8
  br label %bb.ap

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.bj, %bb.ao, %.noexc10, %bb.bn, %.body
  %.pn4 = phi { ptr, i32 } [ %i.cx, %bb.bn ], [ %eh.lpad-body, %.body ], [ %i.cv, %bb.bj ], [ %eh.lpad-body16, %bb.ao ], [ %eh.lpad-body16, %.noexc10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ak:                                            ; preds = %bb.bq, %bb.ao, %.body15
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #48
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #48
  unreachable

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i, %bb.az
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %.thread.i, %bb.be, %bb.an
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.bw, %bb.an ], [ %.pn4.i, %bb.be ], [ %.pn4.i, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.val7 = load ptr, ptr %i.by, align 8, !nonnull !111, !noundef !111 ; 2 uses
  %i.bx = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val7)
          to label %.noexc10 unwind label %bb.ak

.noexc10:                                         ; preds = %.body15
  br i1 %i.bx, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ao:                                            ; preds = %.noexc10
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val7)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.ak

bb.ap:                                            ; preds = %bb.c, %bb.aj
  %.val8 = phi ptr [ %.val8.pre, %bb.c ], [ %i.av, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26324)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26325
  store i8 -3, ptr %i.d, align 8, !noalias !26325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26325
  %i.bz = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !119, !noalias !26326, !noundef !111
  switch i8 %i.cb, label %default.unreachable38 [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %.thread8.i
  ], !prof !251

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bz, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsc93vp1BCDlY_26lance_namespace_datafusion)
          to label %.noexc.i unwind label %.thread5.i, !noalias !26325

.noexc.i:                                         ; preds = %bb.aq
  store i8 1, ptr %i.ca, align 8, !noalias !26326
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc.i, %bb.ap
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  %i.cd = load i8, ptr %i.cc, align 4, !range !115, !noalias !26327, !noundef !111 ; 2 uses
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 69 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !26327 ; 4 uses
  br i1 %i.ce, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i.i12 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i12, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aw unwind label %.thread5.i, !noalias !26328

bb.au:                                            ; preds = %bb.as
  %i.ch = add i8 %i.cg, -1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.sroa.33.0.i.i.i.i = phi i8 [ %i.ch, %bb.au ], [ %i.cg, %bb.ar ]
  store i8 %.sroa.33.0.i.i.i.i, ptr %i.cf, align 1, !noalias !26327
  br label %bb.aw

.thread5.i:                                       ; preds = %bb.aw, %bb.at, %bb.aq
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0.i.i9.i.i = phi i1 [ false, %bb.av ], [ true, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26325
  store i24 0, ptr %i.b, align 4, !noalias !26325
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.ci)
          to label %bb.ax unwind label %.thread5.i, !noalias !26328

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26325
  br i1 %.sroa.0.0.i.i9.i.i, label %bb.ay, label %.thread8.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26325
  %i.cj = load i8, ptr %i.d, align 8, !range !179, !alias.scope !26329, !noalias !26325, !noundef !111
  %.not.i.i = icmp eq i8 %i.cj, -3
  br i1 %.not.i.i, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.thread unwind label %bb.an

.thread8.i:                                       ; preds = %bb.ap, %bb.ax
  %.sroa.03.011.i10.off8.i = phi i8 [ %i.cd, %bb.ax ], [ 0, %bb.ap ]
  %.sroa.03.011.i10.off16.i = phi i8 [ %i.cg, %bb.ax ], [ 0, %bb.ap ]
  store i8 %.sroa.03.011.i10.off8.i, ptr %i.c, align 1, !noalias !26325
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.011.i10.off16.i, ptr %i.ck, align 1, !noalias !26325
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.cl = load ptr, ptr %2, align 8, !alias.scope !26324, !noalias !26328, !nonnull !111, !align !127, !noundef !111
  %i.cm = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !26325, !nonnull !111, !align !127, !noundef !111
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !26328, !nonnull !111, !noundef !111
  invoke void %i.cp(ptr noundef nonnull %.val8, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cl)
          to label %bb.bb unwind label %bb.ba, !noalias !26328

bb.ba:                                            ; preds = %.thread8.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %.thread.i unwind label %bb.bd, !noalias !26328

bb.bb:                                            ; preds = %.thread8.i
  %i.cr = load i8, ptr %i.d, align 8, !range !179, !noalias !26325, !noundef !111 ; 3 uses
  %.not.i = icmp eq i8 %i.cr, -3                  ; 2 uses
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 0, ptr %i.c, align 1, !noalias !26325
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i: ; preds = %bb.bc, %bb.bb
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.8.0..sroa_idx28, i64 55, i1 false), !noalias !26324
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %bb.bf unwind label %bb.an

bb.bd:                                            ; preds = %bb.be, %bb.ba
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !26328
  unreachable

.thread.i:                                        ; preds = %bb.ba, %.thread5.i
  %.pn4.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread5.i ], [ %i.cq, %bb.ba ] ; 2 uses
  %i.ct = load i8, ptr %i.d, align 8, !range !179, !alias.scope !26330, !noalias !26325, !noundef !111
  %.not.i21.i = icmp eq i8 %i.ct, -3
  br i1 %.not.i21.i, label %.body15, label %bb.be

bb.be:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.body15 unwind label %bb.bd, !noalias !26328

.thread:                                          ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26325
  br label %bb.bg

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26325
  br i1 %.not.i, label %bb.bg, label %bb.bh

common.ret:                                       ; preds = %bb.bm, %bb.bg
  %storemerge = phi i8 [ 1, %bb.bm ], [ 3, %bb.bg ]
  store i8 %storemerge, ptr %i.n, align 8
  ret void

bb.bg:                                            ; preds = %.thread, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.8, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.val = load ptr, ptr %i.by, align 8, !nonnull !111, !noundef !111 ; 2 uses
  %i.cu = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val)
          to label %.noexc17 unwind label %bb.bj

.noexc17:                                         ; preds = %bb.bh
  br i1 %i.cu, label %bb.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit19

bb.bi:                                            ; preds = %.noexc17
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit19 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit19: ; preds = %.noexc17, %bb.bi
  %i.cw = icmp eq i8 %i.cr, -2
  br i1 %i.cw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit19
  %.sroa.3.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.3.8..sroa_idx, i64 24, i1 false)
  invoke void @_RNvXsd_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @367)
          to label %bb.bo unwind label %bb.bn

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit19
  %.sroa.3.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 31
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.3.32..sroa_idx, i64 24, i1 false)
  store i8 %i.cr, ptr %i.k, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3, i64 31, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  br label %common.ret

bb.bn:                                            ; preds = %bb.bk
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26331
  br label %bb.bm

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.bp, %bb.bq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  store i8 2, ptr %i.n, align 8
  resume { ptr, i32 } %.pn4.pn

bb.bp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26332)
  call void @llvm.experimental.noalias.scope.decl(metadata !26333)
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !26334, !nonnull !111, !noundef !111
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !26334
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.bq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB8_24UringCurrentThreadReader4open00Csc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.412.i.i.i.i.i.i = alloca [68 x i8], align 4 ; 4 uses
  %i.d = alloca [256 x i8], align 128             ; 15 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 14 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.7136 = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.3.sroa.0 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 2 uses
  %i.o = alloca [56 x i8], align 8                ; 11 uses
  %i.p = alloca [64 x i8], align 16               ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 14 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !range !159, !noundef !111
  switch i8 %i.v, label %default.unreachable152 [
    i8 0, label %bb.b
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.r
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

default.unreachable152:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 2 uses
  store i8 0, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 83
  store i8 0, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 1, ptr %i.y, align 1
  %i.z = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io5uring16URING_BLOCK_SIZE, i64 16) acquire, align 8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.c, !prof !116

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io5uring16URING_BLOCK_SIZE, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  invoke void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io5uring16URING_BLOCK_SIZE, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
          to label %.noexc unwind label %bb.f
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB6_24UringCurrentThreadReader4open0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  store i8 0, ptr %i.co, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %common.ret

bb.am:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !range !124, !alias.scope !32083, !noundef !111 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cs = load i64, ptr %i.cr, align 8, !range !121, !alias.scope !32084, !noundef !111
  %i.ct = invoke noundef zeroext i1 @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cp, i64 noundef %i.cs)
          to label %bb.ap unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cp) #49
          to label %.body28 unwind label %bb.as

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !32085)
  call void @llvm.experimental.noalias.scope.decl(metadata !32086)
  call void @llvm.experimental.noalias.scope.decl(metadata !32087)
  call void @llvm.experimental.noalias.scope.decl(metadata !32088)
  %i.cv = icmp eq i64 %i.cq, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32089)
  call void @llvm.experimental.noalias.scope.decl(metadata !32090)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !32091, !nonnull !111, !noundef !111
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !32092
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.au:                                            ; preds = %bb.av, %bb.q
  store i8 0, ptr %i.bj, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.dd = load i8, ptr %i.dc, align 1, !range !115, !noundef !111
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.aw, label %.body28

bb.av:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtBK_24UringCurrentThreadReader4open00ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.e) #49
          to label %bb.au unwind label %bb.af

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(40) %i.df) #49
          to label %.body28 unwind label %bb.af

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.ax, %bb.ay, %.body28
  store i8 0, ptr %i.bn, align 1
  store i8 2, ptr %i.k, align 8
  resume { ptr, i32 } %.pn17

bb.ax:                                            ; preds = %.body28
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32093)
  call void @llvm.experimental.noalias.scope.decl(metadata !32094)
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !32095, !nonnull !111, !noundef !111
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !32095
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr nofree noundef nonnull align 8 captures(none) %0, ptr %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !131, !noundef !111
  switch i8 %i.b, label %default.unreachable5 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !111, !align !127, !noundef !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !111, !noundef !111
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

.body11:                                          ; preds = %bb.o, %.body
  %.pn8 = phi { ptr, i32 } [ %i.al, %bb.o ], [ %.pn6, %.body ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #48
  unreachable

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !137
  %i.i = icmp eq i32 %.pre, -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.i, label %bb.f, label %.thread.i.i

bb.e:                                             ; preds = %bb.h
  store i32 -1, ptr %i.m, align 8, !noalias !32098
  %.sroa.522.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.522.0..sroa_idx23.i.i, align 8, !noalias !32098
  %.sroa.6.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6.0..sroa_idx25.i.i, align 8, !noalias !32098
  %.sroa.7.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx27.i.i, align 8, !noalias !32098
  br label %.thread.i.i

bb.f:                                             ; preds = %.thread, %bb.d
  %i.m = phi ptr [ %i.h, %.thread ], [ %i.l, %bb.d ] ; 4 uses
  %i.n = phi ptr [ %i.g, %.thread ], [ %i.k, %bb.d ] ; 3 uses
  %i.o = phi ptr [ %i.f, %.thread ], [ %i.j, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acquire acquire, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.k, label %bb.h, !prof !116

bb.g:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.m, align 8, !noalias !32098
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !32098
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !32098
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !32098
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtB10_5MutexuEuEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.o)
          to label %bb.e unwind label %bb.g, !noalias !32098

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %i.u = phi ptr [ %i.n, %bb.e ], [ %i.k, %bb.d ]
  %i.v = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.w = invoke fastcc noundef align 8 ptr @_RINvXsf_NtCsjMQ83FLvXnF_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCs8a8leFYyzqu_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.v, ptr %.0.val)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.thread.i.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %common.ret, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !111, !align !127, !noundef !111
  br label %bb.k

bb.j:                                             ; preds = %.thread.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.k, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, %.noexc
  %.sroa.0.1.i.i4 = phi ptr [ null, %.noexc ], [ %.sroa.0.1.i.i.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %bb.k ]
  %storemerge = phi i8 [ 3, %.noexc ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ], [ 1, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i ], [ 1, %bb.k ]
  store i8 %storemerge, ptr %i.a, align 8
  ret ptr %.sroa.0.1.i.i4

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.aa = phi ptr [ %i.m, %bb.f ], [ %i.t, %bb.i ]
  %.sroa.0.1.i.i.ph = phi ptr [ %i.p, %bb.f ], [ %i.y, %bb.i ] ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !range !137, !noundef !111
  %i.ac = icmp eq i32 %i.ab, -2
  br i1 %i.ac, label %common.ret, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ad, align 8, !align !127, !noundef !111 ; 2 uses
  store ptr null, ptr %i.ad, align 8
  %i.ag = load i8, ptr %i.ae, align 8, !range !115, !noundef !111
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.af, null
  %or.cond.not.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i, %i.ah
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.m, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ai = atomicrmw sub ptr %i.af, i64 2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !align !127, !noundef !111 ; 4 uses
  %i.ak = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ak, label %common.ret, label %bb.n

bb.n:                                             ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %.val.i.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #44
  br label %.body11

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.n
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #44
  br label %common.ret

.body:                                            ; preds = %bb.j, %bb.g
  %i.am = phi ptr [ %i.o, %bb.g ], [ %i.v, %bb.j ]
  %.pn6 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex4LockuEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.am) #49
          to label %.body11 unwind label %bb.p

bb.p:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.8.i.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.79.i.i.i.i.i = alloca [32 x i8], align 8 ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [72 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [64 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [64 x i8], align 8                ; 14 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [8 x i8], align 8                 ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [72 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [48 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [72 x i8], align 8               ; 16 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [8 x i8], align 8                ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 8 uses
  %i.an = alloca [8 x i8], align 8                ; 9 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [48 x i8], align 8               ; 10 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [24 x i8], align 8               ; 10 uses
  %i.av = alloca [48 x i8], align 8               ; 13 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.6.i.i.i.i.i192 = alloca [16 x i8], align 8 ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.739.i.i.i = alloca [38 x i8], align 2    ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.419.i.i.i = alloca [38 x i8], align 2    ; 4 uses
  %i.ba = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.66.i.i.i = alloca [38 x i8], align 2     ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 2 uses
  %i.bc = alloca [16 x i8], align 8               ; 2 uses
  %i.bd = alloca [8 x i8], align 8                ; 6 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [8 x i8], align 8                ; 7 uses
  %i.bh = alloca [8 x i8], align 8                ; 6 uses
  %i.bi = alloca [8 x i8], align 8                ; 10 uses
  %i.bj = alloca [16 x i8], align 8               ; 8 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.740.i.i.i = alloca [7 x i8], align 1     ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.5.i.i1.i.i = alloca [7 x i8], align 1    ; 4 uses
  %.sroa.5.i.i.i.i = alloca [7 x i8], align 1     ; 4 uses
  %.sroa.65.i.i.i = alloca [7 x i8], align 1      ; 5 uses
  %i.bp = alloca [8 x i8], align 8                ; 5 uses
  %i.bq = alloca [16 x i8], align 8               ; 17 uses
  %i.br = alloca [8 x i8], align 8                ; 6 uses
  %i.bs = alloca [8 x i8], align 8                ; 6 uses
  %i.bt = alloca [8 x i8], align 8                ; 8 uses
  %i.bu = alloca [8 x i8], align 8                ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 4, !range !188, !noundef !111
  switch i8 %i.bw, label %default.unreachable1920 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.r
    i8 5, label %bb.fe
    i8 6, label %bb.jm
    i8 7, label %bb.zu
    i8 8, label %bb.abf
    i8 9, label %bb.afh
    i8 10, label %bb.akp
    i8 11, label %bb.aj
  ]

default.unreachable1920:                          ; preds = %bb.fo, %bb.asp, %bb.aqp, %bb.aot, %bb.akp, %bb.afn, %bb.afh, %bb.abf, %bb.aaa, %bb.zu, %bb.vy, %bb.kp, %bb.jm, %bb.fe, %bb.aj, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 0, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !111, !align !127, !noundef !111 ; 4 uses
  store ptr %i.ca, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i64, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !range !173, !noundef !111
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ci = load <2 x i32>, ptr %i.ch, align 8
  store <2 x i32> %i.ci, ptr %i.cg, align 8
  %.val100 = load i64, ptr %i.ca, align 8, !range !118, !noundef !111
  %i.cj = getelementptr i8, ptr %i.ca, i64 8
  %.val101 = load i64, ptr %i.cj, align 8
  %i.ck = trunc nuw i64 %.val100 to i1
  %i.cl = icmp eq i64 %.val101, 0
  %spec.select.i = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %spec.select.i, label %common.ret, label %.thread

.thread:                                          ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 216
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 -2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cm, ptr %.sroa.9.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1021922 = load ptr, ptr %1, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 208
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit22read_version_from_hint0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB2d_9GetResult5bytes00ENtNtB1w_8schedule16BlockingScheduleEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 128 dereferenceable(256) %i.ax) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bb, !noalias !34867

bb.bb:                                            ; preds = %bb.ba
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !34867
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.gx, ptr noundef nonnull align 128 dereferenceable(256) %i.ax, i64 256, i1 false), !noalias !34867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !34864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !34860
  %i.hb = invoke { i64, ptr } @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i.i, ptr noundef nonnull %i.gx, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gl)
          to label %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1B_9GetResult5bytes00INtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1B_5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i unwind label %bb.bd, !noalias !34869 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.gx)
          to label %.noexc.i.i.i.i.i unwind label %bb.bf, !noalias !34869

.noexc.i.i.i.i.i:                                 ; preds = %bb.bd
  br i1 %i.hd, label %bb.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.be:                                            ; preds = %.noexc.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.gx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bf, !noalias !34869

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !34869
  unreachable

bb.bg:                                            ; preds = %bb.au
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1O_9GetResult5bytes00EECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.bd) #49, !noalias !34846
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1B_9GetResult5bytes00INtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1B_5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i: ; preds = %bb.bc
  %i.hg = extractvalue { i64, ptr } %i.hb, 0
  %i.hh = extractvalue { i64, ptr } %i.hb, 1      ; 2 uses
  %i.hi = trunc nuw i64 %i.hg to i1
  %.not.i.i.i.i = icmp ne ptr %i.hh, null
  %or.cond.not.i.i.i.i = select i1 %i.hi, i1 %.not.i.i.i.i, i1 false, !prof !120
  br i1 %or.cond.not.i.i.i.i, label %bb.bh, label %bb.bn, !prof !120

bb.bh:                                            ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1B_9GetResult5bytes00INtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1B_5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !34870
  store ptr %i.hh, ptr %i.ba, align 8, !noalias !34870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !34870
  store ptr %i.ba, ptr %i.az, align 8, !noalias !34870
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !34870
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @50, ptr noundef nonnull %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #48
          to label %bb.bj unwind label %bb.bi, !noalias !34871

bb.bi:                                            ; preds = %bb.bh
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba) #49
          to label %bb.bl unwind label %bb.bk, !noalias !34871

bb.bj:                                            ; preds = %bb.bh
  unreachable

bb.bk:                                            ; preds = %bb.bm, %bb.bl, %bb.bi
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !34871
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.hl = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.gx)
          to label %.noexc.i.i.i.i unwind label %bb.bk, !noalias !34871

.noexc.i.i.i.i:                                   ; preds = %bb.bl
  br i1 %i.hl, label %bb.bm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.bm:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.gx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.bk, !noalias !34871

bb.bn:                                            ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB1B_9GetResult5bytes00INtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1B_5ErrorEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.gx, ptr %i.hm, align 8, !noalias !34844
  br label %bb.bs

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.cg, %bb.br, %.noexc.i.i37, %bb.bm, %.noexc.i.i.i.i, %bb.bg, %bb.be, %.noexc.i.i.i.i.i, %bb.ba
  %i.hn = phi ptr [ %i.hu, %bb.br ], [ %i.hu, %bb.cg ], [ %i.hu, %.noexc.i.i37 ], [ %i.fb, %bb.bm ], [ %i.fb, %.noexc.i.i.i.i.i ], [ %i.fb, %bb.ba ], [ %i.fb, %bb.bg ], [ %i.fb, %bb.be ], [ %i.fb, %.noexc.i.i.i.i ]
  %i.ho = phi ptr [ %i.hv, %bb.br ], [ %i.hv, %bb.cg ], [ %i.hv, %.noexc.i.i37 ], [ %i.fc, %bb.bm ], [ %i.fc, %.noexc.i.i.i.i.i ], [ %i.fc, %bb.ba ], [ %i.fc, %bb.bg ], [ %i.fc, %bb.be ], [ %i.fc, %.noexc.i.i.i.i ]
  %i.hp = phi ptr [ %i.hw, %bb.br ], [ %i.hw, %bb.cg ], [ %i.hw, %.noexc.i.i37 ], [ %i.fd, %bb.bm ], [ %i.fd, %.noexc.i.i.i.i.i ], [ %i.fd, %bb.ba ], [ %i.fd, %bb.bg ], [ %i.fd, %bb.be ], [ %i.fd, %.noexc.i.i.i.i ]
  %i.hq = phi ptr [ %i.hx, %bb.br ], [ %i.hx, %bb.cg ], [ %i.hx, %.noexc.i.i37 ], [ %i.fe, %bb.bm ], [ %i.fe, %.noexc.i.i.i.i.i ], [ %i.fe, %bb.ba ], [ %i.fe, %bb.bg ], [ %i.fe, %bb.be ], [ %i.fe, %.noexc.i.i.i.i ]
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body15.i.i, %bb.br ], [ %i.iu, %bb.cg ], [ %eh.lpad-body15.i.i, %.noexc.i.i37 ], [ %i.hj, %bb.bm ], [ %i.hc, %.noexc.i.i.i.i.i ], [ %i.gz, %bb.ba ], [ %i.hf, %bb.bg ], [ %i.hc, %bb.be ], [ %i.hj, %.noexc.i.i.i.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 504
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime6handle6HandleECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(16) %i.hr) #49
          to label %bb.al unwind label %bb.cr, !noalias !34846

_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtBL_9GetResult5bytes00ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i.i.i, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !34844
  br label %bb.cv

bb.bo:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #48
          to label %.noexc.i unwind label %bb.ah, !noalias !34843

.noexc.i:                                         ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #48
          to label %.noexc11.i unwind label %bb.ah, !noalias !34843

.noexc11.i:                                       ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i.i.i, %.noexc11.i.i, %bb.bv, %.noexc.i.i.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.body14.i.i:                                      ; preds = %bb.cc, %.thread.i.i.i, %bb.bq
  %eh.lpad-body15.i.i = phi { ptr, i32 } [ %i.hs, %bb.bq ], [ %i.ip, %bb.cc ], [ %i.ip, %.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.9.i)
  %.val4.i.i = load ptr, ptr %i.hy, align 8, !noalias !34844, !nonnull !111, !noundef !111 ; 2 uses
  %i.ht = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val4.i.i)
          to label %.noexc.i.i37 unwind label %bb.cr, !noalias !34846

.noexc.i.i37:                                     ; preds = %.body14.i.i
  br i1 %i.ht, label %bb.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.br:                                            ; preds = %.noexc.i.i37
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val4.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.cr, !noalias !34846

bb.bs:                                            ; preds = %bb.bn, %bb.ak
  %i.hu = phi ptr [ %i.eb, %bb.ak ], [ %i.fb, %bb.bn ] ; 16 uses
  %i.hv = phi ptr [ %i.ea, %bb.ak ], [ %i.fc, %bb.bn ] ; 15 uses
  %i.hw = phi ptr [ %.phi.trans.insert.i36, %bb.ak ], [ %i.fd, %bb.bn ] ; 16 uses
  %i.hx = phi ptr [ %i.fa, %bb.ak ], [ %i.fe, %bb.bn ] ; 15 uses
  %.val5.i.i = phi ptr [ %.val5.pre.i.i, %bb.ak ], [ %i.gx, %bb.bn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.9.i)
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !34873
  store i64 -3, ptr %i.aw, align 8, !noalias !34873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !34873
  %i.hz = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 72 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 8, !range !119, !noalias !34874, !noundef !111
  switch i8 %i.ib, label %default.unreachable632 [
    i8 0, label %.noexc.i.i.i
    i8 1, label %bb.bt
    i8 2, label %.thread8.i.i.i
  ], !prof !251

.noexc.i.i.i:                                     ; preds = %bb.bs
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.hz, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsc93vp1BCDlY_26lance_namespace_datafusion)
          to label %.noexc10.i.i unwind label %bb.bq, !noalias !34846

.noexc10.i.i:                                     ; preds = %.noexc.i.i.i
  store i8 1, ptr %i.ia, align 8, !noalias !34874
  br label %bb.bt

bb.bt:                                            ; preds = %.noexc10.i.i, %bb.bs
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 68
  %i.id = load i8, ptr %i.ic, align 4, !range !115, !noalias !34875, !noundef !111 ; 2 uses
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 69 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !noalias !34875 ; 4 uses
  br i1 %i.ie, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc11.i.i unwind label %bb.bq, !noalias !34846

bb.bw:                                            ; preds = %bb.bu
  %i.ih = add i8 %i.ig, -1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.sroa.33.0.i.i.i.i.i.i = phi i8 [ %i.ih, %bb.bw ], [ %i.ig, %bb.bt ]
  store i8 %.sroa.33.0.i.i.i.i.i.i, ptr %i.if, align 1, !noalias !34875
  br label %.noexc11.i.i

.noexc11.i.i:                                     ; preds = %bb.bx, %bb.bv
  %.sroa.0.0.i.i9.i.i.i.i = phi i1 [ false, %bb.bx ], [ true, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !34873
  store i24 0, ptr %i.au, align 4, !noalias !34873
  %i.ii = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.ii)
          to label %.noexc12.i.i unwind label %bb.bq, !noalias !34846

.noexc12.i.i:                                     ; preds = %.noexc11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !34873
  br i1 %.sroa.0.0.i.i9.i.i.i.i, label %.thread.i.i, label %.thread8.i.i.i

.thread.i.i:                                      ; preds = %.noexc12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !34873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !34873
  br label %bb.cu

.thread8.i.i.i:                                   ; preds = %.noexc12.i.i, %bb.bs
  %.sroa.03.011.i10.off8.i.i.i = phi i8 [ %i.id, %.noexc12.i.i ], [ 0, %bb.bs ]
  %.sroa.03.011.i10.off16.i.i.i = phi i8 [ %i.ig, %.noexc12.i.i ], [ 0, %bb.bs ]
  store i8 %.sroa.03.011.i10.off8.i.i.i, ptr %i.av, align 1, !noalias !34873
  %i.ij = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %.sroa.03.011.i10.off16.i.i.i, ptr %i.ij, align 1, !noalias !34873
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  %i.ik = load ptr, ptr %1, align 8, !alias.scope !34876, !noalias !34877, !nonnull !111, !align !127, !noundef !111
  %i.il = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !noalias !34878, !nonnull !111, !align !127, !noundef !111
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !noalias !34877, !nonnull !111, !noundef !111
  invoke void %i.io(ptr noundef nonnull %.val5.i.i, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ik)
          to label %bb.bz unwind label %bb.by, !noalias !34877

bb.by:                                            ; preds = %.thread8.i.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.av)
          to label %.thread.i.i.i unwind label %bb.cb, !noalias !34877

bb.bz:                                            ; preds = %.thread8.i.i.i
  %i.iq = load i64, ptr %i.aw, align 8, !range !236, !noalias !34873, !noundef !111 ; 6 uses
  %.not.i9.i.i = icmp eq i64 %i.iq, -3            ; 2 uses
  br i1 %.not.i9.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i8 0, ptr %i.av, align 1, !noalias !34873
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i.i.i: ; preds = %bb.ca, %bb.bz
  %.sroa.8.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.8.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx29.i.i, align 8, !noalias !34879 ; 8 uses
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx29.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.8.i.sroa.6.0.copyload.i = load ptr, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx29.i.sroa_idx.i, align 8, !noalias !34879 ; 8 uses
  %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx29.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.8.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx29.i.sroa_idx.i, align 8, !noalias !34879 ; 8 uses
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx29.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.sroa.8.i.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx29.i.sroa_idx.i, align 8, !noalias !34879 ; 4 uses
  %.sroa.8.i.sroa.9.0..sroa.8.0..sroa_idx29.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.sroa.9.0..sroa.8.0..sroa_idx29.i.sroa_idx.i, i64 32, i1 false), !noalias !34879
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.av)
          to label %bb.cd unwind label %bb.bq, !noalias !34846

bb.cb:                                            ; preds = %bb.cc, %bb.by
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !34877
  unreachable

.thread.i.i.i:                                    ; preds = %bb.by
  %.pre.i.i.i = load i64, ptr %i.aw, align 8, !range !236, !alias.scope !34880, !noalias !34873
  %i.is = icmp eq i64 %.pre.i.i.i, -3
  br i1 %i.is, label %.body14.i.i, label %bb.cc

bb.cc:                                            ; preds = %.thread.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.aw)
          to label %.body14.i.i unwind label %bb.cb, !noalias !34877

bb.cd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !34873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !34873
  br i1 %.not.i9.i.i, label %bb.cu, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.sroa.9.i, i64 32, i1 false), !noalias !34844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.9.i)
  %.val.i.i38 = load ptr, ptr %i.hy, align 8, !noalias !34844, !nonnull !111, !noundef !111 ; 2 uses
  %i.it = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val.i.i38)
          to label %.noexc16.i.i unwind label %bb.cg, !noalias !34846

.noexc16.i.i:                                     ; preds = %bb.ce
  br i1 %i.it, label %bb.cf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit18.i.i

bb.cf:                                            ; preds = %.noexc16.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val.i.i38)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit18.i.i unwind label %bb.cg, !noalias !34846

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit18.i.i: ; preds = %bb.cf, %.noexc16.i.i
  %i.iv = icmp eq i64 %i.iq, -2
  br i1 %i.iv, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit18.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.10.i, i64 32, i1 false), !noalias !34844
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.experimental.noalias.scope.decl(metadata !34881)
  call void @llvm.experimental.noalias.scope.decl(metadata !34882)
  %i.ix = load i64, ptr %i.iw, align 8, !range !118, !alias.scope !34883, !noalias !34844, !noundef !111
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.iz = icmp eq i64 %i.ix, 0
  br i1 %i.iz, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !34884)
  call void @llvm.experimental.noalias.scope.decl(metadata !34885)
  %i.ja = load ptr, ptr %i.iy, align 8, !alias.scope !34886, !noalias !34844, !nonnull !111, !noundef !111
  %i.jb = atomicrmw sub ptr %i.ja, i64 1 release, align 8, !noalias !34887
  %i.jc = icmp eq i64 %i.jb, 1
  br i1 %i.jc, label %bb.cj, label %bb.cv

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %bb.cv unwind label %bb.am, !noalias !34846

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !34888)
  call void @llvm.experimental.noalias.scope.decl(metadata !34889)
  %i.jd = load ptr, ptr %i.iy, align 8, !alias.scope !34890, !noalias !34844, !nonnull !111, !noundef !111
  %i.je = atomicrmw sub ptr %i.jd, i64 1 release, align 8, !noalias !34891
  %i.jf = icmp eq i64 %i.je, 1
  br i1 %i.jf, label %bb.cl, label %bb.cv

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %bb.cv unwind label %bb.am, !noalias !34846

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit18.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.experimental.noalias.scope.decl(metadata !34892)
  call void @llvm.experimental.noalias.scope.decl(metadata !34893)
  %i.jh = load i64, ptr %i.jg, align 8, !range !118, !alias.scope !34894, !noalias !34844, !noundef !111
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.jj = icmp eq i64 %i.jh, 0
  br i1 %i.jj, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !34895)
  call void @llvm.experimental.noalias.scope.decl(metadata !34896)
  %i.jk = load ptr, ptr %i.ji, align 8, !alias.scope !34897, !noalias !34844, !nonnull !111, !noundef !111
  %i.jl = atomicrmw sub ptr %i.jk, i64 1 release, align 8, !noalias !34898
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.co, label %bb.cv

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ji)
          to label %bb.cv unwind label %bb.am, !noalias !34846

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !34899)
  call void @llvm.experimental.noalias.scope.decl(metadata !34900)
  %i.jn = load ptr, ptr %i.ji, align 8, !alias.scope !34901, !noalias !34844, !nonnull !111, !noundef !111
  %i.jo = atomicrmw sub ptr %i.jn, i64 1 release, align 8, !noalias !34902
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %bb.cq, label %bb.cv

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ji)
          to label %bb.cv unwind label %bb.am, !noalias !34846

bb.cr:                                            ; preds = %bb.br, %.body14.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !34846
  unreachable

bb.cs:                                            ; preds = %bb.ct, %bb.al
  store i8 0, ptr %i.fl, align 1, !noalias !34844
  store i8 2, ptr %i.fj, align 8, !noalias !34844
  br label %.body.i

bb.ct:                                            ; preds = %bb.al
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtBL_9GetResult5bytes00ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.bd) #49, !noalias !34846
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cd, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.9.i)
  store i8 3, ptr %i.hw, align 8, !noalias !34844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !34841
  br label %bb.fr

bb.cv:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.jr = phi ptr [ %i.fb, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.hu, %bb.co ], [ %i.hu, %bb.cn ], [ %i.hu, %bb.cq ], [ %i.hu, %bb.cp ], [ %i.hu, %bb.cj ], [ %i.hu, %bb.ci ], [ %i.hu, %bb.cl ], [ %i.hu, %bb.ck ] ; 2 uses
  %i.js = phi ptr [ %i.fc, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.hv, %bb.co ], [ %i.hv, %bb.cn ], [ %i.hv, %bb.cq ], [ %i.hv, %bb.cp ], [ %i.hv, %bb.cj ], [ %i.hv, %bb.ci ], [ %i.hv, %bb.cl ], [ %i.hv, %bb.ck ] ; 2 uses
  %i.jt = phi ptr [ %i.fd, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.hw, %bb.co ], [ %i.hw, %bb.cn ], [ %i.hw, %bb.cq ], [ %i.hw, %bb.cp ], [ %i.hw, %bb.cj ], [ %i.hw, %bb.ci ], [ %i.hw, %bb.cl ], [ %i.hw, %bb.ck ]
  %i.ju = phi ptr [ %i.fe, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.hx, %bb.co ], [ %i.hx, %bb.cn ], [ %i.hx, %bb.cq ], [ %i.hx, %bb.cp ], [ %i.hx, %bb.cj ], [ %i.hx, %bb.ci ], [ %i.hx, %bb.cl ], [ %i.hx, %bb.ck ]
  %.sroa.5.i.sroa.9.0.i = phi ptr [ %.sroa.6.i.i.sroa.10.0.copyload.i, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ undef, %bb.co ], [ undef, %bb.cn ], [ undef, %bb.cq ], [ undef, %bb.cp ], [ %.sroa.8.i.sroa.8.0.copyload.i, %bb.cj ], [ %.sroa.8.i.sroa.8.0.copyload.i, %bb.ci ], [ %.sroa.8.i.sroa.8.0.copyload.i, %bb.cl ], [ %.sroa.8.i.sroa.8.0.copyload.i, %bb.ck ]
  %.sroa.5.i.sroa.8.0.i = phi i64 [ %.sroa.6.i.i.sroa.8.0.copyload.i, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.co ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.cn ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.cq ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.cp ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.cj ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.ci ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.cl ], [ %.sroa.8.i.sroa.7.0.copyload.i, %bb.ck ]
  %.sroa.5.i.sroa.7.0.i = phi ptr [ %.sroa.6.i.i.sroa.6.0.copyload.i, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.co ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.cn ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.cq ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.cp ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.cj ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.ci ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.cl ], [ %.sroa.8.i.sroa.6.0.copyload.i, %bb.ck ]
  %.sroa.5.i.sroa.0.0.i = phi ptr [ %.sroa.6.i.i.sroa.0.0.copyload.i, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.co ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.cn ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.cq ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.cp ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.cj ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.ci ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.cl ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.ck ]
  %.sroa.032.1.i.i = phi i64 [ %i.gf, %_RNCNCNvMs1_Cs3PfUT229lOd_12object_storeNtB9_9GetResult5bytes00Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ -9223372036854775799, %bb.co ], [ -9223372036854775799, %bb.cn ], [ -9223372036854775799, %bb.cq ], [ -9223372036854775799, %bb.cp ], [ %i.iq, %bb.cj ], [ %i.iq, %bb.ci ], [ %i.iq, %bb.cl ], [ %i.iq, %bb.ck ]
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 529
  store i8 0, ptr %i.jv, align 1, !noalias !34844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.sroa.11.i, i64 32, i1 false), !noalias !34841
  store i8 1, ptr %i.jt, align 8, !noalias !34844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !34841
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtCs3PfUT229lOd_12object_store4util20maybe_spawn_blockingNCNCNvMs1_BI_NtBI_9GetResult5bytes00NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.ju)
          to label %bb.cx unwind label %bb.cw, !noalias !34843

bb.cw:                                            ; preds = %bb.cv
  %i.jw = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RNvXs3_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
bb.i:                                             ; preds = %.loopexit.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.l, %bb.k, %bb.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ax, %bb.l ], [ %i.ax, %bb.k ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1R_EEENCNvMse_B1y_B1v_15clone_from_impl0EECsc93vp1BCDlY_26lance_namespace_datafusion(i64 %.sroa.012.028.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #49, !noalias !41016
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.b) #49, !noalias !41007
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

bb.j:                                             ; preds = %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.012.028.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i ]
  %.sroa.013.027.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.sroa.013.1.i.i.i.i, %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.026.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.6.1.i.i.i.i, %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i ] ; 2 uses
  %.sroa.814.025.i.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.ar, %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i ] ; 2 uses
  %.sroa.1015.024.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.au, %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i ]
  %.not12.i.i.i.i.i = icmp eq i16 %.sroa.814.025.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.026.i.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.sroa.013.027.i.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !41017
  %i.al = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -768 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.026.i.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %.sroa.013.1.i.i.i.i = phi ptr [ %.sroa.013.027.i.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.814.025.i.i.i.i, %bb.j ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.024.i.i.i.i, -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41014
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41018)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av)
          to label %.noexc.i.i.i.i unwind label %bb.i, !noalias !41014

.noexc.i.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -24
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i unwind label %bb.k, !noalias !41014

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41019)
  %.val.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !41020, !noalias !41021 ; 2 uses
  %i.ay = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ay, label %.body.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !41020, !noalias !41021, !nonnull !111, !noundef !111
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !41022
  br label %.body.i.i.i.i

_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.ah, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 48                ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !41014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41014
  %i.bg = add nsw i64 %i.bc, 1
  %i.bh = icmp eq i64 %i.au, 0
  br i1 %i.bh, label %.loopexit.i.i, label %bb.j

.loopexit.i.i:                                    ; preds = %_RNvYTNtNtCs40k4W9msRzi_5alloc6string6StringB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBP_EE17new_uninitializedCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  store i64 %i.ab, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !41023, !noalias !41016
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !41012, !noalias !41013, !noundef !111
  store i64 %i.bj, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !41023, !noalias !41016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41007
  br label %_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !119, !noundef !111
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @782, i64 noundef 10, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @781, i64 noundef 12, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 3) i8 @_RNvXs4_NtNtCshkPeWWG1flk_5lance10datafusion9dataframeNtB5_18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider10table_type(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i8 0
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXs4_NtNtCshkPeWWG1flk_5lance10datafusion9dataframeNtB5_18LanceTableProviderNtNtCs5q7AjagIPjV_18datafusion_catalog5table13TableProvider6schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !111, !noundef !111 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB1a_6future6future6Future4pollCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !119, !noalias !41034, !noundef !111
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %.thread8
  ], !prof !251

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsc93vp1BCDlY_26lance_namespace_datafusion)
          to label %.noexc unwind label %.thread5

.noexc:                                           ; preds = %bb.b
  store i8 1, ptr %i.e, align 8, !noalias !41034
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.h = load i8, ptr %i.g, align 4, !range !115, !noalias !41035, !noundef !111 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 69 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !noalias !41035 ; 4 uses
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %.thread5

bb.f:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.33.0.i.i.i = phi i8 [ %i.l, %bb.f ], [ %i.k, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.j, align 1, !noalias !41035
  br label %bb.h

.thread5:                                         ; preds = %bb.h, %bb.e, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.0.0.i.i9.i = phi i1 [ false, %bb.g ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.m)
          to label %bb.i unwind label %.thread5

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i9.i, label %bb.j, label %.thread8

bb.j:                                             ; preds = %bb.i
  store i8 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = load i8, ptr %i.c, align 8, !range !179, !alias.scope !41036, !noundef !111
  %.not.i = icmp eq i8 %i.n, -3
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

.thread8:                                         ; preds = %bb.a, %bb.i
  %.sroa.03.011.i10.off8 = phi i8 [ %i.h, %bb.i ], [ 0, %bb.a ]
  %.sroa.03.011.i10.off16 = phi i8 [ %i.k, %bb.i ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i10.off8, ptr %i.b, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i10.off16, ptr %i.o, align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = load ptr, ptr %1, align 8, !nonnull !111, !align !127, !noundef !111
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !111, !align !127, !noundef !111
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !111, !noundef !111
  invoke void %i.t(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.thread8
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.o

bb.m:                                             ; preds = %.thread8
  %i.v = load i8, ptr %i.c, align 8, !range !179, !noundef !111
  %.not = icmp eq i8 %i.v, -3
  br i1 %.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.k, %bb.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsc93vp1BCDlY_26lance_namespace_datafusion.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %bb.p, %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit23: ; preds = %.thread, %bb.p
  resume { ptr, i32 } %.pn4

.thread:                                          ; preds = %bb.l, %.thread5
  %.pn4 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread5 ], [ %i.u, %bb.l ]
  %i.x = load i8, ptr %i.c, align 8, !range !179, !alias.scope !41037, !noundef !111
  %.not.i21 = icmp eq i8 %i.x, -3
  br i1 %.not.i21, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit23, label %bb.p

bb.p:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit23 unwind label %bb.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader10block_size(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 65536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader14io_parallelism(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 1024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader4path(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !111, !noundef !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !197, !noundef !111 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 1
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.f, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @796, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.e, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @798, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @729, ptr noalias noundef nonnull readonly captures(address, read_provenance) @728, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @797)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.d, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @801, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @799, ptr noalias noundef nonnull readonly captures(address, read_provenance) @728, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @800)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.c, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @732, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @802)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @804, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @729, ptr noalias noundef nonnull readonly captures(address, read_provenance) @728, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @803)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.a, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @805, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @729, ptr noalias noundef nonnull readonly captures(address, read_provenance) @806, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.z, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_17CloudObjectReaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @807, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @808, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @400, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @711, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @712, ptr noalias noundef nonnull readonly captures(address, read_provenance) @716, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @713, ptr noalias noundef nonnull readonly captures(address, read_provenance) @809, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @748)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtCs3PfUT229lOd_12object_store4path5partsNtB5_11InvalidPartNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @810, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @811, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @729, ptr noalias noundef nonnull readonly captures(address, read_provenance) @812, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #24 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !197, !noundef !111 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.c
    i64 2, label %bb.d
end_hunk_3
