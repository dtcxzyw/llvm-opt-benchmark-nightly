Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB8_17LocalObjectReader17open_with_tracker00CsjsY2yM364a4_11lance_tools:bb.a
  %or.cond.not.i.i.i = select i1 %i.bg, i1 %.not.i.i.i, i1 false, !prof !31
  br i1 %or.cond.not.i.i.i, label %bb.w, label %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit.i.i, !prof !31

bb.w:                                             ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1C_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1E_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6959
  store ptr %i.bf, ptr %i.i, align 8, !noalias !6959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6959
  store ptr %i.i, ptr %i.h, align 8, !noalias !6959
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !6959
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %bb.y unwind label %bb.x, !noalias !6960

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #41
          to label %bb.aa unwind label %bb.z, !noalias !6960

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.x
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !6960
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bj = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.av)
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !6960

.noexc.i.i.i:                                     ; preds = %bb.aa
  br i1 %i.bj, label %bb.ab, label %.body.i.i

bb.ab:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.av)
          to label %.body.i.i unwind label %bb.z, !noalias !6960

.body.i.i:                                        ; preds = %bb.ab, %.noexc.i.i.i, %bb.v, %bb.t, %.noexc.i.i.i.i, %bb.p
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bh, %bb.ab ], [ %i.ba, %.noexc.i.i.i.i ], [ %i.ax, %bb.p ], [ %i.bd, %bb.v ], [ %i.ba, %bb.t ], [ %i.bh, %.noexc.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio7runtime6handle6HandleECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(16) %i.j) #41
          to label %.body unwind label %bb.ag, !noalias !6948

_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1C_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1E_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6961)
  call void @llvm.experimental.noalias.scope.decl(metadata !6962)
  %i.bk = load i64, ptr %i.j, align 8, !range !28, !alias.scope !6963, !noalias !6948, !noundef !24
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6964)
  call void @llvm.experimental.noalias.scope.decl(metadata !6965)
  %i.bm = load ptr, ptr %i.am, align 8, !alias.scope !6966, !noalias !6948, !nonnull !24, !noundef !24
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !6967
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.aj unwind label %bb.ai

bb.ae:                                            ; preds = %_RINvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1w_17LocalObjectReader17open_with_tracker000INtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1y_6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6968)
  call void @llvm.experimental.noalias.scope.decl(metadata !6969)
  %i.bp = load ptr, ptr %i.am, align 8, !alias.scope !6970, !noalias !6948, !nonnull !24, !noundef !24
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !6971
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.aj unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ah, %.body.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ah:                                            ; preds = %bb.g
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtBM_17LocalObjectReader17open_with_tracker000ECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l) #41
          to label %.body unwind label %bb.ag

bb.ai:                                            ; preds = %bb.af, %bb.ad
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.ah, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %i.bt, %bb.ai ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit

bb.aj:                                            ; preds = %bb.af, %bb.ad, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.av, ptr %i.bu, align 8
  br label %bb.ap

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.bj, %bb.ao, %.noexc10, %bb.bn, %.body
  %.pn4 = phi { ptr, i32 } [ %i.cx, %bb.bn ], [ %eh.lpad-body, %.body ], [ %i.cv, %bb.bj ], [ %eh.lpad-body16, %bb.ao ], [ %eh.lpad-body16, %.noexc10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit

bb.ak:                                            ; preds = %bb.bq, %bb.ao, %.body15
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #40
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #40
  unreachable

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20.i, %bb.az
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %.thread.i, %bb.be, %bb.an
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.bw, %bb.an ], [ %.pn4.i, %bb.be ], [ %.pn4.i, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.val7 = load ptr, ptr %i.by, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.bx = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val7)
          to label %.noexc10 unwind label %bb.ak

.noexc10:                                         ; preds = %.body15
  br i1 %i.bx, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit

bb.ao:                                            ; preds = %.noexc10
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val7)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.ak

bb.ap:                                            ; preds = %bb.c, %bb.aj
  %.val8 = phi ptr [ %.val8.pre, %bb.c ], [ %i.av, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6973
  store i8 -3, ptr %i.d, align 8, !noalias !6973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6973
  %i.bz = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !30, !noalias !6974, !noundef !24
  switch i8 %i.cb, label %default.unreachable38 [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %.thread8.i
  ], !prof !78

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bz, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsjsY2yM364a4_11lance_tools)
          to label %.noexc.i unwind label %.thread5.i, !noalias !6973

