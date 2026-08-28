Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.05?download=true
inline.NumInlined: 667
inline.NumDeleted: 413
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine:bb.a
.thread3.i:                                       ; preds = %.noexc
  %i.v = icmp eq ptr %i.p, null
  br i1 %i.v, label %.thread4.i, label %.thread.i

.thread4.i:                                       ; preds = %.thread3.i
  store ptr null, ptr %i.b, align 8, !alias.scope !1205
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit

.thread.i:                                        ; preds = %.thread3.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 400
  store atomic ptr %i.n, ptr %i.w monotonic, align 8, !noalias !1205
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.b, align 8, !alias.scope !1205
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.x = phi ptr [ %i.f, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  store i64 %i.i, ptr %i.y, align 8, !noalias !1205
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.f:                                             ; preds = %bb.k, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l, %bb.m, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ %i.al, %bb.i ]
  %i.aa = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4y_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.g:                                             ; preds = %.body
  call void @llvm.trap()
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.e, %.thread4.i
  %i.ad = phi ptr [ %i.x, %bb.e ], [ null, %.thread4.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  %i.af = atomicrmw xchg ptr %i.ae, i8 1 seq_cst, align 1
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %.sroa.0.0.sroa.speculate.load.1.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculate.load.1.i, i64 24 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !14, !noundef !16
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculate.load.1.i, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBN_20CatalogSubscriptions11send_update0s_00ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.l, label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.h, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  store i64 0, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.j, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.am = load ptr, ptr %i.a, align 8, !alias.scope !1214, !nonnull !16, !noundef !16
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1214
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3z_20CatalogSubscriptions11send_update0s_00EEEE9drop_slowCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.f

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.ap = load ptr, ptr %i.a, align 8, !alias.scope !1221, !nonnull !16, !noundef !16
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !1221
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.m, label %.body

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3z_20CatalogSubscriptions11send_update0s_00EEEE9drop_slowCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = icmp eq ptr %i.ad, null
  br i1 %i.at, label %._crit_edge, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4y_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEENtNtNtB1u_3ops4drop4Drop4dropB3b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %i.c = icmp eq ptr %.promoted, null
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.ad, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noalias !1222, !noundef !16
  %i.i = add i64 %i.h, -1
  %i.j = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEEB3m_(ptr noundef nonnull %i.f)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !1222 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1222, !noundef !16 ; 4 uses
  %i.q = load ptr, ptr %i.e, align 8, !noalias !1222, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store atomic ptr %i.r, ptr %i.m monotonic, align 8, !noalias !1222
  store ptr null, ptr %i.o, align 8, !noalias !1222
  %i.s = icmp eq ptr %i.n, null
  br i1 %i.s, label %.thread3.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.t, align 8, !noalias !1222
  %i.u = icmp eq ptr %i.p, null
  br i1 %i.u, label %bb.d, label %.thread.i

.thread3.i:                                       ; preds = %.noexc
  %i.v = icmp eq ptr %i.p, null
  br i1 %i.v, label %.thread4.i, label %.thread.i

.thread4.i:                                       ; preds = %.thread3.i
  store ptr null, ptr %i.b, align 8, !alias.scope !1222
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit

.thread.i:                                        ; preds = %.thread3.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store atomic ptr %i.n, ptr %i.w monotonic, align 8, !noalias !1222
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.b, align 8, !alias.scope !1222
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.x = phi ptr [ %i.f, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %i.i, ptr %i.y, align 8, !noalias !1222
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit

bb.f:                                             ; preds = %bb.o, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p, %bb.q, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.aq, %bb.q ], [ %i.aq, %bb.p ], [ %i.aq, %.body.i ]
  %i.aa = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB4k_.exit

bb.g:                                             ; preds = %.body
  call void @llvm.trap()
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit: ; preds = %bb.e, %.thread4.i
  %i.ad = phi ptr [ %i.x, %bb.e ], [ null, %.thread4.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.af = atomicrmw xchg ptr %i.ae, i8 1 seq_cst, align 1
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %.sroa.0.0.sroa.speculated.i = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculated.i, i64 24 ; 3 uses
  %.val.i = load ptr, ptr %i.ah, align 8, !noundef !16 ; 4 uses
  %i.ai = getelementptr i8, ptr %.sroa.0.0.sroa.speculated.i, i64 32
  %.val6.i = load ptr, ptr %i.ai, align 8         ; 6 uses
  %i.aj = icmp eq ptr %.val.i, null
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i) ]
  %i.ak = load ptr, ptr %.val6.i, align 8, !invariant.load !16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.ak(ptr noundef nonnull %.val.i)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !37, !invariant.load !16 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !385, !invariant.load !16
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #25
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i

bb.l:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !37, !invariant.load !16 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !385, !invariant.load !16
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.p, label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i: ; preds = %bb.k, %bb.j, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit
  store ptr null, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.n, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.aw = load ptr, ptr %i.a, align 8, !alias.scope !1231, !nonnull !16, !noundef !16
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !1231
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.o, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit unwind label %bb.f

bb.p:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.az = load ptr, ptr %i.a, align 8, !alias.scope !1238, !nonnull !16, !noundef !16
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !1238
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit: ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = icmp eq ptr %i.ad, null
  br i1 %i.bd, label %._crit_edge, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB4k_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1239, !noundef !16 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1239, !nonnull !16, !noundef !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1239, !nonnull !16, !noundef !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1239
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1242
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1245, !noalias !1242, !noundef !16 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1245, !noalias !1242, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1245, !noalias !1242
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
end_hunk_0