.noexc.i:                                         ; preds = %bb.aq
  store i8 1, ptr %i.ca, align 8, !noalias !6974
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc.i, %bb.ap
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  %i.cd = load i8, ptr %i.cc, align 4, !range !25, !noalias !6975, !noundef !24 ; 2 uses
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 69 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !6975 ; 4 uses
  br i1 %i.ce, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i.i12 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i12, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aw unwind label %.thread5.i, !noalias !6976

bb.au:                                            ; preds = %bb.as
  %i.ch = add i8 %i.cg, -1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.sroa.33.0.i.i.i.i = phi i8 [ %i.ch, %bb.au ], [ %i.cg, %bb.ar ]
  store i8 %.sroa.33.0.i.i.i.i, ptr %i.cf, align 1, !noalias !6975
  br label %bb.aw

.thread5.i:                                       ; preds = %bb.aw, %bb.at, %bb.aq
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0.i.i9.i.i = phi i1 [ false, %bb.av ], [ true, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6973
  store i24 0, ptr %i.b, align 4, !noalias !6973
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.ci)
          to label %bb.ax unwind label %.thread5.i, !noalias !6976

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6973
  br i1 %.sroa.0.0.i.i9.i.i, label %bb.ay, label %.thread8.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6973
  %i.cj = load i8, ptr %i.d, align 8, !range !71, !alias.scope !6977, !noalias !6973, !noundef !24
  %.not.i.i = icmp eq i8 %i.cj, -3
  br i1 %.not.i.i, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.thread unwind label %bb.an

.thread8.i:                                       ; preds = %bb.ap, %bb.ax
  %.sroa.03.011.i10.off8.i = phi i8 [ %i.cd, %bb.ax ], [ 0, %bb.ap ]
  %.sroa.03.011.i10.off16.i = phi i8 [ %i.cg, %bb.ax ], [ 0, %bb.ap ]
  store i8 %.sroa.03.011.i10.off8.i, ptr %i.c, align 1, !noalias !6973
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.011.i10.off16.i, ptr %i.ck, align 1, !noalias !6973
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.cl = load ptr, ptr %2, align 8, !alias.scope !6972, !noalias !6976, !nonnull !24, !align !41, !noundef !24
  %i.cm = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !6973, !nonnull !24, !align !41, !noundef !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !6976, !nonnull !24, !noundef !24
  invoke void %i.cp(ptr noundef nonnull %.val8, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cl)
          to label %bb.bb unwind label %bb.ba, !noalias !6976

bb.ba:                                            ; preds = %.thread8.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %.thread.i unwind label %bb.bd, !noalias !6976

bb.bb:                                            ; preds = %.thread8.i
  %i.cr = load i8, ptr %i.d, align 8, !range !71, !noalias !6973, !noundef !24 ; 3 uses
  %.not.i = icmp eq i8 %i.cr, -3                  ; 2 uses
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 0, ptr %i.c, align 1, !noalias !6973
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20.i: ; preds = %bb.bc, %bb.bb
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.8.0..sroa_idx28, i64 55, i1 false), !noalias !6972
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %bb.bf unwind label %bb.an

bb.bd:                                            ; preds = %bb.be, %bb.ba
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !6976
  unreachable

.thread.i:                                        ; preds = %bb.ba, %.thread5.i
  %.pn4.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread5.i ], [ %i.cq, %bb.ba ] ; 2 uses
  %i.ct = load i8, ptr %i.d, align 8, !range !71, !alias.scope !6978, !noalias !6973, !noundef !24
  %.not.i21.i = icmp eq i8 %i.ct, -3
  br i1 %.not.i21.i, label %.body15, label %bb.be

bb.be:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.body15 unwind label %bb.bd, !noalias !6976

.thread:                                          ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6973
  br label %bb.bg

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6973
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
  %.val = load ptr, ptr %i.by, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.cu = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val)
          to label %.noexc17 unwind label %bb.bj

.noexc17:                                         ; preds = %bb.bh
  br i1 %i.cu, label %bb.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit19

bb.bi:                                            ; preds = %.noexc17
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit19 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit19: ; preds = %.noexc17, %bb.bi
  %i.cw = icmp eq i8 %i.cr, -2
  br i1 %i.cw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit19
  %.sroa.3.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.3.8..sroa_idx, i64 24, i1 false)
  invoke void @_RNvXsd_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @148)
          to label %bb.bo unwind label %bb.bn

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit19
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
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools.exit

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6979
  br label %bb.bm

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.bp, %bb.bq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit
  store i8 2, ptr %i.n, align 8
  resume { ptr, i32 } %.pn4.pn

bb.bp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsjsY2yM364a4_11lance_tools.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6980)
  call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !6982, !nonnull !24, !noundef !24
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !6982
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.bq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs_NtNtCsjjbR6Jfsbqw_8lance_io5uring14current_threadNtB8_24UringCurrentThreadReader4open00CsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %i.v = load i8, ptr %i.u, align 8, !range !60, !noundef !24
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
  br i1 %i.aa, label %bb.g, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io5uring16URING_BLOCK_SIZE, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  invoke void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io5uring16URING_BLOCK_SIZE, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
          to label %.noexc unwind label %bb.f
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB6_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1V_16CachedReaderDataEE4send0CsjsY2yM364a4_11lance_tools:bb.a

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE6removeCsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE10try_removeCsjsY2yM364a4_11lance_tools.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %.loopexit.i

bb.an:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE10try_removeCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEECsjsY2yM364a4_11lance_tools(ptr nonnull align 8 %i.i, i8 %.sroa.01.0.i.i.i8) #41
          to label %common.resume unwind label %bb.au, !noalias !9385

.loopexit.i:                                      ; preds = %bb.al, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsjsY2yM364a4_11lance_tools.exit.i12, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE6removeCsjsY2yM364a4_11lance_tools.exit.i.i
  %i.du = phi i64 [ %i.dq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE6removeCsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.da, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsjsY2yM364a4_11lance_tools.exit.i12 ], [ %i.da, %bb.al ] ; 2 uses
  %storemerge.i.i = phi ptr [ %.sroa.0.0.copyload1.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE6removeCsjsY2yM364a4_11lance_tools.exit.i.i ], [ null, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsjsY2yM364a4_11lance_tools.exit.i12 ], [ null, %bb.al ] ; 3 uses
  %i.dv = icmp ult i64 %i.du, 384307168202282326
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp eq i64 %i.du, 0
  br i1 %i.dw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.loopexit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.dy = load i64, ptr %i.dx, align 16, !noalias !9385, !noundef !24 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 384307168202282326
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp eq i64 %i.dy, 0
  %i.eb = zext i1 %i.ea to i8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit.i
  %.sroa.0.0.i13 = phi i8 [ %i.eb, %bb.ao ], [ 0, %.loopexit.i ]
  store atomic i8 %.sroa.0.0.i13, ptr %i.av seq_cst, align 8, !noalias !9385
  br i1 %i.cy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !9385
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, label %bb.ar, !prof !26

bb.ar:                                            ; preds = %bb.aq
  %i.ef = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !9385
  br i1 %i.ef, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store atomic i8 1, ptr %i.r monotonic, align 4, !noalias !9385
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.eg = atomicrmw xchg ptr %i.i, i32 0 release, align 4, !noalias !9385
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.at, label %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit, !prof !29

bb.at:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.i), !noalias !9385
  br label %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit

bb.au:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !9385
  unreachable

_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i14, %bb.at
  %.not = icmp eq ptr %storemerge.i.i, null
  br i1 %.not, label %bb.ax, label %bb.av, !prof !29

_RNvMNtCs40Ppcsylqp4_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4: ; preds = %.split.i, %.split.us.i, %_RNvMNtCs40Ppcsylqp4_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsjsY2yM364a4_11lance_tools.exit
  ret void

bb.av:                                            ; preds = %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit
  store ptr %storemerge.i.i, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %i.ej = atomicrmw sub ptr %storemerge.i.i, i64 1 release, align 8, !noalias !9386
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsjsY2yM364a4_11lance_tools.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMNtCs40Ppcsylqp4_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread4

bb.ax:                                            ; preds = %_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0CsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !40, !noundef !24
  switch i8 %i.b, label %default.unreachable5 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !24, !align !41, !noundef !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24
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
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #40
  unreachable

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !45
  %i.i = icmp eq i32 %.pre, -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.i, label %bb.f, label %.thread.i.i

bb.e:                                             ; preds = %bb.h
  store i32 -1, ptr %i.m, align 8, !noalias !9389
  %.sroa.522.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.522.0..sroa_idx23.i.i, align 8, !noalias !9389
  %.sroa.6.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6.0..sroa_idx25.i.i, align 8, !noalias !9389
  %.sroa.7.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx27.i.i, align 8, !noalias !9389
  br label %.thread.i.i

bb.f:                                             ; preds = %.thread, %bb.d
  %i.m = phi ptr [ %i.h, %.thread ], [ %i.l, %bb.d ] ; 4 uses
  %i.n = phi ptr [ %i.g, %.thread ], [ %i.k, %bb.d ] ; 3 uses
  %i.o = phi ptr [ %i.f, %.thread ], [ %i.j, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acquire acquire, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.k, label %bb.h, !prof !26

bb.g:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.m, align 8, !noalias !9389
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !9389
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !9389
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !9389
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !24, !align !41, !noundef !24 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtB10_5MutexuEuEEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.o)
          to label %bb.e unwind label %bb.g, !noalias !9389

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %i.u = phi ptr [ %i.n, %bb.e ], [ %i.k, %bb.d ]
  %i.v = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.w = invoke fastcc noundef align 8 ptr @_RINvXsf_NtCsjMQ83FLvXnF_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCs8a8leFYyzqu_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.v, ptr %.0.val)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.thread.i.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %common.ret, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !24, !align !41, !noundef !24
  br label %bb.k

bb.j:                                             ; preds = %.thread.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.k, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i, %.noexc
  %.sroa.0.1.i.i4 = phi ptr [ null, %.noexc ], [ %.sroa.0.1.i.i.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ %.sroa.0.1.i.i.ph, %bb.k ]
  %storemerge = phi i8 [ 3, %.noexc ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ 1, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ 1, %bb.k ]
  store i8 %storemerge, ptr %i.a, align 8
  ret ptr %.sroa.0.1.i.i4

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.aa = phi ptr [ %i.m, %bb.f ], [ %i.t, %bb.i ]
  %.sroa.0.1.i.i.ph = phi ptr [ %i.p, %bb.f ], [ %i.y, %bb.i ] ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !range !45, !noundef !24
  %i.ac = icmp eq i32 %i.ab, -2
  br i1 %i.ac, label %common.ret, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ad, align 8, !align !41, !noundef !24 ; 2 uses
  store ptr null, ptr %i.ad, align 8
  %i.ag = load i8, ptr %i.ae, align 8, !range !25, !noundef !24
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.af, null
  %or.cond.not.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i, %i.ah
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.m, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ai = atomicrmw sub ptr %i.af, i64 2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !align !41, !noundef !24 ; 4 uses
  %i.ak = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ak, label %common.ret, label %bb.n

bb.n:                                             ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.val.i.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #36
  br label %.body11

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i: ; preds = %bb.n
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 56, i64 noundef 8) #36
  br label %common.ret

.body:                                            ; preds = %bb.j, %bb.g
  %i.am = phi ptr [ %i.o, %bb.g ], [ %i.v, %bb.j ]
  %.pn6 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex4LockuEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %i.am) #41
          to label %.body11 unwind label %bb.p

bb.p:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %i.bw = load i8, ptr %i.bv, align 4, !range !64, !noundef !24
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
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !24, !align !41, !noundef !24 ; 4 uses
  store ptr %i.ca, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i64, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !range !53, !noundef !24
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ci = load <2 x i32>, ptr %i.ch, align 8
  store <2 x i32> %i.ci, ptr %i.cg, align 8
  %.val100 = load i64, ptr %i.ca, align 8, !range !28, !noundef !24
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
begin_hunk_2_@_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools:bb.a
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !14080, !noundef !24
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !14080
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !14080
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !14080
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !14079
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !14079
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !14081
  %i.bm = zext i32 %.sroa.014.0.copyload.i17 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i11 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i11, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i11
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !14081
  %i.br = zext i16 %.sroa.015.0.copyload.i16 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i11, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i12
  %i.bv = or disjoint i64 %.sroa.03.0.i11, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i11, %bb.m ] ; 3 uses
  %.sroa.0.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i12, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i13, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i13, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !14081, !noundef !24
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i13, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i14
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i15 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i15, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted23, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.119 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.119
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.119, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !30, !noundef !24
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @433, i64 noundef 10, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @432, i64 noundef 12, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB1a_6future6future6Future4pollCsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !30, !noalias !14092, !noundef !24
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %.thread8
  ], !prof !78

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsjsY2yM364a4_11lance_tools)
          to label %.noexc unwind label %.thread5

.noexc:                                           ; preds = %bb.b
  store i8 1, ptr %i.e, align 8, !noalias !14092
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.h = load i8, ptr %i.g, align 4, !range !25, !noalias !14093, !noundef !24 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 69 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !noalias !14093 ; 4 uses
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
  store i8 %.sroa.33.0.i.i.i, ptr %i.j, align 1, !noalias !14093
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
  %i.n = load i8, ptr %i.c, align 8, !range !71, !alias.scope !14094, !noundef !24
  %.not.i = icmp eq i8 %i.n, -3
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjsY2yM364a4_11lance_tools.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjsY2yM364a4_11lance_tools.exit

.thread8:                                         ; preds = %bb.a, %bb.i
  %.sroa.03.011.i10.off8 = phi i8 [ %i.h, %bb.i ], [ 0, %bb.a ]
  %.sroa.03.011.i10.off16 = phi i8 [ %i.k, %bb.i ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i10.off8, ptr %i.b, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i10.off16, ptr %i.o, align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = load ptr, ptr %1, align 8, !nonnull !24, !align !41, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !24, !align !41, !noundef !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !24, !noundef !24
  invoke void %i.t(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.thread8
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.o

bb.m:                                             ; preds = %.thread8
  %i.v = load i8, ptr %i.c, align 8, !range !71, !noundef !24
  %.not = icmp eq i8 %i.v, -3
  br i1 %.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.k, %bb.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjsY2yM364a4_11lance_tools.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %bb.p, %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjsY2yM364a4_11lance_tools.exit23: ; preds = %.thread, %bb.p
  resume { ptr, i32 } %.pn4

.thread:                                          ; preds = %bb.l, %.thread5
  %.pn4 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread5 ], [ %i.u, %bb.l ]
  %i.x = load i8, ptr %i.c, align 8, !range !71, !alias.scope !14095, !noundef !24
  %.not.i21 = icmp eq i8 %i.x, -3
  br i1 %.not.i21, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjsY2yM364a4_11lance_tools.exit23, label %bb.p

bb.p:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjsY2yM364a4_11lance_tools.exit23 unwind label %bb.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader10block_size(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i64 65536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader14io_parallelism(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i64 1024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs5_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_11SmallReaderNtNtB7_6traits6Reader4path(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCsjjbR6Jfsbqw_8lance_io13object_readerNtB5_17CloudObjectReaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @438, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @439, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @437, ptr noalias noundef nonnull readonly captures(address, read_provenance) @410, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @405, ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @406, ptr noalias noundef nonnull readonly captures(address, read_provenance) @412, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @407, ptr noalias noundef nonnull readonly captures(address, read_provenance) @440, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @417)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs9_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i16, ptr %1, align 8, !range !57, !noundef !24
  %i.d = trunc nuw i16 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load ptr, ptr %i.f, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = atomicrmw add ptr %.val2, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.val2, ptr %i.a, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.i = atomicrmw add ptr %.val3, i32 1 monotonic, align 4
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNvXs2_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_7KvEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = atomicrmw sub ptr %.val2, i64 1 release, align 8, !noalias !14106
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.m, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.ad, %bb.m ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNvXs2_NtNtCskTBvlRM5ILY_4moka6common10concurrentINtB5_7KvEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i16, ptr %i.o, align 2, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.p, ptr %i.s, align 2
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !24 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  %.val = load ptr, ptr %i.x, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ab = atomicrmw add ptr %.val, i32 1 monotonic, align 4
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1p_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !14107
  %i.af = icmp eq i64 %i.ae, 1
end_hunk_2
